
output/rv32ui-p-sltiu:     file format elf32-littleriscv


Disassembly of section .text.init:

01000000 <_start>:
 1000000:	00000093          	addi	x1,x0,0
 1000004:	0000bf13          	sltiu	x30,x1,0
 1000008:	00000e93          	addi	x29,x0,0
 100000c:	00200193          	addi	x3,x0,2
 1000010:	27df1263          	bne	x30,x29,1000274 <fail>

01000014 <test_3>:
 1000014:	00100093          	addi	x1,x0,1
 1000018:	0010bf13          	sltiu	x30,x1,1
 100001c:	00000e93          	addi	x29,x0,0
 1000020:	00300193          	addi	x3,x0,3
 1000024:	25df1863          	bne	x30,x29,1000274 <fail>

01000028 <test_4>:
 1000028:	00300093          	addi	x1,x0,3
 100002c:	0070bf13          	sltiu	x30,x1,7
 1000030:	00100e93          	addi	x29,x0,1
 1000034:	00400193          	addi	x3,x0,4
 1000038:	23df1e63          	bne	x30,x29,1000274 <fail>

0100003c <test_5>:
 100003c:	00700093          	addi	x1,x0,7
 1000040:	0030bf13          	sltiu	x30,x1,3
 1000044:	00000e93          	addi	x29,x0,0
 1000048:	00500193          	addi	x3,x0,5
 100004c:	23df1463          	bne	x30,x29,1000274 <fail>

01000050 <test_6>:
 1000050:	00000093          	addi	x1,x0,0
 1000054:	8000bf13          	sltiu	x30,x1,-2048
 1000058:	00100e93          	addi	x29,x0,1
 100005c:	00600193          	addi	x3,x0,6
 1000060:	21df1a63          	bne	x30,x29,1000274 <fail>

01000064 <test_7>:
 1000064:	800000b7          	lui	x1,0x80000
 1000068:	0000bf13          	sltiu	x30,x1,0
 100006c:	00000e93          	addi	x29,x0,0
 1000070:	00700193          	addi	x3,x0,7
 1000074:	21df1063          	bne	x30,x29,1000274 <fail>

01000078 <test_8>:
 1000078:	800000b7          	lui	x1,0x80000
 100007c:	8000bf13          	sltiu	x30,x1,-2048
 1000080:	00100e93          	addi	x29,x0,1
 1000084:	00800193          	addi	x3,x0,8
 1000088:	1fdf1663          	bne	x30,x29,1000274 <fail>

0100008c <test_9>:
 100008c:	00000093          	addi	x1,x0,0
 1000090:	7ff0bf13          	sltiu	x30,x1,2047
 1000094:	00100e93          	addi	x29,x0,1
 1000098:	00900193          	addi	x3,x0,9
 100009c:	1ddf1c63          	bne	x30,x29,1000274 <fail>

010000a0 <test_10>:
 10000a0:	800000b7          	lui	x1,0x80000
 10000a4:	fff08093          	addi	x1,x1,-1 # 7fffffff <begin_signature+0x7efffc9f>
 10000a8:	0000bf13          	sltiu	x30,x1,0
 10000ac:	00000e93          	addi	x29,x0,0
 10000b0:	00a00193          	addi	x3,x0,10
 10000b4:	1ddf1063          	bne	x30,x29,1000274 <fail>

010000b8 <test_11>:
 10000b8:	800000b7          	lui	x1,0x80000
 10000bc:	fff08093          	addi	x1,x1,-1 # 7fffffff <begin_signature+0x7efffc9f>
 10000c0:	7ff0bf13          	sltiu	x30,x1,2047
 10000c4:	00000e93          	addi	x29,x0,0
 10000c8:	00b00193          	addi	x3,x0,11
 10000cc:	1bdf1463          	bne	x30,x29,1000274 <fail>

010000d0 <test_12>:
 10000d0:	800000b7          	lui	x1,0x80000
 10000d4:	7ff0bf13          	sltiu	x30,x1,2047
 10000d8:	00000e93          	addi	x29,x0,0
 10000dc:	00c00193          	addi	x3,x0,12
 10000e0:	19df1a63          	bne	x30,x29,1000274 <fail>

