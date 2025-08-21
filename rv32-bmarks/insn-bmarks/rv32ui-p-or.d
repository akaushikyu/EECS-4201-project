
output/rv32ui-p-or:     file format elf32-littleriscv


Disassembly of section .text.init:

01000000 <_start>:
 1000000:	ff0100b7          	lui	x1,0xff010
 1000004:	f0008093          	addi	x1,x1,-256 # ff00ff00 <begin_signature+0xfe00f960>
 1000008:	0f0f1137          	lui	x2,0xf0f1
 100000c:	f0f10113          	addi	x2,x2,-241 # f0f0f0f <begin_signature+0xe0f096f>
 1000010:	0020ef33          	or	x30,x1,x2
 1000014:	ff100eb7          	lui	x29,0xff100
 1000018:	f0fe8e93          	addi	x29,x29,-241 # ff0fff0f <begin_signature+0xfe0ff96f>
 100001c:	00200193          	addi	x3,x0,2
 1000020:	4bdf1263          	bne	x30,x29,10004c4 <fail>

01000024 <test_3>:
 1000024:	0ff010b7          	lui	x1,0xff01
 1000028:	ff008093          	addi	x1,x1,-16 # ff00ff0 <begin_signature+0xef00a50>
 100002c:	f0f0f137          	lui	x2,0xf0f0f
 1000030:	0f010113          	addi	x2,x2,240 # f0f0f0f0 <begin_signature+0xeff0eb50>
 1000034:	0020ef33          	or	x30,x1,x2
 1000038:	fff10eb7          	lui	x29,0xfff10
 100003c:	ff0e8e93          	addi	x29,x29,-16 # fff0fff0 <begin_signature+0xfef0fa50>
 1000040:	00300193          	addi	x3,x0,3
 1000044:	49df1063          	bne	x30,x29,10004c4 <fail>

01000048 <test_4>:
 1000048:	00ff00b7          	lui	x1,0xff0
 100004c:	0ff08093          	addi	x1,x1,255 # ff00ff <_start-0xff01>
 1000050:	0f0f1137          	lui	x2,0xf0f1
 1000054:	f0f10113          	addi	x2,x2,-241 # f0f0f0f <begin_signature+0xe0f096f>
 1000058:	0020ef33          	or	x30,x1,x2
 100005c:	0fff1eb7          	lui	x29,0xfff1
 1000060:	fffe8e93          	addi	x29,x29,-1 # fff0fff <begin_signature+0xeff0a5f>
 1000064:	00400193          	addi	x3,x0,4
 1000068:	45df1e63          	bne	x30,x29,10004c4 <fail>

0100006c <test_5>:
 100006c:	f00ff0b7          	lui	x1,0xf00ff
 1000070:	00f08093          	addi	x1,x1,15 # f00ff00f <begin_signature+0xef0fea6f>
 1000074:	f0f0f137          	lui	x2,0xf0f0f
 1000078:	0f010113          	addi	x2,x2,240 # f0f0f0f0 <begin_signature+0xeff0eb50>
 100007c:	0020ef33          	or	x30,x1,x2
 1000080:	f0fffeb7          	lui	x29,0xf0fff
 1000084:	0ffe8e93          	addi	x29,x29,255 # f0fff0ff <begin_signature+0xefffeb5f>
 1000088:	00500193          	addi	x3,x0,5
 100008c:	43df1c63          	bne	x30,x29,10004c4 <fail>

01000090 <test_6>:
 1000090:	ff0100b7          	lui	x1,0xff010
 1000094:	f0008093          	addi	x1,x1,-256 # ff00ff00 <begin_signature+0xfe00f960>
 1000098:	0f0f1137          	lui	x2,0xf0f1
 100009c:	f0f10113          	addi	x2,x2,-241 # f0f0f0f <begin_signature+0xe0f096f>
 10000a0:	0020e0b3          	or	x1,x1,x2
 10000a4:	ff100eb7          	lui	x29,0xff100
 10000a8:	f0fe8e93          	addi	x29,x29,-241 # ff0fff0f <begin_signature+0xfe0ff96f>
 10000ac:	00600193          	addi	x3,x0,6
 10000b0:	41d09a63          	bne	x1,x29,10004c4 <fail>

