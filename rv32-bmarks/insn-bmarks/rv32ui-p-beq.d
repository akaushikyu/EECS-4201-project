
output/rv32ui-p-beq:     file format elf32-littleriscv


Disassembly of section .text.init:

01000000 <_start>:
 1000000:	00200193          	addi	x3,x0,2
 1000004:	00000093          	addi	x1,x0,0
 1000008:	00000113          	addi	x2,x0,0
 100000c:	00208663          	beq	x1,x2,1000018 <_start+0x18>
 1000010:	2a301863          	bne	x0,x3,10002c0 <fail>
 1000014:	00301663          	bne	x0,x3,1000020 <test_3>
 1000018:	fe208ee3          	beq	x1,x2,1000014 <_start+0x14>
 100001c:	2a301263          	bne	x0,x3,10002c0 <fail>

01000020 <test_3>:
 1000020:	00300193          	addi	x3,x0,3
 1000024:	00100093          	addi	x1,x0,1
 1000028:	00100113          	addi	x2,x0,1
 100002c:	00208663          	beq	x1,x2,1000038 <test_3+0x18>
 1000030:	28301863          	bne	x0,x3,10002c0 <fail>
 1000034:	00301663          	bne	x0,x3,1000040 <test_4>
 1000038:	fe208ee3          	beq	x1,x2,1000034 <test_3+0x14>
 100003c:	28301263          	bne	x0,x3,10002c0 <fail>

01000040 <test_4>:
 1000040:	00400193          	addi	x3,x0,4
 1000044:	fff00093          	addi	x1,x0,-1
 1000048:	fff00113          	addi	x2,x0,-1
 100004c:	00208663          	beq	x1,x2,1000058 <test_4+0x18>
 1000050:	26301863          	bne	x0,x3,10002c0 <fail>
 1000054:	00301663          	bne	x0,x3,1000060 <test_5>
 1000058:	fe208ee3          	beq	x1,x2,1000054 <test_4+0x14>
 100005c:	26301263          	bne	x0,x3,10002c0 <fail>

01000060 <test_5>:
 1000060:	00500193          	addi	x3,x0,5
 1000064:	00000093          	addi	x1,x0,0
 1000068:	00100113          	addi	x2,x0,1
 100006c:	00208463          	beq	x1,x2,1000074 <test_5+0x14>
 1000070:	00301463          	bne	x0,x3,1000078 <test_5+0x18>
 1000074:	24301663          	bne	x0,x3,10002c0 <fail>
 1000078:	fe208ee3          	beq	x1,x2,1000074 <test_5+0x14>

0100007c <test_6>:
 100007c:	00600193          	addi	x3,x0,6
 1000080:	00100093          	addi	x1,x0,1
 1000084:	00000113          	addi	x2,x0,0
 1000088:	00208463          	beq	x1,x2,1000090 <test_6+0x14>
 100008c:	00301463          	bne	x0,x3,1000094 <test_6+0x18>
 1000090:	22301863          	bne	x0,x3,10002c0 <fail>
 1000094:	fe208ee3          	beq	x1,x2,1000090 <test_6+0x14>

01000098 <test_7>:
 1000098:	00700193          	addi	x3,x0,7
 100009c:	fff00093          	addi	x1,x0,-1
 10000a0:	00100113          	addi	x2,x0,1
 10000a4:	00208463          	beq	x1,x2,10000ac <test_7+0x14>
 10000a8:	00301463          	bne	x0,x3,10000b0 <test_7+0x18>
 10000ac:	20301a63          	bne	x0,x3,10002c0 <fail>
 10000b0:	fe208ee3          	beq	x1,x2,10000ac <test_7+0x14>

010000b4 <test_8>:
 10000b4:	00800193          	addi	x3,x0,8
 10000b8:	00100093          	addi	x1,x0,1
 10000bc:	fff00113          	addi	x2,x0,-1
 10000c0:	00208463          	beq	x1,x2,10000c8 <test_8+0x14>
 10000c4:	00301463          	bne	x0,x3,10000cc <test_8+0x18>
 10000c8:	1e301c63          	bne	x0,x3,10002c0 <fail>
 10000cc:	fe208ee3          	beq	x1,x2,10000c8 <test_8+0x14>

