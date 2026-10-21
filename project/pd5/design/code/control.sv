/*
 * Module: control
 *
 * Description: This module sets the control bits (control path) based on the decoded
 * instruction. Note that this is part of the decode stage but housed in a separate
 * module for better readability, debug and design purposes.
 *
 * Inputs:
 * 1) DWIDTH instruction ins_i
 * 2) 7-bit opcode opcode_i
 * 3) 7-bit funct7 funct7_i
 * 4) 3-bit funct3 funct3_i
 *
 * Outputs:
 * 1) 1-bit PC select pcsel_o
 * 2) 1-bit Immediate select immsel_o
 * 3) 1-bit register write en regwren_o
 * 4) 1-bit rs1 select rs1sel_o
 * 5) 1-bit rs2 select rs2sel_o
 * 6) k-bit ALU select alusel_o
 * 7) 1-bit memory read en memren_o
 * 8) 1-bit memory write en memwren_o
 * 9) 2-bit writeback sel wbsel_o
 */

`include "constants.svh"

module control #(
	parameter int DWIDTH=32
)(
	// inputs
    input logic [DWIDTH-1:0] insn_i,
    input logic [6:0] opcode_i,
    input logic [6:0] funct7_i,
    input logic [2:0] funct3_i,

    // outputs
    output logic pcsel_o,
    output logic immsel_o,
    output logic regwren_o,
    output logic rs1sel_o,
    output logic rs2sel_o,
    output logic memren_o,
    output logic memwren_o,
    output logic [1:0] wbsel_o,
    output logic [3:0] alusel_o
);

    /*
     * pcsel_o   : 1 = next PC comes from the ALU (jumps). Branches are
     *             resolved in execute, so they keep pcsel_o = 0 here.
     * immsel_o  : 1 = the instruction uses an immediate
     * rs1sel_o  : 0 = rs1, 1 = PC
     * rs2sel_o  : 0 = rs2, 1 = immediate
     * wbsel_o   : WB_ALU / WB_MEM / WB_PC4 (see constants.svh)
     */
    always_comb begin
        pcsel_o   = 1'b0;
        immsel_o  = 1'b0;
        regwren_o = 1'b0;
        rs1sel_o  = 1'b0;
        rs2sel_o  = 1'b0;
        memren_o  = 1'b0;
        memwren_o = 1'b0;
        wbsel_o   = WB_ALU;
        alusel_o  = ALU_ADD;

        case (opcode_i)
            OP_REG: begin
                regwren_o = 1'b1;
                alusel_o  = {funct7_i[5], funct3_i};
            end
            OP_IMM: begin
                immsel_o  = 1'b1;
                regwren_o = 1'b1;
                rs2sel_o  = 1'b1;
                // funct7[5] only distinguishes SRAI from SRLI
                alusel_o  = {(funct3_i == 3'b101) & funct7_i[5], funct3_i};
            end
            OP_LOAD: begin
                immsel_o  = 1'b1;
                regwren_o = 1'b1;
                rs2sel_o  = 1'b1;
                memren_o  = 1'b1;
                wbsel_o   = WB_MEM;
            end
            OP_STORE: begin
                immsel_o  = 1'b1;
                rs2sel_o  = 1'b1;
                memwren_o = 1'b1;
            end
            OP_BRANCH: begin
                immsel_o  = 1'b1;
                rs1sel_o  = 1'b1;
                rs2sel_o  = 1'b1;
            end
            OP_JAL: begin
                pcsel_o   = 1'b1;
                immsel_o  = 1'b1;
                regwren_o = 1'b1;
                rs1sel_o  = 1'b1;
                rs2sel_o  = 1'b1;
                wbsel_o   = WB_PC4;
            end
            OP_JALR: begin
                pcsel_o   = 1'b1;
                immsel_o  = 1'b1;
                regwren_o = 1'b1;
                rs2sel_o  = 1'b1;
                wbsel_o   = WB_PC4;
            end
            OP_LUI: begin
                immsel_o  = 1'b1;
                regwren_o = 1'b1;
                rs2sel_o  = 1'b1;
                alusel_o  = ALU_PASSB;
            end
            OP_AUIPC: begin
                immsel_o  = 1'b1;
                regwren_o = 1'b1;
                rs1sel_o  = 1'b1;
                rs2sel_o  = 1'b1;
            end
            default: ;
        endcase
    end

endmodule : control
