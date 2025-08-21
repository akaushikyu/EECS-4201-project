/*
 * Module: pd2
 *
 * Description: Top level module that will contain sub-module instantiations. 
 *
 * Inputs:
 * 1) clk
 * 2) reset signal
 */

module pd2 #(
    parameter int AWIDTH = 32,
    parameter int DWIDTH = 32)(
    input logic clk,
    input logic reset
);

 /*
  * Instantiate other submodules and 
  * probes. To be filled by student...
  *
  */

logic [AWIDTH-1:0] f_pc;
logic [DWIDTH-1:0] f_insn;
logic insn_valid;

logic [AWIDTH-1:0] d_pc;
logic [DWIDTH-1:0] d_insn;
logic [6:0] d_opcode;
logic [4:0] d_rd;
logic [4:0] d_rs1;
logic [4:0] d_rs2;
logic [6:0] d_funct7;
logic [2:0] d_funct3;
logic [DWIDTH-1:0] d_imm;
logic d_pcsel;
logic d_immsel;
logic d_regwren;
logic d_rs1sel;
logic d_rs2sel;
logic d_memren;
logic d_memwren;
logic [1:0] d_wbsel;
logic [3:0] d_alusel;

fetch f1 (
    .clk(clk),
    .rst(reset),
    .pc_o(f_pc),
    .insn_o(f_insn)
);

memory imem (
    .clk(clk),
    .rst(reset),
    .addr_i(f_pc),
    .data_i(32'b0),
    .read_en_i(1'b1),
    .write_en_i(1'b0),
    .data_o(f_insn),
    .data_vld_o(insn_valid)
);

decode d1 (
    .clk(clk),
    .rst(reset),
    .insn_i(f_insn),
    .pc_i(f_pc),
    .pc_o(d_pc),
    .insn_o(d_insn),
    .opcode_o(d_opcode),
    .rd_o(d_rd),
    .rs1_o(d_rs1),
    .rs2_o(d_rs2),
    .funct7_o(d_funct7),
    .funct3_o(d_funct3),
    .imm_o(d_imm)
);

control c1 (
    .insn_i(d_insn),
    .opcode_i(d_opcode),
    .funct7_i(d_funct7),
    .funct3_i(d_funct3),
    .pcsel_o(d_pcsel),
    .immsel_o(d_immsel),
    .regwren_o(d_regwren),
    .rs1sel_o(d_rs1sel),
    .rs2sel_o(d_rs2sel),
    .memren_o(d_memren),
    .memwren_o(d_memwren),
    .wbsel_o(d_wbsel),
    .alusel_o(d_alusel)
);

endmodule : pd2

