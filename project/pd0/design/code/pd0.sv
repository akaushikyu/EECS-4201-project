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
module pd0 #(parameter int DWIDTH = 32)
  (
   input logic clk,
   input logic reset
  
  );

  
  // Probes that will be defined in probes.svh
  logic assign_xor_op1;
  logic assign_xor_op2;
  logic assign_xor_res;

  assign_xor assign_xor_0 (
                           .op1_i (assign_xor_op1),
                           .op2_i (assign_xor_op2),
                           .res_o (assign_xor_res)
                           /*AUTOINST*/);
  
  
  /*
   * Instantiate other submodules and
   * probes. To be filled by student...
   *
   */
  
  /*AUTOINPUT*/
  // Beginning of automatic inputs (from unused autoinst inputs)
  input logic [DWIDTH-1:0] assign_TSP_op1_i;    // To assign_three_stage_pipeline of three_stage_pipeline.v
  input logic [DWIDTH-1:0] assign_TSP_op2_i;    // To assign_three_stage_pipeline of three_stage_pipeline.v
  input logic [DWIDTH-1:0] assign_alu_op1_i;    // To assign_alu of alu.v
  input logic [DWIDTH-1:0] assign_alu_op2_i;    // To assign_alu of alu.v
  input logic [1:0]     assign_alu_sel_i;       // To assign_alu of alu.v
  input logic [DWIDTH-1:0] assign_reg_rst_in_i; // To assign_reg of reg_rst.v
  input logic           rst;                    // To assign_reg of reg_rst.v, ...
  // End of automatics
  
  /*AUTOOUTPUT*/
  // Beginning of automatic outputs (from unused autoinst outputs)
  output logic [DWIDTH-1:0] assign_TSP_res_o;   // From assign_three_stage_pipeline of three_stage_pipeline.v
  output logic          assign_alu_neg_o;       // From assign_alu of alu.v
  output logic [DWIDTH-1:0] assign_alu_res_o;   // From assign_alu of alu.v
  output logic          assign_alu_zero_o;      // From assign_alu of alu.v
  output logic [DWIDTH-1:0] assign_reg_rst_out_o;// From assign_reg of reg_rst.v
  // End of automatics
  


alu assign_alu (
                  // Outputs
                  .res_o                (assign_alu_res_o[DWIDTH-1:0]),
                  .zero_o               (assign_alu_zero_o),
                  .neg_o                (assign_alu_neg_o),
                  
                  // Inputs
                  .sel_i                (assign_alu_sel_i[1:0]),
                  .op1_i                (assign_alu_op1_i[DWIDTH-1:0]),
                  .op2_i                (assign_alu_op2_i[DWIDTH-1:0])
                /*AUTOINST*/);





  reg_rst assign_reg(
                     // Outputs         
                     .out_o             (assign_reg_rst_out_o[DWIDTH-1:0]),
                     
                     // Inputs
                     .in_i              (assign_reg_rst_in_i[DWIDTH-1:0]),
                     
                     // Inputs
                     /*AUTOINST*/
                     // Inputs
                     .clk               (clk),
                     .rst               (rst));

  
  three_stage_pipeline assign_three_stage_pipeline(
                                                   // Outputs
                                                   .res_o               (assign_TSP_res_o[DWIDTH-1:0]),
                                                   
                                                   // Inputs
                                                   .op1_i               (assign_TSP_op1_i[DWIDTH-1:0]),
                                                   .op2_i               (assign_TSP_op2_i[DWIDTH-1:0]),
                                                   
                                                   // Inputs
                                                   /*AUTOINST*/
                                                   // Inputs
                                                   .clk                 (clk),
                                                   .rst                 (rst));

  
  
  

  
endmodule: pd0
