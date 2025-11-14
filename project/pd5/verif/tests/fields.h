`define __F_RNG              127:0
`define __F_PC               31:0
`define __F_INSN             63:32

`define __D_RNG              255:128
`define __D_PC               31:0
`define __D_OPCODE           38:32
`define __D_RD               43:39
`define __D_RS1              48:44
`define __D_RS2              53:49
`define __D_FUNCT3           56:54
`define __D_FUNCT7           63:57
`define __D_IMM              95:64
`define __D_SHAMT            100:96

`define __R_RNG             383:256
`define __R_READ_RS1        4:0
`define __R_READ_RS2        9:5
`define __R_READ_RS1_DATA   41:10
`define __R_READ_RS2_DATA   73:42

`define __E_RNG              511:384
`define __E_PC               31:0
`define __E_ALU_RES          63:32
`define __E_BR_TAKEN         64:64

`define __M_RNG              639:512
`define __M_PC               31:0
`define __M_ADDRESS          63:32
`define __M_SIZE_ENCODED     65:64
`define __M_DATA             97:66

`define __W_RNG              767:640
`define __W_PC               31:0
`define __W_ENABLE           32:32
`define __W_DESTINATION      37:33
`define __W_DATA             69:38

`define __PATTERN_RNG        767:0