010000b4 <test_7>:
 10000b4:	ff0100b7          	lui	x1,0xff010
 10000b8:	f0008093          	addi	x1,x1,-256 # ff00ff00 <begin_signature+0xfe00f960>
 10000bc:	0f0f1137          	lui	x2,0xf0f1
 10000c0:	f0f10113          	addi	x2,x2,-241 # f0f0f0f <begin_signature+0xe0f096f>
 10000c4:	0020e133          	or	x2,x1,x2
 10000c8:	ff100eb7          	lui	x29,0xff100
 10000cc:	f0fe8e93          	addi	x29,x29,-241 # ff0fff0f <begin_signature+0xfe0ff96f>
 10000d0:	00700193          	addi	x3,x0,7
 10000d4:	3fd11863          	bne	x2,x29,10004c4 <fail>

010000d8 <test_8>:
 10000d8:	ff0100b7          	lui	x1,0xff010
 10000dc:	f0008093          	addi	x1,x1,-256 # ff00ff00 <begin_signature+0xfe00f960>
 10000e0:	0010e0b3          	or	x1,x1,x1
 10000e4:	ff010eb7          	lui	x29,0xff010
 10000e8:	f00e8e93          	addi	x29,x29,-256 # ff00ff00 <begin_signature+0xfe00f960>
 10000ec:	00800193          	addi	x3,x0,8
 10000f0:	3dd09a63          	bne	x1,x29,10004c4 <fail>

010000f4 <test_9>:
 10000f4:	00000213          	addi	x4,x0,0
 10000f8:	ff0100b7          	lui	x1,0xff010
 10000fc:	f0008093          	addi	x1,x1,-256 # ff00ff00 <begin_signature+0xfe00f960>
 1000100:	0f0f1137          	lui	x2,0xf0f1
 1000104:	f0f10113          	addi	x2,x2,-241 # f0f0f0f <begin_signature+0xe0f096f>
 1000108:	0020ef33          	or	x30,x1,x2
 100010c:	000f0313          	addi	x6,x30,0
 1000110:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000114:	00200293          	addi	x5,x0,2
 1000118:	fe5210e3          	bne	x4,x5,10000f8 <test_9+0x4>
 100011c:	ff100eb7          	lui	x29,0xff100
 1000120:	f0fe8e93          	addi	x29,x29,-241 # ff0fff0f <begin_signature+0xfe0ff96f>
 1000124:	00900193          	addi	x3,x0,9
 1000128:	39d31e63          	bne	x6,x29,10004c4 <fail>

0100012c <test_10>:
 100012c:	00000213          	addi	x4,x0,0
 1000130:	0ff010b7          	lui	x1,0xff01
 1000134:	ff008093          	addi	x1,x1,-16 # ff00ff0 <begin_signature+0xef00a50>
 1000138:	f0f0f137          	lui	x2,0xf0f0f
 100013c:	0f010113          	addi	x2,x2,240 # f0f0f0f0 <begin_signature+0xeff0eb50>
 1000140:	0020ef33          	or	x30,x1,x2
 1000144:	00000013          	addi	x0,x0,0
 1000148:	000f0313          	addi	x6,x30,0
 100014c:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000150:	00200293          	addi	x5,x0,2
 1000154:	fc521ee3          	bne	x4,x5,1000130 <test_10+0x4>
 1000158:	fff10eb7          	lui	x29,0xfff10
 100015c:	ff0e8e93          	addi	x29,x29,-16 # fff0fff0 <begin_signature+0xfef0fa50>
 1000160:	00a00193          	addi	x3,x0,10
 1000164:	37d31063          	bne	x6,x29,10004c4 <fail>

01000168 <test_11>:
 1000168:	00000213          	addi	x4,x0,0
 100016c:	00ff00b7          	lui	x1,0xff0
 1000170:	0ff08093          	addi	x1,x1,255 # ff00ff <_start-0xff01>
 1000174:	0f0f1137          	lui	x2,0xf0f1
 1000178:	f0f10113          	addi	x2,x2,-241 # f0f0f0f <begin_signature+0xe0f096f>
 100017c:	0020ef33          	or	x30,x1,x2
 1000180:	00000013          	addi	x0,x0,0
 1000184:	00000013          	addi	x0,x0,0
 1000188:	000f0313          	addi	x6,x30,0
 100018c:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000190:	00200293          	addi	x5,x0,2
 1000194:	fc521ce3          	bne	x4,x5,100016c <test_11+0x4>
 1000198:	0fff1eb7          	lui	x29,0xfff1
 100019c:	fffe8e93          	addi	x29,x29,-1 # fff0fff <begin_signature+0xeff0a5f>
 10001a0:	00b00193          	addi	x3,x0,11
 10001a4:	33d31063          	bne	x6,x29,10004c4 <fail>

