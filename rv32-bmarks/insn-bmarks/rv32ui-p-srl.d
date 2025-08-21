
output/rv32ui-p-srl:     file format elf32-littleriscv


Disassembly of section .text.init:

01000000 <_start>:
 1000000:	800000b7          	lui	x1,0x80000
 1000004:	00000113          	addi	x2,x0,0
 1000008:	0020df33          	srl	x30,x1,x2
 100000c:	80000eb7          	lui	x29,0x80000
 1000010:	00200193          	addi	x3,x0,2
 1000014:	57df1863          	bne	x30,x29,1000584 <fail>

01000018 <test_3>:
 1000018:	800000b7          	lui	x1,0x80000
 100001c:	00100113          	addi	x2,x0,1
 1000020:	0020df33          	srl	x30,x1,x2
 1000024:	40000eb7          	lui	x29,0x40000
 1000028:	00300193          	addi	x3,x0,3
 100002c:	55df1c63          	bne	x30,x29,1000584 <fail>

01000030 <test_4>:
 1000030:	800000b7          	lui	x1,0x80000
 1000034:	00700113          	addi	x2,x0,7
 1000038:	0020df33          	srl	x30,x1,x2
 100003c:	01000eb7          	lui	x29,0x1000
 1000040:	00400193          	addi	x3,x0,4
 1000044:	55df1063          	bne	x30,x29,1000584 <fail>

01000048 <test_5>:
 1000048:	800000b7          	lui	x1,0x80000
 100004c:	00e00113          	addi	x2,x0,14
 1000050:	0020df33          	srl	x30,x1,x2
 1000054:	00020eb7          	lui	x29,0x20
 1000058:	00500193          	addi	x3,x0,5
 100005c:	53df1463          	bne	x30,x29,1000584 <fail>

01000060 <test_6>:
 1000060:	800000b7          	lui	x1,0x80000
 1000064:	00108093          	addi	x1,x1,1 # 80000001 <begin_signature+0x7efff9a1>
 1000068:	01f00113          	addi	x2,x0,31
 100006c:	0020df33          	srl	x30,x1,x2
 1000070:	00100e93          	addi	x29,x0,1
 1000074:	00600193          	addi	x3,x0,6
 1000078:	51df1663          	bne	x30,x29,1000584 <fail>

0100007c <test_7>:
 100007c:	fff00093          	addi	x1,x0,-1
 1000080:	00000113          	addi	x2,x0,0
 1000084:	0020df33          	srl	x30,x1,x2
 1000088:	fff00e93          	addi	x29,x0,-1
 100008c:	00700193          	addi	x3,x0,7
 1000090:	4fdf1a63          	bne	x30,x29,1000584 <fail>

01000094 <test_8>:
 1000094:	fff00093          	addi	x1,x0,-1
 1000098:	00100113          	addi	x2,x0,1
 100009c:	0020df33          	srl	x30,x1,x2
 10000a0:	80000eb7          	lui	x29,0x80000
 10000a4:	fffe8e93          	addi	x29,x29,-1 # 7fffffff <begin_signature+0x7efff99f>
 10000a8:	00800193          	addi	x3,x0,8
 10000ac:	4ddf1c63          	bne	x30,x29,1000584 <fail>

010000b0 <test_9>:
 10000b0:	fff00093          	addi	x1,x0,-1
 10000b4:	00700113          	addi	x2,x0,7
 10000b8:	0020df33          	srl	x30,x1,x2
 10000bc:	02000eb7          	lui	x29,0x2000
 10000c0:	fffe8e93          	addi	x29,x29,-1 # 1ffffff <begin_signature+0xfff99f>
 10000c4:	00900193          	addi	x3,x0,9
 10000c8:	4bdf1e63          	bne	x30,x29,1000584 <fail>

010000cc <test_10>:
 10000cc:	fff00093          	addi	x1,x0,-1
 10000d0:	00e00113          	addi	x2,x0,14
 10000d4:	0020df33          	srl	x30,x1,x2
 10000d8:	00040eb7          	lui	x29,0x40
 10000dc:	fffe8e93          	addi	x29,x29,-1 # 3ffff <_start-0xfc0001>
 10000e0:	00a00193          	addi	x3,x0,10
 10000e4:	4bdf1063          	bne	x30,x29,1000584 <fail>

