#!/usr/bin/env python3
"""Rebuild a full benchmark for the PD5 bare-metal RV32I memory layout.

From the repository root: python3 rv32-bmarks/rebuild.py BubbleSort
Requires riscv64-elf-{gcc,objcopy,objdump} (Homebrew) or
riscv64-unknown-elf-{gcc,objcopy,objdump} on PATH. Set RISCV_PREFIX
to a different prefix, e.g. /opt/riscv/bin/riscv32-unknown-elf-.
"""
import argparse
import os
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("benchmark", help="Benchmark name or path to its C source")
    args = parser.parse_args()
    folder = Path(__file__).resolve().parent / "full-bmarks"
    source = Path(args.benchmark)
    if not source.is_file():
        source = folder / (source.stem + ".c")
    source = source.resolve()
    if not source.is_file():
        parser.error(f"Source not found: {source}")

    prefix = os.environ.get("RISCV_PREFIX")
    if prefix is None:
        prefix = next((p for p in ("riscv64-unknown-elf-", "riscv32-unknown-elf-", "riscv64-elf-")
                       if shutil.which(p + "gcc")), "riscv64-unknown-elf-")
    tools = {name: shutil.which(prefix + name) for name in ("gcc", "objcopy", "objdump")}
    missing = [prefix + name for name, path in tools.items() if path is None]
    if missing:
        print("Missing RISC-V build tools: " + ", ".join(missing), file=sys.stderr)
        print("Install an RV32I-capable bare-metal GCC toolchain, or set RISCV_PREFIX "
              "to the installed toolchain prefix. Existing artifacts were preserved.", file=sys.stderr)
        return 1

    with tempfile.TemporaryDirectory(prefix="rv32-rebuild-") as temp:
        work = Path(temp)
        # The supplied C sources include this header, but it was not shipped.
        # They define pass/fail themselves; only declarations are needed.
        (work / "pass_fail.h").write_text("int pass(void);\nint fail(void);\n")
        script = work / "benchmark.ld"
        script.write_text("""ENTRY(main)
SECTIONS {
    . = 0x01000000;
    .text : { *(.text.main) *(.text .text.*) }
    .rodata : { *(.rodata .rodata.* .srodata .srodata.*) }
    .data : { *(.data .data.* .sdata .sdata.*) }
    .bss : { *(.bss .bss.* .sbss .sbss.*) *(COMMON) }
    ASSERT(. <= 0x01080000, "Benchmark leaves insufficient stack space")
}
""")
        stem = source.stem
        assembly, elf, binary = (work / (stem + suffix) for suffix in (".s", ".elf", ".bin"))
        flags = ["-std=gnu11", "-march=rv32i", "-mabi=ilp32", "-O0", "-ffreestanding",
                 "-fno-builtin", "-fno-stack-protector", "-fno-pic", "-fno-pie",
                 "-msmall-data-limit=0", "-mno-relax", "-ffunction-sections"]
        subprocess.run([tools["gcc"], *flags, "-I", str(work), "-S", str(source),
                        "-o", str(assembly)], check=True)
        subprocess.run([tools["gcc"], *flags, "-nostdlib", "-nostartfiles",
                        "-Wl,--no-relax", "-Wl,-T," + str(script), str(assembly),
                        "-o", str(elf)], check=True)
        subprocess.run([tools["objcopy"], "-O", "binary", str(elf), str(binary)], check=True)
        disassembly = subprocess.check_output([tools["objdump"], "-d", "-M", "numeric", str(elf)], text=True)
        (work / (stem + ".objdmp")).write_text(disassembly.replace(str(elf), elf.name))
        data = binary.read_bytes()
        data += bytes((-len(data)) % 4)
        binary.write_bytes(data)
        words = [f"{int.from_bytes(data[i:i+4], 'little'):08x}" for i in range(0, len(data), 4)]
        (work / (stem + ".x")).write_text("\n".join(words) + "\n")
        (work / (stem + ".raw")).write_text("".join(
            f"{i*4:06x} " + " ".join(words[i:i+4]) + "\n" for i in range(0, len(words), 4)))
        # Publish artifacts only after every build/conversion step succeeds.
        for suffix in (".s", ".elf", ".bin", ".objdmp", ".x", ".raw"):
            shutil.copyfile(work / (stem + suffix), source.with_suffix(suffix))
        print(f"Rebuilt {source.name}: {len(words)} words; updated .s .elf .bin .objdmp .x .raw")
    return 0


if __name__ == "__main__":
    try:
        sys.exit(main())
    except subprocess.CalledProcessError as error:
        sys.exit(error.returncode)
