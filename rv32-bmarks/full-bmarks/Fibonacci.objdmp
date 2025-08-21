
Fibonacci.elf:     file format elf32-littleriscv


Disassembly of section .text:

01000000 <main>:
 1000000:	fe010113          	addi	x2,x2,-32
 1000004:	00112e23          	sw	x1,28(x2)
 1000008:	00a00513          	addi	x10,x0,10
 100000c:	024000ef          	jal	x1,1000030 <fib>
 1000010:	00a12623          	sw	x10,12(x2)
 1000014:	00c12503          	lw	x10,12(x2)
 1000018:	07c000ef          	jal	x1,1000094 <test>
 100001c:	00050793          	addi	x15,x10,0
 1000020:	00078513          	addi	x10,x15,0
 1000024:	01c12083          	lw	x1,28(x2)
 1000028:	02010113          	addi	x2,x2,32
 100002c:	00008067          	jalr	x0,0(x1)

01000030 <fib>:
 1000030:	fe010113          	addi	x2,x2,-32
 1000034:	00112e23          	sw	x1,28(x2)
 1000038:	00812c23          	sw	x8,24(x2)
 100003c:	00a12623          	sw	x10,12(x2)
 1000040:	00c12703          	lw	x14,12(x2)
 1000044:	00100793          	addi	x15,x0,1
 1000048:	00e7c663          	blt	x15,x14,1000054 <fib+0x24>
 100004c:	00c12783          	lw	x15,12(x2)
 1000050:	0300006f          	jal	x0,1000080 <fib+0x50>
 1000054:	00c12783          	lw	x15,12(x2)
 1000058:	fff78793          	addi	x15,x15,-1
 100005c:	00078513          	addi	x10,x15,0
 1000060:	fd1ff0ef          	jal	x1,1000030 <fib>
 1000064:	00050413          	addi	x8,x10,0
 1000068:	00c12783          	lw	x15,12(x2)
 100006c:	ffe78793          	addi	x15,x15,-2
 1000070:	00078513          	addi	x10,x15,0
 1000074:	fbdff0ef          	jal	x1,1000030 <fib>
 1000078:	00050793          	addi	x15,x10,0
 100007c:	00f407b3          	add	x15,x8,x15
 1000080:	00078513          	addi	x10,x15,0
 1000084:	01c12083          	lw	x1,28(x2)
 1000088:	01812403          	lw	x8,24(x2)
 100008c:	02010113          	addi	x2,x2,32
 1000090:	00008067          	jalr	x0,0(x1)

01000094 <test>:
 1000094:	fe010113          	addi	x2,x2,-32
 1000098:	00112e23          	sw	x1,28(x2)
 100009c:	00a12623          	sw	x10,12(x2)
 10000a0:	00c12703          	lw	x14,12(x2)
 10000a4:	03700793          	addi	x15,x0,55
 10000a8:	00f71863          	bne	x14,x15,10000b8 <test+0x24>
 10000ac:	024000ef          	jal	x1,10000d0 <pass>
 10000b0:	00050793          	addi	x15,x10,0
 10000b4:	00c0006f          	jal	x0,10000c0 <test+0x2c>
 10000b8:	024000ef          	jal	x1,10000dc <fail>
 10000bc:	00050793          	addi	x15,x10,0
 10000c0:	00078513          	addi	x10,x15,0
 10000c4:	01c12083          	lw	x1,28(x2)
 10000c8:	02010113          	addi	x2,x2,32
 10000cc:	00008067          	jalr	x0,0(x1)

010000d0 <pass>:
 10000d0:	00100793          	addi	x15,x0,1
 10000d4:	00078513          	addi	x10,x15,0
 10000d8:	00008067          	jalr	x0,0(x1)

010000dc <fail>:
 10000dc:	00000793          	addi	x15,x0,0
 10000e0:	00078513          	addi	x10,x15,0
 10000e4:	00008067          	jalr	x0,0(x1)

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
