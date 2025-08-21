
output/rv32ui-p-xor:     file format elf32-littleriscv


Disassembly of section .text.init:

01000000 <_start>:
 1000000:	ff0100b7          	lui	x1,0xff010
 1000004:	f0008093          	addi	x1,x1,-256 # ff00ff00 <begin_signature+0xfe00f960>
 1000008:	0f0f1137          	lui	x2,0xf0f1
 100000c:	f0f10113          	addi	x2,x2,-241 # f0f0f0f <begin_signature+0xe0f096f>
 1000010:	0020cf33          	xor	x30,x1,x2
 1000014:	f00ffeb7          	lui	x29,0xf00ff
 1000018:	00fe8e93          	addi	x29,x29,15 # f00ff00f <begin_signature+0xef0fea6f>
 100001c:	00200193          	addi	x3,x0,2
 1000020:	4bdf1063          	bne	x30,x29,10004c0 <fail>

01000024 <test_3>:
 1000024:	0ff010b7          	lui	x1,0xff01
 1000028:	ff008093          	addi	x1,x1,-16 # ff00ff0 <begin_signature+0xef00a50>
 100002c:	f0f0f137          	lui	x2,0xf0f0f
 1000030:	0f010113          	addi	x2,x2,240 # f0f0f0f0 <begin_signature+0xeff0eb50>
 1000034:	0020cf33          	xor	x30,x1,x2
 1000038:	ff010eb7          	lui	x29,0xff010
 100003c:	f00e8e93          	addi	x29,x29,-256 # ff00ff00 <begin_signature+0xfe00f960>
 1000040:	00300193          	addi	x3,x0,3
 1000044:	47df1e63          	bne	x30,x29,10004c0 <fail>

01000048 <test_4>:
 1000048:	00ff00b7          	lui	x1,0xff0
 100004c:	0ff08093          	addi	x1,x1,255 # ff00ff <_start-0xff01>
 1000050:	0f0f1137          	lui	x2,0xf0f1
 1000054:	f0f10113          	addi	x2,x2,-241 # f0f0f0f <begin_signature+0xe0f096f>
 1000058:	0020cf33          	xor	x30,x1,x2
 100005c:	0ff01eb7          	lui	x29,0xff01
 1000060:	ff0e8e93          	addi	x29,x29,-16 # ff00ff0 <begin_signature+0xef00a50>
 1000064:	00400193          	addi	x3,x0,4
 1000068:	45df1c63          	bne	x30,x29,10004c0 <fail>

0100006c <test_5>:
 100006c:	f00ff0b7          	lui	x1,0xf00ff
 1000070:	00f08093          	addi	x1,x1,15 # f00ff00f <begin_signature+0xef0fea6f>
 1000074:	f0f0f137          	lui	x2,0xf0f0f
 1000078:	0f010113          	addi	x2,x2,240 # f0f0f0f0 <begin_signature+0xeff0eb50>
 100007c:	0020cf33          	xor	x30,x1,x2
 1000080:	00ff0eb7          	lui	x29,0xff0
 1000084:	0ffe8e93          	addi	x29,x29,255 # ff00ff <_start-0xff01>
 1000088:	00500193          	addi	x3,x0,5
 100008c:	43df1a63          	bne	x30,x29,10004c0 <fail>

01000090 <test_6>:
 1000090:	ff0100b7          	lui	x1,0xff010
 1000094:	f0008093          	addi	x1,x1,-256 # ff00ff00 <begin_signature+0xfe00f960>
 1000098:	0f0f1137          	lui	x2,0xf0f1
 100009c:	f0f10113          	addi	x2,x2,-241 # f0f0f0f <begin_signature+0xe0f096f>
 10000a0:	0020c0b3          	xor	x1,x1,x2
 10000a4:	f00ffeb7          	lui	x29,0xf00ff
 10000a8:	00fe8e93          	addi	x29,x29,15 # f00ff00f <begin_signature+0xef0fea6f>
 10000ac:	00600193          	addi	x3,x0,6
 10000b0:	41d09863          	bne	x1,x29,10004c0 <fail>

