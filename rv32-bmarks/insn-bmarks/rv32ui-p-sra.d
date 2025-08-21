
output/rv32ui-p-sra:     file format elf32-littleriscv


Disassembly of section .text.init:

01000000 <_start>:
 1000000:	800000b7          	lui	x1,0x80000
 1000004:	00000113          	addi	x2,x0,0
 1000008:	4020df33          	sra	x30,x1,x2
 100000c:	80000eb7          	lui	x29,0x80000
 1000010:	00200193          	addi	x3,x0,2
 1000014:	59df1463          	bne	x30,x29,100059c <fail>

01000018 <test_3>:
 1000018:	800000b7          	lui	x1,0x80000
 100001c:	00100113          	addi	x2,x0,1
 1000020:	4020df33          	sra	x30,x1,x2
 1000024:	c0000eb7          	lui	x29,0xc0000
 1000028:	00300193          	addi	x3,x0,3
 100002c:	57df1863          	bne	x30,x29,100059c <fail>

01000030 <test_4>:
 1000030:	800000b7          	lui	x1,0x80000
 1000034:	00700113          	addi	x2,x0,7
 1000038:	4020df33          	sra	x30,x1,x2
 100003c:	ff000eb7          	lui	x29,0xff000
 1000040:	00400193          	addi	x3,x0,4
 1000044:	55df1c63          	bne	x30,x29,100059c <fail>

01000048 <test_5>:
 1000048:	800000b7          	lui	x1,0x80000
 100004c:	00e00113          	addi	x2,x0,14
 1000050:	4020df33          	sra	x30,x1,x2
 1000054:	fffe0eb7          	lui	x29,0xfffe0
 1000058:	00500193          	addi	x3,x0,5
 100005c:	55df1063          	bne	x30,x29,100059c <fail>

01000060 <test_6>:
 1000060:	800000b7          	lui	x1,0x80000
 1000064:	00108093          	addi	x1,x1,1 # 80000001 <begin_signature+0x7efff9a1>
 1000068:	01f00113          	addi	x2,x0,31
 100006c:	4020df33          	sra	x30,x1,x2
 1000070:	fff00e93          	addi	x29,x0,-1
 1000074:	00600193          	addi	x3,x0,6
 1000078:	53df1263          	bne	x30,x29,100059c <fail>

0100007c <test_7>:
 100007c:	800000b7          	lui	x1,0x80000
 1000080:	fff08093          	addi	x1,x1,-1 # 7fffffff <begin_signature+0x7efff99f>
 1000084:	00000113          	addi	x2,x0,0
 1000088:	4020df33          	sra	x30,x1,x2
 100008c:	80000eb7          	lui	x29,0x80000
 1000090:	fffe8e93          	addi	x29,x29,-1 # 7fffffff <begin_signature+0x7efff99f>
 1000094:	00700193          	addi	x3,x0,7
 1000098:	51df1263          	bne	x30,x29,100059c <fail>

0100009c <test_8>:
 100009c:	800000b7          	lui	x1,0x80000
 10000a0:	fff08093          	addi	x1,x1,-1 # 7fffffff <begin_signature+0x7efff99f>
 10000a4:	00100113          	addi	x2,x0,1
 10000a8:	4020df33          	sra	x30,x1,x2
 10000ac:	40000eb7          	lui	x29,0x40000
 10000b0:	fffe8e93          	addi	x29,x29,-1 # 3fffffff <begin_signature+0x3efff99f>
 10000b4:	00800193          	addi	x3,x0,8
 10000b8:	4fdf1263          	bne	x30,x29,100059c <fail>

010000bc <test_9>:
 10000bc:	800000b7          	lui	x1,0x80000
 10000c0:	fff08093          	addi	x1,x1,-1 # 7fffffff <begin_signature+0x7efff99f>
 10000c4:	00700113          	addi	x2,x0,7
 10000c8:	4020df33          	sra	x30,x1,x2
 10000cc:	01000eb7          	lui	x29,0x1000
 10000d0:	fffe8e93          	addi	x29,x29,-1 # ffffff <_start-0x1>
 10000d4:	00900193          	addi	x3,x0,9
 10000d8:	4ddf1263          	bne	x30,x29,100059c <fail>