010001a8 <test_12>:
 10001a8:	00000213          	addi	x4,x0,0
 10001ac:	ff0100b7          	lui	x1,0xff010
 10001b0:	f0008093          	addi	x1,x1,-256 # ff00ff00 <begin_signature+0xfe00f960>
 10001b4:	0f0f1137          	lui	x2,0xf0f1
 10001b8:	f0f10113          	addi	x2,x2,-241 # f0f0f0f <begin_signature+0xe0f096f>
 10001bc:	0020ef33          	or	x30,x1,x2
 10001c0:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10001c4:	00200293          	addi	x5,x0,2
 10001c8:	fe5212e3          	bne	x4,x5,10001ac <test_12+0x4>
 10001cc:	ff100eb7          	lui	x29,0xff100
 10001d0:	f0fe8e93          	addi	x29,x29,-241 # ff0fff0f <begin_signature+0xfe0ff96f>
 10001d4:	00c00193          	addi	x3,x0,12
 10001d8:	2fdf1663          	bne	x30,x29,10004c4 <fail>

010001dc <test_13>:
 10001dc:	00000213          	addi	x4,x0,0
 10001e0:	0ff010b7          	lui	x1,0xff01
 10001e4:	ff008093          	addi	x1,x1,-16 # ff00ff0 <begin_signature+0xef00a50>
 10001e8:	f0f0f137          	lui	x2,0xf0f0f
 10001ec:	0f010113          	addi	x2,x2,240 # f0f0f0f0 <begin_signature+0xeff0eb50>
 10001f0:	00000013          	addi	x0,x0,0
 10001f4:	0020ef33          	or	x30,x1,x2
 10001f8:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10001fc:	00200293          	addi	x5,x0,2
 1000200:	fe5210e3          	bne	x4,x5,10001e0 <test_13+0x4>
 1000204:	fff10eb7          	lui	x29,0xfff10
 1000208:	ff0e8e93          	addi	x29,x29,-16 # fff0fff0 <begin_signature+0xfef0fa50>
 100020c:	00d00193          	addi	x3,x0,13
 1000210:	2bdf1a63          	bne	x30,x29,10004c4 <fail>

01000214 <test_14>:
 1000214:	00000213          	addi	x4,x0,0
 1000218:	00ff00b7          	lui	x1,0xff0
 100021c:	0ff08093          	addi	x1,x1,255 # ff00ff <_start-0xff01>
 1000220:	0f0f1137          	lui	x2,0xf0f1
 1000224:	f0f10113          	addi	x2,x2,-241 # f0f0f0f <begin_signature+0xe0f096f>
 1000228:	00000013          	addi	x0,x0,0
 100022c:	00000013          	addi	x0,x0,0
 1000230:	0020ef33          	or	x30,x1,x2
 1000234:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000238:	00200293          	addi	x5,x0,2
 100023c:	fc521ee3          	bne	x4,x5,1000218 <test_14+0x4>
 1000240:	0fff1eb7          	lui	x29,0xfff1
 1000244:	fffe8e93          	addi	x29,x29,-1 # fff0fff <begin_signature+0xeff0a5f>
 1000248:	00e00193          	addi	x3,x0,14
 100024c:	27df1c63          	bne	x30,x29,10004c4 <fail>

