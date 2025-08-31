# EECS-4201-project

This is the main repository for YorkU's EECS 4201 course project that progressively builds a fully-pipelined 5-staged in-order RISC-V core that supports the RV32I instruction set.
SystemVerilog is the hardware descriptive language (HDL) used to implement the core.

## Project structure

The project is divided into *6 project deliverables* (PDs). Each PD focuses on building a portion of the core culminating into the final pipelined implementation delivered in PD5.
Please refer the READMEs for each PD below for a detailed description of the implementation expected in the deliverable.

- [PD0](project/pd0/docs/README.md)
- [PD1](project/pd1/docs/README.md)
- [PD2](project/pd2/docs/README.md)
- [PD3](project/pd3/docs/README.md)
- [PD4](project/pd4/docs/README.md)
- [PD5](project/pd5/docs/README.md)

## Getting started
Note that the below steps assume a linux environment with ModelSim or Verilator installed. 

### Step 0: Setup your workstation
You will need a workstation (duh) to do the project. You may either use your personal computer with [ModelSim](https://www.intel.com/content/www/us/en/software-kit/750368/modelsim-intel-fpgas-standard-edition-software-version-18-1.html) or [Verilator](https://verilator.org/) installed along with [gtkwave](https://gtkwave.sourceforge.net/) to view the VCD waveforms or use one of the linux remote machines [EA machines](https://remotelab.eecs.yorku.ca/#/) provided by the department.

The below steps have been tested on a EA linux machine provided by the department and on a personal linux workstation. If you would like to develop on a windows system, then you will have to develop your own scripts and methodologies to load and test your designs.

### Step 1: Clone the repository
------------------------------------
Open a terminal and execute the following command:
```
git clone git@github.com:akaushikyu/EECS-4201-project.git
```
You should see a directory named `EECS-4201-project` in your current working directory.

### Step 2: Setup the environment
------------------------------------
Step into the `EECS-4201-project` and execute the following command: 
```
source env.sh
```
This will setup the working environment by setting up the paths to the simulator (ModelSim or Verilator) and project root directory.
An expected output after executing this command should look like this:
```
===== EECS 4201 Course Environment Setup =====
Location of project:  /cs/home/kaushika/EECS-4201-project
Verilator version:  Verilator 5.038 2025-07-08 rev UNKNOWN.REV
VSIM version:  Model Technology ModelSim - INTEL FPGA STARTER EDITION vsim 2020.1 Simulator 2020.02 Feb 28 2020
```
### Step 3: Build and run PD0
------------------------------------
Navigate to the `project/pd0` directory and execute the following command:
```
make compile -C verif/scripts/ VSIM=1
```
If using Verilator, then execute the following command:
```
make compile -C verif/scripts/ VERILATOR=1
```
The rest of the steps assume that you are using ModelSim.

The output of the above command should look as below:
```
make: Entering directory '/eecs/home/kaushika/EECS-4201-project/project/pd0/verif/scripts'
echo Vsim Compilation
Vsim Compilation
mkdir -p /eecs/home/kaushika/EECS-4201-project/project/pd0/verif/sim/vsim/test_pd
/pkgcache/intelFPGA_lite/20.1/modelsim_ase/linuxaloem/vlog -work /eecs/home/kaushika/EECS-4201-project/project/pd0/work -sv \
	+incdir+/eecs/home/kaushika/EECS-4201-project/project/pd0/design/code +incdir+/eecs/home/kaushika/EECS-4201-project/project/pd0/design/ -stats=none /eecs/home/kaushika/EECS-4201-project/project/pd0/design/code/constants_pkg.sv /eecs/home/kaushika/EECS-4201-project/project/pd0/design/code/alu.sv /eecs/home/kaushika/EECS-4201-project/project/pd0/design/code/assign_xor.sv /eecs/home/kaushika/EECS-4201-project/project/pd0/design/code/reg_rst.sv /eecs/home/kaushika/EECS-4201-project/project/pd0/design/code/three_stage_pipeline.sv /eecs/home/kaushika/EECS-4201-project/project/pd0/design/code/pd0.sv /eecs/home/kaushika/EECS-4201-project/project/pd0/verif/tests/clockgen.sv /eecs/home/kaushika/EECS-4201-project/project/pd0/design/design_wrapper.sv /eecs/home/kaushika/EECS-4201-project/project/pd0/verif/tests/test_pd.sv
Model Technology ModelSim - Intel FPGA Edition vlog 2020.1 Compiler 2020.02 Feb 28 2020
-- Compiling package constants_pkg
-- Compiling package alu_sv_unit
-- Importing package constants_pkg
-- Compiling module alu
-- Compiling module assign_xor
-- Compiling module reg_rst
-- Compiling module three_stage_pipeline
-- Compiling module pd0
-- Compiling module clockgen
-- Compiling module design_wrapper
-- Compiling module top

Top level modules:
	alu
	reg_rst
	three_stage_pipeline
	top
make: Leaving directory '/eecs/home/kaushika/EECS-4201-project/project/pd0/verif/scripts'
```

Once you have finished the compilation, you can run the simulation by executing the following command:
```
make run -C verif/scripts/ VERILATOR=1
```

The above command will re-compile and run the simulation. The output after this command should look something like this:

```
###########
#  clk = 0
# ** Fatal: [ALU] Probe signals not defined
#    Time: 1 ps  Scope: top.alu_test File: /eecs/home/kaushika/EECS-4201-project/project/pd0/verif/tests/test_pd.sv Line: 102
# ** Note: $finish    : /eecs/home/kaushika/EECS-4201-project/project/pd0/verif/tests/test_pd.sv(102)
#    Time: 1 ps  Iteration: 1  Instance: /top
# End time: 14:11:49 on Aug 21,2025, Elapsed time: 0:00:01
# Errors: 1, Warnings: 0
make: Leaving directory '/eecs/home/kaushika/EECS-4201-project/project/pd0/verif/scripts'
```
This is expected as the probe signals are missing and need to be filled in. Once you have the probe signals setup, you should see a `pd.vcd` waveform file generated that you can view using `gtkwave` or the ModelSim GUI.


For PD1 - PD5, you can follow the same steps as above to build and run the design simulation. Note that the build command takes an additional command line switch `TEST=` which specifies the RISC-V test program to load in memory. These tests can be found in `pd*/verif/data/test*.x`.
For example, if you want to load the `pd*/verif/data/test2.x` program in memory and simulate its execution, then execute the following command:
```
make run -C verif/scripts/ VERILATOR=1 TEST=test2
```

### Step 4: Debugging utilities 
------------------------------------
The build scripts have a few helpful command line switches to help with your design debugging efforts for PD1-PD6. Note that these are intended to establish a starting point for your debugging efforts. To perform in-depth debugging of your design and identify design bugs, you must rely on viewing waveforms of your hardware simulations using ModelSim or Verilator. 

As an example, open `pd1/verif/scripts/Makefile`. There are two environment variables that will be useful: `PATTERN_DUMP` and `PATTERN_CHECK`.
`PATTERN_DUMP` will dump out the signals defined in the corresponding `probes.svh` file and `PATTERN_CHECK` will check the signals defined in `probes.svh` against the golden patterns stored in `pd*/verif/data/*.pattern`.
To enable the signal dumps, execute the following command:
```
make run -C verif/scripts/ VERILATOR=1 TEST=test1 PATTERN_DUMP=1
```
This will generate a `test1.dump` file in the current working directory. 

To enable the signal pattern checks, execute the following:
```
make run -C verif/scripts/ VERILATOR=1 TEST=test1 PATTERN_CHECK=1
```
If your design is correct, this should return `Checks passed`. Otherwise, the faulting pattern will be reported. Using this faulting pattern, you can begin a deeper debug exercise to identify logic bugs in your design.

For more information on the pattern dumping and checking logic, refer to the `pd*/verif/tests/pattern_dump.h` and `pd/*/verif/tests/pattern_check.h` files respectively.

In addition to the above debugging utilities, it is also important to pay **close attention to the warning messages emitted by ModelSim/Verilator compiler**. These warnings are also useful to uncover unintended logic bugs that may pass compilation but expose a subtle logic bug resulting in incorrect outputs. 

We also provide a comprehensive collection of [benchmarks](rv32-bmarks) that you can use to stress your design. The benchmarks are of 2 flavors: (1) full program benchmarks and (2) synthetic benchmarks that stress individual functions. For each benchmark, there are 4 files: (1) `*.bin`: the program binary, (2) `*.c`: the C source file, (3) `*.elf`: the corresponding ELF file, (4) `*.objdump`: the object dump listing the sections and RISC-V instructions and location, (5) `*.raw`: instruction data organized in 128-bit lines (4 32-bit instructions per line), (6) `*.s`: Similar to `*.objdump` but lists only the RISC-V instructions, (7) `*.x`: lists only the instruction data where each line corresponds to one 32-bit instruction data. The `*.x` should be consumed by your design when initializing your instruction memory.

### Step 5: Submitting your design
------------------------------------
Once you have validated your design against the tests in `pd*/verif/data/test*.x`, you are ready to submit your design. 
To create a zip file, you can execute the following command:
```
make package -C verif/scripts/ VSIM=1 PD=<name of PD> TEAM=<team-name>
```
This should create a `package.vsim.<name-of-pd>.<team-name>.tar.gz` file in `pd*/verif/scripts` directory. You must upload this `package.vsim.<name-of-pd>.<team-name>.tar.gz` file in EClass. 
For example, assume your team name is **riscy** and you are submitting the design for PD3. Then execute the following command:
```
make package -C verif/scripts/ VSIM=1 PD=pd3 TEAM=riscy
```
This will create `package.vsim.pd3.riscy.tar.gz` that you will upload in EClass.

### Grading scheme
------------------------------------
For each PD, you will be evaluated on the following components:

|Component|Weight|
|---------|------|
|Code quality|35%|
|Correctness| 65%|

For code quality, please adhere to the programming styles and guidelines described [here](https://www.systemverilog.io/verification/styleguide/)

### Acknowledgements
------------------------------------
This course project is inspired by UWaterloo's ECE 429/320/621 course project structure. 