010000dc <test_10>:
 10000dc:	800000b7          	lui	x1,0x80000
 10000e0:	fff08093          	addi	x1,x1,-1 # 7fffffff <begin_signature+0x7efff99f>
 10000e4:	00e00113          	addi	x2,x0,14
 10000e8:	4020df33          	sra	x30,x1,x2
 10000ec:	00020eb7          	lui	x29,0x20
 10000f0:	fffe8e93          	addi	x29,x29,-1 # 1ffff <_start-0xfe0001>
 10000f4:	00a00193          	addi	x3,x0,10
 10000f8:	4bdf1263          	bne	x30,x29,100059c <fail>

010000fc <test_11>:
 10000fc:	800000b7          	lui	x1,0x80000
 1000100:	fff08093          	addi	x1,x1,-1 # 7fffffff <begin_signature+0x7efff99f>
 1000104:	01f00113          	addi	x2,x0,31
 1000108:	4020df33          	sra	x30,x1,x2
 100010c:	00000e93          	addi	x29,x0,0
 1000110:	00b00193          	addi	x3,x0,11
 1000114:	49df1463          	bne	x30,x29,100059c <fail>

01000118 <test_12>:
 1000118:	818180b7          	lui	x1,0x81818
 100011c:	18108093          	addi	x1,x1,385 # 81818181 <begin_signature+0x80817b21>
 1000120:	00000113          	addi	x2,x0,0
 1000124:	4020df33          	sra	x30,x1,x2
 1000128:	81818eb7          	lui	x29,0x81818
 100012c:	181e8e93          	addi	x29,x29,385 # 81818181 <begin_signature+0x80817b21>
 1000130:	00c00193          	addi	x3,x0,12
 1000134:	47df1463          	bne	x30,x29,100059c <fail>

01000138 <test_13>:
 1000138:	818180b7          	lui	x1,0x81818
 100013c:	18108093          	addi	x1,x1,385 # 81818181 <begin_signature+0x80817b21>
 1000140:	00100113          	addi	x2,x0,1
 1000144:	4020df33          	sra	x30,x1,x2
 1000148:	c0c0ceb7          	lui	x29,0xc0c0c
 100014c:	0c0e8e93          	addi	x29,x29,192 # c0c0c0c0 <begin_signature+0xbfc0ba60>
 1000150:	00d00193          	addi	x3,x0,13
 1000154:	45df1463          	bne	x30,x29,100059c <fail>

01000158 <test_14>:
 1000158:	818180b7          	lui	x1,0x81818
 100015c:	18108093          	addi	x1,x1,385 # 81818181 <begin_signature+0x80817b21>
 1000160:	00700113          	addi	x2,x0,7
 1000164:	4020df33          	sra	x30,x1,x2
 1000168:	ff030eb7          	lui	x29,0xff030
 100016c:	303e8e93          	addi	x29,x29,771 # ff030303 <begin_signature+0xfe02fca3>
 1000170:	00e00193          	addi	x3,x0,14
 1000174:	43df1463          	bne	x30,x29,100059c <fail>

01000178 <test_15>:
 1000178:	818180b7          	lui	x1,0x81818
 100017c:	18108093          	addi	x1,x1,385 # 81818181 <begin_signature+0x80817b21>
 1000180:	00e00113          	addi	x2,x0,14
 1000184:	4020df33          	sra	x30,x1,x2
 1000188:	fffe0eb7          	lui	x29,0xfffe0
 100018c:	606e8e93          	addi	x29,x29,1542 # fffe0606 <begin_signature+0xfefdffa6>
 1000190:	00f00193          	addi	x3,x0,15
 1000194:	41df1463          	bne	x30,x29,100059c <fail>

01000198 <test_16>:
 1000198:	818180b7          	lui	x1,0x81818
 100019c:	18108093          	addi	x1,x1,385 # 81818181 <begin_signature+0x80817b21>
 10001a0:	01f00113          	addi	x2,x0,31
 10001a4:	4020df33          	sra	x30,x1,x2
 10001a8:	fff00e93          	addi	x29,x0,-1
 10001ac:	01000193          	addi	x3,x0,16
 10001b0:	3fdf1663          	bne	x30,x29,100059c <fail>

