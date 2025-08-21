
output/rv32ui-p-sub:     file format elf32-littleriscv


Disassembly of section .text.init:

01000000 <_start>:
 1000000:	00000093          	addi	x1,x0,0
 1000004:	00000113          	addi	x2,x0,0
 1000008:	40208f33          	sub	x30,x1,x2
 100000c:	00000e93          	addi	x29,x0,0
 1000010:	00200193          	addi	x3,x0,2
 1000014:	4bdf1663          	bne	x30,x29,10004c0 <fail>

01000018 <test_3>:
 1000018:	00100093          	addi	x1,x0,1
 100001c:	00100113          	addi	x2,x0,1
 1000020:	40208f33          	sub	x30,x1,x2
 1000024:	00000e93          	addi	x29,x0,0
 1000028:	00300193          	addi	x3,x0,3
 100002c:	49df1a63          	bne	x30,x29,10004c0 <fail>

01000030 <test_4>:
 1000030:	00300093          	addi	x1,x0,3
 1000034:	00700113          	addi	x2,x0,7
 1000038:	40208f33          	sub	x30,x1,x2
 100003c:	ffc00e93          	addi	x29,x0,-4
 1000040:	00400193          	addi	x3,x0,4
 1000044:	47df1e63          	bne	x30,x29,10004c0 <fail>

01000048 <test_5>:
 1000048:	00000093          	addi	x1,x0,0
 100004c:	ffff8137          	lui	x2,0xffff8
 1000050:	40208f33          	sub	x30,x1,x2
 1000054:	00008eb7          	lui	x29,0x8
 1000058:	00500193          	addi	x3,x0,5
 100005c:	47df1263          	bne	x30,x29,10004c0 <fail>

01000060 <test_6>:
 1000060:	800000b7          	lui	x1,0x80000
 1000064:	00000113          	addi	x2,x0,0
 1000068:	40208f33          	sub	x30,x1,x2
 100006c:	80000eb7          	lui	x29,0x80000
 1000070:	00600193          	addi	x3,x0,6
 1000074:	45df1663          	bne	x30,x29,10004c0 <fail>

01000078 <test_7>:
 1000078:	800000b7          	lui	x1,0x80000
 100007c:	ffff8137          	lui	x2,0xffff8
 1000080:	40208f33          	sub	x30,x1,x2
 1000084:	80008eb7          	lui	x29,0x80008
 1000088:	00700193          	addi	x3,x0,7
 100008c:	43df1a63          	bne	x30,x29,10004c0 <fail>

01000090 <test_8>:
 1000090:	00000093          	addi	x1,x0,0
 1000094:	00008137          	lui	x2,0x8
 1000098:	fff10113          	addi	x2,x2,-1 # 7fff <_start-0xff8001>
 100009c:	40208f33          	sub	x30,x1,x2
 10000a0:	ffff8eb7          	lui	x29,0xffff8
 10000a4:	001e8e93          	addi	x29,x29,1 # ffff8001 <begin_signature+0xfeff7a61>
 10000a8:	00800193          	addi	x3,x0,8
 10000ac:	41df1a63          	bne	x30,x29,10004c0 <fail>

010000b0 <test_9>:
 10000b0:	800000b7          	lui	x1,0x80000
 10000b4:	fff08093          	addi	x1,x1,-1 # 7fffffff <begin_signature+0x7efffa5f>
 10000b8:	00000113          	addi	x2,x0,0
 10000bc:	40208f33          	sub	x30,x1,x2
 10000c0:	80000eb7          	lui	x29,0x80000
 10000c4:	fffe8e93          	addi	x29,x29,-1 # 7fffffff <begin_signature+0x7efffa5f>
 10000c8:	00900193          	addi	x3,x0,9
 10000cc:	3fdf1a63          	bne	x30,x29,10004c0 <fail>

