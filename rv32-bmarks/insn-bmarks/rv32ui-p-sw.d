
output/rv32ui-p-sw:     file format elf32-littleriscv


Disassembly of section .text.init:

01000000 <_start>:
 1000000:	00000097          	auipc	x1,0x0
 1000004:	4c408093          	addi	x1,x1,1220 # 10004c4 <tdat>
 1000008:	00aa0137          	lui	x2,0xaa0
 100000c:	0aa10113          	addi	x2,x2,170 # aa00aa <_start-0x55ff56>
 1000010:	0020a023          	sw	x2,0(x1)
 1000014:	0000af03          	lw	x30,0(x1)
 1000018:	00aa0eb7          	lui	x29,0xaa0
 100001c:	0aae8e93          	addi	x29,x29,170 # aa00aa <_start-0x55ff56>
 1000020:	00200193          	addi	x3,x0,2
 1000024:	47df1063          	bne	x30,x29,1000484 <fail>

01000028 <test_3>:
 1000028:	00000097          	auipc	x1,0x0
 100002c:	49c08093          	addi	x1,x1,1180 # 10004c4 <tdat>
 1000030:	aa00b137          	lui	x2,0xaa00b
 1000034:	a0010113          	addi	x2,x2,-1536 # aa00aa00 <_end+0xa900a514>
 1000038:	0020a223          	sw	x2,4(x1)
 100003c:	0040af03          	lw	x30,4(x1)
 1000040:	aa00beb7          	lui	x29,0xaa00b
 1000044:	a00e8e93          	addi	x29,x29,-1536 # aa00aa00 <_end+0xa900a514>
 1000048:	00300193          	addi	x3,x0,3
 100004c:	43df1c63          	bne	x30,x29,1000484 <fail>

01000050 <test_4>:
 1000050:	00000097          	auipc	x1,0x0
 1000054:	47408093          	addi	x1,x1,1140 # 10004c4 <tdat>
 1000058:	0aa01137          	lui	x2,0xaa01
 100005c:	aa010113          	addi	x2,x2,-1376 # aa00aa0 <_end+0x9a005b4>
 1000060:	0020a423          	sw	x2,8(x1)
 1000064:	0080af03          	lw	x30,8(x1)
 1000068:	0aa01eb7          	lui	x29,0xaa01
 100006c:	aa0e8e93          	addi	x29,x29,-1376 # aa00aa0 <_end+0x9a005b4>
 1000070:	00400193          	addi	x3,x0,4
 1000074:	41df1863          	bne	x30,x29,1000484 <fail>

01000078 <test_5>:
 1000078:	00000097          	auipc	x1,0x0
 100007c:	44c08093          	addi	x1,x1,1100 # 10004c4 <tdat>
 1000080:	a00aa137          	lui	x2,0xa00aa
 1000084:	00a10113          	addi	x2,x2,10 # a00aa00a <_end+0x9f0a9b1e>
 1000088:	0020a623          	sw	x2,12(x1)
 100008c:	00c0af03          	lw	x30,12(x1)
 1000090:	a00aaeb7          	lui	x29,0xa00aa
 1000094:	00ae8e93          	addi	x29,x29,10 # a00aa00a <_end+0x9f0a9b1e>
 1000098:	00500193          	addi	x3,x0,5
 100009c:	3fdf1463          	bne	x30,x29,1000484 <fail>

010000a0 <test_6>:
 10000a0:	00000097          	auipc	x1,0x0
 10000a4:	44008093          	addi	x1,x1,1088 # 10004e0 <tdat8>
 10000a8:	00aa0137          	lui	x2,0xaa0
 10000ac:	0aa10113          	addi	x2,x2,170 # aa00aa <_start-0x55ff56>
 10000b0:	fe20aa23          	sw	x2,-12(x1)
 10000b4:	ff40af03          	lw	x30,-12(x1)
 10000b8:	00aa0eb7          	lui	x29,0xaa0
 10000bc:	0aae8e93          	addi	x29,x29,170 # aa00aa <_start-0x55ff56>
 10000c0:	00600193          	addi	x3,x0,6
 10000c4:	3ddf1063          	bne	x30,x29,1000484 <fail>

