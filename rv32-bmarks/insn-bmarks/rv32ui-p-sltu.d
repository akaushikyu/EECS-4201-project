
output/rv32ui-p-sltu:     file format elf32-littleriscv


Disassembly of section .text.init:

01000000 <_start>:
 1000000:	00000093          	addi	x1,x0,0
 1000004:	00000113          	addi	x2,x0,0
 1000008:	0020bf33          	sltu	x30,x1,x2
 100000c:	00000e93          	addi	x29,x0,0
 1000010:	00200193          	addi	x3,x0,2
 1000014:	4bdf1a63          	bne	x30,x29,10004c8 <fail>

01000018 <test_3>:
 1000018:	00100093          	addi	x1,x0,1
 100001c:	00100113          	addi	x2,x0,1
 1000020:	0020bf33          	sltu	x30,x1,x2
 1000024:	00000e93          	addi	x29,x0,0
 1000028:	00300193          	addi	x3,x0,3
 100002c:	49df1e63          	bne	x30,x29,10004c8 <fail>

01000030 <test_4>:
 1000030:	00300093          	addi	x1,x0,3
 1000034:	00700113          	addi	x2,x0,7
 1000038:	0020bf33          	sltu	x30,x1,x2
 100003c:	00100e93          	addi	x29,x0,1
 1000040:	00400193          	addi	x3,x0,4
 1000044:	49df1263          	bne	x30,x29,10004c8 <fail>

01000048 <test_5>:
 1000048:	00700093          	addi	x1,x0,7
 100004c:	00300113          	addi	x2,x0,3
 1000050:	0020bf33          	sltu	x30,x1,x2
 1000054:	00000e93          	addi	x29,x0,0
 1000058:	00500193          	addi	x3,x0,5
 100005c:	47df1663          	bne	x30,x29,10004c8 <fail>

01000060 <test_6>:
 1000060:	00000093          	addi	x1,x0,0
 1000064:	ffff8137          	lui	x2,0xffff8
 1000068:	0020bf33          	sltu	x30,x1,x2
 100006c:	00100e93          	addi	x29,x0,1
 1000070:	00600193          	addi	x3,x0,6
 1000074:	45df1a63          	bne	x30,x29,10004c8 <fail>

01000078 <test_7>:
 1000078:	800000b7          	lui	x1,0x80000
 100007c:	00000113          	addi	x2,x0,0
 1000080:	0020bf33          	sltu	x30,x1,x2
 1000084:	00000e93          	addi	x29,x0,0
 1000088:	00700193          	addi	x3,x0,7
 100008c:	43df1e63          	bne	x30,x29,10004c8 <fail>

01000090 <test_8>:
 1000090:	800000b7          	lui	x1,0x80000
 1000094:	ffff8137          	lui	x2,0xffff8
 1000098:	0020bf33          	sltu	x30,x1,x2
 100009c:	00100e93          	addi	x29,x0,1
 10000a0:	00800193          	addi	x3,x0,8
 10000a4:	43df1263          	bne	x30,x29,10004c8 <fail>

010000a8 <test_9>:
 10000a8:	00000093          	addi	x1,x0,0
 10000ac:	00008137          	lui	x2,0x8
 10000b0:	fff10113          	addi	x2,x2,-1 # 7fff <_start-0xff8001>
 10000b4:	0020bf33          	sltu	x30,x1,x2
 10000b8:	00100e93          	addi	x29,x0,1
 10000bc:	00900193          	addi	x3,x0,9
 10000c0:	41df1463          	bne	x30,x29,10004c8 <fail>

010000c4 <test_10>:
 10000c4:	800000b7          	lui	x1,0x80000
 10000c8:	fff08093          	addi	x1,x1,-1 # 7fffffff <begin_signature+0x7efffa5f>
 10000cc:	00000113          	addi	x2,x0,0
 10000d0:	0020bf33          	sltu	x30,x1,x2
 10000d4:	00000e93          	addi	x29,x0,0
 10000d8:	00a00193          	addi	x3,x0,10
 10000dc:	3fdf1663          	bne	x30,x29,10004c8 <fail>