01000250 <test_15>:
 1000250:	00000213          	addi	x4,x0,0
 1000254:	ff0100b7          	lui	x1,0xff010
 1000258:	f0008093          	addi	x1,x1,-256 # ff00ff00 <begin_signature+0xfe00f960>
 100025c:	00000013          	addi	x0,x0,0
 1000260:	0f0f1137          	lui	x2,0xf0f1
 1000264:	f0f10113          	addi	x2,x2,-241 # f0f0f0f <begin_signature+0xe0f096f>
 1000268:	0020ef33          	or	x30,x1,x2
 100026c:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000270:	00200293          	addi	x5,x0,2
 1000274:	fe5210e3          	bne	x4,x5,1000254 <test_15+0x4>
 1000278:	ff100eb7          	lui	x29,0xff100
 100027c:	f0fe8e93          	addi	x29,x29,-241 # ff0fff0f <begin_signature+0xfe0ff96f>
 1000280:	00f00193          	addi	x3,x0,15
 1000284:	25df1063          	bne	x30,x29,10004c4 <fail>

01000288 <test_16>:
 1000288:	00000213          	addi	x4,x0,0
 100028c:	0ff010b7          	lui	x1,0xff01
 1000290:	ff008093          	addi	x1,x1,-16 # ff00ff0 <begin_signature+0xef00a50>
 1000294:	00000013          	addi	x0,x0,0
 1000298:	f0f0f137          	lui	x2,0xf0f0f
 100029c:	0f010113          	addi	x2,x2,240 # f0f0f0f0 <begin_signature+0xeff0eb50>
 10002a0:	00000013          	addi	x0,x0,0
 10002a4:	0020ef33          	or	x30,x1,x2
 10002a8:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10002ac:	00200293          	addi	x5,x0,2
 10002b0:	fc521ee3          	bne	x4,x5,100028c <test_16+0x4>
 10002b4:	fff10eb7          	lui	x29,0xfff10
 10002b8:	ff0e8e93          	addi	x29,x29,-16 # fff0fff0 <begin_signature+0xfef0fa50>
 10002bc:	01000193          	addi	x3,x0,16
 10002c0:	21df1263          	bne	x30,x29,10004c4 <fail>

010002c4 <test_17>:
 10002c4:	00000213          	addi	x4,x0,0
 10002c8:	00ff00b7          	lui	x1,0xff0
 10002cc:	0ff08093          	addi	x1,x1,255 # ff00ff <_start-0xff01>
 10002d0:	00000013          	addi	x0,x0,0
 10002d4:	00000013          	addi	x0,x0,0
 10002d8:	0f0f1137          	lui	x2,0xf0f1
 10002dc:	f0f10113          	addi	x2,x2,-241 # f0f0f0f <begin_signature+0xe0f096f>
 10002e0:	0020ef33          	or	x30,x1,x2
 10002e4:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10002e8:	00200293          	addi	x5,x0,2
 10002ec:	fc521ee3          	bne	x4,x5,10002c8 <test_17+0x4>
 10002f0:	0fff1eb7          	lui	x29,0xfff1
 10002f4:	fffe8e93          	addi	x29,x29,-1 # fff0fff <begin_signature+0xeff0a5f>
 10002f8:	01100193          	addi	x3,x0,17
 10002fc:	1ddf1463          	bne	x30,x29,10004c4 <fail>

01000300 <test_18>:
 1000300:	00000213          	addi	x4,x0,0
 1000304:	0f0f1137          	lui	x2,0xf0f1
 1000308:	f0f10113          	addi	x2,x2,-241 # f0f0f0f <begin_signature+0xe0f096f>
 100030c:	ff0100b7          	lui	x1,0xff010
 1000310:	f0008093          	addi	x1,x1,-256 # ff00ff00 <begin_signature+0xfe00f960>
 1000314:	0020ef33          	or	x30,x1,x2
 1000318:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 100031c:	00200293          	addi	x5,x0,2
 1000320:	fe5212e3          	bne	x4,x5,1000304 <test_18+0x4>
 1000324:	ff100eb7          	lui	x29,0xff100
 1000328:	f0fe8e93          	addi	x29,x29,-241 # ff0fff0f <begin_signature+0xfe0ff96f>
 100032c:	01200193          	addi	x3,x0,18
 1000330:	19df1a63          	bne	x30,x29,10004c4 <fail>

