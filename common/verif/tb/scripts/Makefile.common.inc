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
package:
	tar czvf package.$(SIMULATOR).$(PD).$(TEAM).tar.gz -C $(CL_ROOT) ./design/code ./design/probes.svh ./verif/scripts/design.f
