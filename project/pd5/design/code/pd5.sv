/*
 * Module: pd5
 *
 * Description: Top level module that will contain sub-module instantiations.
 * Five-stage in-order pipeline (F, D, E, M, W) with:
 *   - MX and WX bypassing into execute (ALU operands and branch compare)
 *   - WM bypassing of store data into memory
 *   - stalls for load-use hazards and for a register being written back while
 *     decode reads it (the register file has no write-through)
 *   - branches and jumps resolved in execute; the two younger instructions in
 *     F/D and D/E are squashed into NOPs
 *
 * Inputs:
 * 1) clk
 * 2) reset signal
 */

`include "constants.svh"

module pd5 #(
    parameter int AWIDTH = 32,
    parameter int DWIDTH = 32)(
    input logic clk,
    input logic reset
);

 // Pipeline register contents
 typedef struct packed {
     logic              valid;
     logic [AWIDTH-1:0] pc;
     logic [DWIDTH-1:0] insn;
 } fd_t;

 typedef struct packed {
     logic              valid;
     logic [DWIDTH-1:0] insn;
     logic [AWIDTH-1:0] pc;
     logic [6:0]        opcode;
     logic [4:0]        rd;
     logic [4:0]        rs1;
     logic [4:0]        rs2;
     logic [2:0]        funct3;
     logic [6:0]        funct7;
     logic [DWIDTH-1:0] imm;
     logic [DWIDTH-1:0] rs1_data;
     logic [DWIDTH-1:0] rs2_data;
     logic              pcsel;
     logic              regwren;
     logic              rs1sel;
     logic              rs2sel;
     logic              memren;
     logic              memwren;
     logic [1:0]        wbsel;
     logic [3:0]        alusel;
 } de_t;

 typedef struct packed {
     logic              valid;
     logic [DWIDTH-1:0] insn;
     logic [AWIDTH-1:0] pc;
     logic [DWIDTH-1:0] alu_res;
     logic [DWIDTH-1:0] rs2_data;
     logic [4:0]        rs2;
     logic [4:0]        rd;
     logic [2:0]        funct3;
     logic              regwren;
     logic              memren;
     logic              memwren;
     logic [1:0]        wbsel;
 } em_t;

 typedef struct packed {
     logic              valid;
     logic [DWIDTH-1:0] insn;
     logic [AWIDTH-1:0] pc;
     logic [DWIDTH-1:0] alu_res;
     logic [DWIDTH-1:0] mem_data;
     logic [4:0]        rd;
     logic [2:0]        funct3;
     logic              regwren;
     logic [1:0]        wbsel;
 } mw_t;

 fd_t fd_q;
 de_t de_d, de_q;
 em_t em_d, em_q;
 mw_t mw_d, mw_q;

 // Hazard control
 logic stall;      // hold PC and F/D, send a bubble into execute
 logic redirect;   // taken branch or jump in execute

 // ---------------------------------------------------------------- Fetch
 logic [AWIDTH-1:0] f_pc;
 logic [DWIDTH-1:0] f_insn;
 logic [DWIDTH-1:0] data_out;  // fetched instruction
 logic [AWIDTH-1:0] next_pc;
 logic [AWIDTH-1:0] e_target;

 always_comb begin
     if (redirect)   next_pc = e_target;
     else if (stall) next_pc = f_pc;
     else            next_pc = f_pc + 32'd4;
 end

 fetch #(.AWIDTH(AWIDTH), .DWIDTH(DWIDTH)) fetch_0 (
     .clk       (clk),
     .rst       (reset),
     .insn_i    (data_out),
     .next_pc_i (next_pc),
     .pc_o      (f_pc),
     .insn_o    (f_insn)
 );

 memory #(.AWIDTH(AWIDTH), .DWIDTH(DWIDTH)) imem_0 (
     .clk        (clk),
     .rst        (reset),
     .addr_i     (f_pc),
     .data_i     ('0),
     .read_en_i  (1'b1),
     .write_en_i (1'b0),
     .funct3_i   (3'b010),
     .data_o     (data_out),
     .data_vld_o ()
 );

 // F/D: a squashed slot keeps its PC and becomes a NOP
 always_ff @(posedge clk) begin
     if (reset)         fd_q <= '0;
     else if (redirect) begin
         fd_q.insn <= NOP;
         fd_q.valid <= 1'b0;
     end
     else if (!stall)   fd_q <= '{valid: 1'b1, pc: f_pc, insn: f_insn};
 end

 // --------------------------------------------------------------- Decode
 logic [AWIDTH-1:0] d_pc;
 logic [DWIDTH-1:0] d_insn;
 logic [6:0]        d_opcode;
 logic [4:0]        d_rd;
 logic [4:0]        d_rs1;
 logic [4:0]        d_rs2;
 logic [6:0]        d_funct7;
 logic [2:0]        d_funct3;
 logic [4:0]        d_shamt;
 logic [DWIDTH-1:0] d_imm;

 decode #(.AWIDTH(AWIDTH), .DWIDTH(DWIDTH)) decode_0 (
     .clk      (clk),
     .rst      (reset),
     .insn_i   (fd_q.insn),
     .pc_i     (fd_q.pc),
     .pc_o     (d_pc),
     .insn_o   (d_insn),
     .opcode_o (d_opcode),
     .rd_o     (d_rd),
     .rs1_o    (d_rs1),
     .rs2_o    (d_rs2),
     .funct7_o (d_funct7),
     .funct3_o (d_funct3),
     .shamt_o  (d_shamt),
     .imm_o    (d_imm)
 );

 logic       c_pcsel;
 logic       c_immsel;
 logic       c_regwren;
 logic       c_rs1sel;
 logic       c_rs2sel;
 logic       c_memren;
 logic       c_memwren;
 logic [1:0] c_wbsel;
 logic [3:0] c_alusel;

 control #(.DWIDTH(DWIDTH)) control_0 (
     .insn_i    (d_insn),
     .opcode_i  (d_opcode),
     .funct7_i  (d_funct7),
     .funct3_i  (d_funct3),
     .pcsel_o   (c_pcsel),
     .immsel_o  (c_immsel),
     .regwren_o (c_regwren),
     .rs1sel_o  (c_rs1sel),
     .rs2sel_o  (c_rs2sel),
     .memren_o  (c_memren),
     .memwren_o (c_memwren),
     .wbsel_o   (c_wbsel),
     .alusel_o  (c_alusel)
 );

 // Register file: read in decode, written in writeback
 logic              r_write_enable;
 logic [4:0]        r_write_destination;
 logic [DWIDTH-1:0] r_write_data;
 logic [DWIDTH-1:0] r_rs1_data;
 logic [DWIDTH-1:0] r_rs2_data;

 assign r_write_enable      = mw_q.regwren;
 assign r_write_destination = mw_q.rd;
 assign r_write_data        = w_data;

 register_file #(.DWIDTH(DWIDTH)) register_file_0 (
     .clk       (clk),
     .rst       (reset),
     .rs1_i     (d_rs1),
     .rs2_i     (d_rs2),
     .rd_i      (r_write_destination),
     .datawb_i  (r_write_data),
     .regwren_i (r_write_enable),
     .rs1data_o (r_rs1_data),
     .rs2data_o (r_rs2_data)
 );

 // True when an instruction with this regwren/rd produces register rs
 function automatic logic writes(input logic regwren, input logic [4:0] rd,
                                 input logic [4:0] rs);
     return regwren && rd != 5'd0 && rd == rs;
 endfunction

 // Stall when decode needs a load result still in execute, or a register
 // that writeback is updating this cycle (the register file has no
 // write-through). The latter is only a hazard when no younger instruction
 // in execute or memory also writes that register: otherwise the stale read
 // is replaced by an MX/WX bypass later.
 function automatic logic wb_conflict(input logic [4:0] rs);
     return writes(mw_q.regwren, mw_q.rd, rs) &&
            !writes(de_q.regwren, de_q.rd, rs) &&
            !writes(em_q.regwren, em_q.rd, rs);
 endfunction

 // A store that only needs the load result as its data does not stall:
 // the WM bypass delivers it in time
 logic load_use;
 assign load_use = de_q.memren && (writes(1'b1, de_q.rd, d_rs1) ||
                                   (writes(1'b1, de_q.rd, d_rs2) && !c_memwren));
 assign stall    = load_use || wb_conflict(d_rs1) || wb_conflict(d_rs2);

 assign de_d = '{valid: fd_q.valid, insn: d_insn,
                 pc: d_pc, opcode: d_opcode, rd: d_rd, rs1: d_rs1, rs2: d_rs2,
                 funct3: d_funct3, funct7: d_funct7, imm: d_imm,
                 rs1_data: r_rs1_data, rs2_data: r_rs2_data,
                 pcsel: c_pcsel, regwren: c_regwren, rs1sel: c_rs1sel,
                 rs2sel: c_rs2sel, memren: c_memren, memwren: c_memwren,
                 wbsel: c_wbsel, alusel: c_alusel};

 // D/E: a bubble is the NOP (addi x0, x0, 0) carrying decode's PC
 always_ff @(posedge clk) begin
     if (reset)
         de_q <= '0;
     else if (redirect || stall)
         de_q <= '{pc: d_pc, opcode: OP_IMM, regwren: 1'b1, rs2sel: 1'b1,
                   alusel: ALU_ADD, wbsel: WB_ALU, default: '0};
     else
         de_q <= de_d;
 end

 // -------------------------------------------------------------- Execute
 logic [AWIDTH-1:0] e_pc;
 logic [DWIDTH-1:0] e_alu_res;
 logic              e_br_taken;
 logic [DWIDTH-1:0] e_rs1_data;
 logic [DWIDTH-1:0] e_rs2_data;
 logic [DWIDTH-1:0] e_store_data;
 logic [DWIDTH-1:0] m_fwd_data;

 assign e_pc = de_q.pc;

 // ALU/branch operands: MX bypass takes priority over WX (younger producer wins)
 always_comb begin
     if (writes(em_q.regwren, em_q.rd, de_q.rs1))      e_rs1_data = m_fwd_data;
     else if (writes(mw_q.regwren, mw_q.rd, de_q.rs1)) e_rs1_data = w_data;
     else                                              e_rs1_data = de_q.rs1_data;

     if (writes(em_q.regwren, em_q.rd, de_q.rs2))      e_rs2_data = m_fwd_data;
     else if (writes(mw_q.regwren, mw_q.rd, de_q.rs2)) e_rs2_data = w_data;
     else                                              e_rs2_data = de_q.rs2_data;
 end

 // Only instructions that write a register can supply forwarded store data.
 // In particular, a store's bits [11:7] are an immediate, not a destination.
 always_comb begin
     if (writes(em_q.regwren, em_q.rd, de_q.rs2)) e_store_data = m_fwd_data;
     else if (writes(mw_q.regwren, mw_q.rd, de_q.rs2)) e_store_data = w_data;
     else                                         e_store_data = de_q.rs2_data;
 end

 logic b_breq;
 logic b_brlt;

 branch_control #(.DWIDTH(DWIDTH)) branch_control_0 (
     .opcode_i (de_q.opcode),
     .funct3_i (de_q.funct3),
     .rs1_i    (e_rs1_data),
     .rs2_i    (e_rs2_data),
     .breq_o   (b_breq),
     .brlt_o   (b_brlt)
 );

 alu #(.DWIDTH(DWIDTH), .AWIDTH(AWIDTH)) alu_0 (
     .pc_i      (de_q.pc),
     .rs1_i     (e_rs1_data),
     .rs2_i     (e_rs2_data),
     .funct3_i  (de_q.funct3),
     .funct7_i  (de_q.funct7),
     .opcode_i  (de_q.opcode),
     .imm_i     (de_q.imm),
     .rs1sel_i  (de_q.rs1sel),
     .rs2sel_i  (de_q.rs2sel),
     .alusel_i  (de_q.alusel),
     .breq_i    (b_breq),
     .brlt_i    (b_brlt),
     .res_o     (e_alu_res),
     .brtaken_o (e_br_taken)
 );

 // Taken branches and jumps go to the ALU-computed target (bit 0 cleared for JALR)
 assign redirect = e_br_taken | de_q.pcsel;
 assign e_target = {e_alu_res[AWIDTH-1:1], 1'b0};

 assign em_d = '{valid: de_q.valid, insn: de_q.insn,
                 pc: de_q.pc, alu_res: e_alu_res, rs2_data: e_store_data,
                 rs2: de_q.rs2, rd: de_q.rd, funct3: de_q.funct3,
                 regwren: de_q.regwren, memren: de_q.memren,
                 memwren: de_q.memwren, wbsel: de_q.wbsel};

 always_ff @(posedge clk) begin
     if (reset) em_q <= '0;
     else       em_q <= em_d;
 end

 // --------------------------------------------------------------- Memory
 logic [AWIDTH-1:0] m_pc;
 logic [AWIDTH-1:0] m_address;
 logic [1:0]        m_size_encoded;
 logic [DWIDTH-1:0] m_data;       // store data, after the WM bypass
 logic [DWIDTH-1:0] m_load_data;

 assign m_pc           = em_q.pc;
 assign m_address      = em_q.alu_res;
 assign m_size_encoded = em_q.funct3[1:0];

 // Value forwarded from memory to execute: jumps write PC+4, not the ALU result
 assign m_fwd_data = (em_q.wbsel == WB_PC4) ? em_q.pc + 32'd4 : em_q.alu_res;

 // WM bypass: store data produced by the instruction now in writeback.
 assign m_data = writes(mw_q.regwren, mw_q.rd, em_q.rs2) ? w_data : em_q.rs2_data;

 memory #(.AWIDTH(AWIDTH), .DWIDTH(DWIDTH)) dmem_0 (
     .clk        (clk),
     .rst        (reset),
     .addr_i     (m_address),
     .data_i     (m_data),
     .read_en_i  (1'b1),
     .write_en_i (em_q.memwren),
     .funct3_i   (em_q.funct3),
     .data_o     (m_load_data),
     .data_vld_o ()
 );

 assign mw_d = '{valid: em_q.valid, insn: em_q.insn,
                 pc: em_q.pc, alu_res: em_q.alu_res, mem_data: m_load_data,
                 rd: em_q.rd, funct3: em_q.funct3, regwren: em_q.regwren,
                 wbsel: em_q.wbsel};

 always_ff @(posedge clk) begin
     if (reset) mw_q <= '0;
     else       mw_q <= mw_d;
 end

 // ------------------------------------------------------------ Writeback
 logic [AWIDTH-1:0] w_pc;
 logic              w_enable;
 logic [4:0]        w_destination;
 logic [DWIDTH-1:0] w_data;

 assign w_pc          = mw_q.pc;
 assign w_enable      = mw_q.regwren;
 assign w_destination = mw_q.rd;

 writeback #(.DWIDTH(DWIDTH), .AWIDTH(AWIDTH)) writeback_0 (
     .pc_i             (mw_q.pc),
     .alu_res_i        (mw_q.alu_res),
     .memory_data_i    (mw_q.mem_data),
     .wbsel_i          (mw_q.wbsel),
     .funct3_i         (mw_q.funct3),
     .writeback_data_o (w_data)
 );

// Simulation-only bare-metal termination. Wait until the terminating
// instruction reaches writeback, so wrong-path fetches cannot stop execution
// and all older register writes and stores have completed.
`ifndef PD5_EXTERNAL_TESTBENCH
`ifndef SYNTHESIS
always_ff @(posedge clk) begin
    if (!reset && mw_q.valid) begin
        if (mw_q.insn == 32'h00000073) begin
            $display("ECALL retired at %08x: gp=%0d a0=%0d", mw_q.pc,
                register_file_0.registers[3], register_file_0.registers[10]);
            $finish;
        end
        if (mw_q.insn == 32'h00008067 && mw_q.alu_res == 0 &&
            register_file_0.registers[2] == 32'h01000000 + `MEM_DEPTH) begin
            $display("main returned: a0=%0d", register_file_0.registers[10]);
            $finish;
        end
    end
end
`endif
`endif

endmodule : pd5