010000b4 <test_7>:
 10000b4:	ff0100b7          	lui	x1,0xff010
 10000b8:	f0008093          	addi	x1,x1,-256 # ff00ff00 <begin_signature+0xfe00f960>
 10000bc:	0f0f1137          	lui	x2,0xf0f1
 10000c0:	f0f10113          	addi	x2,x2,-241 # f0f0f0f <begin_signature+0xe0f096f>
 10000c4:	0020c133          	xor	x2,x1,x2
 10000c8:	f00ffeb7          	lui	x29,0xf00ff
 10000cc:	00fe8e93          	addi	x29,x29,15 # f00ff00f <begin_signature+0xef0fea6f>
 10000d0:	00700193          	addi	x3,x0,7
 10000d4:	3fd11663          	bne	x2,x29,10004c0 <fail>

010000d8 <test_8>:
 10000d8:	ff0100b7          	lui	x1,0xff010
 10000dc:	f0008093          	addi	x1,x1,-256 # ff00ff00 <begin_signature+0xfe00f960>
 10000e0:	0010c0b3          	xor	x1,x1,x1
 10000e4:	00000e93          	addi	x29,x0,0
 10000e8:	00800193          	addi	x3,x0,8
 10000ec:	3dd09a63          	bne	x1,x29,10004c0 <fail>

010000f0 <test_9>:
 10000f0:	00000213          	addi	x4,x0,0
 10000f4:	ff0100b7          	lui	x1,0xff010
 10000f8:	f0008093          	addi	x1,x1,-256 # ff00ff00 <begin_signature+0xfe00f960>
 10000fc:	0f0f1137          	lui	x2,0xf0f1
 1000100:	f0f10113          	addi	x2,x2,-241 # f0f0f0f <begin_signature+0xe0f096f>
 1000104:	0020cf33          	xor	x30,x1,x2
 1000108:	000f0313          	addi	x6,x30,0
 100010c:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000110:	00200293          	addi	x5,x0,2
 1000114:	fe5210e3          	bne	x4,x5,10000f4 <test_9+0x4>
 1000118:	f00ffeb7          	lui	x29,0xf00ff
 100011c:	00fe8e93          	addi	x29,x29,15 # f00ff00f <begin_signature+0xef0fea6f>
 1000120:	00900193          	addi	x3,x0,9
 1000124:	39d31e63          	bne	x6,x29,10004c0 <fail>

01000128 <test_10>:
 1000128:	00000213          	addi	x4,x0,0
 100012c:	0ff010b7          	lui	x1,0xff01
 1000130:	ff008093          	addi	x1,x1,-16 # ff00ff0 <begin_signature+0xef00a50>
 1000134:	f0f0f137          	lui	x2,0xf0f0f
 1000138:	0f010113          	addi	x2,x2,240 # f0f0f0f0 <begin_signature+0xeff0eb50>
 100013c:	0020cf33          	xor	x30,x1,x2
 1000140:	00000013          	addi	x0,x0,0
 1000144:	000f0313          	addi	x6,x30,0
 1000148:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 100014c:	00200293          	addi	x5,x0,2
 1000150:	fc521ee3          	bne	x4,x5,100012c <test_10+0x4>
 1000154:	ff010eb7          	lui	x29,0xff010
 1000158:	f00e8e93          	addi	x29,x29,-256 # ff00ff00 <begin_signature+0xfe00f960>
 100015c:	00a00193          	addi	x3,x0,10
 1000160:	37d31063          	bne	x6,x29,10004c0 <fail>

01000164 <test_11>:
 1000164:	00000213          	addi	x4,x0,0
 1000168:	00ff00b7          	lui	x1,0xff0
 100016c:	0ff08093          	addi	x1,x1,255 # ff00ff <_start-0xff01>
 1000170:	0f0f1137          	lui	x2,0xf0f1
 1000174:	f0f10113          	addi	x2,x2,-241 # f0f0f0f <begin_signature+0xe0f096f>
 1000178:	0020cf33          	xor	x30,x1,x2
 100017c:	00000013          	addi	x0,x0,0
 1000180:	00000013          	addi	x0,x0,0
 1000184:	000f0313          	addi	x6,x30,0
 1000188:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 100018c:	00200293          	addi	x5,x0,2
 1000190:	fc521ce3          	bne	x4,x5,1000168 <test_11+0x4>
 1000194:	0ff01eb7          	lui	x29,0xff01
 1000198:	ff0e8e93          	addi	x29,x29,-16 # ff00ff0 <begin_signature+0xef00a50>
 100019c:	00b00193          	addi	x3,x0,11
 10001a0:	33d31063          	bne	x6,x29,10004c0 <fail>

