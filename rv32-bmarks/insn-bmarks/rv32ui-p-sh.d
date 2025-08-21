
output/rv32ui-p-sh:     file format elf32-littleriscv


Disassembly of section .text.init:

01000000 <_start>:
 1000000:	00000097          	auipc	x1,0x0
 1000004:	4c408093          	addi	x1,x1,1220 # 10004c4 <tdat>
 1000008:	0aa00113          	addi	x2,x0,170
 100000c:	00209023          	sh	x2,0(x1)
 1000010:	00009f03          	lh	x30,0(x1)
 1000014:	0aa00e93          	addi	x29,x0,170
 1000018:	00200193          	addi	x3,x0,2
 100001c:	45df1e63          	bne	x30,x29,1000478 <fail>

01000020 <test_3>:
 1000020:	00000097          	auipc	x1,0x0
 1000024:	4a408093          	addi	x1,x1,1188 # 10004c4 <tdat>
 1000028:	ffffb137          	lui	x2,0xffffb
 100002c:	a0010113          	addi	x2,x2,-1536 # ffffaa00 <_end+0xfeffa528>
 1000030:	00209123          	sh	x2,2(x1)
 1000034:	00209f03          	lh	x30,2(x1)
 1000038:	ffffbeb7          	lui	x29,0xffffb
 100003c:	a00e8e93          	addi	x29,x29,-1536 # ffffaa00 <_end+0xfeffa528>
 1000040:	00300193          	addi	x3,x0,3
 1000044:	43df1a63          	bne	x30,x29,1000478 <fail>

01000048 <test_4>:
 1000048:	00000097          	auipc	x1,0x0
 100004c:	47c08093          	addi	x1,x1,1148 # 10004c4 <tdat>
 1000050:	beef1137          	lui	x2,0xbeef1
 1000054:	aa010113          	addi	x2,x2,-1376 # beef0aa0 <_end+0xbdef05c8>
 1000058:	00209223          	sh	x2,4(x1)
 100005c:	0040af03          	lw	x30,4(x1)
 1000060:	beef1eb7          	lui	x29,0xbeef1
 1000064:	aa0e8e93          	addi	x29,x29,-1376 # beef0aa0 <_end+0xbdef05c8>
 1000068:	00400193          	addi	x3,x0,4
 100006c:	41df1663          	bne	x30,x29,1000478 <fail>

01000070 <test_5>:
 1000070:	00000097          	auipc	x1,0x0
 1000074:	45408093          	addi	x1,x1,1108 # 10004c4 <tdat>
 1000078:	ffffa137          	lui	x2,0xffffa
 100007c:	00a10113          	addi	x2,x2,10 # ffffa00a <_end+0xfeff9b32>
 1000080:	00209323          	sh	x2,6(x1)
 1000084:	00609f03          	lh	x30,6(x1)
 1000088:	ffffaeb7          	lui	x29,0xffffa
 100008c:	00ae8e93          	addi	x29,x29,10 # ffffa00a <_end+0xfeff9b32>
 1000090:	00500193          	addi	x3,x0,5
 1000094:	3fdf1263          	bne	x30,x29,1000478 <fail>

01000098 <test_6>:
 1000098:	00000097          	auipc	x1,0x0
 100009c:	43a08093          	addi	x1,x1,1082 # 10004d2 <tdat8>
 10000a0:	0aa00113          	addi	x2,x0,170
 10000a4:	fe209d23          	sh	x2,-6(x1)
 10000a8:	ffa09f03          	lh	x30,-6(x1)
 10000ac:	0aa00e93          	addi	x29,x0,170
 10000b0:	00600193          	addi	x3,x0,6
 10000b4:	3ddf1263          	bne	x30,x29,1000478 <fail>

