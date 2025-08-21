ifeq ($(VERILATOR), 1)
	export SIMULATOR = verilator
	include Makefile.verilator
endif
ifeq ($(VSIM), 1)
    export SIMULATOR = vsim
    include Makefile.vsim
endif

make_sim_dir:
	mkdir -p $(SIM_ROOT)