010000e0 <test_11>:
 10000e0:	800000b7          	lui	x1,0x80000
 10000e4:	fff08093          	addi	x1,x1,-1 # 7fffffff <begin_signature+0x7efffa5f>
 10000e8:	00008137          	lui	x2,0x8
 10000ec:	fff10113          	addi	x2,x2,-1 # 7fff <_start-0xff8001>
 10000f0:	0020bf33          	sltu	x30,x1,x2
 10000f4:	00000e93          	addi	x29,x0,0
 10000f8:	00b00193          	addi	x3,x0,11
 10000fc:	3ddf1663          	bne	x30,x29,10004c8 <fail>

01000100 <test_12>:
 1000100:	800000b7          	lui	x1,0x80000
 1000104:	00008137          	lui	x2,0x8
 1000108:	fff10113          	addi	x2,x2,-1 # 7fff <_start-0xff8001>
 100010c:	0020bf33          	sltu	x30,x1,x2
 1000110:	00000e93          	addi	x29,x0,0
 1000114:	00c00193          	addi	x3,x0,12
 1000118:	3bdf1863          	bne	x30,x29,10004c8 <fail>

0100011c <test_13>:
 100011c:	800000b7          	lui	x1,0x80000
 1000120:	fff08093          	addi	x1,x1,-1 # 7fffffff <begin_signature+0x7efffa5f>
 1000124:	ffff8137          	lui	x2,0xffff8
 1000128:	0020bf33          	sltu	x30,x1,x2
 100012c:	00100e93          	addi	x29,x0,1
 1000130:	00d00193          	addi	x3,x0,13
 1000134:	39df1a63          	bne	x30,x29,10004c8 <fail>

01000138 <test_14>:
 1000138:	00000093          	addi	x1,x0,0
 100013c:	fff00113          	addi	x2,x0,-1
 1000140:	0020bf33          	sltu	x30,x1,x2
 1000144:	00100e93          	addi	x29,x0,1
 1000148:	00e00193          	addi	x3,x0,14
 100014c:	37df1e63          	bne	x30,x29,10004c8 <fail>

01000150 <test_15>:
 1000150:	fff00093          	addi	x1,x0,-1
 1000154:	00100113          	addi	x2,x0,1
 1000158:	0020bf33          	sltu	x30,x1,x2
 100015c:	00000e93          	addi	x29,x0,0
 1000160:	00f00193          	addi	x3,x0,15
 1000164:	37df1263          	bne	x30,x29,10004c8 <fail>

01000168 <test_16>:
 1000168:	fff00093          	addi	x1,x0,-1
 100016c:	fff00113          	addi	x2,x0,-1
 1000170:	0020bf33          	sltu	x30,x1,x2
 1000174:	00000e93          	addi	x29,x0,0
 1000178:	01000193          	addi	x3,x0,16
 100017c:	35df1663          	bne	x30,x29,10004c8 <fail>

01000180 <test_17>:
 1000180:	00e00093          	addi	x1,x0,14
 1000184:	00d00113          	addi	x2,x0,13
 1000188:	0020b0b3          	sltu	x1,x1,x2
 100018c:	00000e93          	addi	x29,x0,0
 1000190:	01100193          	addi	x3,x0,17
 1000194:	33d09a63          	bne	x1,x29,10004c8 <fail>

01000198 <test_18>:
 1000198:	00b00093          	addi	x1,x0,11
 100019c:	00d00113          	addi	x2,x0,13
 10001a0:	0020b133          	sltu	x2,x1,x2
 10001a4:	00100e93          	addi	x29,x0,1
 10001a8:	01200193          	addi	x3,x0,18
 10001ac:	31d11e63          	bne	x2,x29,10004c8 <fail>

010001b0 <test_19>:
 10001b0:	00d00093          	addi	x1,x0,13
 10001b4:	0010b0b3          	sltu	x1,x1,x1
 10001b8:	00000e93          	addi	x29,x0,0
 10001bc:	01300193          	addi	x3,x0,19
 10001c0:	31d09463          	bne	x1,x29,10004c8 <fail>