010000e8 <test_11>:
 10000e8:	fff00093          	addi	x1,x0,-1
 10000ec:	01f00113          	addi	x2,x0,31
 10000f0:	0020df33          	srl	x30,x1,x2
 10000f4:	00100e93          	addi	x29,x0,1
 10000f8:	00b00193          	addi	x3,x0,11
 10000fc:	49df1463          	bne	x30,x29,1000584 <fail>

01000100 <test_12>:
 1000100:	212120b7          	lui	x1,0x21212
 1000104:	12108093          	addi	x1,x1,289 # 21212121 <begin_signature+0x20211ac1>
 1000108:	00000113          	addi	x2,x0,0
 100010c:	0020df33          	srl	x30,x1,x2
 1000110:	21212eb7          	lui	x29,0x21212
 1000114:	121e8e93          	addi	x29,x29,289 # 21212121 <begin_signature+0x20211ac1>
 1000118:	00c00193          	addi	x3,x0,12
 100011c:	47df1463          	bne	x30,x29,1000584 <fail>

01000120 <test_13>:
 1000120:	212120b7          	lui	x1,0x21212
 1000124:	12108093          	addi	x1,x1,289 # 21212121 <begin_signature+0x20211ac1>
 1000128:	00100113          	addi	x2,x0,1
 100012c:	0020df33          	srl	x30,x1,x2
 1000130:	10909eb7          	lui	x29,0x10909
 1000134:	090e8e93          	addi	x29,x29,144 # 10909090 <begin_signature+0xf908a30>
 1000138:	00d00193          	addi	x3,x0,13
 100013c:	45df1463          	bne	x30,x29,1000584 <fail>

01000140 <test_14>:
 1000140:	212120b7          	lui	x1,0x21212
 1000144:	12108093          	addi	x1,x1,289 # 21212121 <begin_signature+0x20211ac1>
 1000148:	00700113          	addi	x2,x0,7
 100014c:	0020df33          	srl	x30,x1,x2
 1000150:	00424eb7          	lui	x29,0x424
 1000154:	242e8e93          	addi	x29,x29,578 # 424242 <_start-0xbdbdbe>
 1000158:	00e00193          	addi	x3,x0,14
 100015c:	43df1463          	bne	x30,x29,1000584 <fail>

01000160 <test_15>:
 1000160:	212120b7          	lui	x1,0x21212
 1000164:	12108093          	addi	x1,x1,289 # 21212121 <begin_signature+0x20211ac1>
 1000168:	00e00113          	addi	x2,x0,14
 100016c:	0020df33          	srl	x30,x1,x2
 1000170:	00008eb7          	lui	x29,0x8
 1000174:	484e8e93          	addi	x29,x29,1156 # 8484 <_start-0xff7b7c>
 1000178:	00f00193          	addi	x3,x0,15
 100017c:	41df1463          	bne	x30,x29,1000584 <fail>

01000180 <test_16>:
 1000180:	212120b7          	lui	x1,0x21212
 1000184:	12108093          	addi	x1,x1,289 # 21212121 <begin_signature+0x20211ac1>
 1000188:	01f00113          	addi	x2,x0,31
 100018c:	0020df33          	srl	x30,x1,x2
 1000190:	00000e93          	addi	x29,x0,0
 1000194:	01000193          	addi	x3,x0,16
 1000198:	3fdf1663          	bne	x30,x29,1000584 <fail>

0100019c <test_17>:
 100019c:	212120b7          	lui	x1,0x21212
 10001a0:	12108093          	addi	x1,x1,289 # 21212121 <begin_signature+0x20211ac1>
 10001a4:	fc000113          	addi	x2,x0,-64
 10001a8:	0020df33          	srl	x30,x1,x2
 10001ac:	21212eb7          	lui	x29,0x21212
 10001b0:	121e8e93          	addi	x29,x29,289 # 21212121 <begin_signature+0x20211ac1>
 10001b4:	01100193          	addi	x3,x0,17
 10001b8:	3ddf1663          	bne	x30,x29,1000584 <fail>

