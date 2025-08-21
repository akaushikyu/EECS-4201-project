
SumArray.elf:     file format elf32-littleriscv


Disassembly of section .text:

01000000 <main>:
 1000000:	fc010113          	addi	x2,x2,-64
 1000004:	02112e23          	sw	x1,60(x2)
 1000008:	02012623          	sw	x0,44(x2)
 100000c:	02012423          	sw	x0,40(x2)
 1000010:	02012623          	sw	x0,44(x2)
 1000014:	0280006f          	jal	x0,100003c <main+0x3c>
 1000018:	02c12783          	lw	x15,44(x2)
 100001c:	00279793          	slli	x15,x15,0x2
 1000020:	03010713          	addi	x14,x2,48
 1000024:	00f707b3          	add	x15,x14,x15
 1000028:	02c12703          	lw	x14,44(x2)
 100002c:	fce7a823          	sw	x14,-48(x15)
 1000030:	02c12783          	lw	x15,44(x2)
 1000034:	00178793          	addi	x15,x15,1
 1000038:	02f12623          	sw	x15,44(x2)
 100003c:	02c12703          	lw	x14,44(x2)
 1000040:	00900793          	addi	x15,x0,9
 1000044:	fce7dae3          	bge	x15,x14,1000018 <main+0x18>
 1000048:	02012623          	sw	x0,44(x2)
 100004c:	0300006f          	jal	x0,100007c <main+0x7c>
 1000050:	02c12783          	lw	x15,44(x2)
 1000054:	00279793          	slli	x15,x15,0x2
 1000058:	03010713          	addi	x14,x2,48
 100005c:	00f707b3          	add	x15,x14,x15
 1000060:	fd07a783          	lw	x15,-48(x15)
 1000064:	02812703          	lw	x14,40(x2)
 1000068:	00f707b3          	add	x15,x14,x15
 100006c:	02f12423          	sw	x15,40(x2)
 1000070:	02c12783          	lw	x15,44(x2)
 1000074:	00178793          	addi	x15,x15,1
 1000078:	02f12623          	sw	x15,44(x2)
 100007c:	02c12703          	lw	x14,44(x2)
 1000080:	00900793          	addi	x15,x0,9
 1000084:	fce7d6e3          	bge	x15,x14,1000050 <main+0x50>
 1000088:	02812503          	lw	x10,40(x2)
 100008c:	018000ef          	jal	x1,10000a4 <test>
 1000090:	00050793          	addi	x15,x10,0
 1000094:	00078513          	addi	x10,x15,0
 1000098:	03c12083          	lw	x1,60(x2)
 100009c:	04010113          	addi	x2,x2,64
 10000a0:	00008067          	jalr	x0,0(x1)

010000a4 <test>:
 10000a4:	fe010113          	addi	x2,x2,-32
 10000a8:	00112e23          	sw	x1,28(x2)
 10000ac:	00a12623          	sw	x10,12(x2)
 10000b0:	00c12703          	lw	x14,12(x2)
 10000b4:	02d00793          	addi	x15,x0,45
 10000b8:	00f71863          	bne	x14,x15,10000c8 <test+0x24>
 10000bc:	024000ef          	jal	x1,10000e0 <pass>
 10000c0:	00050793          	addi	x15,x10,0
 10000c4:	00c0006f          	jal	x0,10000d0 <test+0x2c>
 10000c8:	024000ef          	jal	x1,10000ec <fail>
 10000cc:	00050793          	addi	x15,x10,0
 10000d0:	00078513          	addi	x10,x15,0
 10000d4:	01c12083          	lw	x1,28(x2)
 10000d8:	02010113          	addi	x2,x2,32
 10000dc:	00008067          	jalr	x0,0(x1)

010000e0 <pass>:
 10000e0:	00100793          	addi	x15,x0,1
 10000e4:	00078513          	addi	x10,x15,0
 10000e8:	00008067          	jalr	x0,0(x1)

010000ec <fail>:
 10000ec:	00000793          	addi	x15,x0,0
 10000f0:	00078513          	addi	x10,x15,0
 10000f4:	00008067          	jalr	x0,0(x1)

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