010000c8 <test_7>:
 10000c8:	00000097          	auipc	x1,0x0
 10000cc:	41808093          	addi	x1,x1,1048 # 10004e0 <tdat8>
 10000d0:	aa00b137          	lui	x2,0xaa00b
 10000d4:	a0010113          	addi	x2,x2,-1536 # aa00aa00 <_end+0xa900a514>
 10000d8:	fe20ac23          	sw	x2,-8(x1)
 10000dc:	ff80af03          	lw	x30,-8(x1)
 10000e0:	aa00beb7          	lui	x29,0xaa00b
 10000e4:	a00e8e93          	addi	x29,x29,-1536 # aa00aa00 <_end+0xa900a514>
 10000e8:	00700193          	addi	x3,x0,7
 10000ec:	39df1c63          	bne	x30,x29,1000484 <fail>

010000f0 <test_8>:
 10000f0:	00000097          	auipc	x1,0x0
 10000f4:	3f008093          	addi	x1,x1,1008 # 10004e0 <tdat8>
 10000f8:	0aa01137          	lui	x2,0xaa01
 10000fc:	aa010113          	addi	x2,x2,-1376 # aa00aa0 <_end+0x9a005b4>
 1000100:	fe20ae23          	sw	x2,-4(x1)
 1000104:	ffc0af03          	lw	x30,-4(x1)
 1000108:	0aa01eb7          	lui	x29,0xaa01
 100010c:	aa0e8e93          	addi	x29,x29,-1376 # aa00aa0 <_end+0x9a005b4>
 1000110:	00800193          	addi	x3,x0,8
 1000114:	37df1863          	bne	x30,x29,1000484 <fail>

01000118 <test_9>:
 1000118:	00000097          	auipc	x1,0x0
 100011c:	3c808093          	addi	x1,x1,968 # 10004e0 <tdat8>
 1000120:	a00aa137          	lui	x2,0xa00aa
 1000124:	00a10113          	addi	x2,x2,10 # a00aa00a <_end+0x9f0a9b1e>
 1000128:	0020a023          	sw	x2,0(x1)
 100012c:	0000af03          	lw	x30,0(x1)
 1000130:	a00aaeb7          	lui	x29,0xa00aa
 1000134:	00ae8e93          	addi	x29,x29,10 # a00aa00a <_end+0x9f0a9b1e>
 1000138:	00900193          	addi	x3,x0,9
 100013c:	35df1463          	bne	x30,x29,1000484 <fail>

01000140 <test_10>:
 1000140:	00000097          	auipc	x1,0x0
 1000144:	3a408093          	addi	x1,x1,932 # 10004e4 <tdat9>
 1000148:	12345137          	lui	x2,0x12345
 100014c:	67810113          	addi	x2,x2,1656 # 12345678 <_end+0x1134518c>
 1000150:	fe008213          	addi	x4,x1,-32
 1000154:	02222023          	sw	x2,32(x4) # 20 <_start-0xffffe0>
 1000158:	0000a283          	lw	x5,0(x1)
 100015c:	12345eb7          	lui	x29,0x12345
 1000160:	678e8e93          	addi	x29,x29,1656 # 12345678 <_end+0x1134518c>
 1000164:	00a00193          	addi	x3,x0,10
 1000168:	31d29e63          	bne	x5,x29,1000484 <fail>

