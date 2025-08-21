
output/rv32ui-p-add:     file format elf32-littleriscv


Disassembly of section .text.init:

01000000 <_start>:
 1000000:	00000093          	addi	x1,x0,0
 1000004:	00000113          	addi	x2,x0,0
 1000008:	00208f33          	add	x30,x1,x2
 100000c:	00000e93          	addi	x29,x0,0
 1000010:	00200193          	addi	x3,x0,2
 1000014:	4ddf1663          	bne	x30,x29,10004e0 <fail>

01000018 <test_3>:
 1000018:	00100093          	addi	x1,x0,1
 100001c:	00100113          	addi	x2,x0,1
 1000020:	00208f33          	add	x30,x1,x2
 1000024:	00200e93          	addi	x29,x0,2
 1000028:	00300193          	addi	x3,x0,3
 100002c:	4bdf1a63          	bne	x30,x29,10004e0 <fail>

01000030 <test_4>:
 1000030:	00300093          	addi	x1,x0,3
 1000034:	00700113          	addi	x2,x0,7
 1000038:	00208f33          	add	x30,x1,x2
 100003c:	00a00e93          	addi	x29,x0,10
 1000040:	00400193          	addi	x3,x0,4
 1000044:	49df1e63          	bne	x30,x29,10004e0 <fail>

01000048 <test_5>:
 1000048:	00000093          	addi	x1,x0,0
 100004c:	ffff8137          	lui	x2,0xffff8
 1000050:	00208f33          	add	x30,x1,x2
 1000054:	ffff8eb7          	lui	x29,0xffff8
 1000058:	00500193          	addi	x3,x0,5
 100005c:	49df1263          	bne	x30,x29,10004e0 <fail>

01000060 <test_6>:
 1000060:	800000b7          	lui	x1,0x80000
 1000064:	00000113          	addi	x2,x0,0
 1000068:	00208f33          	add	x30,x1,x2
 100006c:	80000eb7          	lui	x29,0x80000
 1000070:	00600193          	addi	x3,x0,6
 1000074:	47df1663          	bne	x30,x29,10004e0 <fail>

01000078 <test_7>:
 1000078:	800000b7          	lui	x1,0x80000
 100007c:	ffff8137          	lui	x2,0xffff8
 1000080:	00208f33          	add	x30,x1,x2
 1000084:	7fff8eb7          	lui	x29,0x7fff8
 1000088:	00700193          	addi	x3,x0,7
 100008c:	45df1a63          	bne	x30,x29,10004e0 <fail>

01000090 <test_8>:
 1000090:	00000093          	addi	x1,x0,0
 1000094:	00008137          	lui	x2,0x8
 1000098:	fff10113          	addi	x2,x2,-1 # 7fff <_start-0xff8001>
 100009c:	00208f33          	add	x30,x1,x2
 10000a0:	00008eb7          	lui	x29,0x8
 10000a4:	fffe8e93          	addi	x29,x29,-1 # 7fff <_start-0xff8001>
 10000a8:	00800193          	addi	x3,x0,8
 10000ac:	43df1a63          	bne	x30,x29,10004e0 <fail>

010000b0 <test_9>:
 10000b0:	800000b7          	lui	x1,0x80000
 10000b4:	fff08093          	addi	x1,x1,-1 # 7fffffff <begin_signature+0x7efffa5f>
 10000b8:	00000113          	addi	x2,x0,0
 10000bc:	00208f33          	add	x30,x1,x2
 10000c0:	80000eb7          	lui	x29,0x80000
 10000c4:	fffe8e93          	addi	x29,x29,-1 # 7fffffff <begin_signature+0x7efffa5f>
 10000c8:	00900193          	addi	x3,x0,9
 10000cc:	41df1a63          	bne	x30,x29,10004e0 <fail>

010000d0 <test_10>:
 10000d0:	800000b7          	lui	x1,0x80000
 10000d4:	fff08093          	addi	x1,x1,-1 # 7fffffff <begin_signature+0x7efffa5f>
 10000d8:	00008137          	lui	x2,0x8
 10000dc:	fff10113          	addi	x2,x2,-1 # 7fff <_start-0xff8001>
 10000e0:	00208f33          	add	x30,x1,x2
 10000e4:	80008eb7          	lui	x29,0x80008
 10000e8:	ffee8e93          	addi	x29,x29,-2 # 80007ffe <begin_signature+0x7f007a5e>
 10000ec:	00a00193          	addi	x3,x0,10
 10000f0:	3fdf1863          	bne	x30,x29,10004e0 <fail>

