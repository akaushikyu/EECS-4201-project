/*
 * Module: writeback
 *
 * Description: Write-back control stage implementation
 *
 * Inputs:
 * 1) PC pc_i
 * 2) result from alu alu_res_i
 * 3) data from memory memory_data_i
 * 4) data to select for write-back wbsel_i
 * 5) branch taken signal brtaken_i
 *
 * Outputs:
 * 1) DWIDTH wide write back data write_data_o
 */
`include"constants.svh"
 module writeback #(
    parameter int DWIDTH=32,
    parameter int AWIDTH=32
 )(
    input logic [AWIDTH-1:0] pc_i,
    input logic [DWIDTH-1:0] alu_res_i,
    input logic [DWIDTH-1:0] memory_data_i,
    input logic [1:0] wbsel_i,
    input logic brtaken_i,
    output logic [DWIDTH-1:0] writeback_data_o,
    output logic [AWIDTH-1:0] next_pc_o
 );

    wire [AWIDTH-1:0] pc_inc;
    assign pc_inc = pc_i + 32'd4;

    always_comb begin
        case(wbsel_i)
            wbALU           : writeback_data_o = alu_res_i;
            wbMEM           : writeback_data_o = memory_data_i;
            wbPC            : writeback_data_o = pc_i;
            wbJAL           : writeback_data_o = pc_inc;
            default         : writeback_data_o = 32'd0;
        endcase
    end

    assign next_pc_o = (brtaken_i || (wbsel_i == wbJAL)) ? alu_res_i : pc_inc;

endmodule : writeback
