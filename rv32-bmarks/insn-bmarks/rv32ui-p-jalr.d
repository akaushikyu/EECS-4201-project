
output/rv32ui-p-jalr:     file format elf32-littleriscv


Disassembly of section .text.init:

01000000 <_start>:
 1000000:	00200193          	addi	x3,x0,2
 1000004:	00000293          	addi	x5,x0,0
 1000008:	00000317          	auipc	x6,0x0
 100000c:	01030313          	addi	x6,x6,16 # 1000018 <target_2>
 1000010:	000302e7          	jalr	x5,0(x6)

01000014 <linkaddr_2>:
 1000014:	0c00006f          	jal	x0,10000d4 <fail>

01000018 <target_2>:
 1000018:	00000317          	auipc	x6,0x0
 100001c:	ffc30313          	addi	x6,x6,-4 # 1000014 <linkaddr_2>
 1000020:	0a629a63          	bne	x5,x6,10000d4 <fail>

01000024 <test_4>:
 1000024:	00400193          	addi	x3,x0,4
 1000028:	00000213          	addi	x4,x0,0
 100002c:	00000317          	auipc	x6,0x0
 1000030:	01030313          	addi	x6,x6,16 # 100003c <test_4+0x18>
 1000034:	000309e7          	jalr	x19,0(x6)
 1000038:	08301e63          	bne	x0,x3,10000d4 <fail>
 100003c:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000040:	00200293          	addi	x5,x0,2
 1000044:	fe5214e3          	bne	x4,x5,100002c <test_4+0x8>

01000048 <test_5>:
 1000048:	00500193          	addi	x3,x0,5
 100004c:	00000213          	addi	x4,x0,0
 1000050:	00000317          	auipc	x6,0x0
 1000054:	01430313          	addi	x6,x6,20 # 1000064 <test_5+0x1c>
 1000058:	00000013          	addi	x0,x0,0
 100005c:	000309e7          	jalr	x19,0(x6)
 1000060:	06301a63          	bne	x0,x3,10000d4 <fail>
 1000064:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000068:	00200293          	addi	x5,x0,2
 100006c:	fe5212e3          	bne	x4,x5,1000050 <test_5+0x8>

01000070 <test_6>:
 1000070:	00600193          	addi	x3,x0,6
 1000074:	00000213          	addi	x4,x0,0
 1000078:	00000317          	auipc	x6,0x0
 100007c:	01830313          	addi	x6,x6,24 # 1000090 <test_6+0x20>
 1000080:	00000013          	addi	x0,x0,0
 1000084:	00000013          	addi	x0,x0,0
 1000088:	000309e7          	jalr	x19,0(x6)
 100008c:	04301463          	bne	x0,x3,10000d4 <fail>
 1000090:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000094:	00200293          	addi	x5,x0,2
 1000098:	fe5210e3          	bne	x4,x5,1000078 <test_6+0x8>

0100009c <test_7>:
 100009c:	00100293          	addi	x5,x0,1
 10000a0:	00000317          	auipc	x6,0x0
 10000a4:	01c30313          	addi	x6,x6,28 # 10000bc <test_7+0x20>
 10000a8:	ffc30067          	jalr	x0,-4(x6)
 10000ac:	00128293          	addi	x5,x5,1
 10000b0:	00128293          	addi	x5,x5,1
 10000b4:	00128293          	addi	x5,x5,1
 10000b8:	00128293          	addi	x5,x5,1
 10000bc:	00128293          	addi	x5,x5,1
 10000c0:	00128293          	addi	x5,x5,1
 10000c4:	00400e93          	addi	x29,x0,4
 10000c8:	00700193          	addi	x3,x0,7
 10000cc:	01d29463          	bne	x5,x29,10000d4 <fail>
 10000d0:	00301c63          	bne	x0,x3,10000e8 <pass>

010000d4 <fail>:
 10000d4:	0ff0000f          	fence	iorw,iorw
 10000d8:	00018063          	beq	x3,x0,10000d8 <fail+0x4>
 10000dc:	00119193          	slli	x3,x3,0x1
 10000e0:	0011e193          	ori	x3,x3,1
 10000e4:	00000073          	ecall

010000e8 <pass>:
 10000e8:	0ff0000f          	fence	iorw,iorw
 10000ec:	00100193          	addi	x3,x0,1
 10000f0:	00000073          	ecall
 10000f4:	c0001073          	unimp
 10000f8:	0000                	c.unimp
 10000fa:	0000                	c.unimp
 10000fc:	0000                	c.unimp
 10000fe:	0000                	c.unimp
 1000100:	0000                	c.unimp
 1000102:	0000                	c.unimp

Disassembly of section .text:

01000190 <end_signature>:
 1000190:	0000                	c.unimp
 1000192:	0000                	c.unimp
