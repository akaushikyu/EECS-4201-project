# PD0 - Revisiting SystemVerilog and digital logic basics

## Description

In this PD, you will develop 3 digital circuits:
- A bare-bones combinational arithmetic logic unit that performs one of 4 functions based on the select signals: (1) addition, (2) subtraction, (3) logical AND, and (4) logical OR operation on two DWIDTH-wide inputs. By default, the DWIDTH is set to 32-bits. 
- A DWIDTH-wide write-enable register implementation with synchronous reset
- A 3-stage pipeline circuit that uses the developed ALU and register implementations. The details of the circuit can be found in the comments in `design/code/three_stage_pipeline.sv`

## Design steps

- The design templates and descriptions for these three circuits are described in the `design/code/*.sv` files. 
- Once you have the designs ready, instantiate the circuit modules and declare the necessary signals in the top level file `design/code/pd0.sv`.
- Replace the "??" in `design/probes.svh` with the appropriate signals defined in `design/code/pd0.sv`. We will use these to stress and verify your designs.
- If you have created more design files than those provided in the `design/code` directory, ensure to specify these files in `verif/scripts/design.f`. Otherwise, you will encounter compile issues.
- Compile, run and package your design as described [here](../../../README.md)
- Upload your design package on EClass 