010001b4 <test_17>:
 10001b4:	818180b7          	lui	x1,0x81818
 10001b8:	18108093          	addi	x1,x1,385 # 81818181 <begin_signature+0x80817b21>
 10001bc:	fc000113          	addi	x2,x0,-64
 10001c0:	4020df33          	sra	x30,x1,x2
 10001c4:	81818eb7          	lui	x29,0x81818
 10001c8:	181e8e93          	addi	x29,x29,385 # 81818181 <begin_signature+0x80817b21>
 10001cc:	01100193          	addi	x3,x0,17
 10001d0:	3ddf1663          	bne	x30,x29,100059c <fail>

010001d4 <test_18>:
 10001d4:	818180b7          	lui	x1,0x81818
 10001d8:	18108093          	addi	x1,x1,385 # 81818181 <begin_signature+0x80817b21>
 10001dc:	fc100113          	addi	x2,x0,-63
 10001e0:	4020df33          	sra	x30,x1,x2
 10001e4:	c0c0ceb7          	lui	x29,0xc0c0c
 10001e8:	0c0e8e93          	addi	x29,x29,192 # c0c0c0c0 <begin_signature+0xbfc0ba60>
 10001ec:	01200193          	addi	x3,x0,18
 10001f0:	3bdf1663          	bne	x30,x29,100059c <fail>

010001f4 <test_19>:
 10001f4:	818180b7          	lui	x1,0x81818
 10001f8:	18108093          	addi	x1,x1,385 # 81818181 <begin_signature+0x80817b21>
 10001fc:	fc700113          	addi	x2,x0,-57
 1000200:	4020df33          	sra	x30,x1,x2
 1000204:	ff030eb7          	lui	x29,0xff030
 1000208:	303e8e93          	addi	x29,x29,771 # ff030303 <begin_signature+0xfe02fca3>
 100020c:	01300193          	addi	x3,x0,19
 1000210:	39df1663          	bne	x30,x29,100059c <fail>

01000214 <test_20>:
 1000214:	818180b7          	lui	x1,0x81818
 1000218:	18108093          	addi	x1,x1,385 # 81818181 <begin_signature+0x80817b21>
 100021c:	fce00113          	addi	x2,x0,-50
 1000220:	4020df33          	sra	x30,x1,x2
 1000224:	fffe0eb7          	lui	x29,0xfffe0
 1000228:	606e8e93          	addi	x29,x29,1542 # fffe0606 <begin_signature+0xfefdffa6>
 100022c:	01400193          	addi	x3,x0,20
 1000230:	37df1663          	bne	x30,x29,100059c <fail>

01000234 <test_21>:
 1000234:	818180b7          	lui	x1,0x81818
 1000238:	18108093          	addi	x1,x1,385 # 81818181 <begin_signature+0x80817b21>
 100023c:	fff00113          	addi	x2,x0,-1
 1000240:	4020df33          	sra	x30,x1,x2
 1000244:	fff00e93          	addi	x29,x0,-1
 1000248:	01500193          	addi	x3,x0,21
 100024c:	35df1863          	bne	x30,x29,100059c <fail>

01000250 <test_22>:
 1000250:	800000b7          	lui	x1,0x80000
 1000254:	00700113          	addi	x2,x0,7
 1000258:	4020d0b3          	sra	x1,x1,x2
 100025c:	ff000eb7          	lui	x29,0xff000
 1000260:	01600193          	addi	x3,x0,22
 1000264:	33d09c63          	bne	x1,x29,100059c <fail>

01000268 <test_23>:
 1000268:	800000b7          	lui	x1,0x80000
 100026c:	00e00113          	addi	x2,x0,14
 1000270:	4020d133          	sra	x2,x1,x2
 1000274:	fffe0eb7          	lui	x29,0xfffe0
 1000278:	01700193          	addi	x3,x0,23
 100027c:	33d11063          	bne	x2,x29,100059c <fail>

01000280 <test_24>:
 1000280:	00700093          	addi	x1,x0,7
 1000284:	4010d0b3          	sra	x1,x1,x1
 1000288:	00000e93          	addi	x29,x0,0
 100028c:	01800193          	addi	x3,x0,24
 1000290:	31d09663          	bne	x1,x29,100059c <fail>

