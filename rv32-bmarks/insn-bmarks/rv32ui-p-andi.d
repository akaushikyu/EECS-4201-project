
output/rv32ui-p-andi:     file format elf32-littleriscv


Disassembly of section .text.init:

01000000 <_start>:
 1000000:	ff0100b7          	lui	x1,0xff010
 1000004:	f0008093          	addi	x1,x1,-256 # ff00ff00 <begin_signature+0xfe00fc60>
 1000008:	f0f0ff13          	andi	x30,x1,-241
 100000c:	ff010eb7          	lui	x29,0xff010
 1000010:	f00e8e93          	addi	x29,x29,-256 # ff00ff00 <begin_signature+0xfe00fc60>
 1000014:	00200193          	addi	x3,x0,2
 1000018:	1bdf1463          	bne	x30,x29,10001c0 <fail>

0100001c <test_3>:
 100001c:	0ff010b7          	lui	x1,0xff01
 1000020:	ff008093          	addi	x1,x1,-16 # ff00ff0 <begin_signature+0xef00d50>
 1000024:	0f00ff13          	andi	x30,x1,240
 1000028:	0f000e93          	addi	x29,x0,240
 100002c:	00300193          	addi	x3,x0,3
 1000030:	19df1863          	bne	x30,x29,10001c0 <fail>

01000034 <test_4>:
 1000034:	00ff00b7          	lui	x1,0xff0
 1000038:	0ff08093          	addi	x1,x1,255 # ff00ff <_start-0xff01>
 100003c:	70f0ff13          	andi	x30,x1,1807
 1000040:	00f00e93          	addi	x29,x0,15
 1000044:	00400193          	addi	x3,x0,4
 1000048:	17df1c63          	bne	x30,x29,10001c0 <fail>

0100004c <test_5>:
 100004c:	f00ff0b7          	lui	x1,0xf00ff
 1000050:	00f08093          	addi	x1,x1,15 # f00ff00f <begin_signature+0xef0fed6f>
 1000054:	0f00ff13          	andi	x30,x1,240
 1000058:	00000e93          	addi	x29,x0,0
 100005c:	00500193          	addi	x3,x0,5
 1000060:	17df1063          	bne	x30,x29,10001c0 <fail>

01000064 <test_6>:
 1000064:	ff0100b7          	lui	x1,0xff010
 1000068:	f0008093          	addi	x1,x1,-256 # ff00ff00 <begin_signature+0xfe00fc60>
 100006c:	0f00f093          	andi	x1,x1,240
 1000070:	00000e93          	addi	x29,x0,0
 1000074:	00600193          	addi	x3,x0,6
 1000078:	15d09463          	bne	x1,x29,10001c0 <fail>

0100007c <test_7>:
 100007c:	00000213          	addi	x4,x0,0
 1000080:	0ff010b7          	lui	x1,0xff01
 1000084:	ff008093          	addi	x1,x1,-16 # ff00ff0 <begin_signature+0xef00d50>
 1000088:	70f0ff13          	andi	x30,x1,1807
 100008c:	000f0313          	addi	x6,x30,0
 1000090:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000094:	00200293          	addi	x5,x0,2
 1000098:	fe5214e3          	bne	x4,x5,1000080 <test_7+0x4>
 100009c:	70000e93          	addi	x29,x0,1792
 10000a0:	00700193          	addi	x3,x0,7
 10000a4:	11d31e63          	bne	x6,x29,10001c0 <fail>

010000a8 <test_8>:
 10000a8:	00000213          	addi	x4,x0,0
 10000ac:	00ff00b7          	lui	x1,0xff0
 10000b0:	0ff08093          	addi	x1,x1,255 # ff00ff <_start-0xff01>
 10000b4:	0f00ff13          	andi	x30,x1,240
 10000b8:	00000013          	addi	x0,x0,0
 10000bc:	000f0313          	addi	x6,x30,0
 10000c0:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10000c4:	00200293          	addi	x5,x0,2
 10000c8:	fe5212e3          	bne	x4,x5,10000ac <test_8+0x4>
 10000cc:	0f000e93          	addi	x29,x0,240
 10000d0:	00800193          	addi	x3,x0,8
 10000d4:	0fd31663          	bne	x6,x29,10001c0 <fail>

010000d8 <test_9>:
 10000d8:	00000213          	addi	x4,x0,0
 10000dc:	f00ff0b7          	lui	x1,0xf00ff
 10000e0:	00f08093          	addi	x1,x1,15 # f00ff00f <begin_signature+0xef0fed6f>
 10000e4:	f0f0ff13          	andi	x30,x1,-241
 10000e8:	00000013          	addi	x0,x0,0
 10000ec:	00000013          	addi	x0,x0,0
 10000f0:	000f0313          	addi	x6,x30,0
 10000f4:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10000f8:	00200293          	addi	x5,x0,2
 10000fc:	fe5210e3          	bne	x4,x5,10000dc <test_9+0x4>
 1000100:	f00ffeb7          	lui	x29,0xf00ff
 1000104:	00fe8e93          	addi	x29,x29,15 # f00ff00f <begin_signature+0xef0fed6f>
 1000108:	00900193          	addi	x3,x0,9
 100010c:	0bd31a63          	bne	x6,x29,10001c0 <fail>

