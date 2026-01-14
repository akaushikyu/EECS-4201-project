/*
 * Module: alu
 *
 * Description: A simple ALU module that does addition, subtraction,
 * logical or and logical and operation. The operations are
 * combinational circuits.
 *
 * Inputs:
 * 1) DWIDTH-wide input op1_i
 * 2) DWIDTH-wide input op2_i
 * 3) 2-bit selection signal sel_i
 * (refer constants_pkg.sv for the selection signals)
 *
 * Outputs:
 * 1) DWIDTH-wide result res_o
 * 2) 1-bit signal that is asserted if result is zero zero_o
 * 3) 1-bit signal that is asserted if result is negative neg_o
 */

// Declare the enumerations in a package
import constants_pkg::*;

module alu #(
    parameter int DWIDTH = 32)(
        input logic [1:0] sel_i,
        input logic [DWIDTH-1:0] op1_i,
        input logic [DWIDTH-1:0] op2_i,
        output logic [DWIDTH-1:0] res_o,
        output logic zero_o,
        output logic neg_o
    );

    /*
     * Process definitions to be filled by
     * student below...
     */
    always_comb begin
        res_o = '0;
        case (sel_i)
            ADD: res_o = op1_i + op2_i;
            SUB: res_o = op1_i - op2_i;
            AND: res_o = op1_i & op2_i;
            OR: res_o = op1_i | op2_i;
        endcase
    end
    assign zero_o = (res_o == 0); //condition: check if all zeros then result 1
    assign neg_o = res_o[DWIDTH-1]; //check the last bit for sign

endmodule: alu
