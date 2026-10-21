# RV32I benchmarks

The benchmark suite contains 38 instruction tests in `insn-bmarks/` and 10
full programs in `full-bmarks/`. Run `make test` from the repository root to
check all images against the independent RV32I interpreter.

| Format | Contents |
| --- | --- |
| `.c` | Full-program C source |
| `.s` | Assembly source |
| `.elf` | Linked executable with section and symbol metadata |
| `.bin` | Raw program bytes |
| `.objdmp` / `.d` | Disassembly of the linked executable |
| `.x` | One little-endian 32-bit word per hexadecimal text line |
| `.raw` | Hexadecimal words grouped by byte offset |

The RTL memories consume `.x` files with `$readmemh`; they do not compile C.

## Rebuilding a full program

With an RV32I-capable bare-metal GCC toolchain on PATH:

```sh
make rebuild PROGRAM=BubbleSort
make check PROGRAM=BubbleSort
```

The `rebuild.py` utility generates all six derived formats after a successful
compile and conversion. It supplies the missing pass/fail declarations, places
`main` at `0x01000000`, targets RV32I/ILP32, and omits OS startup/runtime code.
Set `RISCV_PREFIX` to use a toolchain at a custom path, for example:

```sh
RISCV_PREFIX=/opt/riscv/bin/riscv32-unknown-elf- make rebuild PROGRAM=BubbleSort
```

The current BubbleSort input is `{12, 9, 4, 99, 120, 2, 3, 10}`. Its expected
sorted array is `{2, 3, 4, 9, 10, 12, 99, 120}`. The benchmark returns 1 on a
successful sortedness check; that return value is separate from array contents.

Benchmark sources and original precompiled assets were inherited from the
[EECS 4201 project](https://github.com/akaushikyu/EECS-4201-project). Rebuilt
programs may use a different instruction layout from the original binaries.
