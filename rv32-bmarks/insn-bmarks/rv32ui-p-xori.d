
output/rv32ui-p-xori:     file format elf32-littleriscv


Disassembly of section .text.init:

01000000 <_start>:
 1000000:	00ff10b7          	lui	x1,0xff1
 1000004:	f0008093          	addi	x1,x1,-256 # ff0f00 <_start-0xf100>
 1000008:	f0f0cf13          	xori	x30,x1,-241
 100000c:	ff00feb7          	lui	x29,0xff00f
 1000010:	00fe8e93          	addi	x29,x29,15 # ff00f00f <begin_signature+0xfe00ed2f>
 1000014:	00200193          	addi	x3,x0,2
 1000018:	1ddf1663          	bne	x30,x29,10001e4 <fail>

0100001c <test_3>:
 100001c:	0ff010b7          	lui	x1,0xff01
 1000020:	ff008093          	addi	x1,x1,-16 # ff00ff0 <begin_signature+0xef00d10>
 1000024:	0f00cf13          	xori	x30,x1,240
 1000028:	0ff01eb7          	lui	x29,0xff01
 100002c:	f00e8e93          	addi	x29,x29,-256 # ff00f00 <begin_signature+0xef00c20>
 1000030:	00300193          	addi	x3,x0,3
 1000034:	1bdf1863          	bne	x30,x29,10001e4 <fail>

01000038 <test_4>:
 1000038:	00ff10b7          	lui	x1,0xff1
 100003c:	8ff08093          	addi	x1,x1,-1793 # ff08ff <_start-0xf701>
 1000040:	70f0cf13          	xori	x30,x1,1807
 1000044:	00ff1eb7          	lui	x29,0xff1
 1000048:	ff0e8e93          	addi	x29,x29,-16 # ff0ff0 <_start-0xf010>
 100004c:	00400193          	addi	x3,x0,4
 1000050:	19df1a63          	bne	x30,x29,10001e4 <fail>

01000054 <test_5>:
 1000054:	f00ff0b7          	lui	x1,0xf00ff
 1000058:	00f08093          	addi	x1,x1,15 # f00ff00f <begin_signature+0xef0fed2f>
 100005c:	0f00cf13          	xori	x30,x1,240
 1000060:	f00ffeb7          	lui	x29,0xf00ff
 1000064:	0ffe8e93          	addi	x29,x29,255 # f00ff0ff <begin_signature+0xef0fee1f>
 1000068:	00500193          	addi	x3,x0,5
 100006c:	17df1c63          	bne	x30,x29,10001e4 <fail>

01000070 <test_6>:
 1000070:	ff00f0b7          	lui	x1,0xff00f
 1000074:	70008093          	addi	x1,x1,1792 # ff00f700 <begin_signature+0xfe00f420>
 1000078:	70f0c093          	xori	x1,x1,1807
 100007c:	ff00feb7          	lui	x29,0xff00f
 1000080:	00fe8e93          	addi	x29,x29,15 # ff00f00f <begin_signature+0xfe00ed2f>
 1000084:	00600193          	addi	x3,x0,6
 1000088:	15d09e63          	bne	x1,x29,10001e4 <fail>

0100008c <test_7>:
 100008c:	00000213          	addi	x4,x0,0
 1000090:	0ff010b7          	lui	x1,0xff01
 1000094:	ff008093          	addi	x1,x1,-16 # ff00ff0 <begin_signature+0xef00d10>
 1000098:	0f00cf13          	xori	x30,x1,240
 100009c:	000f0313          	addi	x6,x30,0
 10000a0:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10000a4:	00200293          	addi	x5,x0,2
 10000a8:	fe5214e3          	bne	x4,x5,1000090 <test_7+0x4>
 10000ac:	0ff01eb7          	lui	x29,0xff01
 10000b0:	f00e8e93          	addi	x29,x29,-256 # ff00f00 <begin_signature+0xef00c20>
 10000b4:	00700193          	addi	x3,x0,7
 10000b8:	13d31663          	bne	x6,x29,10001e4 <fail>

010000bc <test_8>:
 10000bc:	00000213          	addi	x4,x0,0
 10000c0:	00ff10b7          	lui	x1,0xff1
 10000c4:	8ff08093          	addi	x1,x1,-1793 # ff08ff <_start-0xf701>
 10000c8:	70f0cf13          	xori	x30,x1,1807
 10000cc:	00000013          	addi	x0,x0,0
 10000d0:	000f0313          	addi	x6,x30,0
 10000d4:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10000d8:	00200293          	addi	x5,x0,2
 10000dc:	fe5212e3          	bne	x4,x5,10000c0 <test_8+0x4>
 10000e0:	00ff1eb7          	lui	x29,0xff1
 10000e4:	ff0e8e93          	addi	x29,x29,-16 # ff0ff0 <_start-0xf010>
 10000e8:	00800193          	addi	x3,x0,8
 10000ec:	0fd31c63          	bne	x6,x29,10001e4 <fail>

010000f0 <test_9>:
 10000f0:	00000213          	addi	x4,x0,0
 10000f4:	f00ff0b7          	lui	x1,0xf00ff
 10000f8:	00f08093          	addi	x1,x1,15 # f00ff00f <begin_signature+0xef0fed2f>
 10000fc:	0f00cf13          	xori	x30,x1,240
 1000100:	00000013          	addi	x0,x0,0
 1000104:	00000013          	addi	x0,x0,0
 1000108:	000f0313          	addi	x6,x30,0
 100010c:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000110:	00200293          	addi	x5,x0,2
 1000114:	fe5210e3          	bne	x4,x5,10000f4 <test_9+0x4>
 1000118:	f00ffeb7          	lui	x29,0xf00ff
 100011c:	0ffe8e93          	addi	x29,x29,255 # f00ff0ff <begin_signature+0xef0fee1f>
 1000120:	00900193          	addi	x3,x0,9
 1000124:	0dd31063          	bne	x6,x29,10001e4 <fail>