010000e4 <test_13>:
 10000e4:	800000b7          	lui	x1,0x80000
 10000e8:	fff08093          	addi	x1,x1,-1 # 7fffffff <begin_signature+0x7efffc9f>
 10000ec:	8000bf13          	sltiu	x30,x1,-2048
 10000f0:	00100e93          	addi	x29,x0,1
 10000f4:	00d00193          	addi	x3,x0,13
 10000f8:	17df1e63          	bne	x30,x29,1000274 <fail>

010000fc <test_14>:
 10000fc:	00000093          	addi	x1,x0,0
 1000100:	fff0bf13          	sltiu	x30,x1,-1
 1000104:	00100e93          	addi	x29,x0,1
 1000108:	00e00193          	addi	x3,x0,14
 100010c:	17df1463          	bne	x30,x29,1000274 <fail>

01000110 <test_15>:
 1000110:	fff00093          	addi	x1,x0,-1
 1000114:	0010bf13          	sltiu	x30,x1,1
 1000118:	00000e93          	addi	x29,x0,0
 100011c:	00f00193          	addi	x3,x0,15
 1000120:	15df1a63          	bne	x30,x29,1000274 <fail>

01000124 <test_16>:
 1000124:	fff00093          	addi	x1,x0,-1
 1000128:	fff0bf13          	sltiu	x30,x1,-1
 100012c:	00000e93          	addi	x29,x0,0
 1000130:	01000193          	addi	x3,x0,16
 1000134:	15df1063          	bne	x30,x29,1000274 <fail>

01000138 <test_17>:
 1000138:	00b00093          	addi	x1,x0,11
 100013c:	00d0b093          	sltiu	x1,x1,13
 1000140:	00100e93          	addi	x29,x0,1
 1000144:	01100193          	addi	x3,x0,17
 1000148:	13d09663          	bne	x1,x29,1000274 <fail>

0100014c <test_18>:
 100014c:	00000213          	addi	x4,x0,0
 1000150:	00f00093          	addi	x1,x0,15
 1000154:	00a0bf13          	sltiu	x30,x1,10
 1000158:	000f0313          	addi	x6,x30,0
 100015c:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000160:	00200293          	addi	x5,x0,2
 1000164:	fe5216e3          	bne	x4,x5,1000150 <test_18+0x4>
 1000168:	00000e93          	addi	x29,x0,0
 100016c:	01200193          	addi	x3,x0,18
 1000170:	11d31263          	bne	x6,x29,1000274 <fail>

01000174 <test_19>:
 1000174:	00000213          	addi	x4,x0,0
 1000178:	00a00093          	addi	x1,x0,10
 100017c:	0100bf13          	sltiu	x30,x1,16
 1000180:	00000013          	addi	x0,x0,0
 1000184:	000f0313          	addi	x6,x30,0
 1000188:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 100018c:	00200293          	addi	x5,x0,2
 1000190:	fe5214e3          	bne	x4,x5,1000178 <test_19+0x4>
 1000194:	00100e93          	addi	x29,x0,1
 1000198:	01300193          	addi	x3,x0,19
 100019c:	0dd31c63          	bne	x6,x29,1000274 <fail>

010001a0 <test_20>:
 10001a0:	00000213          	addi	x4,x0,0
 10001a4:	01000093          	addi	x1,x0,16
 10001a8:	0090bf13          	sltiu	x30,x1,9
 10001ac:	00000013          	addi	x0,x0,0
 10001b0:	00000013          	addi	x0,x0,0
 10001b4:	000f0313          	addi	x6,x30,0
 10001b8:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10001bc:	00200293          	addi	x5,x0,2
 10001c0:	fe5212e3          	bne	x4,x5,10001a4 <test_20+0x4>
 10001c4:	00000e93          	addi	x29,x0,0
 10001c8:	01400193          	addi	x3,x0,20
 10001cc:	0bd31463          	bne	x6,x29,1000274 <fail>

