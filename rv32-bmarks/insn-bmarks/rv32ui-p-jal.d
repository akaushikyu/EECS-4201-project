
output/rv32ui-p-jal:     file format elf32-littleriscv


Disassembly of section .text.init:

01000000 <_start>:
 1000000:	00200193          	addi	x3,x0,2
 1000004:	00000093          	addi	x1,x0,0
 1000008:	0100026f          	jal	x4,1000018 <target_2>

0100000c <linkaddr_2>:
 100000c:	00000013          	addi	x0,x0,0
 1000010:	00000013          	addi	x0,x0,0
 1000014:	0400006f          	jal	x0,1000054 <fail>

01000018 <target_2>:
 1000018:	00000117          	auipc	x2,0x0
 100001c:	ff410113          	addi	x2,x2,-12 # 100000c <linkaddr_2>
 1000020:	02411a63          	bne	x2,x4,1000054 <fail>

01000024 <test_3>:
 1000024:	00100093          	addi	x1,x0,1
 1000028:	0140006f          	jal	x0,100003c <test_3+0x18>
 100002c:	00108093          	addi	x1,x1,1
 1000030:	00108093          	addi	x1,x1,1
 1000034:	00108093          	addi	x1,x1,1
 1000038:	00108093          	addi	x1,x1,1
 100003c:	00108093          	addi	x1,x1,1
 1000040:	00108093          	addi	x1,x1,1
 1000044:	00300e93          	addi	x29,x0,3
 1000048:	00300193          	addi	x3,x0,3
 100004c:	01d09463          	bne	x1,x29,1000054 <fail>
 1000050:	00301c63          	bne	x0,x3,1000068 <pass>

01000054 <fail>:
 1000054:	0ff0000f          	fence	iorw,iorw
 1000058:	00018063          	beq	x3,x0,1000058 <fail+0x4>
 100005c:	00119193          	slli	x3,x3,0x1
 1000060:	0011e193          	ori	x3,x3,1
 1000064:	00000073          	ecall

01000068 <pass>:
 1000068:	0ff0000f          	fence	iorw,iorw
 100006c:	00100193          	addi	x3,x0,1
 1000070:	00000073          	ecall
 1000074:	c0001073          	unimp
 1000078:	0000                	c.unimp
 100007a:	0000                	c.unimp
 100007c:	0000                	c.unimp
 100007e:	0000                	c.unimp
 1000080:	0000                	c.unimp
 1000082:	0000                	c.unimp

Disassembly of section .text:

01000110 <end_signature>:
 1000110:	0000                	c.unimp
 1000112:	0000                	c.unimp