010001c4 <test_20>:
 10001c4:	00000213          	addi	x4,x0,0
 10001c8:	00b00093          	addi	x1,x0,11
 10001cc:	00d00113          	addi	x2,x0,13
 10001d0:	0020bf33          	sltu	x30,x1,x2
 10001d4:	000f0313          	addi	x6,x30,0
 10001d8:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10001dc:	00200293          	addi	x5,x0,2
 10001e0:	fe5214e3          	bne	x4,x5,10001c8 <test_20+0x4>
 10001e4:	00100e93          	addi	x29,x0,1
 10001e8:	01400193          	addi	x3,x0,20
 10001ec:	2dd31e63          	bne	x6,x29,10004c8 <fail>

010001f0 <test_21>:
 10001f0:	00000213          	addi	x4,x0,0
 10001f4:	00e00093          	addi	x1,x0,14
 10001f8:	00d00113          	addi	x2,x0,13
 10001fc:	0020bf33          	sltu	x30,x1,x2
 1000200:	00000013          	addi	x0,x0,0
 1000204:	000f0313          	addi	x6,x30,0
 1000208:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 100020c:	00200293          	addi	x5,x0,2
 1000210:	fe5212e3          	bne	x4,x5,10001f4 <test_21+0x4>
 1000214:	00000e93          	addi	x29,x0,0
 1000218:	01500193          	addi	x3,x0,21
 100021c:	2bd31663          	bne	x6,x29,10004c8 <fail>

01000220 <test_22>:
 1000220:	00000213          	addi	x4,x0,0
 1000224:	00c00093          	addi	x1,x0,12
 1000228:	00d00113          	addi	x2,x0,13
 100022c:	0020bf33          	sltu	x30,x1,x2
 1000230:	00000013          	addi	x0,x0,0
 1000234:	00000013          	addi	x0,x0,0
 1000238:	000f0313          	addi	x6,x30,0
 100023c:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000240:	00200293          	addi	x5,x0,2
 1000244:	fe5210e3          	bne	x4,x5,1000224 <test_22+0x4>
 1000248:	00100e93          	addi	x29,x0,1
 100024c:	01600193          	addi	x3,x0,22
 1000250:	27d31c63          	bne	x6,x29,10004c8 <fail>

01000254 <test_23>:
 1000254:	00000213          	addi	x4,x0,0
 1000258:	00e00093          	addi	x1,x0,14
 100025c:	00d00113          	addi	x2,x0,13
 1000260:	0020bf33          	sltu	x30,x1,x2
 1000264:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000268:	00200293          	addi	x5,x0,2
 100026c:	fe5216e3          	bne	x4,x5,1000258 <test_23+0x4>
 1000270:	00000e93          	addi	x29,x0,0
 1000274:	01700193          	addi	x3,x0,23
 1000278:	25df1863          	bne	x30,x29,10004c8 <fail>

0100027c <test_24>:
 100027c:	00000213          	addi	x4,x0,0
 1000280:	00b00093          	addi	x1,x0,11
 1000284:	00d00113          	addi	x2,x0,13
 1000288:	00000013          	addi	x0,x0,0
 100028c:	0020bf33          	sltu	x30,x1,x2
 1000290:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000294:	00200293          	addi	x5,x0,2
 1000298:	fe5214e3          	bne	x4,x5,1000280 <test_24+0x4>
 100029c:	00100e93          	addi	x29,x0,1
 10002a0:	01800193          	addi	x3,x0,24
 10002a4:	23df1263          	bne	x30,x29,10004c8 <fail>

010002a8 <test_25>:
 10002a8:	00000213          	addi	x4,x0,0
 10002ac:	00f00093          	addi	x1,x0,15
 10002b0:	00d00113          	addi	x2,x0,13
 10002b4:	00000013          	addi	x0,x0,0
 10002b8:	00000013          	addi	x0,x0,0
 10002bc:	0020bf33          	sltu	x30,x1,x2
 10002c0:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10002c4:	00200293          	addi	x5,x0,2
 10002c8:	fe5212e3          	bne	x4,x5,10002ac <test_25+0x4>
 10002cc:	00000e93          	addi	x29,x0,0
 10002d0:	01900193          	addi	x3,x0,25
 10002d4:	1fdf1a63          	bne	x30,x29,10004c8 <fail>

