.DEFAULT_GOAL := help

ROOT := $(patsubst %/,%,$(dir $(abspath $(lastword $(MAKEFILE_LIST)))))
CORE := $(ROOT)/project/pd5
PYTHON ?= python3
PROGRAM ?= BubbleSort
IMAGE ?= $(if $(filter test1 test2 test3,$(PROGRAM)),$(CORE)/verif/data/$(PROGRAM).x,$(ROOT)/rv32-bmarks/full-bmarks/$(PROGRAM).x)
VCD ?= 0
DUMP ?= 0
TIMEOUT ?= 200000
DUMP_DIR := $(CORE)/design/Pattern_Dump_BM
DUMP_FILE ?= $(DUMP_DIR)/$(PROGRAM).dump
BUILD_DIR := $(CORE)/verif/sim/verilator/$(PROGRAM)$(if $(filter 1,$(VCD)),-vcd)

export PROJECT_ROOT := $(ROOT)
export LC_ALL := C
export CCACHE_DIR ?= $(CORE)/verif/sim/ccache

.PHONY: help test check regressions sim wave dump rebuild
help:
	@printf '%s\n' \
	  'Five-stage RV32I core' \
	  '  make test                         Check all 48 benchmarks against the RV32I model' \
	  '  make check PROGRAM=BubbleSort     Check one full-program benchmark' \
	  '  make regressions                  Check forwarding, flush, and return regressions' \
	  '  make sim PROGRAM=BubbleSort       Run the RTL simulation' \
	  '  make wave PROGRAM=BubbleSort      Run and generate a VCD waveform' \
	  '  make dump PROGRAM=BubbleSort      Run and generate a pipeline pattern dump' \
	  '  make rebuild PROGRAM=BubbleSort   Recompile a C benchmark for RV32I' \
	  'Set IMAGE=/absolute/path/program.x to simulate a different memory image.'

test:
	$(PYTHON) "$(CORE)/verif/scripts/run_benchmarks.py"

check:
	$(PYTHON) "$(CORE)/verif/scripts/run_benchmarks.py" "$(IMAGE)" --report single-result.json

regressions:
	$(PYTHON) "$(CORE)/verif/scripts/run_benchmarks.py" $(CORE)/verif/data/regressions/*.x --report regressions.json

sim:
	@test -f "$(IMAGE)" || { printf 'Memory image not found: %s\n' "$(IMAGE)"; exit 1; }
	@mkdir -p "$(DUMP_DIR)" "$(CCACHE_DIR)"
	$(MAKE) -C "$(CORE)/verif/scripts" run VERILATOR=1 \
	  TEST="$(PROGRAM)" MEM_PATH="$(IMAGE)" SIM_DIR="$(BUILD_DIR)" \
	  VCD=$(VCD) PATTERN_CHECK=0 PATTERN_LINE_COUNT=1 TIMEOUT=$(TIMEOUT) \
	  PATTERN_DUMP=$(DUMP) PATTERN_DUMP_FILE="$(DUMP_FILE)"
	@if [ "$(VCD)" = 1 ]; then printf 'Waveform: %s\n' "$(BUILD_DIR)/$(PROGRAM).vcd"; fi
	@if [ "$(DUMP)" = 1 ]; then printf 'Pattern dump: %s\n' "$(DUMP_FILE)"; fi

wave:
	$(MAKE) -f "$(ROOT)/Makefile" sim VCD=1

dump:
	$(MAKE) -f "$(ROOT)/Makefile" sim DUMP=1

rebuild:
	$(PYTHON) "$(ROOT)/rv32-bmarks/rebuild.py" "$(PROGRAM)"
