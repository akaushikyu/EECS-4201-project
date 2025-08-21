
SimpleAdd.elf:     file format elf32-littleriscv


Disassembly of section .text:

01000000 <main>:
 1000000:	fe010113          	addi	x2,x2,-32
 1000004:	00112e23          	sw	x1,28(x2)
 1000008:	00300793          	addi	x15,x0,3
 100000c:	00f12623          	sw	x15,12(x2)
 1000010:	00200793          	addi	x15,x0,2
 1000014:	00f12423          	sw	x15,8(x2)
 1000018:	00012223          	sw	x0,4(x2)
 100001c:	00c12703          	lw	x14,12(x2)
 1000020:	00812783          	lw	x15,8(x2)
 1000024:	00f707b3          	add	x15,x14,x15
 1000028:	00f12223          	sw	x15,4(x2)
 100002c:	00412503          	lw	x10,4(x2)
 1000030:	018000ef          	jal	x1,1000048 <test>
 1000034:	00050793          	addi	x15,x10,0
 1000038:	00078513          	addi	x10,x15,0
 100003c:	01c12083          	lw	x1,28(x2)
 1000040:	02010113          	addi	x2,x2,32
 1000044:	00008067          	jalr	x0,0(x1)

01000048 <test>:
 1000048:	fe010113          	addi	x2,x2,-32
 100004c:	00112e23          	sw	x1,28(x2)
 1000050:	00a12623          	sw	x10,12(x2)
 1000054:	00c12703          	lw	x14,12(x2)
 1000058:	00500793          	addi	x15,x0,5
 100005c:	00f71863          	bne	x14,x15,100006c <test+0x24>
 1000060:	024000ef          	jal	x1,1000084 <pass>
 1000064:	00050793          	addi	x15,x10,0
 1000068:	00c0006f          	jal	x0,1000074 <test+0x2c>
 100006c:	024000ef          	jal	x1,1000090 <fail>
 1000070:	00050793          	addi	x15,x10,0
 1000074:	00078513          	addi	x10,x15,0
 1000078:	01c12083          	lw	x1,28(x2)
 100007c:	02010113          	addi	x2,x2,32
 1000080:	00008067          	jalr	x0,0(x1)

01000084 <pass>:
 1000084:	00100793          	addi	x15,x0,1
 1000088:	00078513          	addi	x10,x15,0
 100008c:	00008067          	jalr	x0,0(x1)

01000090 <fail>:
 1000090:	00000793          	addi	x15,x0,0
 1000094:	00078513          	addi	x10,x15,0
 1000098:	00008067          	jalr	x0,0(x1)

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
