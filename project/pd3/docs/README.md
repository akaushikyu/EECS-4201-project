# PD3 - Branch control, execute, register file 

## Description

In this PD, you will develop the **execute stage**, **branch control** logic and **register file**.
- The **branch control** logic uses the fields decoded from the **decode stage** to setup the necessary branch control signals
- The **register file** implements the 32 32-bit RV32 registers. Ensure that the stack pointer register ('x2') is set such that the stack grows downwards (from high address to low address). 
- The **execute stage** logic compute the result based on the instruction and generates a 32-bit result.
- The code templates and descriptions are provided in `design/code/*.sv`.

## Design steps

1. The design templates and descriptions for these circuits are described in the `design/code/\*.sv` files. 
2. Once you have the designs ready, instantiate the circuit modules and declare the necessary signals in the top level file `design/code/pd3.sv`.
3. Write a test-bench that provides input stimulus to the design, and validates the correctness of your design. Ensure to write a comprehensive testbench that stresses your design.
4. Once you have validated your design with your test-bench, you are ready to test your design against the test cases in `verif/data/test*.x`. Follow the following sub-steps:
    1. First, replace the "??" in `design/probes.svh` with the appropriate signals defined in `design/code/pd3.sv`.
    2. If you have created more design files than those provided in the `design/code` directory, ensure to specify these files in `verif/scripts/design.f`. Otherwise, you will encounter compile issues.
    3. Compile your design as described [here](../../../README.md)
    4. Run the design by setting the `PATTERN_CHECK` flag to 1 for all tests included in `verif/data/`: 
    ```
    make run -C verif/scripts/ VSIM=1 TEST=<test-name> PATTERN_CHECK=1
    ```
    5. If all the tests have passed, you are ready to upload your design to EClass. If not, identify the failing pattern, and repeat step 3 with the specific test case and identify the logic bug.
    6. Package your design as described in [here](../../../README.md) and upload the package to EClass.