010000b8 <test_7>:
 10000b8:	00000097          	auipc	x1,0x0
 10000bc:	41a08093          	addi	x1,x1,1050 # 10004d2 <tdat8>
 10000c0:	ffffb137          	lui	x2,0xffffb
 10000c4:	a0010113          	addi	x2,x2,-1536 # ffffaa00 <_end+0xfeffa528>
 10000c8:	fe209e23          	sh	x2,-4(x1)
 10000cc:	ffc09f03          	lh	x30,-4(x1)
 10000d0:	ffffbeb7          	lui	x29,0xffffb
 10000d4:	a00e8e93          	addi	x29,x29,-1536 # ffffaa00 <_end+0xfeffa528>
 10000d8:	00700193          	addi	x3,x0,7
 10000dc:	39df1e63          	bne	x30,x29,1000478 <fail>

010000e0 <test_8>:
 10000e0:	00000097          	auipc	x1,0x0
 10000e4:	3f208093          	addi	x1,x1,1010 # 10004d2 <tdat8>
 10000e8:	00001137          	lui	x2,0x1
 10000ec:	aa010113          	addi	x2,x2,-1376 # aa0 <_start-0xfff560>
 10000f0:	fe209f23          	sh	x2,-2(x1)
 10000f4:	ffe09f03          	lh	x30,-2(x1)
 10000f8:	00001eb7          	lui	x29,0x1
 10000fc:	aa0e8e93          	addi	x29,x29,-1376 # aa0 <_start-0xfff560>
 1000100:	00800193          	addi	x3,x0,8
 1000104:	37df1a63          	bne	x30,x29,1000478 <fail>

01000108 <test_9>:
 1000108:	00000097          	auipc	x1,0x0
 100010c:	3ca08093          	addi	x1,x1,970 # 10004d2 <tdat8>
 1000110:	ffffa137          	lui	x2,0xffffa
 1000114:	00a10113          	addi	x2,x2,10 # ffffa00a <_end+0xfeff9b32>
 1000118:	00209023          	sh	x2,0(x1)
 100011c:	00009f03          	lh	x30,0(x1)
 1000120:	ffffaeb7          	lui	x29,0xffffa
 1000124:	00ae8e93          	addi	x29,x29,10 # ffffa00a <_end+0xfeff9b32>
 1000128:	00900193          	addi	x3,x0,9
 100012c:	35df1663          	bne	x30,x29,1000478 <fail>

01000130 <test_10>:
 1000130:	00000097          	auipc	x1,0x0
 1000134:	3a408093          	addi	x1,x1,932 # 10004d4 <tdat9>
 1000138:	12345137          	lui	x2,0x12345
 100013c:	67810113          	addi	x2,x2,1656 # 12345678 <_end+0x113451a0>
 1000140:	fe008213          	addi	x4,x1,-32
 1000144:	02221023          	sh	x2,32(x4) # 20 <_start-0xffffe0>
 1000148:	00009283          	lh	x5,0(x1)
 100014c:	00005eb7          	lui	x29,0x5
 1000150:	678e8e93          	addi	x29,x29,1656 # 5678 <_start-0xffa988>
 1000154:	00a00193          	addi	x3,x0,10
 1000158:	33d29063          	bne	x5,x29,1000478 <fail>

0100015c <test_11>:
 100015c:	00000097          	auipc	x1,0x0
 1000160:	37808093          	addi	x1,x1,888 # 10004d4 <tdat9>
 1000164:	00003137          	lui	x2,0x3
 1000168:	09810113          	addi	x2,x2,152 # 3098 <_start-0xffcf68>
 100016c:	ffb08093          	addi	x1,x1,-5
 1000170:	002093a3          	sh	x2,7(x1)
 1000174:	00000217          	auipc	x4,0x0
 1000178:	36220213          	addi	x4,x4,866 # 10004d6 <tdat10>
 100017c:	00021283          	lh	x5,0(x4) # 0 <_start-0x1000000>
 1000180:	00003eb7          	lui	x29,0x3
 1000184:	098e8e93          	addi	x29,x29,152 # 3098 <_start-0xffcf68>
 1000188:	00b00193          	addi	x3,x0,11
 100018c:	2fd29663          	bne	x5,x29,1000478 <fail>

