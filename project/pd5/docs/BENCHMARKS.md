# PD5 benchmark validation

Validated locally on 2026-10-20 with Verilator 5.045 devel.

All **48 supplied rv32-bmarks images pass**: 38 instruction benchmarks and
10 full C programs. The checker compared 17,848 retired instructions against
an independent sequential RV32I interpreter, including instruction order,
register results, store addresses, and stored bytes. Instruction tests must
finish with gp = 1; full programs must return from main with a0 = 1.
Merely reaching ECALL, $finish, or a timeout does not count as success.

Run from the repository root:

```sh
make test
```

To run one image:

```sh
make check PROGRAM=BubbleSort
```

The runner builds once, loads each image into both memories, and writes build
output, per-image retirement logs, and `results.json` into
`project/pd5/verif/sim/benchmarks/`. It requires Python 3, Verilator with
`--binary`/`--timing` support, and a C++ compiler. It sets a supported locale
and places the compiler cache inside the build directory.

The independent testbench disables the core's own simulation termination
using `PD5_EXTERNAL_TESTBENCH`; it checks completion at writeback itself.
Three targeted regressions also pass:

```sh
make regressions
```

The RTL simulation testbench, with the core's termination enabled, was also
checked on BubbleSort (a0 = 1), rv32ui-p-add (gp = 1), and all three targeted
regressions. The wrong-path ECALL test stops at 0x01000014 with a0 = 1,
rather than at the squashed ECALL at 0x01000008.

## Fixes

- Require register write-enable for WX/WM store-data forwarding. Stores,
  branches, and other non-writers cannot supply a register value. Before this
  fix BubbleSort stored 0x010fffdc instead of 120 at PC 0x01000058; only 47 of
  the 48 benchmarks passed.
- Carry instruction and validity through the pipeline for simulation
  termination. Stop when ECALL retires or a return to zero retires with the
  stack restored. Fetching ECALL or observing an early restored stack must
  not terminate execution.

## Supplied cycle patterns

The original `test1`, `test2`, and `test3` pattern checks passed before the
forwarding correction. They now report these first differences:

| Test | M-stage PC | Expected DATA | Actual DATA | Meaning |
| --- | --- | --- | --- | --- |
| test1 | 0x01000058 | 0x010fffdc | 0x00000078 | SW must store 120; pattern expects the corrupted address |
| test2 | 0x01000040 | 0x010fffcc | 0x00000000 | LW; store-data bus is unused |
| test3 | 0x01000014 | 0x010fffe8 | 0x00000000 | JAL; store-data bus is unused |

The supplied pattern files and course checker were preserved. Matching the
test1 pattern would reintroduce the BubbleSort bug. The test2/test3 checker
also compares store-data values when the instruction does not write memory.
Course pattern-check success and architectural benchmark success are therefore
distinct results for these supplied patterns.

This validates the supplied RV32I workloads and targeted regressions. It is
not formal verification or validation of privilege, exception, CSR, or
instruction-set extensions beyond the project's scope.