0100016c <test_11>:
 100016c:	00000097          	auipc	x1,0x0
 1000170:	37808093          	addi	x1,x1,888 # 10004e4 <tdat9>
 1000174:	58213137          	lui	x2,0x58213
 1000178:	09810113          	addi	x2,x2,152 # 58213098 <_end+0x57212bac>
 100017c:	ffd08093          	addi	x1,x1,-3
 1000180:	0020a3a3          	sw	x2,7(x1)
 1000184:	00000217          	auipc	x4,0x0
 1000188:	36420213          	addi	x4,x4,868 # 10004e8 <tdat10>
 100018c:	00022283          	lw	x5,0(x4) # 0 <_start-0x1000000>
 1000190:	58213eb7          	lui	x29,0x58213
 1000194:	098e8e93          	addi	x29,x29,152 # 58213098 <_end+0x57212bac>
 1000198:	00b00193          	addi	x3,x0,11
 100019c:	2fd29463          	bne	x5,x29,1000484 <fail>

010001a0 <test_12>:
 10001a0:	00c00193          	addi	x3,x0,12
 10001a4:	00000213          	addi	x4,x0,0
 10001a8:	aabbd0b7          	lui	x1,0xaabbd
 10001ac:	cdd08093          	addi	x1,x1,-803 # aabbccdd <_end+0xa9bbc7f1>
 10001b0:	00000117          	auipc	x2,0x0
 10001b4:	31410113          	addi	x2,x2,788 # 10004c4 <tdat>
 10001b8:	00112023          	sw	x1,0(x2)
 10001bc:	00012f03          	lw	x30,0(x2)
 10001c0:	aabbdeb7          	lui	x29,0xaabbd
 10001c4:	cdde8e93          	addi	x29,x29,-803 # aabbccdd <_end+0xa9bbc7f1>
 10001c8:	2bdf1e63          	bne	x30,x29,1000484 <fail>
 10001cc:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10001d0:	00200293          	addi	x5,x0,2
 10001d4:	fc521ae3          	bne	x4,x5,10001a8 <test_12+0x8>

010001d8 <test_13>:
 10001d8:	00d00193          	addi	x3,x0,13
 10001dc:	00000213          	addi	x4,x0,0
 10001e0:	daabc0b7          	lui	x1,0xdaabc
 10001e4:	ccd08093          	addi	x1,x1,-819 # daabbccd <_end+0xd9abb7e1>
 10001e8:	00000117          	auipc	x2,0x0
 10001ec:	2dc10113          	addi	x2,x2,732 # 10004c4 <tdat>
 10001f0:	00000013          	addi	x0,x0,0
 10001f4:	00112223          	sw	x1,4(x2)
 10001f8:	00412f03          	lw	x30,4(x2)
 10001fc:	daabceb7          	lui	x29,0xdaabc
 1000200:	ccde8e93          	addi	x29,x29,-819 # daabbccd <_end+0xd9abb7e1>
 1000204:	29df1063          	bne	x30,x29,1000484 <fail>
 1000208:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 100020c:	00200293          	addi	x5,x0,2
 1000210:	fc5218e3          	bne	x4,x5,10001e0 <test_13+0x8>

01000214 <test_14>:
 1000214:	00e00193          	addi	x3,x0,14
 1000218:	00000213          	addi	x4,x0,0
 100021c:	ddaac0b7          	lui	x1,0xddaac
 1000220:	bcc08093          	addi	x1,x1,-1076 # ddaabbcc <_end+0xdcaab6e0>
 1000224:	00000117          	auipc	x2,0x0
 1000228:	2a010113          	addi	x2,x2,672 # 10004c4 <tdat>
 100022c:	00000013          	addi	x0,x0,0
 1000230:	00000013          	addi	x0,x0,0
 1000234:	00112423          	sw	x1,8(x2)
 1000238:	00812f03          	lw	x30,8(x2)
 100023c:	ddaaceb7          	lui	x29,0xddaac
 1000240:	bcce8e93          	addi	x29,x29,-1076 # ddaabbcc <_end+0xdcaab6e0>
 1000244:	25df1063          	bne	x30,x29,1000484 <fail>
 1000248:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 100024c:	00200293          	addi	x5,x0,2
 1000250:	fc5216e3          	bne	x4,x5,100021c <test_14+0x8>

