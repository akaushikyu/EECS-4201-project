/*
 * Good practice to define constants and refer to them in the
 * design files. An example of some constants are provided to you
 * as a starting point
 *
 */
`ifndef CONSTANTS_SVH_
`define CONSTANTS_SVH_

parameter logic [31:0] ZERO = 32'd0;
parameter logic [31:0] NOP  = 32'h00000013;  // addi x0, x0, 0

// RV32I opcodes
parameter logic [6:0] OP_LUI    = 7'b0110111;
parameter logic [6:0] OP_AUIPC  = 7'b0010111;
parameter logic [6:0] OP_JAL    = 7'b1101111;
parameter logic [6:0] OP_JALR   = 7'b1100111;
parameter logic [6:0] OP_BRANCH = 7'b1100011;
parameter logic [6:0] OP_LOAD   = 7'b0000011;
parameter logic [6:0] OP_STORE  = 7'b0100011;
parameter logic [6:0] OP_IMM    = 7'b0010011;
parameter logic [6:0] OP_REG    = 7'b0110011;
parameter logic [6:0] OP_SYSTEM = 7'b1110011;

// ALU select, encoded as {funct7[5], funct3} for the R/I-type ALU ops
parameter logic [3:0] ALU_ADD   = 4'b0000;
parameter logic [3:0] ALU_SUB   = 4'b1000;
parameter logic [3:0] ALU_SLL   = 4'b0001;
parameter logic [3:0] ALU_SLT   = 4'b0010;
parameter logic [3:0] ALU_SLTU  = 4'b0011;
parameter logic [3:0] ALU_XOR   = 4'b0100;
parameter logic [3:0] ALU_SRL   = 4'b0101;
parameter logic [3:0] ALU_SRA   = 4'b1101;
parameter logic [3:0] ALU_OR    = 4'b0110;
parameter logic [3:0] ALU_AND   = 4'b0111;
parameter logic [3:0] ALU_PASSB = 4'b1111;  // result = op2 (LUI)

// Writeback select
parameter logic [1:0] WB_ALU    = 2'd0;
parameter logic [1:0] WB_MEM    = 2'd1;
parameter logic [1:0] WB_PC4    = 2'd2;

`endif