010001a4 <test_12>:
 10001a4:	00000213          	addi	x4,x0,0
 10001a8:	ff0100b7          	lui	x1,0xff010
 10001ac:	f0008093          	addi	x1,x1,-256 # ff00ff00 <begin_signature+0xfe00f960>
 10001b0:	0f0f1137          	lui	x2,0xf0f1
 10001b4:	f0f10113          	addi	x2,x2,-241 # f0f0f0f <begin_signature+0xe0f096f>
 10001b8:	0020cf33          	xor	x30,x1,x2
 10001bc:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10001c0:	00200293          	addi	x5,x0,2
 10001c4:	fe5212e3          	bne	x4,x5,10001a8 <test_12+0x4>
 10001c8:	f00ffeb7          	lui	x29,0xf00ff
 10001cc:	00fe8e93          	addi	x29,x29,15 # f00ff00f <begin_signature+0xef0fea6f>
 10001d0:	00c00193          	addi	x3,x0,12
 10001d4:	2fdf1663          	bne	x30,x29,10004c0 <fail>

010001d8 <test_13>:
 10001d8:	00000213          	addi	x4,x0,0
 10001dc:	0ff010b7          	lui	x1,0xff01
 10001e0:	ff008093          	addi	x1,x1,-16 # ff00ff0 <begin_signature+0xef00a50>
 10001e4:	f0f0f137          	lui	x2,0xf0f0f
 10001e8:	0f010113          	addi	x2,x2,240 # f0f0f0f0 <begin_signature+0xeff0eb50>
 10001ec:	00000013          	addi	x0,x0,0
 10001f0:	0020cf33          	xor	x30,x1,x2
 10001f4:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10001f8:	00200293          	addi	x5,x0,2
 10001fc:	fe5210e3          	bne	x4,x5,10001dc <test_13+0x4>
 1000200:	ff010eb7          	lui	x29,0xff010
 1000204:	f00e8e93          	addi	x29,x29,-256 # ff00ff00 <begin_signature+0xfe00f960>
 1000208:	00d00193          	addi	x3,x0,13
 100020c:	2bdf1a63          	bne	x30,x29,10004c0 <fail>

01000210 <test_14>:
 1000210:	00000213          	addi	x4,x0,0
 1000214:	00ff00b7          	lui	x1,0xff0
 1000218:	0ff08093          	addi	x1,x1,255 # ff00ff <_start-0xff01>
 100021c:	0f0f1137          	lui	x2,0xf0f1
 1000220:	f0f10113          	addi	x2,x2,-241 # f0f0f0f <begin_signature+0xe0f096f>
 1000224:	00000013          	addi	x0,x0,0
 1000228:	00000013          	addi	x0,x0,0
 100022c:	0020cf33          	xor	x30,x1,x2
 1000230:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000234:	00200293          	addi	x5,x0,2
 1000238:	fc521ee3          	bne	x4,x5,1000214 <test_14+0x4>
 100023c:	0ff01eb7          	lui	x29,0xff01
 1000240:	ff0e8e93          	addi	x29,x29,-16 # ff00ff0 <begin_signature+0xef00a50>
 1000244:	00e00193          	addi	x3,x0,14
 1000248:	27df1c63          	bne	x30,x29,10004c0 <fail>