01000254 <test_15>:
 1000254:	00f00193          	addi	x3,x0,15
 1000258:	00000213          	addi	x4,x0,0
 100025c:	cddab0b7          	lui	x1,0xcddab
 1000260:	bbc08093          	addi	x1,x1,-1092 # cddaabbc <_end+0xccdaa6d0>
 1000264:	00000013          	addi	x0,x0,0
 1000268:	00000117          	auipc	x2,0x0
 100026c:	25c10113          	addi	x2,x2,604 # 10004c4 <tdat>
 1000270:	00112623          	sw	x1,12(x2)
 1000274:	00c12f03          	lw	x30,12(x2)
 1000278:	cddabeb7          	lui	x29,0xcddab
 100027c:	bbce8e93          	addi	x29,x29,-1092 # cddaabbc <_end+0xccdaa6d0>
 1000280:	21df1263          	bne	x30,x29,1000484 <fail>
 1000284:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000288:	00200293          	addi	x5,x0,2
 100028c:	fc5218e3          	bne	x4,x5,100025c <test_15+0x8>

01000290 <test_16>:
 1000290:	01000193          	addi	x3,x0,16
 1000294:	00000213          	addi	x4,x0,0
 1000298:	ccddb0b7          	lui	x1,0xccddb
 100029c:	abb08093          	addi	x1,x1,-1349 # ccddaabb <_end+0xcbdda5cf>
 10002a0:	00000013          	addi	x0,x0,0
 10002a4:	00000117          	auipc	x2,0x0
 10002a8:	22010113          	addi	x2,x2,544 # 10004c4 <tdat>
 10002ac:	00000013          	addi	x0,x0,0
 10002b0:	00112823          	sw	x1,16(x2)
 10002b4:	01012f03          	lw	x30,16(x2)
 10002b8:	ccddbeb7          	lui	x29,0xccddb
 10002bc:	abbe8e93          	addi	x29,x29,-1349 # ccddaabb <_end+0xcbdda5cf>
 10002c0:	1ddf1263          	bne	x30,x29,1000484 <fail>
 10002c4:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10002c8:	00200293          	addi	x5,x0,2
 10002cc:	fc5216e3          	bne	x4,x5,1000298 <test_16+0x8>

010002d0 <test_17>:
 10002d0:	01100193          	addi	x3,x0,17
 10002d4:	00000213          	addi	x4,x0,0
 10002d8:	bccde0b7          	lui	x1,0xbccde
 10002dc:	aab08093          	addi	x1,x1,-1365 # bccddaab <_end+0xbbcdd5bf>
 10002e0:	00000013          	addi	x0,x0,0
 10002e4:	00000013          	addi	x0,x0,0
 10002e8:	00000117          	auipc	x2,0x0
 10002ec:	1dc10113          	addi	x2,x2,476 # 10004c4 <tdat>
 10002f0:	00112a23          	sw	x1,20(x2)
 10002f4:	01412f03          	lw	x30,20(x2)
 10002f8:	bccdeeb7          	lui	x29,0xbccde
 10002fc:	aabe8e93          	addi	x29,x29,-1365 # bccddaab <_end+0xbbcdd5bf>
 1000300:	19df1263          	bne	x30,x29,1000484 <fail>
 1000304:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000308:	00200293          	addi	x5,x0,2
 100030c:	fc5216e3          	bne	x4,x5,10002d8 <test_17+0x8>

