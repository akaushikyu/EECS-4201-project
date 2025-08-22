# PD0

This document guides you through the setup for the environment and the steps for submission.


## Pre-requisite

### Option 1
We recommend using one of the following ECE Linux server, in which all necessary packages and simulators are setup properly for every user:

```
eceubuntu.uwaterloo.ca
```

You should be able to log in using your UWaterloo ID and password.

### Option 2

It is possible to install some or all of them on your local machine

1. You will need a Linux bash environment to execute the tests. For example, `Ubuntu` or other distributions of Linux should work fine.
2. You will need `make` installed in your distribution to execute the tests.
3. You will need `git` the clone the repository.
4. You will need one of `verilator` to properly run your code. Refer to the `verilog-tutorial` manual for installation guidelines on `verilator` and `iverilog`. Make sure that they are present in your `$PATH` environment variable so that it can be detected.

## Paths

Throughout the project, we will frequently refer to files and directories in the repository. All directory and file names are **relative to the repository root**. For example, the location of this README is `project/pd0/docs/README.md`

## Environment Setup

### Getting the repository

If you have not done already, use git to clone the repository to your Linux environment. This can be done using:
```
git clone ...
```

### Setup of simulators and environment variables.

Go to the root of the project repository and execute the command `source env.sh`, you should get the information that is similar to the following. Note that you will need to perform this operation everytime you use a different bash session, otherwise, the scripts will not be able to locate the files.
```
$ source env.sh
===== Computer Architecture Course Environment Setup =====
Important: this script should be used as `source env.sh` and should only be used in bash
Project Root ($PROJECT_ROOT):		/home/your/path/to/repo/carch-project
iverilog Version ($IVERILOG_VERSION):	 Icarus Verilog version 10.3 (stable) (v10_3)
verilator Version ($VERILATOR_VERSION):	Verilator 4.210 2021-07-07 rev v4.210-19-gde408a5e Verilator 3.916 2017-11-25 rev verilator_3_914-65-g0478dbd
Vivado Version ($VIVADO_VERSION): 	 Vivado v2018.3 (64-bit)
===== Computer Architecture Course Environment Done  =====
```

- You should see at least one of the `iverilog Version`, `verilator Version` or `Vivado Version` pops up if you are using the repository locally.
- You should see all of the three simulators pop up with proper version if you are using the ECE Linux server.

## Test Run
After setting up the environment, we go through a test run to make sure everything is setup.

Go to the `project/pd0/verif/scripts` testing directory with `cd`.

And run the following command. Since the code for exercise 3.3 and 3.4 is not done, it prints fatal error that the tests are not successful and this is expected. Note the `-s` option of the `make` command, it stops the echo of command invocation from showing up. You may try `make run IVERILOG=1 TEST=test_pd0` to see what is happening.
```
$ make -s run IVERILOG=1 TEST=test_pd0
IVerilog Compilation
IVerilog Run
FATAL: /home/your/path/to/repo/carch-project/project/pd0/verif/tests/test_pd0.v:98:
[PD0] Signal(s) for exercise 3.3 is not defined in signals.h
       Time: 1 Scope: top.reg_and_arst_test
FATAL: /home/your/path/to/repo/carch-project/project/pd0/verif/tests/test_pd0.v:129:
[PD0] Signal(s) for exercise 3.4 is not defined in signals.h
       Time: 1 Scope: top.reg_and_reg_test
Makefile.iverilog:18: recipe for target 'run' failed
make: *** [run] Error 1
```

- If you prefer to use `verilator`, use `make -s run VERILATOR=1 TEST=test_pd0`.
- If you prefer to use `Vivado xsim`, use `make -s run XSIM=1 TEST=test_pd0`.

Note: you may get very noisy results for `verilator` and `xsim`, look for the `[PD0]` prefix in the output.

## Adding code

### How it works?
It is not easy to see upfront how the structure of the code works.

The following figure shows the structure of the **Verilog Modules** and their location.

![overall-stucture](project/pd0/docs/Overall-Structure.png)

In the figure, each block is annotated with module names/description and their file location.
An asterisk (\*) represents any string, depending on the PDs.