01000334 <test_19>:
 1000334:	00000213          	addi	x4,x0,0
 1000338:	f0f0f137          	lui	x2,0xf0f0f
 100033c:	0f010113          	addi	x2,x2,240 # f0f0f0f0 <begin_signature+0xeff0eb50>
 1000340:	0ff010b7          	lui	x1,0xff01
 1000344:	ff008093          	addi	x1,x1,-16 # ff00ff0 <begin_signature+0xef00a50>
 1000348:	00000013          	addi	x0,x0,0
 100034c:	0020ef33          	or	x30,x1,x2
 1000350:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000354:	00200293          	addi	x5,x0,2
 1000358:	fe5210e3          	bne	x4,x5,1000338 <test_19+0x4>
 100035c:	fff10eb7          	lui	x29,0xfff10
 1000360:	ff0e8e93          	addi	x29,x29,-16 # fff0fff0 <begin_signature+0xfef0fa50>
 1000364:	01300193          	addi	x3,x0,19
 1000368:	15df1e63          	bne	x30,x29,10004c4 <fail>

0100036c <test_20>:
 100036c:	00000213          	addi	x4,x0,0
 1000370:	0f0f1137          	lui	x2,0xf0f1
 1000374:	f0f10113          	addi	x2,x2,-241 # f0f0f0f <begin_signature+0xe0f096f>
 1000378:	00ff00b7          	lui	x1,0xff0
 100037c:	0ff08093          	addi	x1,x1,255 # ff00ff <_start-0xff01>
 1000380:	00000013          	addi	x0,x0,0
 1000384:	00000013          	addi	x0,x0,0
 1000388:	0020ef33          	or	x30,x1,x2
 100038c:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000390:	00200293          	addi	x5,x0,2
 1000394:	fc521ee3          	bne	x4,x5,1000370 <test_20+0x4>
 1000398:	0fff1eb7          	lui	x29,0xfff1
 100039c:	fffe8e93          	addi	x29,x29,-1 # fff0fff <begin_signature+0xeff0a5f>
 10003a0:	01400193          	addi	x3,x0,20
 10003a4:	13df1063          	bne	x30,x29,10004c4 <fail>

010003a8 <test_21>:
 10003a8:	00000213          	addi	x4,x0,0
 10003ac:	0f0f1137          	lui	x2,0xf0f1
 10003b0:	f0f10113          	addi	x2,x2,-241 # f0f0f0f <begin_signature+0xe0f096f>
 10003b4:	00000013          	addi	x0,x0,0
 10003b8:	ff0100b7          	lui	x1,0xff010
 10003bc:	f0008093          	addi	x1,x1,-256 # ff00ff00 <begin_signature+0xfe00f960>
 10003c0:	0020ef33          	or	x30,x1,x2
 10003c4:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10003c8:	00200293          	addi	x5,x0,2
 10003cc:	fe5210e3          	bne	x4,x5,10003ac <test_21+0x4>
 10003d0:	ff100eb7          	lui	x29,0xff100
 10003d4:	f0fe8e93          	addi	x29,x29,-241 # ff0fff0f <begin_signature+0xfe0ff96f>
 10003d8:	01500193          	addi	x3,x0,21
 10003dc:	0fdf1463          	bne	x30,x29,10004c4 <fail>

010003e0 <test_22>:
 10003e0:	00000213          	addi	x4,x0,0
 10003e4:	f0f0f137          	lui	x2,0xf0f0f
 10003e8:	0f010113          	addi	x2,x2,240 # f0f0f0f0 <begin_signature+0xeff0eb50>
 10003ec:	00000013          	addi	x0,x0,0
 10003f0:	0ff010b7          	lui	x1,0xff01
 10003f4:	ff008093          	addi	x1,x1,-16 # ff00ff0 <begin_signature+0xef00a50>
 10003f8:	00000013          	addi	x0,x0,0
 10003fc:	0020ef33          	or	x30,x1,x2
 1000400:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000404:	00200293          	addi	x5,x0,2
 1000408:	fc521ee3          	bne	x4,x5,10003e4 <test_22+0x4>
 100040c:	fff10eb7          	lui	x29,0xfff10
 1000410:	ff0e8e93          	addi	x29,x29,-16 # fff0fff0 <begin_signature+0xfef0fa50>
 1000414:	01600193          	addi	x3,x0,22
 1000418:	0bdf1663          	bne	x30,x29,10004c4 <fail>