01000310 <test_18>:
 1000310:	01200193          	addi	x3,x0,18
 1000314:	00000213          	addi	x4,x0,0
 1000318:	00000117          	auipc	x2,0x0
 100031c:	1ac10113          	addi	x2,x2,428 # 10004c4 <tdat>
 1000320:	001120b7          	lui	x1,0x112
 1000324:	23308093          	addi	x1,x1,563 # 112233 <_start-0xeeddcd>
 1000328:	00112023          	sw	x1,0(x2)
 100032c:	00012f03          	lw	x30,0(x2)
 1000330:	00112eb7          	lui	x29,0x112
 1000334:	233e8e93          	addi	x29,x29,563 # 112233 <_start-0xeeddcd>
 1000338:	15df1663          	bne	x30,x29,1000484 <fail>
 100033c:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000340:	00200293          	addi	x5,x0,2
 1000344:	fc521ae3          	bne	x4,x5,1000318 <test_18+0x8>

01000348 <test_19>:
 1000348:	01300193          	addi	x3,x0,19
 100034c:	00000213          	addi	x4,x0,0
 1000350:	00000117          	auipc	x2,0x0
 1000354:	17410113          	addi	x2,x2,372 # 10004c4 <tdat>
 1000358:	300110b7          	lui	x1,0x30011
 100035c:	22308093          	addi	x1,x1,547 # 30011223 <_end+0x2f010d37>
 1000360:	00000013          	addi	x0,x0,0
 1000364:	00112223          	sw	x1,4(x2)
 1000368:	00412f03          	lw	x30,4(x2)
 100036c:	30011eb7          	lui	x29,0x30011
 1000370:	223e8e93          	addi	x29,x29,547 # 30011223 <_end+0x2f010d37>
 1000374:	11df1863          	bne	x30,x29,1000484 <fail>
 1000378:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 100037c:	00200293          	addi	x5,x0,2
 1000380:	fc5218e3          	bne	x4,x5,1000350 <test_19+0x8>

01000384 <test_20>:
 1000384:	01400193          	addi	x3,x0,20
 1000388:	00000213          	addi	x4,x0,0
 100038c:	00000117          	auipc	x2,0x0
 1000390:	13810113          	addi	x2,x2,312 # 10004c4 <tdat>
 1000394:	330010b7          	lui	x1,0x33001
 1000398:	12208093          	addi	x1,x1,290 # 33001122 <_end+0x32000c36>
 100039c:	00000013          	addi	x0,x0,0
 10003a0:	00000013          	addi	x0,x0,0
 10003a4:	00112423          	sw	x1,8(x2)
 10003a8:	00812f03          	lw	x30,8(x2)
 10003ac:	33001eb7          	lui	x29,0x33001
 10003b0:	122e8e93          	addi	x29,x29,290 # 33001122 <_end+0x32000c36>
 10003b4:	0ddf1863          	bne	x30,x29,1000484 <fail>
 10003b8:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10003bc:	00200293          	addi	x5,x0,2
 10003c0:	fc5216e3          	bne	x4,x5,100038c <test_20+0x8>

010003c4 <test_21>:
 10003c4:	01500193          	addi	x3,x0,21
 10003c8:	00000213          	addi	x4,x0,0
 10003cc:	00000117          	auipc	x2,0x0
 10003d0:	0f810113          	addi	x2,x2,248 # 10004c4 <tdat>
 10003d4:	00000013          	addi	x0,x0,0
 10003d8:	233000b7          	lui	x1,0x23300
 10003dc:	11208093          	addi	x1,x1,274 # 23300112 <_end+0x222ffc26>
 10003e0:	00112623          	sw	x1,12(x2)
 10003e4:	00c12f03          	lw	x30,12(x2)
 10003e8:	23300eb7          	lui	x29,0x23300
 10003ec:	112e8e93          	addi	x29,x29,274 # 23300112 <_end+0x222ffc26>
 10003f0:	09df1a63          	bne	x30,x29,1000484 <fail>
 10003f4:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10003f8:	00200293          	addi	x5,x0,2
 10003fc:	fc5218e3          	bne	x4,x5,10003cc <test_21+0x8>