010000d0 <test_10>:
 10000d0:	800000b7          	lui	x1,0x80000
 10000d4:	fff08093          	addi	x1,x1,-1 # 7fffffff <begin_signature+0x7efffa5f>
 10000d8:	00008137          	lui	x2,0x8
 10000dc:	fff10113          	addi	x2,x2,-1 # 7fff <_start-0xff8001>
 10000e0:	40208f33          	sub	x30,x1,x2
 10000e4:	7fff8eb7          	lui	x29,0x7fff8
 10000e8:	00a00193          	addi	x3,x0,10
 10000ec:	3ddf1a63          	bne	x30,x29,10004c0 <fail>

010000f0 <test_11>:
 10000f0:	800000b7          	lui	x1,0x80000
 10000f4:	00008137          	lui	x2,0x8
 10000f8:	fff10113          	addi	x2,x2,-1 # 7fff <_start-0xff8001>
 10000fc:	40208f33          	sub	x30,x1,x2
 1000100:	7fff8eb7          	lui	x29,0x7fff8
 1000104:	001e8e93          	addi	x29,x29,1 # 7fff8001 <begin_signature+0x7eff7a61>
 1000108:	00b00193          	addi	x3,x0,11
 100010c:	3bdf1a63          	bne	x30,x29,10004c0 <fail>

01000110 <test_12>:
 1000110:	800000b7          	lui	x1,0x80000
 1000114:	fff08093          	addi	x1,x1,-1 # 7fffffff <begin_signature+0x7efffa5f>
 1000118:	ffff8137          	lui	x2,0xffff8
 100011c:	40208f33          	sub	x30,x1,x2
 1000120:	80008eb7          	lui	x29,0x80008
 1000124:	fffe8e93          	addi	x29,x29,-1 # 80007fff <begin_signature+0x7f007a5f>
 1000128:	00c00193          	addi	x3,x0,12
 100012c:	39df1a63          	bne	x30,x29,10004c0 <fail>

01000130 <test_13>:
 1000130:	00000093          	addi	x1,x0,0
 1000134:	fff00113          	addi	x2,x0,-1
 1000138:	40208f33          	sub	x30,x1,x2
 100013c:	00100e93          	addi	x29,x0,1
 1000140:	00d00193          	addi	x3,x0,13
 1000144:	37df1e63          	bne	x30,x29,10004c0 <fail>

01000148 <test_14>:
 1000148:	fff00093          	addi	x1,x0,-1
 100014c:	00100113          	addi	x2,x0,1
 1000150:	40208f33          	sub	x30,x1,x2
 1000154:	ffe00e93          	addi	x29,x0,-2
 1000158:	00e00193          	addi	x3,x0,14
 100015c:	37df1263          	bne	x30,x29,10004c0 <fail>

01000160 <test_15>:
 1000160:	fff00093          	addi	x1,x0,-1
 1000164:	fff00113          	addi	x2,x0,-1
 1000168:	40208f33          	sub	x30,x1,x2
 100016c:	00000e93          	addi	x29,x0,0
 1000170:	00f00193          	addi	x3,x0,15
 1000174:	35df1663          	bne	x30,x29,10004c0 <fail>

01000178 <test_16>:
 1000178:	00d00093          	addi	x1,x0,13
 100017c:	00b00113          	addi	x2,x0,11
 1000180:	402080b3          	sub	x1,x1,x2
 1000184:	00200e93          	addi	x29,x0,2
 1000188:	01000193          	addi	x3,x0,16
 100018c:	33d09a63          	bne	x1,x29,10004c0 <fail>

01000190 <test_17>:
 1000190:	00e00093          	addi	x1,x0,14
 1000194:	00b00113          	addi	x2,x0,11
 1000198:	40208133          	sub	x2,x1,x2
 100019c:	00300e93          	addi	x29,x0,3
 10001a0:	01100193          	addi	x3,x0,17
 10001a4:	31d11e63          	bne	x2,x29,10004c0 <fail>

010001a8 <test_18>:
 10001a8:	00d00093          	addi	x1,x0,13
 10001ac:	401080b3          	sub	x1,x1,x1
 10001b0:	00000e93          	addi	x29,x0,0
 10001b4:	01200193          	addi	x3,x0,18
 10001b8:	31d09463          	bne	x1,x29,10004c0 <fail>