01000294 <test_25>:
 1000294:	00000213          	addi	x4,x0,0
 1000298:	800000b7          	lui	x1,0x80000
 100029c:	00700113          	addi	x2,x0,7
 10002a0:	4020df33          	sra	x30,x1,x2
 10002a4:	000f0313          	addi	x6,x30,0
 10002a8:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10002ac:	00200293          	addi	x5,x0,2
 10002b0:	fe5214e3          	bne	x4,x5,1000298 <test_25+0x4>
 10002b4:	ff000eb7          	lui	x29,0xff000
 10002b8:	01900193          	addi	x3,x0,25
 10002bc:	2fd31063          	bne	x6,x29,100059c <fail>

010002c0 <test_26>:
 10002c0:	00000213          	addi	x4,x0,0
 10002c4:	800000b7          	lui	x1,0x80000
 10002c8:	00e00113          	addi	x2,x0,14
 10002cc:	4020df33          	sra	x30,x1,x2
 10002d0:	00000013          	addi	x0,x0,0
 10002d4:	000f0313          	addi	x6,x30,0
 10002d8:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10002dc:	00200293          	addi	x5,x0,2
 10002e0:	fe5212e3          	bne	x4,x5,10002c4 <test_26+0x4>
 10002e4:	fffe0eb7          	lui	x29,0xfffe0
 10002e8:	01a00193          	addi	x3,x0,26
 10002ec:	2bd31863          	bne	x6,x29,100059c <fail>

010002f0 <test_27>:
 10002f0:	00000213          	addi	x4,x0,0
 10002f4:	800000b7          	lui	x1,0x80000
 10002f8:	01f00113          	addi	x2,x0,31
 10002fc:	4020df33          	sra	x30,x1,x2
 1000300:	00000013          	addi	x0,x0,0
 1000304:	00000013          	addi	x0,x0,0
 1000308:	000f0313          	addi	x6,x30,0
 100030c:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000310:	00200293          	addi	x5,x0,2
 1000314:	fe5210e3          	bne	x4,x5,10002f4 <test_27+0x4>
 1000318:	fff00e93          	addi	x29,x0,-1
 100031c:	01b00193          	addi	x3,x0,27
 1000320:	27d31e63          	bne	x6,x29,100059c <fail>

01000324 <test_28>:
 1000324:	00000213          	addi	x4,x0,0
 1000328:	800000b7          	lui	x1,0x80000
 100032c:	00700113          	addi	x2,x0,7
 1000330:	4020df33          	sra	x30,x1,x2
 1000334:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000338:	00200293          	addi	x5,x0,2
 100033c:	fe5216e3          	bne	x4,x5,1000328 <test_28+0x4>
 1000340:	ff000eb7          	lui	x29,0xff000
 1000344:	01c00193          	addi	x3,x0,28
 1000348:	25df1a63          	bne	x30,x29,100059c <fail>

0100034c <test_29>:
 100034c:	00000213          	addi	x4,x0,0
 1000350:	800000b7          	lui	x1,0x80000
 1000354:	00e00113          	addi	x2,x0,14
 1000358:	00000013          	addi	x0,x0,0
 100035c:	4020df33          	sra	x30,x1,x2
 1000360:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000364:	00200293          	addi	x5,x0,2
 1000368:	fe5214e3          	bne	x4,x5,1000350 <test_29+0x4>
 100036c:	fffe0eb7          	lui	x29,0xfffe0
 1000370:	01d00193          	addi	x3,x0,29
 1000374:	23df1463          	bne	x30,x29,100059c <fail>

01000378 <test_30>:
 1000378:	00000213          	addi	x4,x0,0
 100037c:	800000b7          	lui	x1,0x80000
 1000380:	01f00113          	addi	x2,x0,31
 1000384:	00000013          	addi	x0,x0,0
 1000388:	00000013          	addi	x0,x0,0
 100038c:	4020df33          	sra	x30,x1,x2
 1000390:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000394:	00200293          	addi	x5,x0,2
 1000398:	fe5212e3          	bne	x4,x5,100037c <test_30+0x4>
 100039c:	fff00e93          	addi	x29,x0,-1
 10003a0:	01e00193          	addi	x3,x0,30
 10003a4:	1fdf1c63          	bne	x30,x29,100059c <fail>

