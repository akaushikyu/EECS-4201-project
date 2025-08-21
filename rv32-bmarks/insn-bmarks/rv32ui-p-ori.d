
output/rv32ui-p-ori:     file format elf32-littleriscv


Disassembly of section .text.init:

01000000 <_start>:
 1000000:	ff0100b7          	lui	x1,0xff010
 1000004:	f0008093          	addi	x1,x1,-256 # ff00ff00 <begin_signature+0xfe00fc60>
 1000008:	f0f0ef13          	ori	x30,x1,-241
 100000c:	f0f00e93          	addi	x29,x0,-241
 1000010:	00200193          	addi	x3,x0,2
 1000014:	1ddf1463          	bne	x30,x29,10001dc <fail>

01000018 <test_3>:
 1000018:	0ff010b7          	lui	x1,0xff01
 100001c:	ff008093          	addi	x1,x1,-16 # ff00ff0 <begin_signature+0xef00d50>
 1000020:	0f00ef13          	ori	x30,x1,240
 1000024:	0ff01eb7          	lui	x29,0xff01
 1000028:	ff0e8e93          	addi	x29,x29,-16 # ff00ff0 <begin_signature+0xef00d50>
 100002c:	00300193          	addi	x3,x0,3
 1000030:	1bdf1663          	bne	x30,x29,10001dc <fail>

01000034 <test_4>:
 1000034:	00ff00b7          	lui	x1,0xff0
 1000038:	0ff08093          	addi	x1,x1,255 # ff00ff <_start-0xff01>
 100003c:	70f0ef13          	ori	x30,x1,1807
 1000040:	00ff0eb7          	lui	x29,0xff0
 1000044:	7ffe8e93          	addi	x29,x29,2047 # ff07ff <_start-0xf801>
 1000048:	00400193          	addi	x3,x0,4
 100004c:	19df1863          	bne	x30,x29,10001dc <fail>

01000050 <test_5>:
 1000050:	f00ff0b7          	lui	x1,0xf00ff
 1000054:	00f08093          	addi	x1,x1,15 # f00ff00f <begin_signature+0xef0fed6f>
 1000058:	0f00ef13          	ori	x30,x1,240
 100005c:	f00ffeb7          	lui	x29,0xf00ff
 1000060:	0ffe8e93          	addi	x29,x29,255 # f00ff0ff <begin_signature+0xef0fee5f>
 1000064:	00500193          	addi	x3,x0,5
 1000068:	17df1a63          	bne	x30,x29,10001dc <fail>

0100006c <test_6>:
 100006c:	ff0100b7          	lui	x1,0xff010
 1000070:	f0008093          	addi	x1,x1,-256 # ff00ff00 <begin_signature+0xfe00fc60>
 1000074:	0f00e093          	ori	x1,x1,240
 1000078:	ff010eb7          	lui	x29,0xff010
 100007c:	ff0e8e93          	addi	x29,x29,-16 # ff00fff0 <begin_signature+0xfe00fd50>
 1000080:	00600193          	addi	x3,x0,6
 1000084:	15d09c63          	bne	x1,x29,10001dc <fail>

01000088 <test_7>:
 1000088:	00000213          	addi	x4,x0,0
 100008c:	0ff010b7          	lui	x1,0xff01
 1000090:	ff008093          	addi	x1,x1,-16 # ff00ff0 <begin_signature+0xef00d50>
 1000094:	0f00ef13          	ori	x30,x1,240
 1000098:	000f0313          	addi	x6,x30,0
 100009c:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10000a0:	00200293          	addi	x5,x0,2
 10000a4:	fe5214e3          	bne	x4,x5,100008c <test_7+0x4>
 10000a8:	0ff01eb7          	lui	x29,0xff01
 10000ac:	ff0e8e93          	addi	x29,x29,-16 # ff00ff0 <begin_signature+0xef00d50>
 10000b0:	00700193          	addi	x3,x0,7
 10000b4:	13d31463          	bne	x6,x29,10001dc <fail>

010000b8 <test_8>:
 10000b8:	00000213          	addi	x4,x0,0
 10000bc:	00ff00b7          	lui	x1,0xff0
 10000c0:	0ff08093          	addi	x1,x1,255 # ff00ff <_start-0xff01>
 10000c4:	70f0ef13          	ori	x30,x1,1807
 10000c8:	00000013          	addi	x0,x0,0
 10000cc:	000f0313          	addi	x6,x30,0
 10000d0:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10000d4:	00200293          	addi	x5,x0,2
 10000d8:	fe5212e3          	bne	x4,x5,10000bc <test_8+0x4>
 10000dc:	00ff0eb7          	lui	x29,0xff0
 10000e0:	7ffe8e93          	addi	x29,x29,2047 # ff07ff <_start-0xf801>
 10000e4:	00800193          	addi	x3,x0,8
 10000e8:	0fd31a63          	bne	x6,x29,10001dc <fail>