01000110 <test_10>:
 1000110:	00000213          	addi	x4,x0,0
 1000114:	0ff010b7          	lui	x1,0xff01
 1000118:	ff008093          	addi	x1,x1,-16 # ff00ff0 <begin_signature+0xef00d50>
 100011c:	70f0ff13          	andi	x30,x1,1807
 1000120:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000124:	00200293          	addi	x5,x0,2
 1000128:	fe5216e3          	bne	x4,x5,1000114 <test_10+0x4>
 100012c:	70000e93          	addi	x29,x0,1792
 1000130:	00a00193          	addi	x3,x0,10
 1000134:	09df1663          	bne	x30,x29,10001c0 <fail>

01000138 <test_11>:
 1000138:	00000213          	addi	x4,x0,0
 100013c:	00ff00b7          	lui	x1,0xff0
 1000140:	0ff08093          	addi	x1,x1,255 # ff00ff <_start-0xff01>
 1000144:	00000013          	addi	x0,x0,0
 1000148:	0f00ff13          	andi	x30,x1,240
 100014c:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000150:	00200293          	addi	x5,x0,2
 1000154:	fe5214e3          	bne	x4,x5,100013c <test_11+0x4>
 1000158:	0f000e93          	addi	x29,x0,240
 100015c:	00b00193          	addi	x3,x0,11
 1000160:	07df1063          	bne	x30,x29,10001c0 <fail>

01000164 <test_12>:
 1000164:	00000213          	addi	x4,x0,0
 1000168:	f00ff0b7          	lui	x1,0xf00ff
 100016c:	00f08093          	addi	x1,x1,15 # f00ff00f <begin_signature+0xef0fed6f>
 1000170:	00000013          	addi	x0,x0,0
 1000174:	00000013          	addi	x0,x0,0
 1000178:	70f0ff13          	andi	x30,x1,1807
 100017c:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000180:	00200293          	addi	x5,x0,2
 1000184:	fe5212e3          	bne	x4,x5,1000168 <test_12+0x4>
 1000188:	00f00e93          	addi	x29,x0,15
 100018c:	00c00193          	addi	x3,x0,12
 1000190:	03df1863          	bne	x30,x29,10001c0 <fail>

01000194 <test_13>:
 1000194:	0f007093          	andi	x1,x0,240
 1000198:	00000e93          	addi	x29,x0,0
 100019c:	00d00193          	addi	x3,x0,13
 10001a0:	03d09063          	bne	x1,x29,10001c0 <fail>

010001a4 <test_14>:
 10001a4:	00ff00b7          	lui	x1,0xff0
 10001a8:	0ff08093          	addi	x1,x1,255 # ff00ff <_start-0xff01>
 10001ac:	70f0f013          	andi	x0,x1,1807
 10001b0:	00000e93          	addi	x29,x0,0
 10001b4:	00e00193          	addi	x3,x0,14
 10001b8:	01d01463          	bne	x0,x29,10001c0 <fail>
 10001bc:	00301c63          	bne	x0,x3,10001d4 <pass>

010001c0 <fail>:
 10001c0:	0ff0000f          	fence	iorw,iorw
 10001c4:	00018063          	beq	x3,x0,10001c4 <fail+0x4>
 10001c8:	00119193          	slli	x3,x3,0x1
 10001cc:	0011e193          	ori	x3,x3,1
 10001d0:	00000073          	ecall

010001d4 <pass>:
 10001d4:	0ff0000f          	fence	iorw,iorw
 10001d8:	00100193          	addi	x3,x0,1
 10001dc:	00000073          	ecall
 10001e0:	c0001073          	unimp
 10001e4:	0000                	c.unimp
 10001e6:	0000                	c.unimp
 10001e8:	0000                	c.unimp
 10001ea:	0000                	c.unimp
 10001ec:	0000                	c.unimp
 10001ee:	0000                	c.unimp
 10001f0:	0000                	c.unimp
 10001f2:	0000                	c.unimp
 10001f4:	0000                	c.unimp
 10001f6:	0000                	c.unimp
 10001f8:	0000                	c.unimp
 10001fa:	0000                	c.unimp
 10001fc:	0000                	c.unimp
 10001fe:	0000                	c.unimp
 1000200:	0000                	c.unimp
 1000202:	0000                	c.unimp

Disassembly of section .text:

01000290 <end_signature>:
 1000290:	0000                	c.unimp
 1000292:	0000                	c.unimp