0100024c <test_15>:
 100024c:	00000213          	addi	x4,x0,0
 1000250:	ff0100b7          	lui	x1,0xff010
 1000254:	f0008093          	addi	x1,x1,-256 # ff00ff00 <begin_signature+0xfe00f960>
 1000258:	00000013          	addi	x0,x0,0
 100025c:	0f0f1137          	lui	x2,0xf0f1
 1000260:	f0f10113          	addi	x2,x2,-241 # f0f0f0f <begin_signature+0xe0f096f>
 1000264:	0020cf33          	xor	x30,x1,x2
 1000268:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 100026c:	00200293          	addi	x5,x0,2
 1000270:	fe5210e3          	bne	x4,x5,1000250 <test_15+0x4>
 1000274:	f00ffeb7          	lui	x29,0xf00ff
 1000278:	00fe8e93          	addi	x29,x29,15 # f00ff00f <begin_signature+0xef0fea6f>
 100027c:	00f00193          	addi	x3,x0,15
 1000280:	25df1063          	bne	x30,x29,10004c0 <fail>

01000284 <test_16>:
 1000284:	00000213          	addi	x4,x0,0
 1000288:	0ff010b7          	lui	x1,0xff01
 100028c:	ff008093          	addi	x1,x1,-16 # ff00ff0 <begin_signature+0xef00a50>
 1000290:	00000013          	addi	x0,x0,0
 1000294:	f0f0f137          	lui	x2,0xf0f0f
 1000298:	0f010113          	addi	x2,x2,240 # f0f0f0f0 <begin_signature+0xeff0eb50>
 100029c:	00000013          	addi	x0,x0,0
 10002a0:	0020cf33          	xor	x30,x1,x2
 10002a4:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10002a8:	00200293          	addi	x5,x0,2
 10002ac:	fc521ee3          	bne	x4,x5,1000288 <test_16+0x4>
 10002b0:	ff010eb7          	lui	x29,0xff010
 10002b4:	f00e8e93          	addi	x29,x29,-256 # ff00ff00 <begin_signature+0xfe00f960>
 10002b8:	01000193          	addi	x3,x0,16
 10002bc:	21df1263          	bne	x30,x29,10004c0 <fail>

010002c0 <test_17>:
 10002c0:	00000213          	addi	x4,x0,0
 10002c4:	00ff00b7          	lui	x1,0xff0
 10002c8:	0ff08093          	addi	x1,x1,255 # ff00ff <_start-0xff01>
 10002cc:	00000013          	addi	x0,x0,0
 10002d0:	00000013          	addi	x0,x0,0
 10002d4:	0f0f1137          	lui	x2,0xf0f1
 10002d8:	f0f10113          	addi	x2,x2,-241 # f0f0f0f <begin_signature+0xe0f096f>
 10002dc:	0020cf33          	xor	x30,x1,x2
 10002e0:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10002e4:	00200293          	addi	x5,x0,2
 10002e8:	fc521ee3          	bne	x4,x5,10002c4 <test_17+0x4>
 10002ec:	0ff01eb7          	lui	x29,0xff01
 10002f0:	ff0e8e93          	addi	x29,x29,-16 # ff00ff0 <begin_signature+0xef00a50>
 10002f4:	01100193          	addi	x3,x0,17
 10002f8:	1ddf1463          	bne	x30,x29,10004c0 <fail>

010002fc <test_18>:
 10002fc:	00000213          	addi	x4,x0,0
 1000300:	0f0f1137          	lui	x2,0xf0f1
 1000304:	f0f10113          	addi	x2,x2,-241 # f0f0f0f <begin_signature+0xe0f096f>
 1000308:	ff0100b7          	lui	x1,0xff010
 100030c:	f0008093          	addi	x1,x1,-256 # ff00ff00 <begin_signature+0xfe00f960>
 1000310:	0020cf33          	xor	x30,x1,x2
 1000314:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000318:	00200293          	addi	x5,x0,2
 100031c:	fe5212e3          	bne	x4,x5,1000300 <test_18+0x4>
 1000320:	f00ffeb7          	lui	x29,0xf00ff
 1000324:	00fe8e93          	addi	x29,x29,15 # f00ff00f <begin_signature+0xef0fea6f>
 1000328:	01200193          	addi	x3,x0,18
 100032c:	19df1a63          	bne	x30,x29,10004c0 <fail>

