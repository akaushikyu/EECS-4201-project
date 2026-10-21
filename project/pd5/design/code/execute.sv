/*
 * Module: alu
 *
 * Description: ALU implementation for execute stage.
 *
 * Inputs:
 * 1) 32-bit PC pc_i
 * 2) 32-bit rs1 data rs1_i
 * 3) 32-bit rs2 data rs2_i
 * 4) 3-bit funct3 funct3_i
 * 5) 7-bit funct7 funct7_i
 * 6) 7-bit opcode opcode_i
 * 7) 32-bit immediate imm_i
 * 8) 1-bit operand 1 select rs1sel_i (0 = rs1, 1 = PC)
 * 9) 1-bit operand 2 select rs2sel_i (0 = rs2, 1 = immediate)
 * 10) 4-bit ALU select alusel_i
 * 11) 1-bit branch equal breq_i and less-than brlt_i from branch_control
 *
 * Outputs:
 * 1) 32-bit result of ALU res_o
 * 2) 1-bit branch taken signal brtaken_o
 */

`include "constants.svh"

module alu #(
    parameter int DWIDTH=32,
    parameter int AWIDTH=32
)(
    input logic [AWIDTH-1:0] pc_i,
    input logic [DWIDTH-1:0] rs1_i,
    input logic [DWIDTH-1:0] rs2_i,
    input logic [2:0] funct3_i,
    input logic [6:0] funct7_i,
    input logic [6:0] opcode_i,
    input logic [DWIDTH-1:0] imm_i,
    input logic rs1sel_i,
    input logic rs2sel_i,
    input logic [3:0] alusel_i,
    input logic breq_i,
    input logic brlt_i,
    output logic [DWIDTH-1:0] res_o,
    output logic brtaken_o
);

    logic [DWIDTH-1:0] op1, op2;
    assign op1 = rs1sel_i ? pc_i  : rs1_i;
    assign op2 = rs2sel_i ? imm_i : rs2_i;

    always_comb begin
        case (alusel_i)
            ALU_ADD:   res_o = op1 + op2;
            ALU_SUB:   res_o = op1 - op2;
            ALU_SLL:   res_o = op1 << op2[4:0];
            ALU_SLT:   res_o = {31'b0, $signed(op1) < $signed(op2)};
            ALU_SLTU:  res_o = {31'b0, op1 < op2};
            ALU_XOR:   res_o = op1 ^ op2;
            ALU_SRL:   res_o = op1 >> op2[4:0];
            ALU_SRA:   res_o = $signed(op1) >>> op2[4:0];
            ALU_OR:    res_o = op1 | op2;
            ALU_AND:   res_o = op1 & op2;
            ALU_PASSB: res_o = op2;
            default:   res_o = ZERO;
        endcase
    end

    // funct3 is decoded for every control-transfer opcode, but breq_i/brlt_i
    // are only set for conditional branches, so a JAL whose funct3 bits read
    // as BNE/BGE/BGEU reports taken (matches the reference model). Jumps are
    // redirected regardless, so this only affects the reported value.
    always_comb begin
        brtaken_o = 1'b0;
        if (opcode_i == OP_BRANCH || opcode_i == OP_JAL || opcode_i == OP_JALR) begin
            case (funct3_i)
                3'b000:  brtaken_o =  breq_i;   // BEQ
                3'b001:  brtaken_o = ~breq_i;   // BNE
                3'b100:  brtaken_o =  brlt_i;   // BLT
                3'b101:  brtaken_o = ~brlt_i;   // BGE
                3'b110:  brtaken_o =  brlt_i;   // BLTU
                3'b111:  brtaken_o = ~brlt_i;   // BGEU
                default: brtaken_o = 1'b0;
            endcase
        end
    end

endmodule : alu
