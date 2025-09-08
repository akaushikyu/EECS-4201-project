# set up appropriate variables

export SCRIPTS_DIR = $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
export CL_ROOT     = $(realpath $(SCRIPTS_DIR)/../../)
export TEST_NAME   = $(CL_ROOT)/verif/tests/test_pd

export SIM_ROOT    = $(CL_ROOT)/verif/sim/$(SIMULATOR)
export SIM_DIR     = $(SIM_ROOT)/test_pd

all: make_sim_dir compile run

VCD_FILE	?=$(CL_ROOT)/test_pd.vcd
VCD_FILE_STR ?= \"$(VCD_FILE)\"

include ${PROJECT_ROOT}/common/verif/tb/scripts/Makefile.common.inc
