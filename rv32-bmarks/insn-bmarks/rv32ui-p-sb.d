
output/rv32ui-p-sb:     file format elf32-littleriscv


Disassembly of section .text.init:

01000000 <_start>:
 1000000:	00000097          	auipc	x1,0x0
 1000004:	44408093          	addi	x1,x1,1092 # 1000444 <tdat>
 1000008:	faa00113          	addi	x2,x0,-86
 100000c:	00208023          	sb	x2,0(x1)
 1000010:	00008f03          	lb	x30,0(x1)
 1000014:	faa00e93          	addi	x29,x0,-86
 1000018:	00200193          	addi	x3,x0,2
 100001c:	3ddf1c63          	bne	x30,x29,10003f4 <fail>

01000020 <test_3>:
 1000020:	00000097          	auipc	x1,0x0
 1000024:	42408093          	addi	x1,x1,1060 # 1000444 <tdat>
 1000028:	00000113          	addi	x2,x0,0
 100002c:	002080a3          	sb	x2,1(x1)
 1000030:	00108f03          	lb	x30,1(x1)
 1000034:	00000e93          	addi	x29,x0,0
 1000038:	00300193          	addi	x3,x0,3
 100003c:	3bdf1c63          	bne	x30,x29,10003f4 <fail>

01000040 <test_4>:
 1000040:	00000097          	auipc	x1,0x0
 1000044:	40408093          	addi	x1,x1,1028 # 1000444 <tdat>
 1000048:	fffff137          	lui	x2,0xfffff
 100004c:	fa010113          	addi	x2,x2,-96 # ffffefa0 <_end+0xfeffeb52>
 1000050:	00208123          	sb	x2,2(x1)
 1000054:	00209f03          	lh	x30,2(x1)
 1000058:	fffffeb7          	lui	x29,0xfffff
 100005c:	fa0e8e93          	addi	x29,x29,-96 # ffffefa0 <_end+0xfeffeb52>
 1000060:	00400193          	addi	x3,x0,4
 1000064:	39df1863          	bne	x30,x29,10003f4 <fail>

01000068 <test_5>:
 1000068:	00000097          	auipc	x1,0x0
 100006c:	3dc08093          	addi	x1,x1,988 # 1000444 <tdat>
 1000070:	00a00113          	addi	x2,x0,10
 1000074:	002081a3          	sb	x2,3(x1)
 1000078:	00308f03          	lb	x30,3(x1)
 100007c:	00a00e93          	addi	x29,x0,10
 1000080:	00500193          	addi	x3,x0,5
 1000084:	37df1863          	bne	x30,x29,10003f4 <fail>

01000088 <test_6>:
 1000088:	00000097          	auipc	x1,0x0
 100008c:	3c308093          	addi	x1,x1,963 # 100044b <tdat8>
 1000090:	faa00113          	addi	x2,x0,-86
 1000094:	fe208ea3          	sb	x2,-3(x1)
 1000098:	ffd08f03          	lb	x30,-3(x1)
 100009c:	faa00e93          	addi	x29,x0,-86
 10000a0:	00600193          	addi	x3,x0,6
 10000a4:	35df1863          	bne	x30,x29,10003f4 <fail>

010000a8 <test_7>:
 10000a8:	00000097          	auipc	x1,0x0
 10000ac:	3a308093          	addi	x1,x1,931 # 100044b <tdat8>
 10000b0:	00000113          	addi	x2,x0,0
 10000b4:	fe208f23          	sb	x2,-2(x1)
 10000b8:	ffe08f03          	lb	x30,-2(x1)
 10000bc:	00000e93          	addi	x29,x0,0
 10000c0:	00700193          	addi	x3,x0,7
 10000c4:	33df1863          	bne	x30,x29,10003f4 <fail>