010000ec <test_9>:
 10000ec:	00000213          	addi	x4,x0,0
 10000f0:	f00ff0b7          	lui	x1,0xf00ff
 10000f4:	00f08093          	addi	x1,x1,15 # f00ff00f <begin_signature+0xef0fed6f>
 10000f8:	0f00ef13          	ori	x30,x1,240
 10000fc:	00000013          	addi	x0,x0,0
 1000100:	00000013          	addi	x0,x0,0
 1000104:	000f0313          	addi	x6,x30,0
 1000108:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 100010c:	00200293          	addi	x5,x0,2
 1000110:	fe5210e3          	bne	x4,x5,10000f0 <test_9+0x4>
 1000114:	f00ffeb7          	lui	x29,0xf00ff
 1000118:	0ffe8e93          	addi	x29,x29,255 # f00ff0ff <begin_signature+0xef0fee5f>
 100011c:	00900193          	addi	x3,x0,9
 1000120:	0bd31e63          	bne	x6,x29,10001dc <fail>

01000124 <test_10>:
 1000124:	00000213          	addi	x4,x0,0
 1000128:	0ff010b7          	lui	x1,0xff01
 100012c:	ff008093          	addi	x1,x1,-16 # ff00ff0 <begin_signature+0xef00d50>
 1000130:	0f00ef13          	ori	x30,x1,240
 1000134:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000138:	00200293          	addi	x5,x0,2
 100013c:	fe5216e3          	bne	x4,x5,1000128 <test_10+0x4>
 1000140:	0ff01eb7          	lui	x29,0xff01
 1000144:	ff0e8e93          	addi	x29,x29,-16 # ff00ff0 <begin_signature+0xef00d50>
 1000148:	00a00193          	addi	x3,x0,10
 100014c:	09df1863          	bne	x30,x29,10001dc <fail>

01000150 <test_11>:
 1000150:	00000213          	addi	x4,x0,0
 1000154:	00ff00b7          	lui	x1,0xff0
 1000158:	0ff08093          	addi	x1,x1,255 # ff00ff <_start-0xff01>
 100015c:	00000013          	addi	x0,x0,0
 1000160:	f0f0ef13          	ori	x30,x1,-241
 1000164:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000168:	00200293          	addi	x5,x0,2
 100016c:	fe5214e3          	bne	x4,x5,1000154 <test_11+0x4>
 1000170:	fff00e93          	addi	x29,x0,-1
 1000174:	00b00193          	addi	x3,x0,11
 1000178:	07df1263          	bne	x30,x29,10001dc <fail>

0100017c <test_12>:
 100017c:	00000213          	addi	x4,x0,0
 1000180:	f00ff0b7          	lui	x1,0xf00ff
 1000184:	00f08093          	addi	x1,x1,15 # f00ff00f <begin_signature+0xef0fed6f>
 1000188:	00000013          	addi	x0,x0,0
 100018c:	00000013          	addi	x0,x0,0
 1000190:	0f00ef13          	ori	x30,x1,240
 1000194:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000198:	00200293          	addi	x5,x0,2
 100019c:	fe5212e3          	bne	x4,x5,1000180 <test_12+0x4>
 10001a0:	f00ffeb7          	lui	x29,0xf00ff
 10001a4:	0ffe8e93          	addi	x29,x29,255 # f00ff0ff <begin_signature+0xef0fee5f>
 10001a8:	00c00193          	addi	x3,x0,12
 10001ac:	03df1863          	bne	x30,x29,10001dc <fail>

010001b0 <test_13>:
 10001b0:	0f006093          	ori	x1,x0,240
 10001b4:	0f000e93          	addi	x29,x0,240
 10001b8:	00d00193          	addi	x3,x0,13
 10001bc:	03d09063          	bne	x1,x29,10001dc <fail>

010001c0 <test_14>:
 10001c0:	00ff00b7          	lui	x1,0xff0
 10001c4:	0ff08093          	addi	x1,x1,255 # ff00ff <_start-0xff01>
 10001c8:	70f0e013          	ori	x0,x1,1807
 10001cc:	00000e93          	addi	x29,x0,0
 10001d0:	00e00193          	addi	x3,x0,14
 10001d4:	01d01463          	bne	x0,x29,10001dc <fail>
 10001d8:	00301c63          	bne	x0,x3,10001f0 <pass>

010001dc <fail>:
 10001dc:	0ff0000f          	fence	iorw,iorw
 10001e0:	00018063          	beq	x3,x0,10001e0 <fail+0x4>
 10001e4:	00119193          	slli	x3,x3,0x1
 10001e8:	0011e193          	ori	x3,x3,1
 10001ec:	00000073          	ecall

010001f0 <pass>:
 10001f0:	0ff0000f          	fence	iorw,iorw
 10001f4:	00100193          	addi	x3,x0,1
 10001f8:	00000073          	ecall
 10001fc:	c0001073          	unimp
 1000200:	0000                	c.unimp
 1000202:	0000                	c.unimp

Disassembly of section .text:

01000290 <end_signature>:
 1000290:	0000                	c.unimp
 1000292:	0000                	c.unimp
