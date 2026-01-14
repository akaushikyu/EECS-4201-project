// ----  Probes  ----
`define PROBE_ASSIGN_XOR_OP1 assign_xor_op1
`define PROBE_ASSIGN_XOR_OP2 assign_xor_op2
`define PROBE_ASSIGN_XOR_RES assign_xor_res

// Define other probes as required....
`define PROBE_ALU_OP1 assign_alu_op1_i
`define PROBE_ALU_OP2 assign_alu_op2_i
`define PROBE_ALU_RES assign_alu_res_o
`define PROBE_ALU_SEL assign_alu_sel_i


`define PROBE_REG_IN  assign_reg_rst_in_i
`define PROBE_REG_OUT assign_reg_rst_out_o

`define PROBE_TSP_OP1 assign_three_stage_pipeline_op1_i
`define PROBE_TSP_OP2 assign_three_stage_pipeline_op2_i
`define PROBE_TSP_RES assign_three_stage_pipeline_res_o
// ----  Probes  ----

// ----  Top module  ----
`define TOP_MODULE  pd0
// ----  Top module  ----
