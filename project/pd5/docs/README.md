# Processor architecture

The `pd5` module implements a five-stage, in-order RV32I pipeline. The external
simulation wrapper exposes `clk` and synchronous active-high `reset`. Instruction
and data memories are instantiated inside the core; there is no external bus
interface in the current implementation.

## Pipeline stages

| Stage | Responsibility | Main RTL |
| --- | --- | --- |
| Fetch | Select next PC and read instruction memory | `fetch.sv`, `pd5.sv` |
| Decode | Extract instruction fields, generate immediate/control, read registers | `decode.sv`, `igen.sv`, `control.sv`, `register_file.sv` |
| Execute | Select operands, execute ALU operations, compare branches, calculate targets | `execute.sv`, `branch_control.sv` |
| Memory | Load or store bytes, halfwords, and words | `memory.sv` |
| Writeback | Select ALU result, extended load data, or PC+4 | `writeback.sv` |

`fd_q`, `de_q`, `em_q`, and `mw_q` carry data and control between stages.
Instruction and validity fields distinguish live instructions from bubbles for
simulation termination. The register file provides combinational reads and
rising-edge writes; x0 reads as zero and ignores writes.

## Hazards and control flow

The execute operand muxes forward results from memory or writeback, prioritizing
the younger producer in memory. Branch comparisons use the forwarded operands.
Jump forwarding supplies PC+4 when that is the value destined for the register
file. Stores receive forwarded data in execute and can also receive it from
writeback during memory access. Forwarding requires a genuine register write
to a nonzero destination.

A load-use dependency holds fetch/decode and inserts a bubble into execute.
A load immediately followed by a store using only its data can use the
writeback-to-memory path without that stall. Decode also stalls when it needs
a register being written back and no younger producer can provide it, because
the register file has no write-through path.

Fetch normally advances by four bytes. Taken branches and jumps redirect from
execute and flush the two younger instruction slots. Redirect takes priority
over a stall. There is no branch prediction unit.

## Simulation memory map

| Item | Value |
| --- | --- |
| Reset PC / program entry | `0x01000000` |
| Instruction memory capacity | 1 MiB by default |
| Data memory capacity | 1 MiB by default |
| Initial stack pointer | `0x01100000` with default capacity |
| Storage | Little-endian, byte-addressable arrays |

Both memories load the same `.x` image, allowing code and static constants to
share their expected addresses. Writes affect data memory only. The stack grows
downward. The memory model wraps offsets modulo its capacity and does not model
access faults, caches, or an external memory protocol.

For bare-metal simulation, a retired ECALL terminates an instruction benchmark.
A retired canonical return to address zero with the stack restored terminates
a full program. These hooks are excluded with `SYNTHESIS`, or disabled using
`PD5_EXTERNAL_TESTBENCH` when the independent retirement monitor owns completion.

## Verification

Start with `make test` and `make regressions` from the repository root.
[Validation details](BENCHMARKS.md) explain the independent reference model,
recorded benchmark results, and limitations of the inherited cycle patterns.
The [root README](../../../README.md) contains run, waveform, and dump commands.
