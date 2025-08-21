
output/rv32ui-p-auipc:     file format elf32-littleriscv


Disassembly of section .text.init:

01000000 <_start>:
 1000000:	00002517          	auipc	x10,0x2
 1000004:	71c50513          	addi	x10,x10,1820 # 100271c <begin_signature+0x263c>
 1000008:	004005ef          	jal	x11,100000c <_start+0xc>
 100000c:	40b50533          	sub	x10,x10,x11
 1000010:	00002eb7          	lui	x29,0x2
 1000014:	710e8e93          	addi	x29,x29,1808 # 2710 <_start-0xffd8f0>
 1000018:	00200193          	addi	x3,x0,2
 100001c:	03d51463          	bne	x10,x29,1000044 <fail>

01000020 <test_3>:
 1000020:	ffffe517          	auipc	x10,0xffffe
 1000024:	8fc50513          	addi	x10,x10,-1796 # ffd91c <_start-0x26e4>
 1000028:	004005ef          	jal	x11,100002c <test_3+0xc>
 100002c:	40b50533          	sub	x10,x10,x11
 1000030:	ffffeeb7          	lui	x29,0xffffe
 1000034:	8f0e8e93          	addi	x29,x29,-1808 # ffffd8f0 <begin_signature+0xfeffd810>
 1000038:	00300193          	addi	x3,x0,3
 100003c:	01d51463          	bne	x10,x29,1000044 <fail>
 1000040:	00301c63          	bne	x0,x3,1000058 <pass>

01000044 <fail>:
 1000044:	0ff0000f          	fence	iorw,iorw
 1000048:	00018063          	beq	x3,x0,1000048 <fail+0x4>
 100004c:	00119193          	slli	x3,x3,0x1
 1000050:	0011e193          	ori	x3,x3,1
 1000054:	00000073          	ecall

01000058 <pass>:
 1000058:	0ff0000f          	fence	iorw,iorw
 100005c:	00100193          	addi	x3,x0,1
 1000060:	00000073          	ecall
 1000064:	c0001073          	unimp
 1000068:	0000                	c.unimp
 100006a:	0000                	c.unimp
 100006c:	0000                	c.unimp
 100006e:	0000                	c.unimp
 1000070:	0000                	c.unimp
 1000072:	0000                	c.unimp
 1000074:	0000                	c.unimp
 1000076:	0000                	c.unimp
 1000078:	0000                	c.unimp
 100007a:	0000                	c.unimp

Disassembly of section .text:

010000d0 <end_signature>:
 10000d0:	0000                	c.unimp
 10000d2:	0000                	c.unimp
