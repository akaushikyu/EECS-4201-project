/*
 * Module: pd0
 *
 * Description: Top level module that will contain sub-module instantiations.
 * An instantiation of the assign_xor module is shown as an example. The other
 * modules must be instantiated similarly. Probes are defined, which will be used
 * to test This file also defines probes that will be used to test the design. Note
 * that the top level module should have only two inputs: clk and rest signals.
 *
 * Inputs:
 * 1) clk
 * 2) reset signal
 */

module pd0 #(
    parameter int DWIDTH = 32)
 (
    input logic clk,
    input logic reset
    );

 // Probes that will be defined in probes.svh
 logic assign_xor_op1;
 logic assign_xor_op2;
 logic assign_xor_res;
 
 // Probes for ALU
 logic [1:0] assign_alu_sel_i;
 logic [DWIDTH-1:0] assign_alu_op1_i;
 logic [DWIDTH-1:0] assign_alu_op2_i;
 logic [DWIDTH-1:0] assign_alu_res_o;
 
 //Probes for Register
 logic [DWIDTH-1:0] assign_reg_rst_in_i;
 logic [DWIDTH-1:0] assign_reg_rst_out_o;

 //Probes for three stage pipeline
 logic [DWIDTH-1:0] assign_three_stage_pipeline_op1_i;
 logic [DWIDTH-1:0] assign_three_stage_pipeline_op2_i;
 logic [DWIDTH-1:0] assign_three_stage_pipeline_res_o;


 assign_xor assign_xor_0 (
     .op1_i (assign_xor_op1),
     .op2_i (assign_xor_op2),
     .res_o (assign_xor_res)
 );


 /*
  * Instantiate other submodules and
  * probes. To be filled by student...
  *
  */
  alu assign_alu(
    .op1_i (assign_alu_op1_i),
    .op2_i (assign_alu_op2_i),
    .sel_i (assign_alu_sel_i),
    .res_o (assign_alu_res_o),
    .zero_o (),
    .neg_o ()
  );

  reg_rst assign_reg_rst(
    .clk (clk),
    .rst (reset),
    .in_i (assign_reg_rst_in_i),
    .out_o (assign_reg_rst_out_o)
  );

  three_stage_pipeline assign_three_stage_pipeline(
    .clk (clk),
    .rst (reset),//use the top reset
    .op1_i (assign_three_stage_pipeline_op1_i),
    .op2_i (assign_three_stage_pipeline_op2_i),
    .res_o (assign_three_stage_pipeline_res_o)
  );


endmodule: pd0