010001bc <test_18>:
 10001bc:	212120b7          	lui	x1,0x21212
 10001c0:	12108093          	addi	x1,x1,289 # 21212121 <begin_signature+0x20211ac1>
 10001c4:	fc100113          	addi	x2,x0,-63
 10001c8:	0020df33          	srl	x30,x1,x2
 10001cc:	10909eb7          	lui	x29,0x10909
 10001d0:	090e8e93          	addi	x29,x29,144 # 10909090 <begin_signature+0xf908a30>
 10001d4:	01200193          	addi	x3,x0,18
 10001d8:	3bdf1663          	bne	x30,x29,1000584 <fail>

010001dc <test_19>:
 10001dc:	212120b7          	lui	x1,0x21212
 10001e0:	12108093          	addi	x1,x1,289 # 21212121 <begin_signature+0x20211ac1>
 10001e4:	fc700113          	addi	x2,x0,-57
 10001e8:	0020df33          	srl	x30,x1,x2
 10001ec:	00424eb7          	lui	x29,0x424
 10001f0:	242e8e93          	addi	x29,x29,578 # 424242 <_start-0xbdbdbe>
 10001f4:	01300193          	addi	x3,x0,19
 10001f8:	39df1663          	bne	x30,x29,1000584 <fail>

010001fc <test_20>:
 10001fc:	212120b7          	lui	x1,0x21212
 1000200:	12108093          	addi	x1,x1,289 # 21212121 <begin_signature+0x20211ac1>
 1000204:	fce00113          	addi	x2,x0,-50
 1000208:	0020df33          	srl	x30,x1,x2
 100020c:	00008eb7          	lui	x29,0x8
 1000210:	484e8e93          	addi	x29,x29,1156 # 8484 <_start-0xff7b7c>
 1000214:	01400193          	addi	x3,x0,20
 1000218:	37df1663          	bne	x30,x29,1000584 <fail>

0100021c <test_21>:
 100021c:	212120b7          	lui	x1,0x21212
 1000220:	12108093          	addi	x1,x1,289 # 21212121 <begin_signature+0x20211ac1>
 1000224:	fff00113          	addi	x2,x0,-1
 1000228:	0020df33          	srl	x30,x1,x2
 100022c:	00000e93          	addi	x29,x0,0
 1000230:	01500193          	addi	x3,x0,21
 1000234:	35df1863          	bne	x30,x29,1000584 <fail>

01000238 <test_22>:
 1000238:	800000b7          	lui	x1,0x80000
 100023c:	00700113          	addi	x2,x0,7
 1000240:	0020d0b3          	srl	x1,x1,x2
 1000244:	01000eb7          	lui	x29,0x1000
 1000248:	01600193          	addi	x3,x0,22
 100024c:	33d09c63          	bne	x1,x29,1000584 <fail>

01000250 <test_23>:
 1000250:	800000b7          	lui	x1,0x80000
 1000254:	00e00113          	addi	x2,x0,14
 1000258:	0020d133          	srl	x2,x1,x2
 100025c:	00020eb7          	lui	x29,0x20
 1000260:	01700193          	addi	x3,x0,23
 1000264:	33d11063          	bne	x2,x29,1000584 <fail>

01000268 <test_24>:
 1000268:	00700093          	addi	x1,x0,7
 100026c:	0010d0b3          	srl	x1,x1,x1
 1000270:	00000e93          	addi	x29,x0,0
 1000274:	01800193          	addi	x3,x0,24
 1000278:	31d09663          	bne	x1,x29,1000584 <fail>

0100027c <test_25>:
 100027c:	00000213          	addi	x4,x0,0
 1000280:	800000b7          	lui	x1,0x80000
 1000284:	00700113          	addi	x2,x0,7
 1000288:	0020df33          	srl	x30,x1,x2
 100028c:	000f0313          	addi	x6,x30,0
 1000290:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000294:	00200293          	addi	x5,x0,2
 1000298:	fe5214e3          	bne	x4,x5,1000280 <test_25+0x4>
 100029c:	01000eb7          	lui	x29,0x1000
 10002a0:	01900193          	addi	x3,x0,25
 10002a4:	2fd31063          	bne	x6,x29,1000584 <fail>

