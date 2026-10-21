#!/usr/bin/env python3
"""Build PD5 once; compare every retired instruction with an RV32I interpreter.

Usage: python3 project/pd5/verif/scripts/run_benchmarks.py [image.x ...]
No arguments runs all rv32-bmarks images. Requires Verilator and a C++ compiler.
Logs, executable and JSON results are kept in verif/sim/benchmarks/.
"""
import argparse
import json
import os
from pathlib import Path
import subprocess
import sys

PD = Path(__file__).resolve().parents[2]
ROOT = PD.parents[1]
BUILD = PD / "verif/sim/benchmarks"
BASE, DEPTH, MASK = 0x01000000, 1048576, 0xffffffff


def signed(value, bits=32):
    value &= (1 << bits) - 1
    return value - (1 << bits) if value >> (bits - 1) else value


class Reference:
    """Sequential RV32I model with separate instruction/data memories."""
    def __init__(self, words):
        self.reg = [0] * 32
        self.reg[2] = BASE + DEPTH
        self.pc = BASE
        self.code = b"".join(w.to_bytes(4, "little") for w in words)
        self.mem = bytearray(DEPTH)
        self.mem[:len(self.code)] = self.code
        self.retired = 0

    def check(self, fields):
        pc, insn, wen, rd, data, store, addr, store_data = fields
        assert pc == self.pc, f"PC expected {self.pc:08x}, got {pc:08x}"
        off = pc - BASE
        assert 0 <= off <= len(self.code)-4, f"Fetch outside image: {pc:08x}"
        expected_insn = int.from_bytes(self.code[off:off+4], "little")
        assert insn == expected_insn, f"Instruction expected {expected_insn:08x}, got {insn:08x}"
        op, dest, f3 = insn & 127, (insn >> 7) & 31, (insn >> 12) & 7
        a, b = self.reg[(insn >> 15) & 31], self.reg[(insn >> 20) & 31]
        imm = signed(insn >> 20, 12)
        nxt, result, expected_store = pc + 4, None, False
        if op == 0x37:
            result = insn & 0xfffff000
        elif op == 0x17:
            result = pc + (insn & 0xfffff000)
        elif op == 0x6f:
            j = ((insn >> 31) << 20) | (((insn >> 12) & 255) << 12) | (((insn >> 20) & 1) << 11) | (((insn >> 21) & 1023) << 1)
            result, nxt = pc + 4, pc + signed(j, 21)
        elif op == 0x67:
            assert f3 == 0, "Unsupported JALR"
            result, nxt = pc + 4, (a + imm) & ~1
        elif op == 0x63:
            j = ((insn >> 31) << 12) | (((insn >> 7) & 1) << 11) | (((insn >> 25) & 63) << 5) | (((insn >> 8) & 15) << 1)
            take = {0: a == b, 1: a != b, 4: signed(a) < signed(b),
                    5: signed(a) >= signed(b), 6: a < b, 7: a >= b}[f3]
            if take:
                nxt = pc + signed(j, 13)
        elif op in (0x13, 0x33):
            rhs = imm & MASK if op == 0x13 else b
            shift = rhs & 31
            subtract = op == 0x33 and (insn >> 25) == 0x20
            arithmetic = ((insn >> 30) & 1) != 0
            if f3 == 0: result = a - rhs if subtract else a + rhs
            elif f3 == 1: result = a << shift
            elif f3 == 2: result = int(signed(a) < signed(rhs))
            elif f3 == 3: result = int(a < rhs)
            elif f3 == 4: result = a ^ rhs
            elif f3 == 5: result = (signed(a) if arithmetic else a) >> shift
            elif f3 == 6: result = a | rhs
            elif f3 == 7: result = a & rhs
        elif op == 3:
            size = {0: 1, 1: 2, 2: 4, 4: 1, 5: 2}[f3]
            address = (a + imm) & MASK
            value = sum(self.mem[(address - BASE + i) % DEPTH] << (8*i) for i in range(size))
            result = signed(value, size*8) if f3 in (0, 1) else value
        elif op == 0x23:
            expected_store = True
            offset = signed(((insn >> 25) << 5) | ((insn >> 7) & 31), 12)
            address, size = (a + offset) & MASK, {0: 1, 1: 2, 2: 4}[f3]
            mask = (1 << (8 * size)) - 1
            assert store and addr == address, f"Store address expected {address:08x}, got {addr:08x}"
            assert store_data & mask == b & mask, f"Store data expected {b & mask:08x}, got {store_data & mask:08x}"
            for i in range(size):
                self.mem[(address - BASE + i) % DEPTH] = (b >> (8*i)) & 255
        elif op == 0x0f:
            pass  # FENCE is a no-op for this in-order memory system.
        elif insn == 0x73:
            pass  # Bare-metal test termination; no OS environment is modeled.
        else:
            raise AssertionError(f"Unsupported instruction {insn:08x}")
        assert bool(store) == expected_store, "Unexpected/missing memory write"
        assert bool(wen) == (result is not None), "Incorrect register write enable"
        if result is not None:
            assert rd == dest, f"Destination expected x{dest}, got x{rd}"
            assert data == result & MASK, f"x{dest} expected {result & MASK:08x}, got {data:08x}"
            if dest:
                self.reg[dest] = result & MASK
        self.pc = nxt & MASK
        self.retired += 1


