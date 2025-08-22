# PD1 - Memory and fetch stage

## Description

In this PD, you will develop the **memory storage component** and **fetch stage**.
- The **memory** component template is provided in `design/code/memory.sv`. You have to complete the read and write logic. The code template has code to load a program's instruction data in memory. You can change the program loaded in memory by passing the `TEST=` compile flag during the build process.
- The **fetch stage** sends the program counter or instruction address to memory and returns the instruction data stored at the address.

## Design steps

1. The design templates and descriptions for these circuits are described in the `design/code/\*.sv` files. 
2. Once you have the designs ready, instantiate the circuit modules and declare the necessary signals in the top level file `design/code/pd1.sv`.
3. Write a test-bench that provides input stimulus to the design, and validates the correctness of your design. Ensure to write a comprehensive testbench that stresses your design.
4. Once you have validated your design with your test-bench, you are ready to test your design against the test cases in `verif/data/test*.x`. Follow the following sub-steps:
    1. First, replace the "??" in `design/probes.svh` with the appropriate signals defined in `design/code/pd1.sv`.
    2. If you have created more design files than those provided in the `design/code` directory, ensure to specify these files in `verif/scripts/design.f`. Otherwise, you will encounter compile issues.
    3. Compile your design as described [here](../../../README.md)
    4. Run the design by setting the `PATTERN_CHECK` flag to 1 for all tests included in `verif/data/`: 
    ```
    make run -C verif/scripts/ VSIM=1 TEST=<test-name> PATTERN_CHECK=1
    ```
    5. If all the tests have passed, you are ready to upload your design to EClass. If not, identify the failing pattern, and repeat step 3 with the specific test case and identify the logic bug.
    6. Package your design as described in [here](../../../README.md) and upload the package to EClass.
