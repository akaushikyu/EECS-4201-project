ifeq ($(VERILATOR), 1)
	export SIMULATOR = verilator
	include Makefile.verilator
endif
ifeq ($(MODELSIM), 1)
    export SIMULATOR = modelsim
    include Makefile.modeslims
endif

make_sim_dir:
	mkdir -p $(SIM_ROOT)