010001d0 <test_21>:
 10001d0:	00000213          	addi	x4,x0,0
 10001d4:	00b00093          	addi	x1,x0,11
 10001d8:	00f0bf13          	sltiu	x30,x1,15
 10001dc:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10001e0:	00200293          	addi	x5,x0,2
 10001e4:	fe5218e3          	bne	x4,x5,10001d4 <test_21+0x4>
 10001e8:	00100e93          	addi	x29,x0,1
 10001ec:	01500193          	addi	x3,x0,21
 10001f0:	09df1263          	bne	x30,x29,1000274 <fail>

010001f4 <test_22>:
 10001f4:	00000213          	addi	x4,x0,0
 10001f8:	01100093          	addi	x1,x0,17
 10001fc:	00000013          	addi	x0,x0,0
 1000200:	0080bf13          	sltiu	x30,x1,8
 1000204:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000208:	00200293          	addi	x5,x0,2
 100020c:	fe5216e3          	bne	x4,x5,10001f8 <test_22+0x4>
 1000210:	00000e93          	addi	x29,x0,0
 1000214:	01600193          	addi	x3,x0,22
 1000218:	05df1e63          	bne	x30,x29,1000274 <fail>

0100021c <test_23>:
 100021c:	00000213          	addi	x4,x0,0
 1000220:	00c00093          	addi	x1,x0,12
 1000224:	00000013          	addi	x0,x0,0
 1000228:	00000013          	addi	x0,x0,0
 100022c:	00e0bf13          	sltiu	x30,x1,14
 1000230:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000234:	00200293          	addi	x5,x0,2
 1000238:	fe5214e3          	bne	x4,x5,1000220 <test_23+0x4>
 100023c:	00100e93          	addi	x29,x0,1
 1000240:	01700193          	addi	x3,x0,23
 1000244:	03df1863          	bne	x30,x29,1000274 <fail>

01000248 <test_24>:
 1000248:	fff03093          	sltiu	x1,x0,-1
 100024c:	00100e93          	addi	x29,x0,1
 1000250:	01800193          	addi	x3,x0,24
 1000254:	03d09063          	bne	x1,x29,1000274 <fail>

01000258 <test_25>:
 1000258:	00ff00b7          	lui	x1,0xff0
 100025c:	0ff08093          	addi	x1,x1,255 # ff00ff <_start-0xff01>
 1000260:	fff0b013          	sltiu	x0,x1,-1
 1000264:	00000e93          	addi	x29,x0,0
 1000268:	01900193          	addi	x3,x0,25
 100026c:	01d01463          	bne	x0,x29,1000274 <fail>
 1000270:	00301c63          	bne	x0,x3,1000288 <pass>

01000274 <fail>:
 1000274:	0ff0000f          	fence	iorw,iorw
 1000278:	00018063          	beq	x3,x0,1000278 <fail+0x4>
 100027c:	00119193          	slli	x3,x3,0x1
 1000280:	0011e193          	ori	x3,x3,1
 1000284:	00000073          	ecall

01000288 <pass>:
 1000288:	0ff0000f          	fence	iorw,iorw
 100028c:	00100193          	addi	x3,x0,1
 1000290:	00000073          	ecall
 1000294:	c0001073          	unimp
 1000298:	0000                	c.unimp
 100029a:	0000                	c.unimp
 100029c:	0000                	c.unimp
 100029e:	0000                	c.unimp
 10002a0:	0000                	c.unimp
 10002a2:	0000                	c.unimp
 10002a4:	0000                	c.unimp
 10002a6:	0000                	c.unimp
 10002a8:	0000                	c.unimp
 10002aa:	0000                	c.unimp
 10002ac:	0000                	c.unimp
 10002ae:	0000                	c.unimp
 10002b0:	0000                	c.unimp
 10002b2:	0000                	c.unimp
 10002b4:	0000                	c.unimp
 10002b6:	0000                	c.unimp
 10002b8:	0000                	c.unimp
 10002ba:	0000                	c.unimp
 10002bc:	0000                	c.unimp
 10002be:	0000                	c.unimp
 10002c0:	0000                	c.unimp
 10002c2:	0000                	c.unimp

Disassembly of section .text:

01000350 <end_signature>:
 1000350:	0000                	c.unimp
 1000352:	0000                	c.unimp