010003a8 <test_31>:
 10003a8:	00000213          	addi	x4,x0,0
 10003ac:	800000b7          	lui	x1,0x80000
 10003b0:	00000013          	addi	x0,x0,0
 10003b4:	00700113          	addi	x2,x0,7
 10003b8:	4020df33          	sra	x30,x1,x2
 10003bc:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10003c0:	00200293          	addi	x5,x0,2
 10003c4:	fe5214e3          	bne	x4,x5,10003ac <test_31+0x4>
 10003c8:	ff000eb7          	lui	x29,0xff000
 10003cc:	01f00193          	addi	x3,x0,31
 10003d0:	1ddf1663          	bne	x30,x29,100059c <fail>

010003d4 <test_32>:
 10003d4:	00000213          	addi	x4,x0,0
 10003d8:	800000b7          	lui	x1,0x80000
 10003dc:	00000013          	addi	x0,x0,0
 10003e0:	00e00113          	addi	x2,x0,14
 10003e4:	00000013          	addi	x0,x0,0
 10003e8:	4020df33          	sra	x30,x1,x2
 10003ec:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10003f0:	00200293          	addi	x5,x0,2
 10003f4:	fe5212e3          	bne	x4,x5,10003d8 <test_32+0x4>
 10003f8:	fffe0eb7          	lui	x29,0xfffe0
 10003fc:	02000193          	addi	x3,x0,32
 1000400:	19df1e63          	bne	x30,x29,100059c <fail>

01000404 <test_33>:
 1000404:	00000213          	addi	x4,x0,0
 1000408:	800000b7          	lui	x1,0x80000
 100040c:	00000013          	addi	x0,x0,0
 1000410:	00000013          	addi	x0,x0,0
 1000414:	01f00113          	addi	x2,x0,31
 1000418:	4020df33          	sra	x30,x1,x2
 100041c:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000420:	00200293          	addi	x5,x0,2
 1000424:	fe5212e3          	bne	x4,x5,1000408 <test_33+0x4>
 1000428:	fff00e93          	addi	x29,x0,-1
 100042c:	02100193          	addi	x3,x0,33
 1000430:	17df1663          	bne	x30,x29,100059c <fail>

01000434 <test_34>:
 1000434:	00000213          	addi	x4,x0,0
 1000438:	00700113          	addi	x2,x0,7
 100043c:	800000b7          	lui	x1,0x80000
 1000440:	4020df33          	sra	x30,x1,x2
 1000444:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000448:	00200293          	addi	x5,x0,2
 100044c:	fe5216e3          	bne	x4,x5,1000438 <test_34+0x4>
 1000450:	ff000eb7          	lui	x29,0xff000
 1000454:	02200193          	addi	x3,x0,34
 1000458:	15df1263          	bne	x30,x29,100059c <fail>

0100045c <test_35>:
 100045c:	00000213          	addi	x4,x0,0
 1000460:	00e00113          	addi	x2,x0,14
 1000464:	800000b7          	lui	x1,0x80000
 1000468:	00000013          	addi	x0,x0,0
 100046c:	4020df33          	sra	x30,x1,x2
 1000470:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000474:	00200293          	addi	x5,x0,2
 1000478:	fe5214e3          	bne	x4,x5,1000460 <test_35+0x4>
 100047c:	fffe0eb7          	lui	x29,0xfffe0
 1000480:	02300193          	addi	x3,x0,35
 1000484:	11df1c63          	bne	x30,x29,100059c <fail>

01000488 <test_36>:
 1000488:	00000213          	addi	x4,x0,0
 100048c:	01f00113          	addi	x2,x0,31
 1000490:	800000b7          	lui	x1,0x80000
 1000494:	00000013          	addi	x0,x0,0
 1000498:	00000013          	addi	x0,x0,0
 100049c:	4020df33          	sra	x30,x1,x2
 10004a0:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10004a4:	00200293          	addi	x5,x0,2
 10004a8:	fe5212e3          	bne	x4,x5,100048c <test_36+0x4>
 10004ac:	fff00e93          	addi	x29,x0,-1
 10004b0:	02400193          	addi	x3,x0,36
 10004b4:	0fdf1463          	bne	x30,x29,100059c <fail>

