/*
 * Module: igen
 *
 * Description: Immediate value generator
 *
 * Inputs:
 * 1) opcode opcode_i
 * 2) input instruction insn_i
 * Outputs:
 * 2) 32-bit immediate value imm_o
 */

`include "constants.svh"

module igen #(
    parameter int DWIDTH=32
    )(
    input logic [6:0] opcode_i,
    input logic [DWIDTH-1:0] insn_i,
    output logic [31:0] imm_o
);
    always_comb begin
        case (opcode_i)
            // I-type
            OP_IMM, OP_LOAD, OP_JALR, OP_SYSTEM:
                imm_o = {{20{insn_i[31]}}, insn_i[31:20]};
            // S-type
            OP_STORE:
                imm_o = {{20{insn_i[31]}}, insn_i[31:25], insn_i[11:7]};
            // B-type
            OP_BRANCH:
                imm_o = {{19{insn_i[31]}}, insn_i[31], insn_i[7],
                         insn_i[30:25], insn_i[11:8], 1'b0};
            // U-type
            OP_LUI, OP_AUIPC:
                imm_o = {insn_i[31:12], 12'b0};
            // J-type
            OP_JAL:
                imm_o = {{11{insn_i[31]}}, insn_i[31], insn_i[19:12],
                         insn_i[20], insn_i[30:21], 1'b0};
            // R-type and unknown
            default:
                imm_o = ZERO;
        endcase
    end

endmodule : igen