010000f4 <test_11>:
 10000f4:	800000b7          	lui	x1,0x80000
 10000f8:	00008137          	lui	x2,0x8
 10000fc:	fff10113          	addi	x2,x2,-1 # 7fff <_start-0xff8001>
 1000100:	00208f33          	add	x30,x1,x2
 1000104:	80008eb7          	lui	x29,0x80008
 1000108:	fffe8e93          	addi	x29,x29,-1 # 80007fff <begin_signature+0x7f007a5f>
 100010c:	00b00193          	addi	x3,x0,11
 1000110:	3ddf1863          	bne	x30,x29,10004e0 <fail>

01000114 <test_12>:
 1000114:	800000b7          	lui	x1,0x80000
 1000118:	fff08093          	addi	x1,x1,-1 # 7fffffff <begin_signature+0x7efffa5f>
 100011c:	ffff8137          	lui	x2,0xffff8
 1000120:	00208f33          	add	x30,x1,x2
 1000124:	7fff8eb7          	lui	x29,0x7fff8
 1000128:	fffe8e93          	addi	x29,x29,-1 # 7fff7fff <begin_signature+0x7eff7a5f>
 100012c:	00c00193          	addi	x3,x0,12
 1000130:	3bdf1863          	bne	x30,x29,10004e0 <fail>

01000134 <test_13>:
 1000134:	00000093          	addi	x1,x0,0
 1000138:	fff00113          	addi	x2,x0,-1
 100013c:	00208f33          	add	x30,x1,x2
 1000140:	fff00e93          	addi	x29,x0,-1
 1000144:	00d00193          	addi	x3,x0,13
 1000148:	39df1c63          	bne	x30,x29,10004e0 <fail>

0100014c <test_14>:
 100014c:	fff00093          	addi	x1,x0,-1
 1000150:	00100113          	addi	x2,x0,1
 1000154:	00208f33          	add	x30,x1,x2
 1000158:	00000e93          	addi	x29,x0,0
 100015c:	00e00193          	addi	x3,x0,14
 1000160:	39df1063          	bne	x30,x29,10004e0 <fail>

01000164 <test_15>:
 1000164:	fff00093          	addi	x1,x0,-1
 1000168:	fff00113          	addi	x2,x0,-1
 100016c:	00208f33          	add	x30,x1,x2
 1000170:	ffe00e93          	addi	x29,x0,-2
 1000174:	00f00193          	addi	x3,x0,15
 1000178:	37df1463          	bne	x30,x29,10004e0 <fail>

0100017c <test_16>:
 100017c:	00100093          	addi	x1,x0,1
 1000180:	80000137          	lui	x2,0x80000
 1000184:	fff10113          	addi	x2,x2,-1 # 7fffffff <begin_signature+0x7efffa5f>
 1000188:	00208f33          	add	x30,x1,x2
 100018c:	80000eb7          	lui	x29,0x80000
 1000190:	01000193          	addi	x3,x0,16
 1000194:	35df1663          	bne	x30,x29,10004e0 <fail>

01000198 <test_17>:
 1000198:	00d00093          	addi	x1,x0,13
 100019c:	00b00113          	addi	x2,x0,11
 10001a0:	002080b3          	add	x1,x1,x2
 10001a4:	01800e93          	addi	x29,x0,24
 10001a8:	01100193          	addi	x3,x0,17
 10001ac:	33d09a63          	bne	x1,x29,10004e0 <fail>

010001b0 <test_18>:
 10001b0:	00e00093          	addi	x1,x0,14
 10001b4:	00b00113          	addi	x2,x0,11
 10001b8:	00208133          	add	x2,x1,x2
 10001bc:	01900e93          	addi	x29,x0,25
 10001c0:	01200193          	addi	x3,x0,18
 10001c4:	31d11e63          	bne	x2,x29,10004e0 <fail>

010001c8 <test_19>:
 10001c8:	00d00093          	addi	x1,x0,13
 10001cc:	001080b3          	add	x1,x1,x1
 10001d0:	01a00e93          	addi	x29,x0,26
 10001d4:	01300193          	addi	x3,x0,19
 10001d8:	31d09463          	bne	x1,x29,10004e0 <fail>

