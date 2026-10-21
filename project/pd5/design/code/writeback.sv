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
 * 5) 3-bit load funct3 funct3_i
 *
 * Outputs:
 * 1) DWIDTH wide write back data write_data_o
 */

`include "constants.svh"

 module writeback #(
     parameter int DWIDTH=32,
     parameter int AWIDTH=32
 )(
     input logic [AWIDTH-1:0] pc_i,
     input logic [DWIDTH-1:0] alu_res_i,
     input logic [DWIDTH-1:0] memory_data_i,
     input logic [1:0] wbsel_i,
     input logic [2:0] funct3_i,
     output logic [DWIDTH-1:0] writeback_data_o
 );

    // Size and sign-extend loaded data; memory_data_i holds the bytes
    // starting at the load address
    logic [DWIDTH-1:0] load_data;
    always_comb begin
        case (funct3_i)
            3'b000:  load_data = {{24{memory_data_i[7]}},  memory_data_i[7:0]};   // LB
            3'b001:  load_data = {{16{memory_data_i[15]}}, memory_data_i[15:0]};  // LH
            3'b100:  load_data = {24'b0, memory_data_i[7:0]};                     // LBU
            3'b101:  load_data = {16'b0, memory_data_i[15:0]};                    // LHU
            default: load_data = memory_data_i;                                   // LW
        endcase
    end

    always_comb begin
        case (wbsel_i)
            WB_MEM:  writeback_data_o = load_data;
            WB_PC4:  writeback_data_o = pc_i + 32'd4;
            default: writeback_data_o = alu_res_i;
        endcase
    end

endmodule : writeback