010000c8 <test_8>:
 10000c8:	00000097          	auipc	x1,0x0
 10000cc:	38308093          	addi	x1,x1,899 # 100044b <tdat8>
 10000d0:	fa000113          	addi	x2,x0,-96
 10000d4:	fe208fa3          	sb	x2,-1(x1)
 10000d8:	fff08f03          	lb	x30,-1(x1)
 10000dc:	fa000e93          	addi	x29,x0,-96
 10000e0:	00800193          	addi	x3,x0,8
 10000e4:	31df1863          	bne	x30,x29,10003f4 <fail>

010000e8 <test_9>:
 10000e8:	00000097          	auipc	x1,0x0
 10000ec:	36308093          	addi	x1,x1,867 # 100044b <tdat8>
 10000f0:	00a00113          	addi	x2,x0,10
 10000f4:	00208023          	sb	x2,0(x1)
 10000f8:	00008f03          	lb	x30,0(x1)
 10000fc:	00a00e93          	addi	x29,x0,10
 1000100:	00900193          	addi	x3,x0,9
 1000104:	2fdf1863          	bne	x30,x29,10003f4 <fail>

01000108 <test_10>:
 1000108:	00000097          	auipc	x1,0x0
 100010c:	34408093          	addi	x1,x1,836 # 100044c <tdat9>
 1000110:	12345137          	lui	x2,0x12345
 1000114:	67810113          	addi	x2,x2,1656 # 12345678 <_end+0x1134522a>
 1000118:	fe008213          	addi	x4,x1,-32
 100011c:	02220023          	sb	x2,32(x4) # 20 <_start-0xffffe0>
 1000120:	00008283          	lb	x5,0(x1)
 1000124:	07800e93          	addi	x29,x0,120
 1000128:	00a00193          	addi	x3,x0,10
 100012c:	2dd29463          	bne	x5,x29,10003f4 <fail>

01000130 <test_11>:
 1000130:	00000097          	auipc	x1,0x0
 1000134:	31c08093          	addi	x1,x1,796 # 100044c <tdat9>
 1000138:	00003137          	lui	x2,0x3
 100013c:	09810113          	addi	x2,x2,152 # 3098 <_start-0xffcf68>
 1000140:	ffa08093          	addi	x1,x1,-6
 1000144:	002083a3          	sb	x2,7(x1)
 1000148:	00000217          	auipc	x4,0x0
 100014c:	30520213          	addi	x4,x4,773 # 100044d <tdat10>
 1000150:	00020283          	lb	x5,0(x4) # 0 <_start-0x1000000>
 1000154:	f9800e93          	addi	x29,x0,-104
 1000158:	00b00193          	addi	x3,x0,11
 100015c:	29d29c63          	bne	x5,x29,10003f4 <fail>

01000160 <test_12>:
 1000160:	00c00193          	addi	x3,x0,12
 1000164:	00000213          	addi	x4,x0,0
 1000168:	fdd00093          	addi	x1,x0,-35
 100016c:	00000117          	auipc	x2,0x0
 1000170:	2d810113          	addi	x2,x2,728 # 1000444 <tdat>
 1000174:	00110023          	sb	x1,0(x2)
 1000178:	00010f03          	lb	x30,0(x2)
 100017c:	fdd00e93          	addi	x29,x0,-35
 1000180:	27df1a63          	bne	x30,x29,10003f4 <fail>
 1000184:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000188:	00200293          	addi	x5,x0,2
 100018c:	fc521ee3          	bne	x4,x5,1000168 <test_12+0x8>

01000190 <test_13>:
 1000190:	00d00193          	addi	x3,x0,13
 1000194:	00000213          	addi	x4,x0,0
 1000198:	fcd00093          	addi	x1,x0,-51
 100019c:	00000117          	auipc	x2,0x0
 10001a0:	2a810113          	addi	x2,x2,680 # 1000444 <tdat>
 10001a4:	00000013          	addi	x0,x0,0
 10001a8:	001100a3          	sb	x1,1(x2)
 10001ac:	00110f03          	lb	x30,1(x2)
 10001b0:	fcd00e93          	addi	x29,x0,-51
 10001b4:	25df1063          	bne	x30,x29,10003f4 <fail>
 10001b8:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10001bc:	00200293          	addi	x5,x0,2
 10001c0:	fc521ce3          	bne	x4,x5,1000198 <test_13+0x8>

