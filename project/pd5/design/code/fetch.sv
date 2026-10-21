/*
 * Module: fetch
 *
 * Description: Fetch stage
 *
 * Inputs:
 * 1) clk
 * 2) rst signal
 * 3) DWIDTH wide instruction from memory insn_i
 * 4) AWIDTH wide next program counter next_pc_i
 *
 * Outputs:
 * 1) AWIDTH wide program counter pc_o
 * 2) DWIDTH wide instruction output insn_o
 */

module fetch #(
    parameter int DWIDTH=32,
    parameter int AWIDTH=32,
    parameter int BASEADDR=32'h01000000
    )(
	// inputs
	input logic clk,
	input logic rst,
	input logic [DWIDTH - 1:0] insn_i,
	input logic [AWIDTH - 1:0] next_pc_i,
	// outputs
	output logic [AWIDTH - 1:0] pc_o,
    output logic [DWIDTH - 1:0] insn_o
);
    // PC starts at BASEADDR and follows the next PC chosen in writeback
    always_ff @(posedge clk) begin
        if (rst)
            pc_o <= BASEADDR;
        else
            pc_o <= next_pc_i;
    end

    // pc_o drives the instruction memory address; its data comes back on insn_i
    assign insn_o = insn_i;

endmodule : fetch
				