010000d0 <test_9>:
 10000d0:	00900193          	addi	x3,x0,9
 10000d4:	00000213          	addi	x4,x0,0
 10000d8:	00000093          	addi	x1,x0,0
 10000dc:	fff00113          	addi	x2,x0,-1
 10000e0:	1e208063          	beq	x1,x2,10002c0 <fail>
 10000e4:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10000e8:	00200293          	addi	x5,x0,2
 10000ec:	fe5216e3          	bne	x4,x5,10000d8 <test_9+0x8>

010000f0 <test_10>:
 10000f0:	00a00193          	addi	x3,x0,10
 10000f4:	00000213          	addi	x4,x0,0
 10000f8:	00000093          	addi	x1,x0,0
 10000fc:	fff00113          	addi	x2,x0,-1
 1000100:	00000013          	addi	x0,x0,0
 1000104:	1a208e63          	beq	x1,x2,10002c0 <fail>
 1000108:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 100010c:	00200293          	addi	x5,x0,2
 1000110:	fe5214e3          	bne	x4,x5,10000f8 <test_10+0x8>

01000114 <test_11>:
 1000114:	00b00193          	addi	x3,x0,11
 1000118:	00000213          	addi	x4,x0,0
 100011c:	00000093          	addi	x1,x0,0
 1000120:	fff00113          	addi	x2,x0,-1
 1000124:	00000013          	addi	x0,x0,0
 1000128:	00000013          	addi	x0,x0,0
 100012c:	18208a63          	beq	x1,x2,10002c0 <fail>
 1000130:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000134:	00200293          	addi	x5,x0,2
 1000138:	fe5212e3          	bne	x4,x5,100011c <test_11+0x8>

0100013c <test_12>:
 100013c:	00c00193          	addi	x3,x0,12
 1000140:	00000213          	addi	x4,x0,0
 1000144:	00000093          	addi	x1,x0,0
 1000148:	00000013          	addi	x0,x0,0
 100014c:	fff00113          	addi	x2,x0,-1
 1000150:	16208863          	beq	x1,x2,10002c0 <fail>
 1000154:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000158:	00200293          	addi	x5,x0,2
 100015c:	fe5214e3          	bne	x4,x5,1000144 <test_12+0x8>

01000160 <test_13>:
 1000160:	00d00193          	addi	x3,x0,13
 1000164:	00000213          	addi	x4,x0,0
 1000168:	00000093          	addi	x1,x0,0
 100016c:	00000013          	addi	x0,x0,0
 1000170:	fff00113          	addi	x2,x0,-1
 1000174:	00000013          	addi	x0,x0,0
 1000178:	14208463          	beq	x1,x2,10002c0 <fail>
 100017c:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000180:	00200293          	addi	x5,x0,2
 1000184:	fe5212e3          	bne	x4,x5,1000168 <test_13+0x8>

01000188 <test_14>:
 1000188:	00e00193          	addi	x3,x0,14
 100018c:	00000213          	addi	x4,x0,0
 1000190:	00000093          	addi	x1,x0,0
 1000194:	00000013          	addi	x0,x0,0
 1000198:	00000013          	addi	x0,x0,0
 100019c:	fff00113          	addi	x2,x0,-1
 10001a0:	12208063          	beq	x1,x2,10002c0 <fail>
 10001a4:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10001a8:	00200293          	addi	x5,x0,2
 10001ac:	fe5212e3          	bne	x4,x5,1000190 <test_14+0x8>

010001b0 <test_15>:
 10001b0:	00f00193          	addi	x3,x0,15
 10001b4:	00000213          	addi	x4,x0,0
 10001b8:	00000093          	addi	x1,x0,0
 10001bc:	fff00113          	addi	x2,x0,-1
 10001c0:	10208063          	beq	x1,x2,10002c0 <fail>
 10001c4:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10001c8:	00200293          	addi	x5,x0,2
 10001cc:	fe5216e3          	bne	x4,x5,10001b8 <test_15+0x8>

010001d0 <test_16>:
 10001d0:	01000193          	addi	x3,x0,16
 10001d4:	00000213          	addi	x4,x0,0
 10001d8:	00000093          	addi	x1,x0,0
 10001dc:	fff00113          	addi	x2,x0,-1
 10001e0:	00000013          	addi	x0,x0,0
 10001e4:	0c208e63          	beq	x1,x2,10002c0 <fail>
 10001e8:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10001ec:	00200293          	addi	x5,x0,2
 10001f0:	fe5214e3          	bne	x4,x5,10001d8 <test_16+0x8>