def build():
    BUILD.mkdir(parents=True, exist_ok=True)
    sources = [PD / "design/code" / name for name in (PD / "verif/scripts/design.f").read_text().split() if name.endswith(".sv")]
    cmd = ["verilator", "--binary", "--timing", "--top-module", "benchmark", "--Mdir", str(BUILD), "-j", "2",
           "-I" + str(PD / "design/code"), "+define+PD5_EXTERNAL_TESTBENCH",
           '+define+MEM_PATH="' + str(PD / "verif/data/test1.x") + '"',
           "+define+MEM_DEPTH=" + str(DEPTH),
           "+define+LINE_COUNT=" + str(len((PD / "verif/data/test1.x").read_text().split())),
           *map(str, sources), str(PD / "verif/tests/benchmark.sv")]
    env = dict(os.environ, LC_ALL="C", LANG="C", CCACHE_DIR=str(BUILD / "ccache"))
    with (BUILD / "build.log").open("w") as log:
        subprocess.run(cmd, stdout=log, stderr=subprocess.STDOUT, env=env, check=True)


def run(image, max_cycles):
    words = [int(line, 16) for line in image.read_text().split()]
    ref = Reference(words)
    try:
        proc = subprocess.run([str(BUILD / "Vbenchmark"), f"+image={image}", f"+words={len(words)}", f"+cycles={max_cycles}"],
                              stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True, timeout=120)
    except subprocess.TimeoutExpired:
        return {"image": str(image.relative_to(ROOT)), "passed": False,
                "retired": 0, "error": "Simulation exceeded 120 seconds"}
    (BUILD / (image.stem + ".log")).write_text(proc.stdout)
    done = False
    current = ""
    try:
        for line in proc.stdout.splitlines():
            if line.startswith("RET "):
                current = line
                values = line.split()[1:]
                ref.check([int(v, 10 if i in (2, 3, 5) else 16) for i, v in enumerate(values)])
            elif line.startswith("DONE "):
                done = True
        assert proc.returncode == 0 and done, "Simulation failed or timed out before completion"
        if image.parent.name == "insn-bmarks":
            assert ref.reg[3] == 1, f"Benchmark failure: gp={ref.reg[3]} (test {ref.reg[3] >> 1})"
            assert ref.pc != 0, "Unexpected return instead of ECALL"
        elif image.parent.name == "full-bmarks":
            assert ref.pc == 0, "Full benchmark did not return from main"
            assert ref.reg[10] == 1, f"Benchmark failure: main returned {ref.reg[10]}"
        return {"image": str(image.relative_to(ROOT)), "passed": True, "retired": ref.retired}
    except (AssertionError, KeyError) as error:
        return {"image": str(image.relative_to(ROOT)), "passed": False,
                "retired": ref.retired, "error": str(error), "instruction": current}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("images", nargs="*", type=Path)
    parser.add_argument("--cycles", type=int, default=200000)
    parser.add_argument("--report", default="results.json", help="JSON report filename inside the build directory")
    args = parser.parse_args()
    images = [p.resolve() for p in args.images] if args.images else sorted((ROOT / "rv32-bmarks").glob("*/*.x"))
    try:
        build()
    except subprocess.CalledProcessError:
        print(f"Build failed; see {BUILD / 'build.log'}", file=sys.stderr)
        return 1
    results = []
    for image in images:
        result = run(image, args.cycles)
        results.append(result)
        print(f"{'PASS' if result['passed'] else 'FAIL'} {image.stem}: " +
              (f"{result['retired']} instructions" if result['passed'] else result['error']), flush=True)
    (BUILD / args.report).write_text(json.dumps(results, indent=2) + "\n")
    passed = sum(r["passed"] for r in results)
    print(f"{passed}/{len(results)} passed")
    return int(passed != len(results))


if __name__ == "__main__":
    sys.exit(main())