0100041c <test_23>:
 100041c:	00000213          	addi	x4,x0,0
 1000420:	0f0f1137          	lui	x2,0xf0f1
 1000424:	f0f10113          	addi	x2,x2,-241 # f0f0f0f <begin_signature+0xe0f096f>
 1000428:	00000013          	addi	x0,x0,0
 100042c:	00000013          	addi	x0,x0,0
 1000430:	00ff00b7          	lui	x1,0xff0
 1000434:	0ff08093          	addi	x1,x1,255 # ff00ff <_start-0xff01>
 1000438:	0020ef33          	or	x30,x1,x2
 100043c:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000440:	00200293          	addi	x5,x0,2
 1000444:	fc521ee3          	bne	x4,x5,1000420 <test_23+0x4>
 1000448:	0fff1eb7          	lui	x29,0xfff1
 100044c:	fffe8e93          	addi	x29,x29,-1 # fff0fff <begin_signature+0xeff0a5f>
 1000450:	01700193          	addi	x3,x0,23
 1000454:	07df1863          	bne	x30,x29,10004c4 <fail>

01000458 <test_24>:
 1000458:	ff0100b7          	lui	x1,0xff010
 100045c:	f0008093          	addi	x1,x1,-256 # ff00ff00 <begin_signature+0xfe00f960>
 1000460:	00106133          	or	x2,x0,x1
 1000464:	ff010eb7          	lui	x29,0xff010
 1000468:	f00e8e93          	addi	x29,x29,-256 # ff00ff00 <begin_signature+0xfe00f960>
 100046c:	01800193          	addi	x3,x0,24
 1000470:	05d11a63          	bne	x2,x29,10004c4 <fail>

01000474 <test_25>:
 1000474:	00ff00b7          	lui	x1,0xff0
 1000478:	0ff08093          	addi	x1,x1,255 # ff00ff <_start-0xff01>
 100047c:	0000e133          	or	x2,x1,x0
 1000480:	00ff0eb7          	lui	x29,0xff0
 1000484:	0ffe8e93          	addi	x29,x29,255 # ff00ff <_start-0xff01>
 1000488:	01900193          	addi	x3,x0,25
 100048c:	03d11c63          	bne	x2,x29,10004c4 <fail>

01000490 <test_26>:
 1000490:	000060b3          	or	x1,x0,x0
 1000494:	00000e93          	addi	x29,x0,0
 1000498:	01a00193          	addi	x3,x0,26
 100049c:	03d09463          	bne	x1,x29,10004c4 <fail>

010004a0 <test_27>:
 10004a0:	111110b7          	lui	x1,0x11111
 10004a4:	11108093          	addi	x1,x1,273 # 11111111 <begin_signature+0x10110b71>
 10004a8:	22222137          	lui	x2,0x22222
 10004ac:	22210113          	addi	x2,x2,546 # 22222222 <begin_signature+0x21221c82>
 10004b0:	0020e033          	or	x0,x1,x2
 10004b4:	00000e93          	addi	x29,x0,0
 10004b8:	01b00193          	addi	x3,x0,27
 10004bc:	01d01463          	bne	x0,x29,10004c4 <fail>
 10004c0:	00301c63          	bne	x0,x3,10004d8 <pass>

010004c4 <fail>:
 10004c4:	0ff0000f          	fence	iorw,iorw
 10004c8:	00018063          	beq	x3,x0,10004c8 <fail+0x4>
 10004cc:	00119193          	slli	x3,x3,0x1
 10004d0:	0011e193          	ori	x3,x3,1
 10004d4:	00000073          	ecall

010004d8 <pass>:
 10004d8:	0ff0000f          	fence	iorw,iorw
 10004dc:	00100193          	addi	x3,x0,1
 10004e0:	00000073          	ecall
 10004e4:	c0001073          	unimp
 10004e8:	0000                	c.unimp
 10004ea:	0000                	c.unimp
 10004ec:	0000                	c.unimp
 10004ee:	0000                	c.unimp
 10004f0:	0000                	c.unimp
 10004f2:	0000                	c.unimp
 10004f4:	0000                	c.unimp
 10004f6:	0000                	c.unimp
 10004f8:	0000                	c.unimp
 10004fa:	0000                	c.unimp
 10004fc:	0000                	c.unimp
 10004fe:	0000                	c.unimp
 1000500:	0000                	c.unimp
 1000502:	0000                	c.unimp

Disassembly of section .text:

01000590 <end_signature>:
 1000590:	0000                	c.unimp
 1000592:	0000                	c.unimp