010001c4 <test_14>:
 10001c4:	00e00193          	addi	x3,x0,14
 10001c8:	00000213          	addi	x4,x0,0
 10001cc:	fcc00093          	addi	x1,x0,-52
 10001d0:	00000117          	auipc	x2,0x0
 10001d4:	27410113          	addi	x2,x2,628 # 1000444 <tdat>
 10001d8:	00000013          	addi	x0,x0,0
 10001dc:	00000013          	addi	x0,x0,0
 10001e0:	00110123          	sb	x1,2(x2)
 10001e4:	00210f03          	lb	x30,2(x2)
 10001e8:	fcc00e93          	addi	x29,x0,-52
 10001ec:	21df1463          	bne	x30,x29,10003f4 <fail>
 10001f0:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10001f4:	00200293          	addi	x5,x0,2
 10001f8:	fc521ae3          	bne	x4,x5,10001cc <test_14+0x8>

010001fc <test_15>:
 10001fc:	00f00193          	addi	x3,x0,15
 1000200:	00000213          	addi	x4,x0,0
 1000204:	fbc00093          	addi	x1,x0,-68
 1000208:	00000013          	addi	x0,x0,0
 100020c:	00000117          	auipc	x2,0x0
 1000210:	23810113          	addi	x2,x2,568 # 1000444 <tdat>
 1000214:	001101a3          	sb	x1,3(x2)
 1000218:	00310f03          	lb	x30,3(x2)
 100021c:	fbc00e93          	addi	x29,x0,-68
 1000220:	1ddf1a63          	bne	x30,x29,10003f4 <fail>
 1000224:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000228:	00200293          	addi	x5,x0,2
 100022c:	fc521ce3          	bne	x4,x5,1000204 <test_15+0x8>

01000230 <test_16>:
 1000230:	01000193          	addi	x3,x0,16
 1000234:	00000213          	addi	x4,x0,0
 1000238:	fbb00093          	addi	x1,x0,-69
 100023c:	00000013          	addi	x0,x0,0
 1000240:	00000117          	auipc	x2,0x0
 1000244:	20410113          	addi	x2,x2,516 # 1000444 <tdat>
 1000248:	00000013          	addi	x0,x0,0
 100024c:	00110223          	sb	x1,4(x2)
 1000250:	00410f03          	lb	x30,4(x2)
 1000254:	fbb00e93          	addi	x29,x0,-69
 1000258:	19df1e63          	bne	x30,x29,10003f4 <fail>
 100025c:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000260:	00200293          	addi	x5,x0,2
 1000264:	fc521ae3          	bne	x4,x5,1000238 <test_16+0x8>

01000268 <test_17>:
 1000268:	01100193          	addi	x3,x0,17
 100026c:	00000213          	addi	x4,x0,0
 1000270:	fab00093          	addi	x1,x0,-85
 1000274:	00000013          	addi	x0,x0,0
 1000278:	00000013          	addi	x0,x0,0
 100027c:	00000117          	auipc	x2,0x0
 1000280:	1c810113          	addi	x2,x2,456 # 1000444 <tdat>
 1000284:	001102a3          	sb	x1,5(x2)
 1000288:	00510f03          	lb	x30,5(x2)
 100028c:	fab00e93          	addi	x29,x0,-85
 1000290:	17df1263          	bne	x30,x29,10003f4 <fail>
 1000294:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000298:	00200293          	addi	x5,x0,2
 100029c:	fc521ae3          	bne	x4,x5,1000270 <test_17+0x8>

