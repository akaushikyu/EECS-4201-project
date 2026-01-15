/*
 * Module: reg_rst
 *
 * Description: A DWIDTH register implementation with
 * synchronous reset. Input is registered at the rising
 * edge of the clock.
 *
 * Inputs:
 * 1) clk
 * 2) rst signal
 * 3) DWIDTH input in_i
 *
 * Outputs:
 * 1) DWIDTH output out_o
 *
 */
module reg_rst #(
    parameter int DWIDTH = 32)(
    input logic clk,
    input logic rst,
    input logic [DWIDTH-1:0] in_i,
    output logic [DWIDTH-1:0] out_o
    );
    
    always @(posedge clk) begin
        if (rst) begin
          out_o<=0;
        end
        else begin          
            out_o<= in_i;
        end

    end
   
   

endmodule: reg_rst