010004b8 <test_37>:
 10004b8:	00000213          	addi	x4,x0,0
 10004bc:	00700113          	addi	x2,x0,7
 10004c0:	00000013          	addi	x0,x0,0
 10004c4:	800000b7          	lui	x1,0x80000
 10004c8:	4020df33          	sra	x30,x1,x2
 10004cc:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10004d0:	00200293          	addi	x5,x0,2
 10004d4:	fe5214e3          	bne	x4,x5,10004bc <test_37+0x4>
 10004d8:	ff000eb7          	lui	x29,0xff000
 10004dc:	02500193          	addi	x3,x0,37
 10004e0:	0bdf1e63          	bne	x30,x29,100059c <fail>

010004e4 <test_38>:
 10004e4:	00000213          	addi	x4,x0,0
 10004e8:	00e00113          	addi	x2,x0,14
 10004ec:	00000013          	addi	x0,x0,0
 10004f0:	800000b7          	lui	x1,0x80000
 10004f4:	00000013          	addi	x0,x0,0
 10004f8:	4020df33          	sra	x30,x1,x2
 10004fc:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000500:	00200293          	addi	x5,x0,2
 1000504:	fe5212e3          	bne	x4,x5,10004e8 <test_38+0x4>
 1000508:	fffe0eb7          	lui	x29,0xfffe0
 100050c:	02600193          	addi	x3,x0,38
 1000510:	09df1663          	bne	x30,x29,100059c <fail>

01000514 <test_39>:
 1000514:	00000213          	addi	x4,x0,0
 1000518:	01f00113          	addi	x2,x0,31
 100051c:	00000013          	addi	x0,x0,0
 1000520:	00000013          	addi	x0,x0,0
 1000524:	800000b7          	lui	x1,0x80000
 1000528:	4020df33          	sra	x30,x1,x2
 100052c:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000530:	00200293          	addi	x5,x0,2
 1000534:	fe5212e3          	bne	x4,x5,1000518 <test_39+0x4>
 1000538:	fff00e93          	addi	x29,x0,-1
 100053c:	02700193          	addi	x3,x0,39
 1000540:	05df1e63          	bne	x30,x29,100059c <fail>

01000544 <test_40>:
 1000544:	00f00093          	addi	x1,x0,15
 1000548:	40105133          	sra	x2,x0,x1
 100054c:	00000e93          	addi	x29,x0,0
 1000550:	02800193          	addi	x3,x0,40
 1000554:	05d11463          	bne	x2,x29,100059c <fail>

01000558 <test_41>:
 1000558:	02000093          	addi	x1,x0,32
 100055c:	4000d133          	sra	x2,x1,x0
 1000560:	02000e93          	addi	x29,x0,32
 1000564:	02900193          	addi	x3,x0,41
 1000568:	03d11a63          	bne	x2,x29,100059c <fail>

0100056c <test_42>:
 100056c:	400050b3          	sra	x1,x0,x0
 1000570:	00000e93          	addi	x29,x0,0
 1000574:	02a00193          	addi	x3,x0,42
 1000578:	03d09263          	bne	x1,x29,100059c <fail>

0100057c <test_43>:
 100057c:	40000093          	addi	x1,x0,1024
 1000580:	00001137          	lui	x2,0x1
 1000584:	80010113          	addi	x2,x2,-2048 # 800 <_start-0xfff800>
 1000588:	4020d033          	sra	x0,x1,x2
 100058c:	00000e93          	addi	x29,x0,0
 1000590:	02b00193          	addi	x3,x0,43
 1000594:	01d01463          	bne	x0,x29,100059c <fail>
 1000598:	00301c63          	bne	x0,x3,10005b0 <pass>

0100059c <fail>:
 100059c:	0ff0000f          	fence	iorw,iorw
 10005a0:	00018063          	beq	x3,x0,10005a0 <fail+0x4>
 10005a4:	00119193          	slli	x3,x3,0x1
 10005a8:	0011e193          	ori	x3,x3,1
 10005ac:	00000073          	ecall

010005b0 <pass>:
 10005b0:	0ff0000f          	fence	iorw,iorw
 10005b4:	00100193          	addi	x3,x0,1
 10005b8:	00000073          	ecall
 10005bc:	c0001073          	unimp
 10005c0:	0000                	c.unimp
 10005c2:	0000                	c.unimp

Disassembly of section .text:

01000650 <end_signature>:
 1000650:	0000                	c.unimp
 1000652:	0000                	c.unimp