01000190 <test_12>:
 1000190:	00c00193          	addi	x3,x0,12
 1000194:	00000213          	addi	x4,x0,0
 1000198:	ffffd0b7          	lui	x1,0xffffd
 100019c:	cdd08093          	addi	x1,x1,-803 # ffffccdd <_end+0xfeffc805>
 10001a0:	00000117          	auipc	x2,0x0
 10001a4:	32410113          	addi	x2,x2,804 # 10004c4 <tdat>
 10001a8:	00111023          	sh	x1,0(x2)
 10001ac:	00011f03          	lh	x30,0(x2)
 10001b0:	ffffdeb7          	lui	x29,0xffffd
 10001b4:	cdde8e93          	addi	x29,x29,-803 # ffffccdd <_end+0xfeffc805>
 10001b8:	2ddf1063          	bne	x30,x29,1000478 <fail>
 10001bc:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10001c0:	00200293          	addi	x5,x0,2
 10001c4:	fc521ae3          	bne	x4,x5,1000198 <test_12+0x8>

010001c8 <test_13>:
 10001c8:	00d00193          	addi	x3,x0,13
 10001cc:	00000213          	addi	x4,x0,0
 10001d0:	ffffc0b7          	lui	x1,0xffffc
 10001d4:	ccd08093          	addi	x1,x1,-819 # ffffbccd <_end+0xfeffb7f5>
 10001d8:	00000117          	auipc	x2,0x0
 10001dc:	2ec10113          	addi	x2,x2,748 # 10004c4 <tdat>
 10001e0:	00000013          	addi	x0,x0,0
 10001e4:	00111123          	sh	x1,2(x2)
 10001e8:	00211f03          	lh	x30,2(x2)
 10001ec:	ffffceb7          	lui	x29,0xffffc
 10001f0:	ccde8e93          	addi	x29,x29,-819 # ffffbccd <_end+0xfeffb7f5>
 10001f4:	29df1263          	bne	x30,x29,1000478 <fail>
 10001f8:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10001fc:	00200293          	addi	x5,x0,2
 1000200:	fc5218e3          	bne	x4,x5,10001d0 <test_13+0x8>

01000204 <test_14>:
 1000204:	00e00193          	addi	x3,x0,14
 1000208:	00000213          	addi	x4,x0,0
 100020c:	ffffc0b7          	lui	x1,0xffffc
 1000210:	bcc08093          	addi	x1,x1,-1076 # ffffbbcc <_end+0xfeffb6f4>
 1000214:	00000117          	auipc	x2,0x0
 1000218:	2b010113          	addi	x2,x2,688 # 10004c4 <tdat>
 100021c:	00000013          	addi	x0,x0,0
 1000220:	00000013          	addi	x0,x0,0
 1000224:	00111223          	sh	x1,4(x2)
 1000228:	00411f03          	lh	x30,4(x2)
 100022c:	ffffceb7          	lui	x29,0xffffc
 1000230:	bcce8e93          	addi	x29,x29,-1076 # ffffbbcc <_end+0xfeffb6f4>
 1000234:	25df1263          	bne	x30,x29,1000478 <fail>
 1000238:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 100023c:	00200293          	addi	x5,x0,2
 1000240:	fc5216e3          	bne	x4,x5,100020c <test_14+0x8>