01000330 <test_19>:
 1000330:	00000213          	addi	x4,x0,0
 1000334:	f0f0f137          	lui	x2,0xf0f0f
 1000338:	0f010113          	addi	x2,x2,240 # f0f0f0f0 <begin_signature+0xeff0eb50>
 100033c:	0ff010b7          	lui	x1,0xff01
 1000340:	ff008093          	addi	x1,x1,-16 # ff00ff0 <begin_signature+0xef00a50>
 1000344:	00000013          	addi	x0,x0,0
 1000348:	0020cf33          	xor	x30,x1,x2
 100034c:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000350:	00200293          	addi	x5,x0,2
 1000354:	fe5210e3          	bne	x4,x5,1000334 <test_19+0x4>
 1000358:	ff010eb7          	lui	x29,0xff010
 100035c:	f00e8e93          	addi	x29,x29,-256 # ff00ff00 <begin_signature+0xfe00f960>
 1000360:	01300193          	addi	x3,x0,19
 1000364:	15df1e63          	bne	x30,x29,10004c0 <fail>

01000368 <test_20>:
 1000368:	00000213          	addi	x4,x0,0
 100036c:	0f0f1137          	lui	x2,0xf0f1
 1000370:	f0f10113          	addi	x2,x2,-241 # f0f0f0f <begin_signature+0xe0f096f>
 1000374:	00ff00b7          	lui	x1,0xff0
 1000378:	0ff08093          	addi	x1,x1,255 # ff00ff <_start-0xff01>
 100037c:	00000013          	addi	x0,x0,0
 1000380:	00000013          	addi	x0,x0,0
 1000384:	0020cf33          	xor	x30,x1,x2
 1000388:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 100038c:	00200293          	addi	x5,x0,2
 1000390:	fc521ee3          	bne	x4,x5,100036c <test_20+0x4>
 1000394:	0ff01eb7          	lui	x29,0xff01
 1000398:	ff0e8e93          	addi	x29,x29,-16 # ff00ff0 <begin_signature+0xef00a50>
 100039c:	01400193          	addi	x3,x0,20
 10003a0:	13df1063          	bne	x30,x29,10004c0 <fail>

010003a4 <test_21>:
 10003a4:	00000213          	addi	x4,x0,0
 10003a8:	0f0f1137          	lui	x2,0xf0f1
 10003ac:	f0f10113          	addi	x2,x2,-241 # f0f0f0f <begin_signature+0xe0f096f>
 10003b0:	00000013          	addi	x0,x0,0
 10003b4:	ff0100b7          	lui	x1,0xff010
 10003b8:	f0008093          	addi	x1,x1,-256 # ff00ff00 <begin_signature+0xfe00f960>
 10003bc:	0020cf33          	xor	x30,x1,x2
 10003c0:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10003c4:	00200293          	addi	x5,x0,2
 10003c8:	fe5210e3          	bne	x4,x5,10003a8 <test_21+0x4>
 10003cc:	f00ffeb7          	lui	x29,0xf00ff
 10003d0:	00fe8e93          	addi	x29,x29,15 # f00ff00f <begin_signature+0xef0fea6f>
 10003d4:	01500193          	addi	x3,x0,21
 10003d8:	0fdf1463          	bne	x30,x29,10004c0 <fail>

010003dc <test_22>:
 10003dc:	00000213          	addi	x4,x0,0
 10003e0:	f0f0f137          	lui	x2,0xf0f0f
 10003e4:	0f010113          	addi	x2,x2,240 # f0f0f0f0 <begin_signature+0xeff0eb50>
 10003e8:	00000013          	addi	x0,x0,0
 10003ec:	0ff010b7          	lui	x1,0xff01
 10003f0:	ff008093          	addi	x1,x1,-16 # ff00ff0 <begin_signature+0xef00a50>
 10003f4:	00000013          	addi	x0,x0,0
 10003f8:	0020cf33          	xor	x30,x1,x2
 10003fc:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000400:	00200293          	addi	x5,x0,2
 1000404:	fc521ee3          	bne	x4,x5,10003e0 <test_22+0x4>
 1000408:	ff010eb7          	lui	x29,0xff010
 100040c:	f00e8e93          	addi	x29,x29,-256 # ff00ff00 <begin_signature+0xfe00f960>
 1000410:	01600193          	addi	x3,x0,22
 1000414:	0bdf1663          	bne	x30,x29,10004c0 <fail>