010001dc <test_20>:
 10001dc:	00000213          	addi	x4,x0,0
 10001e0:	00d00093          	addi	x1,x0,13
 10001e4:	00b00113          	addi	x2,x0,11
 10001e8:	00208f33          	add	x30,x1,x2
 10001ec:	000f0313          	addi	x6,x30,0
 10001f0:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10001f4:	00200293          	addi	x5,x0,2
 10001f8:	fe5214e3          	bne	x4,x5,10001e0 <test_20+0x4>
 10001fc:	01800e93          	addi	x29,x0,24
 1000200:	01400193          	addi	x3,x0,20
 1000204:	2dd31e63          	bne	x6,x29,10004e0 <fail>

01000208 <test_21>:
 1000208:	00000213          	addi	x4,x0,0
 100020c:	00e00093          	addi	x1,x0,14
 1000210:	00b00113          	addi	x2,x0,11
 1000214:	00208f33          	add	x30,x1,x2
 1000218:	00000013          	addi	x0,x0,0
 100021c:	000f0313          	addi	x6,x30,0
 1000220:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000224:	00200293          	addi	x5,x0,2
 1000228:	fe5212e3          	bne	x4,x5,100020c <test_21+0x4>
 100022c:	01900e93          	addi	x29,x0,25
 1000230:	01500193          	addi	x3,x0,21
 1000234:	2bd31663          	bne	x6,x29,10004e0 <fail>

01000238 <test_22>:
 1000238:	00000213          	addi	x4,x0,0
 100023c:	00f00093          	addi	x1,x0,15
 1000240:	00b00113          	addi	x2,x0,11
 1000244:	00208f33          	add	x30,x1,x2
 1000248:	00000013          	addi	x0,x0,0
 100024c:	00000013          	addi	x0,x0,0
 1000250:	000f0313          	addi	x6,x30,0
 1000254:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000258:	00200293          	addi	x5,x0,2
 100025c:	fe5210e3          	bne	x4,x5,100023c <test_22+0x4>
 1000260:	01a00e93          	addi	x29,x0,26
 1000264:	01600193          	addi	x3,x0,22
 1000268:	27d31c63          	bne	x6,x29,10004e0 <fail>

0100026c <test_23>:
 100026c:	00000213          	addi	x4,x0,0
 1000270:	00d00093          	addi	x1,x0,13
 1000274:	00b00113          	addi	x2,x0,11
 1000278:	00208f33          	add	x30,x1,x2
 100027c:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000280:	00200293          	addi	x5,x0,2
 1000284:	fe5216e3          	bne	x4,x5,1000270 <test_23+0x4>
 1000288:	01800e93          	addi	x29,x0,24
 100028c:	01700193          	addi	x3,x0,23
 1000290:	25df1863          	bne	x30,x29,10004e0 <fail>

01000294 <test_24>:
 1000294:	00000213          	addi	x4,x0,0
 1000298:	00e00093          	addi	x1,x0,14
 100029c:	00b00113          	addi	x2,x0,11
 10002a0:	00000013          	addi	x0,x0,0
 10002a4:	00208f33          	add	x30,x1,x2
 10002a8:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10002ac:	00200293          	addi	x5,x0,2
 10002b0:	fe5214e3          	bne	x4,x5,1000298 <test_24+0x4>
 10002b4:	01900e93          	addi	x29,x0,25
 10002b8:	01800193          	addi	x3,x0,24
 10002bc:	23df1263          	bne	x30,x29,10004e0 <fail>

010002c0 <test_25>:
 10002c0:	00000213          	addi	x4,x0,0
 10002c4:	00f00093          	addi	x1,x0,15
 10002c8:	00b00113          	addi	x2,x0,11
 10002cc:	00000013          	addi	x0,x0,0
 10002d0:	00000013          	addi	x0,x0,0
 10002d4:	00208f33          	add	x30,x1,x2
 10002d8:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10002dc:	00200293          	addi	x5,x0,2
 10002e0:	fe5212e3          	bne	x4,x5,10002c4 <test_25+0x4>
 10002e4:	01a00e93          	addi	x29,x0,26
 10002e8:	01900193          	addi	x3,x0,25
 10002ec:	1fdf1a63          	bne	x30,x29,10004e0 <fail>