010001bc <test_19>:
 10001bc:	00000213          	addi	x4,x0,0
 10001c0:	00d00093          	addi	x1,x0,13
 10001c4:	00b00113          	addi	x2,x0,11
 10001c8:	40208f33          	sub	x30,x1,x2
 10001cc:	000f0313          	addi	x6,x30,0
 10001d0:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10001d4:	00200293          	addi	x5,x0,2
 10001d8:	fe5214e3          	bne	x4,x5,10001c0 <test_19+0x4>
 10001dc:	00200e93          	addi	x29,x0,2
 10001e0:	01300193          	addi	x3,x0,19
 10001e4:	2dd31e63          	bne	x6,x29,10004c0 <fail>

010001e8 <test_20>:
 10001e8:	00000213          	addi	x4,x0,0
 10001ec:	00e00093          	addi	x1,x0,14
 10001f0:	00b00113          	addi	x2,x0,11
 10001f4:	40208f33          	sub	x30,x1,x2
 10001f8:	00000013          	addi	x0,x0,0
 10001fc:	000f0313          	addi	x6,x30,0
 1000200:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000204:	00200293          	addi	x5,x0,2
 1000208:	fe5212e3          	bne	x4,x5,10001ec <test_20+0x4>
 100020c:	00300e93          	addi	x29,x0,3
 1000210:	01400193          	addi	x3,x0,20
 1000214:	2bd31663          	bne	x6,x29,10004c0 <fail>

01000218 <test_21>:
 1000218:	00000213          	addi	x4,x0,0
 100021c:	00f00093          	addi	x1,x0,15
 1000220:	00b00113          	addi	x2,x0,11
 1000224:	40208f33          	sub	x30,x1,x2
 1000228:	00000013          	addi	x0,x0,0
 100022c:	00000013          	addi	x0,x0,0
 1000230:	000f0313          	addi	x6,x30,0
 1000234:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000238:	00200293          	addi	x5,x0,2
 100023c:	fe5210e3          	bne	x4,x5,100021c <test_21+0x4>
 1000240:	00400e93          	addi	x29,x0,4
 1000244:	01500193          	addi	x3,x0,21
 1000248:	27d31c63          	bne	x6,x29,10004c0 <fail>

0100024c <test_22>:
 100024c:	00000213          	addi	x4,x0,0
 1000250:	00d00093          	addi	x1,x0,13
 1000254:	00b00113          	addi	x2,x0,11
 1000258:	40208f33          	sub	x30,x1,x2
 100025c:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000260:	00200293          	addi	x5,x0,2
 1000264:	fe5216e3          	bne	x4,x5,1000250 <test_22+0x4>
 1000268:	00200e93          	addi	x29,x0,2
 100026c:	01600193          	addi	x3,x0,22
 1000270:	25df1863          	bne	x30,x29,10004c0 <fail>

01000274 <test_23>:
 1000274:	00000213          	addi	x4,x0,0
 1000278:	00e00093          	addi	x1,x0,14
 100027c:	00b00113          	addi	x2,x0,11
 1000280:	00000013          	addi	x0,x0,0
 1000284:	40208f33          	sub	x30,x1,x2
 1000288:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 100028c:	00200293          	addi	x5,x0,2
 1000290:	fe5214e3          	bne	x4,x5,1000278 <test_23+0x4>
 1000294:	00300e93          	addi	x29,x0,3
 1000298:	01700193          	addi	x3,x0,23
 100029c:	23df1263          	bne	x30,x29,10004c0 <fail>

010002a0 <test_24>:
 10002a0:	00000213          	addi	x4,x0,0
 10002a4:	00f00093          	addi	x1,x0,15
 10002a8:	00b00113          	addi	x2,x0,11
 10002ac:	00000013          	addi	x0,x0,0
 10002b0:	00000013          	addi	x0,x0,0
 10002b4:	40208f33          	sub	x30,x1,x2
 10002b8:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10002bc:	00200293          	addi	x5,x0,2
 10002c0:	fe5212e3          	bne	x4,x5,10002a4 <test_24+0x4>
 10002c4:	00400e93          	addi	x29,x0,4
 10002c8:	01800193          	addi	x3,x0,24
 10002cc:	1fdf1a63          	bne	x30,x29,10004c0 <fail>