01000400 <test_22>:
 1000400:	01600193          	addi	x3,x0,22
 1000404:	00000213          	addi	x4,x0,0
 1000408:	00000117          	auipc	x2,0x0
 100040c:	0bc10113          	addi	x2,x2,188 # 10004c4 <tdat>
 1000410:	00000013          	addi	x0,x0,0
 1000414:	223300b7          	lui	x1,0x22330
 1000418:	01108093          	addi	x1,x1,17 # 22330011 <_end+0x2132fb25>
 100041c:	00000013          	addi	x0,x0,0
 1000420:	00112823          	sw	x1,16(x2)
 1000424:	01012f03          	lw	x30,16(x2)
 1000428:	22330eb7          	lui	x29,0x22330
 100042c:	011e8e93          	addi	x29,x29,17 # 22330011 <_end+0x2132fb25>
 1000430:	05df1a63          	bne	x30,x29,1000484 <fail>
 1000434:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000438:	00200293          	addi	x5,x0,2
 100043c:	fc5216e3          	bne	x4,x5,1000408 <test_22+0x8>

01000440 <test_23>:
 1000440:	01700193          	addi	x3,x0,23
 1000444:	00000213          	addi	x4,x0,0
 1000448:	00000117          	auipc	x2,0x0
 100044c:	07c10113          	addi	x2,x2,124 # 10004c4 <tdat>
 1000450:	00000013          	addi	x0,x0,0
 1000454:	00000013          	addi	x0,x0,0
 1000458:	122330b7          	lui	x1,0x12233
 100045c:	00108093          	addi	x1,x1,1 # 12233001 <_end+0x11232b15>
 1000460:	00112a23          	sw	x1,20(x2)
 1000464:	01412f03          	lw	x30,20(x2)
 1000468:	12233eb7          	lui	x29,0x12233
 100046c:	001e8e93          	addi	x29,x29,1 # 12233001 <_end+0x11232b15>
 1000470:	01df1a63          	bne	x30,x29,1000484 <fail>
 1000474:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000478:	00200293          	addi	x5,x0,2
 100047c:	fc5216e3          	bne	x4,x5,1000448 <test_23+0x8>
 1000480:	00301c63          	bne	x0,x3,1000498 <pass>

01000484 <fail>:
 1000484:	0ff0000f          	fence	iorw,iorw
 1000488:	00018063          	beq	x3,x0,1000488 <fail+0x4>
 100048c:	00119193          	slli	x3,x3,0x1
 1000490:	0011e193          	ori	x3,x3,1
 1000494:	00000073          	ecall

01000498 <pass>:
 1000498:	0ff0000f          	fence	iorw,iorw
 100049c:	00100193          	addi	x3,x0,1
 10004a0:	00000073          	ecall
 10004a4:	c0001073          	unimp
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
 10004c4:	deadbeef          	jal	x29,fdbaae <_start-0x24552>

010004c8 <tdat2>:
 10004c8:	deadbeef          	jal	x29,fdbab2 <_start-0x2454e>

010004cc <tdat3>:
 10004cc:	deadbeef          	jal	x29,fdbab6 <_start-0x2454a>

010004d0 <tdat4>:
 10004d0:	deadbeef          	jal	x29,fdbaba <_start-0x24546>

010004d4 <tdat5>:
 10004d4:	deadbeef          	jal	x29,fdbabe <_start-0x24542>

010004d8 <tdat6>:
 10004d8:	deadbeef          	jal	x29,fdbac2 <_start-0x2453e>

010004dc <tdat7>:
 10004dc:	deadbeef          	jal	x29,fdbac6 <_start-0x2453a>

010004e0 <tdat8>:
 10004e0:	deadbeef          	jal	x29,fdbaca <_start-0x24536>

010004e4 <tdat9>:
 10004e4:	deadbeef          	jal	x29,fdbace <_start-0x24532>

010004e8 <tdat10>:
 10004e8:	deadbeef          	jal	x29,fdbad2 <_start-0x2452e>
