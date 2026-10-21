#!/usr/bin/env bash
# Optional setup for direct use of the simulator Makefiles.
# The root Makefile resolves these paths without sourcing this file.
export PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
printf 'RISC-V core repository: %s\n' "$PROJECT_ROOT"
if command -v verilator >/dev/null 2>&1; then
    verilator --version
fi