010002f0 <test_26>:
 10002f0:	00000213          	addi	x4,x0,0
 10002f4:	00d00093          	addi	x1,x0,13
 10002f8:	00000013          	addi	x0,x0,0
 10002fc:	00b00113          	addi	x2,x0,11
 1000300:	00208f33          	add	x30,x1,x2
 1000304:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000308:	00200293          	addi	x5,x0,2
 100030c:	fe5214e3          	bne	x4,x5,10002f4 <test_26+0x4>
 1000310:	01800e93          	addi	x29,x0,24
 1000314:	01a00193          	addi	x3,x0,26
 1000318:	1ddf1463          	bne	x30,x29,10004e0 <fail>

0100031c <test_27>:
 100031c:	00000213          	addi	x4,x0,0
 1000320:	00e00093          	addi	x1,x0,14
 1000324:	00000013          	addi	x0,x0,0
 1000328:	00b00113          	addi	x2,x0,11
 100032c:	00000013          	addi	x0,x0,0
 1000330:	00208f33          	add	x30,x1,x2
 1000334:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000338:	00200293          	addi	x5,x0,2
 100033c:	fe5212e3          	bne	x4,x5,1000320 <test_27+0x4>
 1000340:	01900e93          	addi	x29,x0,25
 1000344:	01b00193          	addi	x3,x0,27
 1000348:	19df1c63          	bne	x30,x29,10004e0 <fail>

0100034c <test_28>:
 100034c:	00000213          	addi	x4,x0,0
 1000350:	00f00093          	addi	x1,x0,15
 1000354:	00000013          	addi	x0,x0,0
 1000358:	00000013          	addi	x0,x0,0
 100035c:	00b00113          	addi	x2,x0,11
 1000360:	00208f33          	add	x30,x1,x2
 1000364:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000368:	00200293          	addi	x5,x0,2
 100036c:	fe5212e3          	bne	x4,x5,1000350 <test_28+0x4>
 1000370:	01a00e93          	addi	x29,x0,26
 1000374:	01c00193          	addi	x3,x0,28
 1000378:	17df1463          	bne	x30,x29,10004e0 <fail>

0100037c <test_29>:
 100037c:	00000213          	addi	x4,x0,0
 1000380:	00b00113          	addi	x2,x0,11
 1000384:	00d00093          	addi	x1,x0,13
 1000388:	00208f33          	add	x30,x1,x2
 100038c:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000390:	00200293          	addi	x5,x0,2
 1000394:	fe5216e3          	bne	x4,x5,1000380 <test_29+0x4>
 1000398:	01800e93          	addi	x29,x0,24
 100039c:	01d00193          	addi	x3,x0,29
 10003a0:	15df1063          	bne	x30,x29,10004e0 <fail>

010003a4 <test_30>:
 10003a4:	00000213          	addi	x4,x0,0
 10003a8:	00b00113          	addi	x2,x0,11
 10003ac:	00e00093          	addi	x1,x0,14
 10003b0:	00000013          	addi	x0,x0,0
 10003b4:	00208f33          	add	x30,x1,x2
 10003b8:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10003bc:	00200293          	addi	x5,x0,2
 10003c0:	fe5214e3          	bne	x4,x5,10003a8 <test_30+0x4>
 10003c4:	01900e93          	addi	x29,x0,25
 10003c8:	01e00193          	addi	x3,x0,30
 10003cc:	11df1a63          	bne	x30,x29,10004e0 <fail>

010003d0 <test_31>:
 10003d0:	00000213          	addi	x4,x0,0
 10003d4:	00b00113          	addi	x2,x0,11
 10003d8:	00f00093          	addi	x1,x0,15
 10003dc:	00000013          	addi	x0,x0,0
 10003e0:	00000013          	addi	x0,x0,0
 10003e4:	00208f33          	add	x30,x1,x2
 10003e8:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10003ec:	00200293          	addi	x5,x0,2
 10003f0:	fe5212e3          	bne	x4,x5,10003d4 <test_31+0x4>
 10003f4:	01a00e93          	addi	x29,x0,26
 10003f8:	01f00193          	addi	x3,x0,31
 10003fc:	0fdf1263          	bne	x30,x29,10004e0 <fail>