Gray shaded blocks indicate the files/modules that you should **NOT** touch.
When submitting, your code will be plugged in a fresh repo for testing so these changes will not have an effect when submitted.

Green shaded blocks indicate the files/modules that you should be modifying/adding.

There are 3 types of file that you will be modifying:
1. The **Signal Probes** in `project/pd*/design/signals.h`
2. The **Design Files** in `project/pd*/design/code/*.v`
3. The **File List** in `project/pd*/verif/scripts/design.f`

When testing, we compile your **Design Files** defined in the **File List**, 
then drive and read the **Signal Probes** in our testbench to determine whether 
an implementation is correct.

### Walk through

We take the `assign_and` as an example to show you how it is added to the project.
You will need to go through the same process when adding your modules.

#### Step 1. The design
The `assign_and.v` is located at `project/pd0/design/code/assign_and.v`.
It implements an and gate with combinational logic:
```verilog
module assign_and(
  input wire x,
  input wire y,
  output wire z
);
  assign z = x & y;
endmodule // and_assign
```

#### Step 2. Instantiate the design
The `pd0.v` located at `project/pd0/design/code/pd0.v` shows how you instantiate
the `assign_and` module as a sub-module.
```
module pd0(
  input clock,
  input reset
);
  /* demonstrating the usage of assign_and */
  reg assign_and_x;
  reg assign_and_y;
  wire assign_and_z;
  assign_and assign_and_0 (
    .x(assign_and_x),
    .y(assign_and_y),
    .z(assign_and_z)
  );
  /* other code ... */
endmodule
```
The `pd0` is your top design. 
You may have as many levels of sub-modules as you want and you will have the freedom to specify their input/output ports.
Your top module, however, must only consists of two input ports `clock` and `reset`, as presented above.

Also notice how the input and output ports of `assign_and_0` are driven by wires and regs.
These are the probes that you provide for us so that we can control the input to your modules freely to test them.
You may also want to write your own test-benches to drive these signals to make sure you submission is correct.

#### Step 3. Edit the Probe File for probes

For each PD, we provide a list of probes that you should provide for us to manipulate your design.

The probe file is located at `pd0/design/signals.h`.
```verilog

`define ASSIGN_AND_X  assign_and_x
`define ASSIGN_AND_Y  assign_and_y
`define ASSIGN_AND_Z  assign_and_z
```

A probe is simply a macro definition where the macro names (`ASSIGN_AND_*`) 
are the names we will be using.
And the macro values (`assign_and_*`) are the signals within your design.
The macro values normally should be the name of/path to a wire or a reg.
The macro values you provide are relative to the top module.

For each PD, we will provide you with a list of probes that you should fill in and
a simple test that you should pass so that the type of the probes (wire or reg) should be correct.


#### Step 4. Edit the Probe File for top module name
You will also need to define the `TOP_MODULE` name of your design in the `pd0/design/signals.h` so that it can be instantiated properly.
```
/* some other code */

// ----- design -----
`define TOP_MODULE               pd0
// ----- design -----
```

#### Step 5. Edit the File List
You will need to update the design file list at `project/pd0/verif/scripts/design.f`.

Simply include all the files that you use in `project/pd0/design/code`.
Also, DO NOT include more than the code you use as it might cause errors.

#### Step 6. Run the tests
With the `env.sh` sourced properly, go to `project/pd0/verif/scripts/` and use:
`make run IVERILOG=1 TEST=test_pd0` to test your design.

If you use `verilator`, use:
`make run VERILATOR=1 TEST=test_pd0`

If you use `Vivado xsim`, use:
``make run XSIM=1 TEST=test_pd0`

## Submission

In `project/pd0/verif/scripts/`, use `make package YOUR_SIM=1` to package your code.

If you use `iverilog`, use `make package IVERILOG=1` to create a `package.iverilog.tar.gz`

If you use `verilator`, use `make package VERILATOR=1` to create a `package.verilator.tar.gz`

If you use `Vivado xsim`, use `make package XSIM=1` to create a `package.xsim.tar.gz`

You will need to upload the `package.*.tar.gz` to learn when done.

Note that you must set your simulator properly as the package name will include
information about the simulator you are using.
The tests may fail if you are not providing the proper simulator name.