010002a8 <test_26>:
 10002a8:	00000213          	addi	x4,x0,0
 10002ac:	800000b7          	lui	x1,0x80000
 10002b0:	00e00113          	addi	x2,x0,14
 10002b4:	0020df33          	srl	x30,x1,x2
 10002b8:	00000013          	addi	x0,x0,0
 10002bc:	000f0313          	addi	x6,x30,0
 10002c0:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10002c4:	00200293          	addi	x5,x0,2
 10002c8:	fe5212e3          	bne	x4,x5,10002ac <test_26+0x4>
 10002cc:	00020eb7          	lui	x29,0x20
 10002d0:	01a00193          	addi	x3,x0,26
 10002d4:	2bd31863          	bne	x6,x29,1000584 <fail>

010002d8 <test_27>:
 10002d8:	00000213          	addi	x4,x0,0
 10002dc:	800000b7          	lui	x1,0x80000
 10002e0:	01f00113          	addi	x2,x0,31
 10002e4:	0020df33          	srl	x30,x1,x2
 10002e8:	00000013          	addi	x0,x0,0
 10002ec:	00000013          	addi	x0,x0,0
 10002f0:	000f0313          	addi	x6,x30,0
 10002f4:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10002f8:	00200293          	addi	x5,x0,2
 10002fc:	fe5210e3          	bne	x4,x5,10002dc <test_27+0x4>
 1000300:	00100e93          	addi	x29,x0,1
 1000304:	01b00193          	addi	x3,x0,27
 1000308:	27d31e63          	bne	x6,x29,1000584 <fail>

0100030c <test_28>:
 100030c:	00000213          	addi	x4,x0,0
 1000310:	800000b7          	lui	x1,0x80000
 1000314:	00700113          	addi	x2,x0,7
 1000318:	0020df33          	srl	x30,x1,x2
 100031c:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000320:	00200293          	addi	x5,x0,2
 1000324:	fe5216e3          	bne	x4,x5,1000310 <test_28+0x4>
 1000328:	01000eb7          	lui	x29,0x1000
 100032c:	01c00193          	addi	x3,x0,28
 1000330:	25df1a63          	bne	x30,x29,1000584 <fail>

01000334 <test_29>:
 1000334:	00000213          	addi	x4,x0,0
 1000338:	800000b7          	lui	x1,0x80000
 100033c:	00e00113          	addi	x2,x0,14
 1000340:	00000013          	addi	x0,x0,0
 1000344:	0020df33          	srl	x30,x1,x2
 1000348:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 100034c:	00200293          	addi	x5,x0,2
 1000350:	fe5214e3          	bne	x4,x5,1000338 <test_29+0x4>
 1000354:	00020eb7          	lui	x29,0x20
 1000358:	01d00193          	addi	x3,x0,29
 100035c:	23df1463          	bne	x30,x29,1000584 <fail>

01000360 <test_30>:
 1000360:	00000213          	addi	x4,x0,0
 1000364:	800000b7          	lui	x1,0x80000
 1000368:	01f00113          	addi	x2,x0,31
 100036c:	00000013          	addi	x0,x0,0
 1000370:	00000013          	addi	x0,x0,0
 1000374:	0020df33          	srl	x30,x1,x2
 1000378:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 100037c:	00200293          	addi	x5,x0,2
 1000380:	fe5212e3          	bne	x4,x5,1000364 <test_30+0x4>
 1000384:	00100e93          	addi	x29,x0,1
 1000388:	01e00193          	addi	x3,x0,30
 100038c:	1fdf1c63          	bne	x30,x29,1000584 <fail>

01000390 <test_31>:
 1000390:	00000213          	addi	x4,x0,0
 1000394:	800000b7          	lui	x1,0x80000
 1000398:	00000013          	addi	x0,x0,0
 100039c:	00700113          	addi	x2,x0,7
 10003a0:	0020df33          	srl	x30,x1,x2
 10003a4:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10003a8:	00200293          	addi	x5,x0,2
 10003ac:	fe5214e3          	bne	x4,x5,1000394 <test_31+0x4>
 10003b0:	01000eb7          	lui	x29,0x1000
 10003b4:	01f00193          	addi	x3,x0,31
 10003b8:	1ddf1663          	bne	x30,x29,1000584 <fail>