01000244 <test_15>:
 1000244:	00f00193          	addi	x3,x0,15
 1000248:	00000213          	addi	x4,x0,0
 100024c:	ffffb0b7          	lui	x1,0xffffb
 1000250:	bbc08093          	addi	x1,x1,-1092 # ffffabbc <_end+0xfeffa6e4>
 1000254:	00000013          	addi	x0,x0,0
 1000258:	00000117          	auipc	x2,0x0
 100025c:	26c10113          	addi	x2,x2,620 # 10004c4 <tdat>
 1000260:	00111323          	sh	x1,6(x2)
 1000264:	00611f03          	lh	x30,6(x2)
 1000268:	ffffbeb7          	lui	x29,0xffffb
 100026c:	bbce8e93          	addi	x29,x29,-1092 # ffffabbc <_end+0xfeffa6e4>
 1000270:	21df1463          	bne	x30,x29,1000478 <fail>
 1000274:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000278:	00200293          	addi	x5,x0,2
 100027c:	fc5218e3          	bne	x4,x5,100024c <test_15+0x8>

01000280 <test_16>:
 1000280:	01000193          	addi	x3,x0,16
 1000284:	00000213          	addi	x4,x0,0
 1000288:	ffffb0b7          	lui	x1,0xffffb
 100028c:	abb08093          	addi	x1,x1,-1349 # ffffaabb <_end+0xfeffa5e3>
 1000290:	00000013          	addi	x0,x0,0
 1000294:	00000117          	auipc	x2,0x0
 1000298:	23010113          	addi	x2,x2,560 # 10004c4 <tdat>
 100029c:	00000013          	addi	x0,x0,0
 10002a0:	00111423          	sh	x1,8(x2)
 10002a4:	00811f03          	lh	x30,8(x2)
 10002a8:	ffffbeb7          	lui	x29,0xffffb
 10002ac:	abbe8e93          	addi	x29,x29,-1349 # ffffaabb <_end+0xfeffa5e3>
 10002b0:	1ddf1463          	bne	x30,x29,1000478 <fail>
 10002b4:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10002b8:	00200293          	addi	x5,x0,2
 10002bc:	fc5216e3          	bne	x4,x5,1000288 <test_16+0x8>

010002c0 <test_17>:
 10002c0:	01100193          	addi	x3,x0,17
 10002c4:	00000213          	addi	x4,x0,0
 10002c8:	ffffe0b7          	lui	x1,0xffffe
 10002cc:	aab08093          	addi	x1,x1,-1365 # ffffdaab <_end+0xfeffd5d3>
 10002d0:	00000013          	addi	x0,x0,0
 10002d4:	00000013          	addi	x0,x0,0
 10002d8:	00000117          	auipc	x2,0x0
 10002dc:	1ec10113          	addi	x2,x2,492 # 10004c4 <tdat>
 10002e0:	00111523          	sh	x1,10(x2)
 10002e4:	00a11f03          	lh	x30,10(x2)
 10002e8:	ffffeeb7          	lui	x29,0xffffe
 10002ec:	aabe8e93          	addi	x29,x29,-1365 # ffffdaab <_end+0xfeffd5d3>
 10002f0:	19df1463          	bne	x30,x29,1000478 <fail>
 10002f4:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10002f8:	00200293          	addi	x5,x0,2
 10002fc:	fc5216e3          	bne	x4,x5,10002c8 <test_17+0x8>

01000300 <test_18>:
 1000300:	01200193          	addi	x3,x0,18
 1000304:	00000213          	addi	x4,x0,0
 1000308:	00000117          	auipc	x2,0x0
 100030c:	1bc10113          	addi	x2,x2,444 # 10004c4 <tdat>
 1000310:	000020b7          	lui	x1,0x2
 1000314:	23308093          	addi	x1,x1,563 # 2233 <_start-0xffddcd>
 1000318:	00111023          	sh	x1,0(x2)
 100031c:	00011f03          	lh	x30,0(x2)
 1000320:	00002eb7          	lui	x29,0x2
 1000324:	233e8e93          	addi	x29,x29,563 # 2233 <_start-0xffddcd>
 1000328:	15df1863          	bne	x30,x29,1000478 <fail>
 100032c:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000330:	00200293          	addi	x5,x0,2
 1000334:	fc521ae3          	bne	x4,x5,1000308 <test_18+0x8>

