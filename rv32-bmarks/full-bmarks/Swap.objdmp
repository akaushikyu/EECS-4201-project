
Swap.elf:     file format elf32-littleriscv


Disassembly of section .text:

01000000 <main>:
 1000000:	fe010113          	addi	x2,x2,-32
 1000004:	00112e23          	sw	x1,28(x2)
 1000008:	00500793          	addi	x15,x0,5
 100000c:	00f12223          	sw	x15,4(x2)
 1000010:	00900793          	addi	x15,x0,9
 1000014:	00f12023          	sw	x15,0(x2)
 1000018:	00410793          	addi	x15,x2,4
 100001c:	00f12623          	sw	x15,12(x2)
 1000020:	00010793          	addi	x15,x2,0
 1000024:	00f12423          	sw	x15,8(x2)
 1000028:	00812583          	lw	x11,8(x2)
 100002c:	00c12503          	lw	x10,12(x2)
 1000030:	044000ef          	jal	x1,1000074 <swap>
 1000034:	00c12783          	lw	x15,12(x2)
 1000038:	0007a783          	lw	x15,0(x15)
 100003c:	00f12223          	sw	x15,4(x2)
 1000040:	00812783          	lw	x15,8(x2)
 1000044:	0007a783          	lw	x15,0(x15)
 1000048:	00f12023          	sw	x15,0(x2)
 100004c:	00412703          	lw	x14,4(x2)
 1000050:	00012783          	lw	x15,0(x2)
 1000054:	00f707b3          	add	x15,x14,x15
 1000058:	00078513          	addi	x10,x15,0
 100005c:	058000ef          	jal	x1,10000b4 <test>
 1000060:	00050793          	addi	x15,x10,0
 1000064:	00078513          	addi	x10,x15,0
 1000068:	01c12083          	lw	x1,28(x2)
 100006c:	02010113          	addi	x2,x2,32
 1000070:	00008067          	jalr	x0,0(x1)

01000074 <swap>:
 1000074:	fe010113          	addi	x2,x2,-32
 1000078:	00a12623          	sw	x10,12(x2)
 100007c:	00b12423          	sw	x11,8(x2)
 1000080:	00c12783          	lw	x15,12(x2)
 1000084:	0007a783          	lw	x15,0(x15)
 1000088:	00f12e23          	sw	x15,28(x2)
 100008c:	00812783          	lw	x15,8(x2)
 1000090:	0007a703          	lw	x14,0(x15)
 1000094:	00c12783          	lw	x15,12(x2)
 1000098:	00e7a023          	sw	x14,0(x15)
 100009c:	00812783          	lw	x15,8(x2)
 10000a0:	01c12703          	lw	x14,28(x2)
 10000a4:	00e7a023          	sw	x14,0(x15)
 10000a8:	00000013          	addi	x0,x0,0
 10000ac:	02010113          	addi	x2,x2,32
 10000b0:	00008067          	jalr	x0,0(x1)

010000b4 <test>:
 10000b4:	fe010113          	addi	x2,x2,-32
 10000b8:	00112e23          	sw	x1,28(x2)
 10000bc:	00a12623          	sw	x10,12(x2)
 10000c0:	00c12703          	lw	x14,12(x2)
 10000c4:	00e00793          	addi	x15,x0,14
 10000c8:	00f71863          	bne	x14,x15,10000d8 <test+0x24>
 10000cc:	024000ef          	jal	x1,10000f0 <pass>
 10000d0:	00050793          	addi	x15,x10,0
 10000d4:	00c0006f          	jal	x0,10000e0 <test+0x2c>
 10000d8:	024000ef          	jal	x1,10000fc <fail>
 10000dc:	00050793          	addi	x15,x10,0
 10000e0:	00078513          	addi	x10,x15,0
 10000e4:	01c12083          	lw	x1,28(x2)
 10000e8:	02010113          	addi	x2,x2,32
 10000ec:	00008067          	jalr	x0,0(x1)

010000f0 <pass>:
 10000f0:	00100793          	addi	x15,x0,1
 10000f4:	00078513          	addi	x10,x15,0
 10000f8:	00008067          	jalr	x0,0(x1)

010000fc <fail>:
 10000fc:	00000793          	addi	x15,x0,0
 1000100:	00078513          	addi	x10,x15,0
 1000104:	00008067          	jalr	x0,0(x1)

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347          	fmsub.d	f6,f6,f4,f7,rmm
   4:	2820                	c.fld	f8,80(x8)
   6:	29554e47          	fmsub.s	f28,f10,f21,f5,rmm
   a:	3820                	c.fld	f8,112(x8)
   c:	332e                	c.fldsp	f6,232(x2)
   e:	302e                	c.fldsp	f0,232(x2)
	...

Disassembly of section .riscv.attributes:

00000000 <.riscv.attributes>:
   0:	1941                	c.addi	x18,-16
   2:	0000                	c.unimp
   4:	7200                	c.flw	f8,32(x12)
   6:	7369                	c.lui	x6,0xffffa
   8:	01007663          	bgeu	x0,x16,14 <main-0xffffec>
   c:	0000000f          	fence	unknown,unknown
  10:	7205                	c.lui	x4,0xfffe1
  12:	3376                	c.fldsp	f6,376(x2)
  14:	6932                	c.flwsp	f18,12(x2)
  16:	7032                	c.flwsp	f0,44(x2)
  18:	0030                	c.addi4spn	x12,x2,8