010002d8 <test_26>:
 10002d8:	00000213          	addi	x4,x0,0
 10002dc:	00a00093          	addi	x1,x0,10
 10002e0:	00000013          	addi	x0,x0,0
 10002e4:	00d00113          	addi	x2,x0,13
 10002e8:	0020bf33          	sltu	x30,x1,x2
 10002ec:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10002f0:	00200293          	addi	x5,x0,2
 10002f4:	fe5214e3          	bne	x4,x5,10002dc <test_26+0x4>
 10002f8:	00100e93          	addi	x29,x0,1
 10002fc:	01a00193          	addi	x3,x0,26
 1000300:	1ddf1463          	bne	x30,x29,10004c8 <fail>

01000304 <test_27>:
 1000304:	00000213          	addi	x4,x0,0
 1000308:	01000093          	addi	x1,x0,16
 100030c:	00000013          	addi	x0,x0,0
 1000310:	00d00113          	addi	x2,x0,13
 1000314:	00000013          	addi	x0,x0,0
 1000318:	0020bf33          	sltu	x30,x1,x2
 100031c:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000320:	00200293          	addi	x5,x0,2
 1000324:	fe5212e3          	bne	x4,x5,1000308 <test_27+0x4>
 1000328:	00000e93          	addi	x29,x0,0
 100032c:	01b00193          	addi	x3,x0,27
 1000330:	19df1c63          	bne	x30,x29,10004c8 <fail>

01000334 <test_28>:
 1000334:	00000213          	addi	x4,x0,0
 1000338:	00900093          	addi	x1,x0,9
 100033c:	00000013          	addi	x0,x0,0
 1000340:	00000013          	addi	x0,x0,0
 1000344:	00d00113          	addi	x2,x0,13
 1000348:	0020bf33          	sltu	x30,x1,x2
 100034c:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000350:	00200293          	addi	x5,x0,2
 1000354:	fe5212e3          	bne	x4,x5,1000338 <test_28+0x4>
 1000358:	00100e93          	addi	x29,x0,1
 100035c:	01c00193          	addi	x3,x0,28
 1000360:	17df1463          	bne	x30,x29,10004c8 <fail>

01000364 <test_29>:
 1000364:	00000213          	addi	x4,x0,0
 1000368:	00d00113          	addi	x2,x0,13
 100036c:	01100093          	addi	x1,x0,17
 1000370:	0020bf33          	sltu	x30,x1,x2
 1000374:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000378:	00200293          	addi	x5,x0,2
 100037c:	fe5216e3          	bne	x4,x5,1000368 <test_29+0x4>
 1000380:	00000e93          	addi	x29,x0,0
 1000384:	01d00193          	addi	x3,x0,29
 1000388:	15df1063          	bne	x30,x29,10004c8 <fail>

0100038c <test_30>:
 100038c:	00000213          	addi	x4,x0,0
 1000390:	00d00113          	addi	x2,x0,13
 1000394:	00800093          	addi	x1,x0,8
 1000398:	00000013          	addi	x0,x0,0
 100039c:	0020bf33          	sltu	x30,x1,x2
 10003a0:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10003a4:	00200293          	addi	x5,x0,2
 10003a8:	fe5214e3          	bne	x4,x5,1000390 <test_30+0x4>
 10003ac:	00100e93          	addi	x29,x0,1
 10003b0:	01e00193          	addi	x3,x0,30
 10003b4:	11df1a63          	bne	x30,x29,10004c8 <fail>

010003b8 <test_31>:
 10003b8:	00000213          	addi	x4,x0,0
 10003bc:	00d00113          	addi	x2,x0,13
 10003c0:	01200093          	addi	x1,x0,18
 10003c4:	00000013          	addi	x0,x0,0
 10003c8:	00000013          	addi	x0,x0,0
 10003cc:	0020bf33          	sltu	x30,x1,x2
 10003d0:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10003d4:	00200293          	addi	x5,x0,2
 10003d8:	fe5212e3          	bne	x4,x5,10003bc <test_31+0x4>
 10003dc:	00000e93          	addi	x29,x0,0
 10003e0:	01f00193          	addi	x3,x0,31
 10003e4:	0fdf1263          	bne	x30,x29,10004c8 <fail>

