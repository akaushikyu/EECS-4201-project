/*
 * Module: decode
 *
 * Description: Decode stage
 * 
 * Inputs:
 * 1) clk
 * 2) rst signal
 * 3) insn_iruction ins_i
 * 4) program counter pc_i
 * Outputs:
 * 1) AWIDTH wide program counter pc_o
 * 2) DWIDTH wide insn_iruction output insn_o
 * 3) 5-bit wide destination register ID rd_o
 * 4) 5-bit wide source 1 register ID rs1_o
 * 5) 5-bit wide source 2 register ID rs2_o
 * 6) 7-bit wide funct7 funct7_o
 * 7) 3-bit wide funct3 funct3_o
 * 8) 20-bit wide immediiate imm_o
 * 9) 7-bit width opcode
 */

`include "constants.svh"

module decode #(
    parameter int DWIDTH=32,
    parameter int AWIDTH=32
)(
	// inputs
	input logic clk,
	input logic rst,
	input logic [DWIDTH - 1:0] insn_i,
	input logic [DWIDTH - 1:0] pc_i,
    
    // outputs
    output logic [AWIDTH-1:0] pc_o,
    output logic [DWIDTH-1:0] insn_o,
    output logic [6:0] opcode_o,
    output logic [4:0] rd_o,
    output logic [4:0] rs1_o,
    output logic [4:0] rs2_o,
    output logic [6:0] funct7_o,
    output logic [2:0] funct3_o,
    output logic [DWIDTH-1:0] imm_o
);	

	// Instruction assignments
	assign pc_o = pc_i;
    assign insn_o = insn_i;

	assign rs1_o = insn_i[19:15];
	assign rs2_o = insn_i[24:20];
	assign rd_o = insn_i[11:7];
	assign funct3_o = insn_i[14:12];
	assign funct7_o = insn_i[31:25];	

	logic [6:0] opcode;
	assign opcode = insn_i[6:0];
	assign opcode_o = opcode;

	always_comb begin
		case (opcode)
			ITYPE, LWITYPE: imm_o = {{20{insn_i[31]}}, insn_i[31:20]}; 							
			STYPE: imm_o = {{20{insn_i[31]}}, insn_i[30:25], insn_i[11:7]}; 						
            BTYPE: imm_o = {{20{insn_i[31]}}, insn_i[7], insn_i[30:25], insn_i[11:8], 1'b0}; 			
        	LUIUTYPE, AUIPCUTYPE: imm_o = {insn_i[31:12], 12'b0};
            JTYPE: imm_o = {{11{insn_i[31]}}, insn_i[19:12], insn_i[20], insn_i[30:21], 1'b0}; 		
            default: imm_o = 32'b0;								
		endcase
	end

endmodule : decode
