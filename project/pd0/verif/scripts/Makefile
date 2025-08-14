# set up appropriate variables

# test name. Set to test_null only if TEST is not specified
export TEST ?= test_null

export SCRIPTS_DIR = $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
export CL_ROOT     = $(realpath $(SCRIPTS_DIR)/../../)
export TEST_NAME   = $(CL_ROOT)/verif/tests/$(TEST)

export SIM_ROOT    = $(CL_ROOT)/verif/sim/$(SIMULATOR)
export SIM_DIR     = $(SIM_ROOT)/$(TEST)

all: make_sim_dir compile run

include ${PROJECT_ROOT}/common/verif/tb/scripts/Makefile.common.inc