01000418 <test_23>:
 1000418:	00000213          	addi	x4,x0,0
 100041c:	0f0f1137          	lui	x2,0xf0f1
 1000420:	f0f10113          	addi	x2,x2,-241 # f0f0f0f <begin_signature+0xe0f096f>
 1000424:	00000013          	addi	x0,x0,0
 1000428:	00000013          	addi	x0,x0,0
 100042c:	00ff00b7          	lui	x1,0xff0
 1000430:	0ff08093          	addi	x1,x1,255 # ff00ff <_start-0xff01>
 1000434:	0020cf33          	xor	x30,x1,x2
 1000438:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 100043c:	00200293          	addi	x5,x0,2
 1000440:	fc521ee3          	bne	x4,x5,100041c <test_23+0x4>
 1000444:	0ff01eb7          	lui	x29,0xff01
 1000448:	ff0e8e93          	addi	x29,x29,-16 # ff00ff0 <begin_signature+0xef00a50>
 100044c:	01700193          	addi	x3,x0,23
 1000450:	07df1863          	bne	x30,x29,10004c0 <fail>

01000454 <test_24>:
 1000454:	ff0100b7          	lui	x1,0xff010
 1000458:	f0008093          	addi	x1,x1,-256 # ff00ff00 <begin_signature+0xfe00f960>
 100045c:	00104133          	xor	x2,x0,x1
 1000460:	ff010eb7          	lui	x29,0xff010
 1000464:	f00e8e93          	addi	x29,x29,-256 # ff00ff00 <begin_signature+0xfe00f960>
 1000468:	01800193          	addi	x3,x0,24
 100046c:	05d11a63          	bne	x2,x29,10004c0 <fail>

01000470 <test_25>:
 1000470:	00ff00b7          	lui	x1,0xff0
 1000474:	0ff08093          	addi	x1,x1,255 # ff00ff <_start-0xff01>
 1000478:	0000c133          	xor	x2,x1,x0
 100047c:	00ff0eb7          	lui	x29,0xff0
 1000480:	0ffe8e93          	addi	x29,x29,255 # ff00ff <_start-0xff01>
 1000484:	01900193          	addi	x3,x0,25
 1000488:	03d11c63          	bne	x2,x29,10004c0 <fail>

0100048c <test_26>:
 100048c:	000040b3          	xor	x1,x0,x0
 1000490:	00000e93          	addi	x29,x0,0
 1000494:	01a00193          	addi	x3,x0,26
 1000498:	03d09463          	bne	x1,x29,10004c0 <fail>

0100049c <test_27>:
 100049c:	111110b7          	lui	x1,0x11111
 10004a0:	11108093          	addi	x1,x1,273 # 11111111 <begin_signature+0x10110b71>
 10004a4:	22222137          	lui	x2,0x22222
 10004a8:	22210113          	addi	x2,x2,546 # 22222222 <begin_signature+0x21221c82>
 10004ac:	0020c033          	xor	x0,x1,x2
 10004b0:	00000e93          	addi	x29,x0,0
 10004b4:	01b00193          	addi	x3,x0,27
 10004b8:	01d01463          	bne	x0,x29,10004c0 <fail>
 10004bc:	00301c63          	bne	x0,x3,10004d4 <pass>

010004c0 <fail>:
 10004c0:	0ff0000f          	fence	iorw,iorw
 10004c4:	00018063          	beq	x3,x0,10004c4 <fail+0x4>
 10004c8:	00119193          	slli	x3,x3,0x1
 10004cc:	0011e193          	ori	x3,x3,1
 10004d0:	00000073          	ecall

010004d4 <pass>:
 10004d4:	0ff0000f          	fence	iorw,iorw
 10004d8:	00100193          	addi	x3,x0,1
 10004dc:	00000073          	ecall
 10004e0:	c0001073          	unimp
 10004e4:	0000                	c.unimp
 10004e6:	0000                	c.unimp
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