010002d0 <test_25>:
 10002d0:	00000213          	addi	x4,x0,0
 10002d4:	00d00093          	addi	x1,x0,13
 10002d8:	00000013          	addi	x0,x0,0
 10002dc:	00b00113          	addi	x2,x0,11
 10002e0:	40208f33          	sub	x30,x1,x2
 10002e4:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10002e8:	00200293          	addi	x5,x0,2
 10002ec:	fe5214e3          	bne	x4,x5,10002d4 <test_25+0x4>
 10002f0:	00200e93          	addi	x29,x0,2
 10002f4:	01900193          	addi	x3,x0,25
 10002f8:	1ddf1463          	bne	x30,x29,10004c0 <fail>

010002fc <test_26>:
 10002fc:	00000213          	addi	x4,x0,0
 1000300:	00e00093          	addi	x1,x0,14
 1000304:	00000013          	addi	x0,x0,0
 1000308:	00b00113          	addi	x2,x0,11
 100030c:	00000013          	addi	x0,x0,0
 1000310:	40208f33          	sub	x30,x1,x2
 1000314:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000318:	00200293          	addi	x5,x0,2
 100031c:	fe5212e3          	bne	x4,x5,1000300 <test_26+0x4>
 1000320:	00300e93          	addi	x29,x0,3
 1000324:	01a00193          	addi	x3,x0,26
 1000328:	19df1c63          	bne	x30,x29,10004c0 <fail>

0100032c <test_27>:
 100032c:	00000213          	addi	x4,x0,0
 1000330:	00f00093          	addi	x1,x0,15
 1000334:	00000013          	addi	x0,x0,0
 1000338:	00000013          	addi	x0,x0,0
 100033c:	00b00113          	addi	x2,x0,11
 1000340:	40208f33          	sub	x30,x1,x2
 1000344:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000348:	00200293          	addi	x5,x0,2
 100034c:	fe5212e3          	bne	x4,x5,1000330 <test_27+0x4>
 1000350:	00400e93          	addi	x29,x0,4
 1000354:	01b00193          	addi	x3,x0,27
 1000358:	17df1463          	bne	x30,x29,10004c0 <fail>

0100035c <test_28>:
 100035c:	00000213          	addi	x4,x0,0
 1000360:	00b00113          	addi	x2,x0,11
 1000364:	00d00093          	addi	x1,x0,13
 1000368:	40208f33          	sub	x30,x1,x2
 100036c:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000370:	00200293          	addi	x5,x0,2
 1000374:	fe5216e3          	bne	x4,x5,1000360 <test_28+0x4>
 1000378:	00200e93          	addi	x29,x0,2
 100037c:	01c00193          	addi	x3,x0,28
 1000380:	15df1063          	bne	x30,x29,10004c0 <fail>

01000384 <test_29>:
 1000384:	00000213          	addi	x4,x0,0
 1000388:	00b00113          	addi	x2,x0,11
 100038c:	00e00093          	addi	x1,x0,14
 1000390:	00000013          	addi	x0,x0,0
 1000394:	40208f33          	sub	x30,x1,x2
 1000398:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 100039c:	00200293          	addi	x5,x0,2
 10003a0:	fe5214e3          	bne	x4,x5,1000388 <test_29+0x4>
 10003a4:	00300e93          	addi	x29,x0,3
 10003a8:	01d00193          	addi	x3,x0,29
 10003ac:	11df1a63          	bne	x30,x29,10004c0 <fail>