010002a0 <test_18>:
 10002a0:	01200193          	addi	x3,x0,18
 10002a4:	00000213          	addi	x4,x0,0
 10002a8:	00000117          	auipc	x2,0x0
 10002ac:	19c10113          	addi	x2,x2,412 # 1000444 <tdat>
 10002b0:	03300093          	addi	x1,x0,51
 10002b4:	00110023          	sb	x1,0(x2)
 10002b8:	00010f03          	lb	x30,0(x2)
 10002bc:	03300e93          	addi	x29,x0,51
 10002c0:	13df1a63          	bne	x30,x29,10003f4 <fail>
 10002c4:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10002c8:	00200293          	addi	x5,x0,2
 10002cc:	fc521ee3          	bne	x4,x5,10002a8 <test_18+0x8>

010002d0 <test_19>:
 10002d0:	01300193          	addi	x3,x0,19
 10002d4:	00000213          	addi	x4,x0,0
 10002d8:	00000117          	auipc	x2,0x0
 10002dc:	16c10113          	addi	x2,x2,364 # 1000444 <tdat>
 10002e0:	02300093          	addi	x1,x0,35
 10002e4:	00000013          	addi	x0,x0,0
 10002e8:	001100a3          	sb	x1,1(x2)
 10002ec:	00110f03          	lb	x30,1(x2)
 10002f0:	02300e93          	addi	x29,x0,35
 10002f4:	11df1063          	bne	x30,x29,10003f4 <fail>
 10002f8:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10002fc:	00200293          	addi	x5,x0,2
 1000300:	fc521ce3          	bne	x4,x5,10002d8 <test_19+0x8>

01000304 <test_20>:
 1000304:	01400193          	addi	x3,x0,20
 1000308:	00000213          	addi	x4,x0,0
 100030c:	00000117          	auipc	x2,0x0
 1000310:	13810113          	addi	x2,x2,312 # 1000444 <tdat>
 1000314:	02200093          	addi	x1,x0,34
 1000318:	00000013          	addi	x0,x0,0
 100031c:	00000013          	addi	x0,x0,0
 1000320:	00110123          	sb	x1,2(x2)
 1000324:	00210f03          	lb	x30,2(x2)
 1000328:	02200e93          	addi	x29,x0,34
 100032c:	0ddf1463          	bne	x30,x29,10003f4 <fail>
 1000330:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000334:	00200293          	addi	x5,x0,2
 1000338:	fc521ae3          	bne	x4,x5,100030c <test_20+0x8>

0100033c <test_21>:
 100033c:	01500193          	addi	x3,x0,21
 1000340:	00000213          	addi	x4,x0,0
 1000344:	00000117          	auipc	x2,0x0
 1000348:	10010113          	addi	x2,x2,256 # 1000444 <tdat>
 100034c:	00000013          	addi	x0,x0,0
 1000350:	01200093          	addi	x1,x0,18
 1000354:	001101a3          	sb	x1,3(x2)
 1000358:	00310f03          	lb	x30,3(x2)
 100035c:	01200e93          	addi	x29,x0,18
 1000360:	09df1a63          	bne	x30,x29,10003f4 <fail>
 1000364:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000368:	00200293          	addi	x5,x0,2
 100036c:	fc521ce3          	bne	x4,x5,1000344 <test_21+0x8>

01000370 <test_22>:
 1000370:	01600193          	addi	x3,x0,22
 1000374:	00000213          	addi	x4,x0,0
 1000378:	00000117          	auipc	x2,0x0
 100037c:	0cc10113          	addi	x2,x2,204 # 1000444 <tdat>
 1000380:	00000013          	addi	x0,x0,0
 1000384:	01100093          	addi	x1,x0,17
 1000388:	00000013          	addi	x0,x0,0
 100038c:	00110223          	sb	x1,4(x2)
 1000390:	00410f03          	lb	x30,4(x2)
 1000394:	01100e93          	addi	x29,x0,17
 1000398:	05df1e63          	bne	x30,x29,10003f4 <fail>
 100039c:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10003a0:	00200293          	addi	x5,x0,2
 10003a4:	fc521ae3          	bne	x4,x5,1000378 <test_22+0x8>