01000400 <test_32>:
 1000400:	00000213          	addi	x4,x0,0
 1000404:	00b00113          	addi	x2,x0,11
 1000408:	00000013          	addi	x0,x0,0
 100040c:	00d00093          	addi	x1,x0,13
 1000410:	00208f33          	add	x30,x1,x2
 1000414:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000418:	00200293          	addi	x5,x0,2
 100041c:	fe5214e3          	bne	x4,x5,1000404 <test_32+0x4>
 1000420:	01800e93          	addi	x29,x0,24
 1000424:	02000193          	addi	x3,x0,32
 1000428:	0bdf1c63          	bne	x30,x29,10004e0 <fail>

0100042c <test_33>:
 100042c:	00000213          	addi	x4,x0,0
 1000430:	00b00113          	addi	x2,x0,11
 1000434:	00000013          	addi	x0,x0,0
 1000438:	00e00093          	addi	x1,x0,14
 100043c:	00000013          	addi	x0,x0,0
 1000440:	00208f33          	add	x30,x1,x2
 1000444:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000448:	00200293          	addi	x5,x0,2
 100044c:	fe5212e3          	bne	x4,x5,1000430 <test_33+0x4>
 1000450:	01900e93          	addi	x29,x0,25
 1000454:	02100193          	addi	x3,x0,33
 1000458:	09df1463          	bne	x30,x29,10004e0 <fail>

0100045c <test_34>:
 100045c:	00000213          	addi	x4,x0,0
 1000460:	00b00113          	addi	x2,x0,11
 1000464:	00000013          	addi	x0,x0,0
 1000468:	00000013          	addi	x0,x0,0
 100046c:	00f00093          	addi	x1,x0,15
 1000470:	00208f33          	add	x30,x1,x2
 1000474:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000478:	00200293          	addi	x5,x0,2
 100047c:	fe5212e3          	bne	x4,x5,1000460 <test_34+0x4>
 1000480:	01a00e93          	addi	x29,x0,26
 1000484:	02200193          	addi	x3,x0,34
 1000488:	05df1c63          	bne	x30,x29,10004e0 <fail>

0100048c <test_35>:
 100048c:	00f00093          	addi	x1,x0,15
 1000490:	00100133          	add	x2,x0,x1
 1000494:	00f00e93          	addi	x29,x0,15
 1000498:	02300193          	addi	x3,x0,35
 100049c:	05d11263          	bne	x2,x29,10004e0 <fail>

010004a0 <test_36>:
 10004a0:	02000093          	addi	x1,x0,32
 10004a4:	00008133          	add	x2,x1,x0
 10004a8:	02000e93          	addi	x29,x0,32
 10004ac:	02400193          	addi	x3,x0,36
 10004b0:	03d11863          	bne	x2,x29,10004e0 <fail>

010004b4 <test_37>:
 10004b4:	000000b3          	add	x1,x0,x0
 10004b8:	00000e93          	addi	x29,x0,0
 10004bc:	02500193          	addi	x3,x0,37
 10004c0:	03d09063          	bne	x1,x29,10004e0 <fail>

010004c4 <test_38>:
 10004c4:	01000093          	addi	x1,x0,16
 10004c8:	01e00113          	addi	x2,x0,30
 10004cc:	00208033          	add	x0,x1,x2
 10004d0:	00000e93          	addi	x29,x0,0
 10004d4:	02600193          	addi	x3,x0,38
 10004d8:	01d01463          	bne	x0,x29,10004e0 <fail>
 10004dc:	00301c63          	bne	x0,x3,10004f4 <pass>

010004e0 <fail>:
 10004e0:	0ff0000f          	fence	iorw,iorw
 10004e4:	00018063          	beq	x3,x0,10004e4 <fail+0x4>
 10004e8:	00119193          	slli	x3,x3,0x1
 10004ec:	0011e193          	ori	x3,x3,1
 10004f0:	00000073          	ecall

010004f4 <pass>:
 10004f4:	0ff0000f          	fence	iorw,iorw
 10004f8:	00100193          	addi	x3,x0,1
 10004fc:	00000073          	ecall
 1000500:	c0001073          	unimp

Disassembly of section .text:

01000590 <end_signature>:
 1000590:	0000                	c.unimp
 1000592:	0000                	c.unimp
