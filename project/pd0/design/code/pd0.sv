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
   input logic               clk,
   input logic               reset
   );

  
  // Probes that will be defined in probes.svh
  logic [DWIDTH-1:0]  assign_T;
  logic [DWIDTH-1:0]  assign_TSP_op1_i;
      
  logic [DWIDTH-1:0]  assign_TSP_op2_i;   
  logic [DWIDTH-1:0]  assign_alu_op1_i;   
  logic [DWIDTH-1:0]  assign_alu_op2_i;     
  logic [1:0]         assign_alu_sel_i;     
  logic [DWIDTH-1:0]  assign_reg_rst_in_i;  
  logic               assign_xor_op1;       
  logic               assign_xor_op2;          
                                             
  logic               assign_xor_res;     
  logic [DWIDTH-1:0]  assign_TSP_res_o;    
  logic               assign_alu_neg_o;    
  logic [DWIDTH-1:0]  assign_alu_res_o;      
  logic               assign_alu_zero_o;         
  logic [DWIDTH-1:0]  assign_reg_rst_out_o;
  


  
  assign_xor assign_xor_0  (
                           .op1_i (assign_xor_op1),
                           .op2_i (assign_xor_op2),
                           .res_o (assign_xor_res)
                           /*AUTOINST*/);
  
  
  /*
   * Instantiate other submodules and
   * probes. To be filled by student...
   *
   */

  

// input logic [DWIDTH-1:0] assign_TSP_op1_i,      
// input logic [DWIDTH-1:0] assign_TSP_op2_i,      
// // output logic              assign_alu_zero_o,      
// input logic [DWIDTH-1:0] assign_alu_op1_i,      
// // output logic [DWIDTH-1:0] assign_reg_rst_out_o
// input logic [DWIDTH-1:0] assign_alu_op2_i,     
// input logic [1:0]        assign_alu_sel_i,   
// input logic [DWIDTH-1:0] assign_reg_rst_in_i,  
// // output logic [DWIDTH-1:0] assign_TSP_res_o,  
// output logic              assign_alu_neg_o,    
// output logic [DWIDTH-1:0] assign_alu_res_o,                    

/* verilator lint_off PINMISSING */                
  alu #(.DWIDTH )assign_alu (
                             // Outputs
                             .res_o                (assign_alu_res_o),
                             .zero_o               (assign_alu_zero_o),
                             .neg_o                (assign_alu_neg_o),
                             
                             // Inputs
                             .sel_i                (assign_alu_sel_i),
                             .op1_i                (assign_alu_op1_i),
                             .op2_i                (assign_alu_op2_i)
                             /*AUTOINST*/);
  




  reg_rst #(.DWIDTH )assign_reg (
                     // Outputs         
                     .out_o             (assign_reg_rst_out_o),
    
                     // Inputs
                     .in_i              (assign_reg_rst_in_i),
    
                     // Inputs
                     /*AUTOINST*/
                     // Inputs
                     .clk               (clk),
                     .rst               (reset));

  
  three_stage_pipeline #(.DWIDTH )assign_three_stage_pipeline (
                                                   // Outputs
                                                   .res_o               (assign_TSP_res_o),
    
                                                   // Inputs
                                                   .op1_i               (assign_TSP_op1_i),
                                                   .op2_i               (assign_TSP_op2_i),
    
                                                   // Inputs
                                                   /*AUTOINST*/
                                                   // Inputs
                                                   .clk                 (clk),
                                                   .rst                 (reset));

  
  
  

  
endmodule: pd0