01000338 <test_19>:
 1000338:	01300193          	addi	x3,x0,19
 100033c:	00000213          	addi	x4,x0,0
 1000340:	00000117          	auipc	x2,0x0
 1000344:	18410113          	addi	x2,x2,388 # 10004c4 <tdat>
 1000348:	000010b7          	lui	x1,0x1
 100034c:	22308093          	addi	x1,x1,547 # 1223 <_start-0xffeddd>
 1000350:	00000013          	addi	x0,x0,0
 1000354:	00111123          	sh	x1,2(x2)
 1000358:	00211f03          	lh	x30,2(x2)
 100035c:	00001eb7          	lui	x29,0x1
 1000360:	223e8e93          	addi	x29,x29,547 # 1223 <_start-0xffeddd>
 1000364:	11df1a63          	bne	x30,x29,1000478 <fail>
 1000368:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 100036c:	00200293          	addi	x5,x0,2
 1000370:	fc5218e3          	bne	x4,x5,1000340 <test_19+0x8>

01000374 <test_20>:
 1000374:	01400193          	addi	x3,x0,20
 1000378:	00000213          	addi	x4,x0,0
 100037c:	00000117          	auipc	x2,0x0
 1000380:	14810113          	addi	x2,x2,328 # 10004c4 <tdat>
 1000384:	000010b7          	lui	x1,0x1
 1000388:	12208093          	addi	x1,x1,290 # 1122 <_start-0xffeede>
 100038c:	00000013          	addi	x0,x0,0
 1000390:	00000013          	addi	x0,x0,0
 1000394:	00111223          	sh	x1,4(x2)
 1000398:	00411f03          	lh	x30,4(x2)
 100039c:	00001eb7          	lui	x29,0x1
 10003a0:	122e8e93          	addi	x29,x29,290 # 1122 <_start-0xffeede>
 10003a4:	0ddf1a63          	bne	x30,x29,1000478 <fail>
 10003a8:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10003ac:	00200293          	addi	x5,x0,2
 10003b0:	fc5216e3          	bne	x4,x5,100037c <test_20+0x8>

010003b4 <test_21>:
 10003b4:	01500193          	addi	x3,x0,21
 10003b8:	00000213          	addi	x4,x0,0
 10003bc:	00000117          	auipc	x2,0x0
 10003c0:	10810113          	addi	x2,x2,264 # 10004c4 <tdat>
 10003c4:	00000013          	addi	x0,x0,0
 10003c8:	11200093          	addi	x1,x0,274
 10003cc:	00111323          	sh	x1,6(x2)
 10003d0:	00611f03          	lh	x30,6(x2)
 10003d4:	11200e93          	addi	x29,x0,274
 10003d8:	0bdf1063          	bne	x30,x29,1000478 <fail>
 10003dc:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10003e0:	00200293          	addi	x5,x0,2
 10003e4:	fc521ce3          	bne	x4,x5,10003bc <test_21+0x8>

010003e8 <test_22>:
 10003e8:	01600193          	addi	x3,x0,22
 10003ec:	00000213          	addi	x4,x0,0
 10003f0:	00000117          	auipc	x2,0x0
 10003f4:	0d410113          	addi	x2,x2,212 # 10004c4 <tdat>
 10003f8:	00000013          	addi	x0,x0,0
 10003fc:	01100093          	addi	x1,x0,17
 1000400:	00000013          	addi	x0,x0,0
 1000404:	00111423          	sh	x1,8(x2)
 1000408:	00811f03          	lh	x30,8(x2)
 100040c:	01100e93          	addi	x29,x0,17
 1000410:	07df1463          	bne	x30,x29,1000478 <fail>
 1000414:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000418:	00200293          	addi	x5,x0,2
 100041c:	fc521ae3          	bne	x4,x5,10003f0 <test_22+0x8>

