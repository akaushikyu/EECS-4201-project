# set up appropriate variables

# test name. Set to test_null only if TEST is not specified
export TEST ?= test1

export SCRIPTS_DIR = $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
export CL_ROOT     = $(realpath $(SCRIPTS_DIR)/../../)
export TEST_NAME   = $(CL_ROOT)/verif/tests/test_pd

export SIM_ROOT    = $(CL_ROOT)/verif/sim/$(SIMULATOR)
export SIM_DIR     = $(SIM_ROOT)/test_pd

all: make_sim_dir compile run

# define parameters
MEM_PATH              ?= $(CL_ROOT)/verif/data/${TEST}.x
MEM_PATH_NOT_DIR			:= $(notdir $(MEM_PATH))
LINE_COUNT            ?= $(shell echo `wc -l < $(MEM_PATH)`)
MEM_PATH_STR          ?= \"$(abspath $(MEM_PATH))\"
MEM_DEPTH             ?= 1048576
DWIDTH			      ?= 32
AWIDTH                ?= 32
TEST_VECTOR           ?= $(CL_ROOT)/verif/data/test_vector.x
TEST_VECTOR_STR       ?= \"$(TEST_VECTOR)\"
TRACE_FILE				    ?= $(MEM_PATH_NOT_DIR:x=trace)
VCD_FILE				      ?= $(MEM_PATH_NOT_DIR:x=vcd)
VCD_FILE_STR			    ?= \"$(VCD_FILE)\"
PATTERN_FILE          ?= $(MEM_PATH:x=pattern) # Replace MEM_PATH .x with .pattern by default
PATTERN_LINE_COUNT    ?= $(shell echo `wc -l < $(PATTERN_FILE)`)
PATTERN_FILE_STR      ?= \"$(abspath $(PATTERN_FILE))\"
PATTERN_DUMP_FILE			?= $(MEM_PATH_NOT_DIR:x=dump)# Replace MEM_PATH .x with .pattern by default
PATTERN_DUMP_FILE_STR ?= \"$(PATTERN_DUMP_FILE)\"
PATTERN_DUMP					?= 0
PATTERN_CHECK					?= 0
GEN_TRACE             ?= 0
TIMEOUT               ?= 50000
TRACE_FILE_STR        ?= \"$(TRACE_FILE)\"

WARN ?= 1

ifeq ($(WARN), 1)
WARN_OUTPUT = 2>&1 | tee output.log
WARN_CHECK  = cat $(SIM_DIR)/output.log | bash $(CL_ROOT)/verif/scripts/check_warnings.sh
else
WARN_OUTPUT = 
WARN_CHECK  = 
endif

EXTRA_PACKAGE_FILES := 

include ${PROJECT_ROOT}/common/verif/tb/scripts/Makefile.common.inc
