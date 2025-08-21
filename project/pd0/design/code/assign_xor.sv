/*
 *
 * Module assign_xor
 *
 * Takes two 1-bit inputs and computes the XOR operation
 *
 * Inputs:
 * 1) 1-bit input op1_i
 * 2) 1-bit input op2_i
 *
 * Outputs:
 * 1) 1-bit output res_o
 */

 module assign_xor (
     input logic op1_i,
     input logic op2_i,
     output logic res_o
 );

 assign res_o = op1_i ^ op2_i;

 endmodule: assign_xor
