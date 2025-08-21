
output/rv32ui-p-lui:     file format elf32-littleriscv


Disassembly of section .text.init:

01000000 <_start>:
 1000000:	000000b7          	lui	x1,0x0
 1000004:	00000e93          	addi	x29,x0,0
 1000008:	00200193          	addi	x3,x0,2
 100000c:	05d09a63          	bne	x1,x29,1000060 <fail>

01000010 <test_3>:
 1000010:	fffff0b7          	lui	x1,0xfffff
 1000014:	4010d093          	srai	x1,x1,0x1
 1000018:	80000e93          	addi	x29,x0,-2048
 100001c:	00300193          	addi	x3,x0,3
 1000020:	05d09063          	bne	x1,x29,1000060 <fail>

01000024 <test_4>:
 1000024:	7ffff0b7          	lui	x1,0x7ffff
 1000028:	4140d093          	srai	x1,x1,0x14
 100002c:	7ff00e93          	addi	x29,x0,2047
 1000030:	00400193          	addi	x3,x0,4
 1000034:	03d09663          	bne	x1,x29,1000060 <fail>

01000038 <test_5>:
 1000038:	800000b7          	lui	x1,0x80000
 100003c:	4140d093          	srai	x1,x1,0x14
 1000040:	80000e93          	addi	x29,x0,-2048
 1000044:	00500193          	addi	x3,x0,5
 1000048:	01d09c63          	bne	x1,x29,1000060 <fail>

0100004c <test_6>:
 100004c:	80000037          	lui	x0,0x80000
 1000050:	00000e93          	addi	x29,x0,0
 1000054:	00600193          	addi	x3,x0,6
 1000058:	01d01463          	bne	x0,x29,1000060 <fail>
 100005c:	00301c63          	bne	x0,x3,1000074 <pass>

01000060 <fail>:
 1000060:	0ff0000f          	fence	iorw,iorw
 1000064:	00018063          	beq	x3,x0,1000064 <fail+0x4>
 1000068:	00119193          	slli	x3,x3,0x1
 100006c:	0011e193          	ori	x3,x3,1
 1000070:	00000073          	ecall

01000074 <pass>:
 1000074:	0ff0000f          	fence	iorw,iorw
 1000078:	00100193          	addi	x3,x0,1
 100007c:	00000073          	ecall
 1000080:	c0001073          	unimp

Disassembly of section .text:

01000110 <end_signature>:
 1000110:	0000                	c.unimp
 1000112:	0000                	c.unimp