010003a8 <test_23>:
 10003a8:	01700193          	addi	x3,x0,23
 10003ac:	00000213          	addi	x4,x0,0
 10003b0:	00000117          	auipc	x2,0x0
 10003b4:	09410113          	addi	x2,x2,148 # 1000444 <tdat>
 10003b8:	00000013          	addi	x0,x0,0
 10003bc:	00000013          	addi	x0,x0,0
 10003c0:	00100093          	addi	x1,x0,1
 10003c4:	001102a3          	sb	x1,5(x2)
 10003c8:	00510f03          	lb	x30,5(x2)
 10003cc:	00100e93          	addi	x29,x0,1
 10003d0:	03df1263          	bne	x30,x29,10003f4 <fail>
 10003d4:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10003d8:	00200293          	addi	x5,x0,2
 10003dc:	fc521ae3          	bne	x4,x5,10003b0 <test_23+0x8>
 10003e0:	0ef00513          	addi	x10,x0,239
 10003e4:	00000597          	auipc	x11,0x0
 10003e8:	06058593          	addi	x11,x11,96 # 1000444 <tdat>
 10003ec:	00a581a3          	sb	x10,3(x11)
 10003f0:	00301c63          	bne	x0,x3,1000408 <pass>

010003f4 <fail>:
 10003f4:	0ff0000f          	fence	iorw,iorw
 10003f8:	00018063          	beq	x3,x0,10003f8 <fail+0x4>
 10003fc:	00119193          	slli	x3,x3,0x1
 1000400:	0011e193          	ori	x3,x3,1
 1000404:	00000073          	ecall

01000408 <pass>:
 1000408:	0ff0000f          	fence	iorw,iorw
 100040c:	00100193          	addi	x3,x0,1
 1000410:	00000073          	ecall
 1000414:	c0001073          	unimp
 1000418:	0000                	c.unimp
 100041a:	0000                	c.unimp
 100041c:	0000                	c.unimp
 100041e:	0000                	c.unimp
 1000420:	0000                	c.unimp
 1000422:	0000                	c.unimp
 1000424:	0000                	c.unimp
 1000426:	0000                	c.unimp
 1000428:	0000                	c.unimp
 100042a:	0000                	c.unimp
 100042c:	0000                	c.unimp
 100042e:	0000                	c.unimp
 1000430:	0000                	c.unimp
 1000432:	0000                	c.unimp
 1000434:	0000                	c.unimp
 1000436:	0000                	c.unimp
 1000438:	0000                	c.unimp
 100043a:	0000                	c.unimp
 100043c:	0000                	c.unimp
 100043e:	0000                	c.unimp
 1000440:	0000                	c.unimp
 1000442:	0000                	c.unimp

Disassembly of section .data:

01000444 <tdat>:
 1000444:	          	jal	x31,ffeb42 <_start-0x14be>

01000445 <tdat2>:
 1000445:	          	jal	x31,ffeb43 <_start-0x14bd>

01000446 <tdat3>:
 1000446:	          	jal	x31,ffeb44 <_start-0x14bc>

01000447 <tdat4>:
 1000447:	          	jal	x31,ffeb45 <_start-0x14bb>

01000448 <tdat5>:
 1000448:	          	jal	x31,ffeb46 <_start-0x14ba>

01000449 <tdat6>:
 1000449:	          	jal	x31,ffeb47 <_start-0x14b9>

0100044a <tdat7>:
 100044a:	          	jal	x31,ffeb48 <_start-0x14b8>

0100044b <tdat8>:
 100044b:	          	jal	x31,100e44b <_end+0xdffd>

0100044c <tdat9>:
 100044c:	          	jal	x31,100e44c <_end+0xdffe>

0100044d <tdat10>:
 100044d:	ef    	Address 0x000000000100044d is out of bounds.

 1000451:	 