010001f4 <test_17>:
 10001f4:	01100193          	addi	x3,x0,17
 10001f8:	00000213          	addi	x4,x0,0
 10001fc:	00000093          	addi	x1,x0,0
 1000200:	fff00113          	addi	x2,x0,-1
 1000204:	00000013          	addi	x0,x0,0
 1000208:	00000013          	addi	x0,x0,0
 100020c:	0a208a63          	beq	x1,x2,10002c0 <fail>
 1000210:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000214:	00200293          	addi	x5,x0,2
 1000218:	fe5212e3          	bne	x4,x5,10001fc <test_17+0x8>

0100021c <test_18>:
 100021c:	01200193          	addi	x3,x0,18
 1000220:	00000213          	addi	x4,x0,0
 1000224:	00000093          	addi	x1,x0,0
 1000228:	00000013          	addi	x0,x0,0
 100022c:	fff00113          	addi	x2,x0,-1
 1000230:	08208863          	beq	x1,x2,10002c0 <fail>
 1000234:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000238:	00200293          	addi	x5,x0,2
 100023c:	fe5214e3          	bne	x4,x5,1000224 <test_18+0x8>

01000240 <test_19>:
 1000240:	01300193          	addi	x3,x0,19
 1000244:	00000213          	addi	x4,x0,0
 1000248:	00000093          	addi	x1,x0,0
 100024c:	00000013          	addi	x0,x0,0
 1000250:	fff00113          	addi	x2,x0,-1
 1000254:	00000013          	addi	x0,x0,0
 1000258:	06208463          	beq	x1,x2,10002c0 <fail>
 100025c:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000260:	00200293          	addi	x5,x0,2
 1000264:	fe5212e3          	bne	x4,x5,1000248 <test_19+0x8>

01000268 <test_20>:
 1000268:	01400193          	addi	x3,x0,20
 100026c:	00000213          	addi	x4,x0,0
 1000270:	00000093          	addi	x1,x0,0
 1000274:	00000013          	addi	x0,x0,0
 1000278:	00000013          	addi	x0,x0,0
 100027c:	fff00113          	addi	x2,x0,-1
 1000280:	04208063          	beq	x1,x2,10002c0 <fail>
 1000284:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000288:	00200293          	addi	x5,x0,2
 100028c:	fe5212e3          	bne	x4,x5,1000270 <test_20+0x8>

01000290 <test_21>:
 1000290:	00100093          	addi	x1,x0,1
 1000294:	00000a63          	beq	x0,x0,10002a8 <test_21+0x18>
 1000298:	00108093          	addi	x1,x1,1
 100029c:	00108093          	addi	x1,x1,1
 10002a0:	00108093          	addi	x1,x1,1
 10002a4:	00108093          	addi	x1,x1,1
 10002a8:	00108093          	addi	x1,x1,1
 10002ac:	00108093          	addi	x1,x1,1
 10002b0:	00300e93          	addi	x29,x0,3
 10002b4:	01500193          	addi	x3,x0,21
 10002b8:	01d09463          	bne	x1,x29,10002c0 <fail>
 10002bc:	00301c63          	bne	x0,x3,10002d4 <pass>

010002c0 <fail>:
 10002c0:	0ff0000f          	fence	iorw,iorw
 10002c4:	00018063          	beq	x3,x0,10002c4 <fail+0x4>
 10002c8:	00119193          	slli	x3,x3,0x1
 10002cc:	0011e193          	ori	x3,x3,1
 10002d0:	00000073          	ecall

010002d4 <pass>:
 10002d4:	0ff0000f          	fence	iorw,iorw
 10002d8:	00100193          	addi	x3,x0,1
 10002dc:	00000073          	ecall
 10002e0:	c0001073          	unimp
 10002e4:	0000                	c.unimp
 10002e6:	0000                	c.unimp
 10002e8:	0000                	c.unimp
 10002ea:	0000                	c.unimp
 10002ec:	0000                	c.unimp
 10002ee:	0000                	c.unimp
 10002f0:	0000                	c.unimp
 10002f2:	0000                	c.unimp
 10002f4:	0000                	c.unimp
 10002f6:	0000                	c.unimp
 10002f8:	0000                	c.unimp
 10002fa:	0000                	c.unimp
 10002fc:	0000                	c.unimp
 10002fe:	0000                	c.unimp
 1000300:	0000                	c.unimp
 1000302:	0000                	c.unimp

Disassembly of section .text:

01000390 <end_signature>:
 1000390:	0000                	c.unimp
 1000392:	0000                	c.unimp
