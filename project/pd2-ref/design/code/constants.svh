// constants.svh
`ifndef CONSTANTS_SVH_
`define CONSTANTS_SVH_

parameter int DWIDTH = 32;
parameter int RFNUM = 32;
parameter logic [31:0] ZERO = 32'h00000000;
parameter logic [31:0] WORDSIZE = 32'd4;
	
parameter logic [6:0] RTYPE = 7'b0110011;
parameter logic [6:0] ITYPE = 7'b0010011;
parameter logic [6:0] LWITYPE = 7'b0000011;
parameter logic [6:0] STYPE = 7'b0100011;
parameter logic [6:0] BTYPE = 7'b1100011;
parameter logic [6:0] LUIUTYPE = 7'b0110111;
parameter logic [6:0] AUIPCUTYPE = 7'b0010111;
parameter logic [6:0] JTYPE = 7'b1101111;

parameter logic [3:0] ADD = 4'b0000;
parameter logic [3:0] SUB = 4'b0001;
parameter logic [3:0] AND = 4'b0010;
parameter logic [3:0] OR = 4'b0011;
parameter logic [3:0] XOR = 4'b0100;
parameter logic [3:0] SLL = 4'b0101;
parameter logic [3:0] SRL = 4'b0110;
parameter logic [3:0] SLT = 4'b0111;
parameter logic [3:0] LW = 4'b1000;
parameter logic [3:0] SW = 4'b1001;

parameter logic ASEL = 1'b0;
parameter logic BSEL = 1'b0;
parameter logic IMMSEL = 1'b1;
parameter logic [1:0] EXE = 2'd1;
parameter logic [1:0] MEM = 2'd2;
parameter logic [1:0] PC = 2'd0;

`endif
