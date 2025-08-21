
gcd.elf:     file format elf32-littleriscv


Disassembly of section .text:

01000000 <main>:
 1000000:	fe010113          	addi	x2,x2,-32
 1000004:	00112e23          	sw	x1,28(x2)
 1000008:	000017b7          	lui	x15,0x1
 100000c:	80078793          	addi	x15,x15,-2048 # 800 <main-0xfff800>
 1000010:	00f12623          	sw	x15,12(x2)
 1000014:	07c00793          	addi	x15,x0,124
 1000018:	00f12423          	sw	x15,8(x2)
 100001c:	00c12783          	lw	x15,12(x2)
 1000020:	41f7d793          	srai	x15,x15,0x1f
 1000024:	00c12703          	lw	x14,12(x2)
 1000028:	00f74733          	xor	x14,x14,x15
 100002c:	40f707b3          	sub	x15,x14,x15
 1000030:	00f12623          	sw	x15,12(x2)
 1000034:	00812783          	lw	x15,8(x2)
 1000038:	41f7d793          	srai	x15,x15,0x1f
 100003c:	00812703          	lw	x14,8(x2)
 1000040:	00f74733          	xor	x14,x14,x15
 1000044:	40f707b3          	sub	x15,x14,x15
 1000048:	00f12423          	sw	x15,8(x2)
 100004c:	0340006f          	jal	x0,1000080 <main+0x80>
 1000050:	00c12703          	lw	x14,12(x2)
 1000054:	00812783          	lw	x15,8(x2)
 1000058:	00e7dc63          	bge	x15,x14,1000070 <main+0x70>
 100005c:	00c12703          	lw	x14,12(x2)
 1000060:	00812783          	lw	x15,8(x2)
 1000064:	40f707b3          	sub	x15,x14,x15
 1000068:	00f12623          	sw	x15,12(x2)
 100006c:	0140006f          	jal	x0,1000080 <main+0x80>
 1000070:	00812703          	lw	x14,8(x2)
 1000074:	00c12783          	lw	x15,12(x2)
 1000078:	40f707b3          	sub	x15,x14,x15
 100007c:	00f12423          	sw	x15,8(x2)
 1000080:	00c12703          	lw	x14,12(x2)
 1000084:	00812783          	lw	x15,8(x2)
 1000088:	fcf714e3          	bne	x14,x15,1000050 <main+0x50>
 100008c:	00c12503          	lw	x10,12(x2)
 1000090:	018000ef          	jal	x1,10000a8 <test>
 1000094:	00050793          	addi	x15,x10,0
 1000098:	00078513          	addi	x10,x15,0
 100009c:	01c12083          	lw	x1,28(x2)
 10000a0:	02010113          	addi	x2,x2,32
 10000a4:	00008067          	jalr	x0,0(x1)

010000a8 <test>:
 10000a8:	ff010113          	addi	x2,x2,-16
 10000ac:	00a12623          	sw	x10,12(x2)
 10000b0:	00c12783          	lw	x15,12(x2)
 10000b4:	ffc78793          	addi	x15,x15,-4
 10000b8:	0017b793          	sltiu	x15,x15,1
 10000bc:	0ff7f793          	andi	x15,x15,255
 10000c0:	00078513          	addi	x10,x15,0
 10000c4:	01010113          	addi	x2,x2,16
 10000c8:	00008067          	jalr	x0,0(x1)

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