01000128 <test_10>:
 1000128:	00000213          	addi	x4,x0,0
 100012c:	0ff010b7          	lui	x1,0xff01
 1000130:	ff008093          	addi	x1,x1,-16 # ff00ff0 <begin_signature+0xef00d10>
 1000134:	0f00cf13          	xori	x30,x1,240
 1000138:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 100013c:	00200293          	addi	x5,x0,2
 1000140:	fe5216e3          	bne	x4,x5,100012c <test_10+0x4>
 1000144:	0ff01eb7          	lui	x29,0xff01
 1000148:	f00e8e93          	addi	x29,x29,-256 # ff00f00 <begin_signature+0xef00c20>
 100014c:	00a00193          	addi	x3,x0,10
 1000150:	09df1a63          	bne	x30,x29,10001e4 <fail>

01000154 <test_11>:
 1000154:	00000213          	addi	x4,x0,0
 1000158:	00ff10b7          	lui	x1,0xff1
 100015c:	fff08093          	addi	x1,x1,-1 # ff0fff <_start-0xf001>
 1000160:	00000013          	addi	x0,x0,0
 1000164:	00f0cf13          	xori	x30,x1,15
 1000168:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 100016c:	00200293          	addi	x5,x0,2
 1000170:	fe5214e3          	bne	x4,x5,1000158 <test_11+0x4>
 1000174:	00ff1eb7          	lui	x29,0xff1
 1000178:	ff0e8e93          	addi	x29,x29,-16 # ff0ff0 <_start-0xf010>
 100017c:	00b00193          	addi	x3,x0,11
 1000180:	07df1263          	bne	x30,x29,10001e4 <fail>

01000184 <test_12>:
 1000184:	00000213          	addi	x4,x0,0
 1000188:	f00ff0b7          	lui	x1,0xf00ff
 100018c:	00f08093          	addi	x1,x1,15 # f00ff00f <begin_signature+0xef0fed2f>
 1000190:	00000013          	addi	x0,x0,0
 1000194:	00000013          	addi	x0,x0,0
 1000198:	0f00cf13          	xori	x30,x1,240
 100019c:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10001a0:	00200293          	addi	x5,x0,2
 10001a4:	fe5212e3          	bne	x4,x5,1000188 <test_12+0x4>
 10001a8:	f00ffeb7          	lui	x29,0xf00ff
 10001ac:	0ffe8e93          	addi	x29,x29,255 # f00ff0ff <begin_signature+0xef0fee1f>
 10001b0:	00c00193          	addi	x3,x0,12
 10001b4:	03df1863          	bne	x30,x29,10001e4 <fail>

010001b8 <test_13>:
 10001b8:	0f004093          	xori	x1,x0,240
 10001bc:	0f000e93          	addi	x29,x0,240
 10001c0:	00d00193          	addi	x3,x0,13
 10001c4:	03d09063          	bne	x1,x29,10001e4 <fail>

010001c8 <test_14>:
 10001c8:	00ff00b7          	lui	x1,0xff0
 10001cc:	0ff08093          	addi	x1,x1,255 # ff00ff <_start-0xff01>
 10001d0:	70f0c013          	xori	x0,x1,1807
 10001d4:	00000e93          	addi	x29,x0,0
 10001d8:	00e00193          	addi	x3,x0,14
 10001dc:	01d01463          	bne	x0,x29,10001e4 <fail>
 10001e0:	00301c63          	bne	x0,x3,10001f8 <pass>

010001e4 <fail>:
 10001e4:	0ff0000f          	fence	iorw,iorw
 10001e8:	00018063          	beq	x3,x0,10001e8 <fail+0x4>
 10001ec:	00119193          	slli	x3,x3,0x1
 10001f0:	0011e193          	ori	x3,x3,1
 10001f4:	00000073          	ecall

010001f8 <pass>:
 10001f8:	0ff0000f          	fence	iorw,iorw
 10001fc:	00100193          	addi	x3,x0,1
 1000200:	00000073          	ecall
 1000204:	c0001073          	unimp
 1000208:	0000                	c.unimp
 100020a:	0000                	c.unimp
 100020c:	0000                	c.unimp
 100020e:	0000                	c.unimp
 1000210:	0000                	c.unimp
 1000212:	0000                	c.unimp
 1000214:	0000                	c.unimp
 1000216:	0000                	c.unimp
 1000218:	0000                	c.unimp
 100021a:	0000                	c.unimp
 100021c:	0000                	c.unimp
 100021e:	0000                	c.unimp
 1000220:	0000                	c.unimp
 1000222:	0000                	c.unimp
 1000224:	0000                	c.unimp
 1000226:	0000                	c.unimp
 1000228:	0000                	c.unimp
 100022a:	0000                	c.unimp
 100022c:	0000                	c.unimp
 100022e:	0000                	c.unimp
 1000230:	0000                	c.unimp
 1000232:	0000                	c.unimp
 1000234:	0000                	c.unimp
 1000236:	0000                	c.unimp
 1000238:	0000                	c.unimp
 100023a:	0000                	c.unimp
 100023c:	0000                	c.unimp
 100023e:	0000                	c.unimp
 1000240:	0000                	c.unimp
 1000242:	0000                	c.unimp

Disassembly of section .text:

010002d0 <end_signature>:
 10002d0:	0000                	c.unimp
 10002d2:	0000                	c.unimp