010003b0 <test_30>:
 10003b0:	00000213          	addi	x4,x0,0
 10003b4:	00b00113          	addi	x2,x0,11
 10003b8:	00f00093          	addi	x1,x0,15
 10003bc:	00000013          	addi	x0,x0,0
 10003c0:	00000013          	addi	x0,x0,0
 10003c4:	40208f33          	sub	x30,x1,x2
 10003c8:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10003cc:	00200293          	addi	x5,x0,2
 10003d0:	fe5212e3          	bne	x4,x5,10003b4 <test_30+0x4>
 10003d4:	00400e93          	addi	x29,x0,4
 10003d8:	01e00193          	addi	x3,x0,30
 10003dc:	0fdf1263          	bne	x30,x29,10004c0 <fail>

010003e0 <test_31>:
 10003e0:	00000213          	addi	x4,x0,0
 10003e4:	00b00113          	addi	x2,x0,11
 10003e8:	00000013          	addi	x0,x0,0
 10003ec:	00d00093          	addi	x1,x0,13
 10003f0:	40208f33          	sub	x30,x1,x2
 10003f4:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10003f8:	00200293          	addi	x5,x0,2
 10003fc:	fe5214e3          	bne	x4,x5,10003e4 <test_31+0x4>
 1000400:	00200e93          	addi	x29,x0,2
 1000404:	01f00193          	addi	x3,x0,31
 1000408:	0bdf1c63          	bne	x30,x29,10004c0 <fail>

0100040c <test_32>:
 100040c:	00000213          	addi	x4,x0,0
 1000410:	00b00113          	addi	x2,x0,11
 1000414:	00000013          	addi	x0,x0,0
 1000418:	00e00093          	addi	x1,x0,14
 100041c:	00000013          	addi	x0,x0,0
 1000420:	40208f33          	sub	x30,x1,x2
 1000424:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000428:	00200293          	addi	x5,x0,2
 100042c:	fe5212e3          	bne	x4,x5,1000410 <test_32+0x4>
 1000430:	00300e93          	addi	x29,x0,3
 1000434:	02000193          	addi	x3,x0,32
 1000438:	09df1463          	bne	x30,x29,10004c0 <fail>

0100043c <test_33>:
 100043c:	00000213          	addi	x4,x0,0
 1000440:	00b00113          	addi	x2,x0,11
 1000444:	00000013          	addi	x0,x0,0
 1000448:	00000013          	addi	x0,x0,0
 100044c:	00f00093          	addi	x1,x0,15
 1000450:	40208f33          	sub	x30,x1,x2
 1000454:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000458:	00200293          	addi	x5,x0,2
 100045c:	fe5212e3          	bne	x4,x5,1000440 <test_33+0x4>
 1000460:	00400e93          	addi	x29,x0,4
 1000464:	02100193          	addi	x3,x0,33
 1000468:	05df1c63          	bne	x30,x29,10004c0 <fail>

0100046c <test_34>:
 100046c:	ff100093          	addi	x1,x0,-15
 1000470:	40100133          	sub	x2,x0,x1
 1000474:	00f00e93          	addi	x29,x0,15
 1000478:	02200193          	addi	x3,x0,34
 100047c:	05d11263          	bne	x2,x29,10004c0 <fail>

01000480 <test_35>:
 1000480:	02000093          	addi	x1,x0,32
 1000484:	40008133          	sub	x2,x1,x0
 1000488:	02000e93          	addi	x29,x0,32
 100048c:	02300193          	addi	x3,x0,35
 1000490:	03d11863          	bne	x2,x29,10004c0 <fail>

01000494 <test_36>:
 1000494:	400000b3          	sub	x1,x0,x0
 1000498:	00000e93          	addi	x29,x0,0
 100049c:	02400193          	addi	x3,x0,36
 10004a0:	03d09063          	bne	x1,x29,10004c0 <fail>

010004a4 <test_37>:
 10004a4:	01000093          	addi	x1,x0,16
 10004a8:	01e00113          	addi	x2,x0,30
 10004ac:	40208033          	sub	x0,x1,x2
 10004b0:	00000e93          	addi	x29,x0,0
 10004b4:	02500193          	addi	x3,x0,37
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