010003bc <test_32>:
 10003bc:	00000213          	addi	x4,x0,0
 10003c0:	800000b7          	lui	x1,0x80000
 10003c4:	00000013          	addi	x0,x0,0
 10003c8:	00e00113          	addi	x2,x0,14
 10003cc:	00000013          	addi	x0,x0,0
 10003d0:	0020df33          	srl	x30,x1,x2
 10003d4:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10003d8:	00200293          	addi	x5,x0,2
 10003dc:	fe5212e3          	bne	x4,x5,10003c0 <test_32+0x4>
 10003e0:	00020eb7          	lui	x29,0x20
 10003e4:	02000193          	addi	x3,x0,32
 10003e8:	19df1e63          	bne	x30,x29,1000584 <fail>

010003ec <test_33>:
 10003ec:	00000213          	addi	x4,x0,0
 10003f0:	800000b7          	lui	x1,0x80000
 10003f4:	00000013          	addi	x0,x0,0
 10003f8:	00000013          	addi	x0,x0,0
 10003fc:	01f00113          	addi	x2,x0,31
 1000400:	0020df33          	srl	x30,x1,x2
 1000404:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000408:	00200293          	addi	x5,x0,2
 100040c:	fe5212e3          	bne	x4,x5,10003f0 <test_33+0x4>
 1000410:	00100e93          	addi	x29,x0,1
 1000414:	02100193          	addi	x3,x0,33
 1000418:	17df1663          	bne	x30,x29,1000584 <fail>

0100041c <test_34>:
 100041c:	00000213          	addi	x4,x0,0
 1000420:	00700113          	addi	x2,x0,7
 1000424:	800000b7          	lui	x1,0x80000
 1000428:	0020df33          	srl	x30,x1,x2
 100042c:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000430:	00200293          	addi	x5,x0,2
 1000434:	fe5216e3          	bne	x4,x5,1000420 <test_34+0x4>
 1000438:	01000eb7          	lui	x29,0x1000
 100043c:	02200193          	addi	x3,x0,34
 1000440:	15df1263          	bne	x30,x29,1000584 <fail>

01000444 <test_35>:
 1000444:	00000213          	addi	x4,x0,0
 1000448:	00e00113          	addi	x2,x0,14
 100044c:	800000b7          	lui	x1,0x80000
 1000450:	00000013          	addi	x0,x0,0
 1000454:	0020df33          	srl	x30,x1,x2
 1000458:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 100045c:	00200293          	addi	x5,x0,2
 1000460:	fe5214e3          	bne	x4,x5,1000448 <test_35+0x4>
 1000464:	00020eb7          	lui	x29,0x20
 1000468:	02300193          	addi	x3,x0,35
 100046c:	11df1c63          	bne	x30,x29,1000584 <fail>

01000470 <test_36>:
 1000470:	00000213          	addi	x4,x0,0
 1000474:	01f00113          	addi	x2,x0,31
 1000478:	800000b7          	lui	x1,0x80000
 100047c:	00000013          	addi	x0,x0,0
 1000480:	00000013          	addi	x0,x0,0
 1000484:	0020df33          	srl	x30,x1,x2
 1000488:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 100048c:	00200293          	addi	x5,x0,2
 1000490:	fe5212e3          	bne	x4,x5,1000474 <test_36+0x4>
 1000494:	00100e93          	addi	x29,x0,1
 1000498:	02400193          	addi	x3,x0,36
 100049c:	0fdf1463          	bne	x30,x29,1000584 <fail>

010004a0 <test_37>:
 10004a0:	00000213          	addi	x4,x0,0
 10004a4:	00700113          	addi	x2,x0,7
 10004a8:	00000013          	addi	x0,x0,0
 10004ac:	800000b7          	lui	x1,0x80000
 10004b0:	0020df33          	srl	x30,x1,x2
 10004b4:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10004b8:	00200293          	addi	x5,x0,2
 10004bc:	fe5214e3          	bne	x4,x5,10004a4 <test_37+0x4>
 10004c0:	01000eb7          	lui	x29,0x1000
 10004c4:	02500193          	addi	x3,x0,37
 10004c8:	0bdf1e63          	bne	x30,x29,1000584 <fail>

