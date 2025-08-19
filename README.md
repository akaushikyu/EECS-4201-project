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

### Step 1: Clone the repository
Open a terminal and execute the following command:
```
git clone git@github.com:akaushikyu/EECS-4201-project.git
```
You should see a directory named `EECS-4201-project` in your current working directory.

### Step 2: Setup the environment
Step into the `EECS-4201-project` and execute the following command: 
```
source env.sh
```
This will setup the working environment by setting up the paths to the simulator (ModelSim or Verilator) and project root directory.
An expected output after executing this command should look like this:
```
===== EECS 4201 Course Environment Setup =====
Location of project:  /Users/anirudhkaushik/REPOS/EECS-4201-project
Verilator version:  Verilator 5.038 2025-07-08 rev UNKNOWN.REV
```
### Step 3: Build PD0
Navigate to the `project/pd0` directory and execute the following command:
```
make compile -C verif/scripts/ VERILATOR=1
```
If using ModelSim, then execute the following command:
```
make compile -C verif/scripts/ VSIM=1
```

## Build and testing infrastructure

For each PD, a set of scripts are provided that compile, simulate, and test the hardware design. 
These scripts can be found under each PD's directory (`pd*/verif/scripts`). 

For each PD, there are specific test cases that the design must 