01000420 <test_23>:
 1000420:	01700193          	addi	x3,x0,23
 1000424:	00000213          	addi	x4,x0,0
 1000428:	00000117          	auipc	x2,0x0
 100042c:	09c10113          	addi	x2,x2,156 # 10004c4 <tdat>
 1000430:	00000013          	addi	x0,x0,0
 1000434:	00000013          	addi	x0,x0,0
 1000438:	000030b7          	lui	x1,0x3
 100043c:	00108093          	addi	x1,x1,1 # 3001 <_start-0xffcfff>
 1000440:	00111523          	sh	x1,10(x2)
 1000444:	00a11f03          	lh	x30,10(x2)
 1000448:	00003eb7          	lui	x29,0x3
 100044c:	001e8e93          	addi	x29,x29,1 # 3001 <_start-0xffcfff>
 1000450:	03df1463          	bne	x30,x29,1000478 <fail>
 1000454:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000458:	00200293          	addi	x5,x0,2
 100045c:	fc5216e3          	bne	x4,x5,1000428 <test_23+0x8>
 1000460:	0000c537          	lui	x10,0xc
 1000464:	eef50513          	addi	x10,x10,-273 # beef <_start-0xff4111>
 1000468:	00000597          	auipc	x11,0x0
 100046c:	05c58593          	addi	x11,x11,92 # 10004c4 <tdat>
 1000470:	00a59323          	sh	x10,6(x11)
 1000474:	00301c63          	bne	x0,x3,100048c <pass>

01000478 <fail>:
 1000478:	0ff0000f          	fence	iorw,iorw
 100047c:	00018063          	beq	x3,x0,100047c <fail+0x4>
 1000480:	00119193          	slli	x3,x3,0x1
 1000484:	0011e193          	ori	x3,x3,1
 1000488:	00000073          	ecall

0100048c <pass>:
 100048c:	0ff0000f          	fence	iorw,iorw
 1000490:	00100193          	addi	x3,x0,1
 1000494:	00000073          	ecall
 1000498:	c0001073          	unimp
 100049c:	0000                	c.unimp
 100049e:	0000                	c.unimp
 10004a0:	0000                	c.unimp
 10004a2:	0000                	c.unimp
 10004a4:	0000                	c.unimp
 10004a6:	0000                	c.unimp
 10004a8:	0000                	c.unimp
 10004aa:	0000                	c.unimp
 10004ac:	0000                	c.unimp
 10004ae:	0000                	c.unimp
 10004b0:	0000                	c.unimp
 10004b2:	0000                	c.unimp
 10004b4:	0000                	c.unimp
 10004b6:	0000                	c.unimp
 10004b8:	0000                	c.unimp
 10004ba:	0000                	c.unimp
 10004bc:	0000                	c.unimp
 10004be:	0000                	c.unimp
 10004c0:	0000                	c.unimp
 10004c2:	0000                	c.unimp

Disassembly of section .data:

010004c4 <tdat>:
 10004c4:	          	jal	x29,ffb8b2 <_start-0x474e>

010004c6 <tdat2>:
 10004c6:	          	jal	x29,ffb8b4 <_start-0x474c>

010004c8 <tdat3>:
 10004c8:	          	jal	x29,ffb8b6 <_start-0x474a>

010004ca <tdat4>:
 10004ca:	          	jal	x29,ffb8b8 <_start-0x4748>

010004cc <tdat5>:
 10004cc:	          	jal	x29,ffb8ba <_start-0x4746>

010004ce <tdat6>:
 10004ce:	          	jal	x29,ffb8bc <_start-0x4744>

010004d0 <tdat7>:
 10004d0:	          	jal	x29,ffb8be <_start-0x4742>

010004d2 <tdat8>:
 10004d2:	          	jal	x29,ffb8c0 <_start-0x4740>

010004d4 <tdat9>:
 10004d4:	          	jal	x29,ffb8c2 <_start-0x473e>

010004d6 <tdat10>:
 10004d6:	          	jal	x29,100b4d6 <_end+0xaffe>