010004cc <test_38>:
 10004cc:	00000213          	addi	x4,x0,0
 10004d0:	00e00113          	addi	x2,x0,14
 10004d4:	00000013          	addi	x0,x0,0
 10004d8:	800000b7          	lui	x1,0x80000
 10004dc:	00000013          	addi	x0,x0,0
 10004e0:	0020df33          	srl	x30,x1,x2
 10004e4:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10004e8:	00200293          	addi	x5,x0,2
 10004ec:	fe5212e3          	bne	x4,x5,10004d0 <test_38+0x4>
 10004f0:	00020eb7          	lui	x29,0x20
 10004f4:	02600193          	addi	x3,x0,38
 10004f8:	09df1663          	bne	x30,x29,1000584 <fail>

010004fc <test_39>:
 10004fc:	00000213          	addi	x4,x0,0
 1000500:	01f00113          	addi	x2,x0,31
 1000504:	00000013          	addi	x0,x0,0
 1000508:	00000013          	addi	x0,x0,0
 100050c:	800000b7          	lui	x1,0x80000
 1000510:	0020df33          	srl	x30,x1,x2
 1000514:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000518:	00200293          	addi	x5,x0,2
 100051c:	fe5212e3          	bne	x4,x5,1000500 <test_39+0x4>
 1000520:	00100e93          	addi	x29,x0,1
 1000524:	02700193          	addi	x3,x0,39
 1000528:	05df1e63          	bne	x30,x29,1000584 <fail>

0100052c <test_40>:
 100052c:	00f00093          	addi	x1,x0,15
 1000530:	00105133          	srl	x2,x0,x1
 1000534:	00000e93          	addi	x29,x0,0
 1000538:	02800193          	addi	x3,x0,40
 100053c:	05d11463          	bne	x2,x29,1000584 <fail>

01000540 <test_41>:
 1000540:	02000093          	addi	x1,x0,32
 1000544:	0000d133          	srl	x2,x1,x0
 1000548:	02000e93          	addi	x29,x0,32
 100054c:	02900193          	addi	x3,x0,41
 1000550:	03d11a63          	bne	x2,x29,1000584 <fail>

01000554 <test_42>:
 1000554:	000050b3          	srl	x1,x0,x0
 1000558:	00000e93          	addi	x29,x0,0
 100055c:	02a00193          	addi	x3,x0,42
 1000560:	03d09263          	bne	x1,x29,1000584 <fail>

01000564 <test_43>:
 1000564:	40000093          	addi	x1,x0,1024
 1000568:	00001137          	lui	x2,0x1
 100056c:	80010113          	addi	x2,x2,-2048 # 800 <_start-0xfff800>
 1000570:	0020d033          	srl	x0,x1,x2
 1000574:	00000e93          	addi	x29,x0,0
 1000578:	02b00193          	addi	x3,x0,43
 100057c:	01d01463          	bne	x0,x29,1000584 <fail>
 1000580:	00301c63          	bne	x0,x3,1000598 <pass>

01000584 <fail>:
 1000584:	0ff0000f          	fence	iorw,iorw
 1000588:	00018063          	beq	x3,x0,1000588 <fail+0x4>
 100058c:	00119193          	slli	x3,x3,0x1
 1000590:	0011e193          	ori	x3,x3,1
 1000594:	00000073          	ecall

01000598 <pass>:
 1000598:	0ff0000f          	fence	iorw,iorw
 100059c:	00100193          	addi	x3,x0,1
 10005a0:	00000073          	ecall
 10005a4:	c0001073          	unimp
 10005a8:	0000                	c.unimp
 10005aa:	0000                	c.unimp
 10005ac:	0000                	c.unimp
 10005ae:	0000                	c.unimp
 10005b0:	0000                	c.unimp
 10005b2:	0000                	c.unimp
 10005b4:	0000                	c.unimp
 10005b6:	0000                	c.unimp
 10005b8:	0000                	c.unimp
 10005ba:	0000                	c.unimp
 10005bc:	0000                	c.unimp
 10005be:	0000                	c.unimp
 10005c0:	0000                	c.unimp
 10005c2:	0000                	c.unimp

Disassembly of section .text:

01000650 <end_signature>:
 1000650:	0000                	c.unimp
 1000652:	0000                	c.unimp