010003e8 <test_32>:
 10003e8:	00000213          	addi	x4,x0,0
 10003ec:	00d00113          	addi	x2,x0,13
 10003f0:	00000013          	addi	x0,x0,0
 10003f4:	00700093          	addi	x1,x0,7
 10003f8:	0020bf33          	sltu	x30,x1,x2
 10003fc:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000400:	00200293          	addi	x5,x0,2
 1000404:	fe5214e3          	bne	x4,x5,10003ec <test_32+0x4>
 1000408:	00100e93          	addi	x29,x0,1
 100040c:	02000193          	addi	x3,x0,32
 1000410:	0bdf1c63          	bne	x30,x29,10004c8 <fail>

01000414 <test_33>:
 1000414:	00000213          	addi	x4,x0,0
 1000418:	00d00113          	addi	x2,x0,13
 100041c:	00000013          	addi	x0,x0,0
 1000420:	01300093          	addi	x1,x0,19
 1000424:	00000013          	addi	x0,x0,0
 1000428:	0020bf33          	sltu	x30,x1,x2
 100042c:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000430:	00200293          	addi	x5,x0,2
 1000434:	fe5212e3          	bne	x4,x5,1000418 <test_33+0x4>
 1000438:	00000e93          	addi	x29,x0,0
 100043c:	02100193          	addi	x3,x0,33
 1000440:	09df1463          	bne	x30,x29,10004c8 <fail>

01000444 <test_34>:
 1000444:	00000213          	addi	x4,x0,0
 1000448:	00d00113          	addi	x2,x0,13
 100044c:	00000013          	addi	x0,x0,0
 1000450:	00000013          	addi	x0,x0,0
 1000454:	00600093          	addi	x1,x0,6
 1000458:	0020bf33          	sltu	x30,x1,x2
 100045c:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000460:	00200293          	addi	x5,x0,2
 1000464:	fe5212e3          	bne	x4,x5,1000448 <test_34+0x4>
 1000468:	00100e93          	addi	x29,x0,1
 100046c:	02200193          	addi	x3,x0,34
 1000470:	05df1c63          	bne	x30,x29,10004c8 <fail>

01000474 <test_35>:
 1000474:	fff00093          	addi	x1,x0,-1
 1000478:	00103133          	sltu	x2,x0,x1
 100047c:	00100e93          	addi	x29,x0,1
 1000480:	02300193          	addi	x3,x0,35
 1000484:	05d11263          	bne	x2,x29,10004c8 <fail>

01000488 <test_36>:
 1000488:	fff00093          	addi	x1,x0,-1
 100048c:	0000b133          	sltu	x2,x1,x0
 1000490:	00000e93          	addi	x29,x0,0
 1000494:	02400193          	addi	x3,x0,36
 1000498:	03d11863          	bne	x2,x29,10004c8 <fail>

0100049c <test_37>:
 100049c:	000030b3          	sltu	x1,x0,x0
 10004a0:	00000e93          	addi	x29,x0,0
 10004a4:	02500193          	addi	x3,x0,37
 10004a8:	03d09063          	bne	x1,x29,10004c8 <fail>

010004ac <test_38>:
 10004ac:	01000093          	addi	x1,x0,16
 10004b0:	01e00113          	addi	x2,x0,30
 10004b4:	0020b033          	sltu	x0,x1,x2
 10004b8:	00000e93          	addi	x29,x0,0
 10004bc:	02600193          	addi	x3,x0,38
 10004c0:	01d01463          	bne	x0,x29,10004c8 <fail>
 10004c4:	00301c63          	bne	x0,x3,10004dc <pass>

010004c8 <fail>:
 10004c8:	0ff0000f          	fence	iorw,iorw
 10004cc:	00018063          	beq	x3,x0,10004cc <fail+0x4>
 10004d0:	00119193          	slli	x3,x3,0x1
 10004d4:	0011e193          	ori	x3,x3,1
 10004d8:	00000073          	ecall

010004dc <pass>:
 10004dc:	0ff0000f          	fence	iorw,iorw
 10004e0:	00100193          	addi	x3,x0,1
 10004e4:	00000073          	ecall
 10004e8:	c0001073          	unimp
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
