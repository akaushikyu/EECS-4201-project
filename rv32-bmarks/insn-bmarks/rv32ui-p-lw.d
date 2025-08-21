
output/rv32ui-p-lw:     file format elf32-littleriscv


Disassembly of section .text.init:

01000000 <_start>:
 1000000:	00000097          	auipc	x1,0x0
 1000004:	2c408093          	addi	x1,x1,708 # 10002c4 <tdat>
 1000008:	0000af03          	lw	x30,0(x1)
 100000c:	00ff0eb7          	lui	x29,0xff0
 1000010:	0ffe8e93          	addi	x29,x29,255 # ff00ff <_start-0xff01>
 1000014:	00200193          	addi	x3,x0,2
 1000018:	27df1a63          	bne	x30,x29,100028c <fail>

0100001c <test_3>:
 100001c:	00000097          	auipc	x1,0x0
 1000020:	2a808093          	addi	x1,x1,680 # 10002c4 <tdat>
 1000024:	0040af03          	lw	x30,4(x1)
 1000028:	ff010eb7          	lui	x29,0xff010
 100002c:	f00e8e93          	addi	x29,x29,-256 # ff00ff00 <_end+0xfe00fc2c>
 1000030:	00300193          	addi	x3,x0,3
 1000034:	25df1c63          	bne	x30,x29,100028c <fail>

01000038 <test_4>:
 1000038:	00000097          	auipc	x1,0x0
 100003c:	28c08093          	addi	x1,x1,652 # 10002c4 <tdat>
 1000040:	0080af03          	lw	x30,8(x1)
 1000044:	0ff01eb7          	lui	x29,0xff01
 1000048:	ff0e8e93          	addi	x29,x29,-16 # ff00ff0 <_end+0xef00d1c>
 100004c:	00400193          	addi	x3,x0,4
 1000050:	23df1e63          	bne	x30,x29,100028c <fail>

01000054 <test_5>:
 1000054:	00000097          	auipc	x1,0x0
 1000058:	27008093          	addi	x1,x1,624 # 10002c4 <tdat>
 100005c:	00c0af03          	lw	x30,12(x1)
 1000060:	f00ffeb7          	lui	x29,0xf00ff
 1000064:	00fe8e93          	addi	x29,x29,15 # f00ff00f <_end+0xef0fed3b>
 1000068:	00500193          	addi	x3,x0,5
 100006c:	23df1063          	bne	x30,x29,100028c <fail>

01000070 <test_6>:
 1000070:	00000097          	auipc	x1,0x0
 1000074:	26008093          	addi	x1,x1,608 # 10002d0 <tdat4>
 1000078:	ff40af03          	lw	x30,-12(x1)
 100007c:	00ff0eb7          	lui	x29,0xff0
 1000080:	0ffe8e93          	addi	x29,x29,255 # ff00ff <_start-0xff01>
 1000084:	00600193          	addi	x3,x0,6
 1000088:	21df1263          	bne	x30,x29,100028c <fail>

0100008c <test_7>:
 100008c:	00000097          	auipc	x1,0x0
 1000090:	24408093          	addi	x1,x1,580 # 10002d0 <tdat4>
 1000094:	ff80af03          	lw	x30,-8(x1)
 1000098:	ff010eb7          	lui	x29,0xff010
 100009c:	f00e8e93          	addi	x29,x29,-256 # ff00ff00 <_end+0xfe00fc2c>
 10000a0:	00700193          	addi	x3,x0,7
 10000a4:	1fdf1463          	bne	x30,x29,100028c <fail>

010000a8 <test_8>:
 10000a8:	00000097          	auipc	x1,0x0
 10000ac:	22808093          	addi	x1,x1,552 # 10002d0 <tdat4>
 10000b0:	ffc0af03          	lw	x30,-4(x1)
 10000b4:	0ff01eb7          	lui	x29,0xff01
 10000b8:	ff0e8e93          	addi	x29,x29,-16 # ff00ff0 <_end+0xef00d1c>
 10000bc:	00800193          	addi	x3,x0,8
 10000c0:	1ddf1663          	bne	x30,x29,100028c <fail>

010000c4 <test_9>:
 10000c4:	00000097          	auipc	x1,0x0
 10000c8:	20c08093          	addi	x1,x1,524 # 10002d0 <tdat4>
 10000cc:	0000af03          	lw	x30,0(x1)
 10000d0:	f00ffeb7          	lui	x29,0xf00ff
 10000d4:	00fe8e93          	addi	x29,x29,15 # f00ff00f <_end+0xef0fed3b>
 10000d8:	00900193          	addi	x3,x0,9
 10000dc:	1bdf1863          	bne	x30,x29,100028c <fail>

010000e0 <test_10>:
 10000e0:	00000097          	auipc	x1,0x0
 10000e4:	1e408093          	addi	x1,x1,484 # 10002c4 <tdat>
 10000e8:	fe008093          	addi	x1,x1,-32
 10000ec:	0200a283          	lw	x5,32(x1)
 10000f0:	00ff0eb7          	lui	x29,0xff0
 10000f4:	0ffe8e93          	addi	x29,x29,255 # ff00ff <_start-0xff01>
 10000f8:	00a00193          	addi	x3,x0,10
 10000fc:	19d29863          	bne	x5,x29,100028c <fail>

01000100 <test_11>:
 1000100:	00000097          	auipc	x1,0x0
 1000104:	1c408093          	addi	x1,x1,452 # 10002c4 <tdat>
 1000108:	ffd08093          	addi	x1,x1,-3
 100010c:	0070a283          	lw	x5,7(x1)
 1000110:	ff010eb7          	lui	x29,0xff010
 1000114:	f00e8e93          	addi	x29,x29,-256 # ff00ff00 <_end+0xfe00fc2c>
 1000118:	00b00193          	addi	x3,x0,11
 100011c:	17d29863          	bne	x5,x29,100028c <fail>

01000120 <test_12>:
 1000120:	00c00193          	addi	x3,x0,12
 1000124:	00000213          	addi	x4,x0,0
 1000128:	00000097          	auipc	x1,0x0
 100012c:	1a008093          	addi	x1,x1,416 # 10002c8 <tdat2>
 1000130:	0040af03          	lw	x30,4(x1)
 1000134:	000f0313          	addi	x6,x30,0
 1000138:	0ff01eb7          	lui	x29,0xff01
 100013c:	ff0e8e93          	addi	x29,x29,-16 # ff00ff0 <_end+0xef00d1c>
 1000140:	15d31663          	bne	x6,x29,100028c <fail>
 1000144:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000148:	00200293          	addi	x5,x0,2
 100014c:	fc521ee3          	bne	x4,x5,1000128 <test_12+0x8>

01000150 <test_13>:
 1000150:	00d00193          	addi	x3,x0,13
 1000154:	00000213          	addi	x4,x0,0
 1000158:	00000097          	auipc	x1,0x0
 100015c:	17408093          	addi	x1,x1,372 # 10002cc <tdat3>
 1000160:	0040af03          	lw	x30,4(x1)
 1000164:	00000013          	addi	x0,x0,0
 1000168:	000f0313          	addi	x6,x30,0
 100016c:	f00ffeb7          	lui	x29,0xf00ff
 1000170:	00fe8e93          	addi	x29,x29,15 # f00ff00f <_end+0xef0fed3b>
 1000174:	11d31c63          	bne	x6,x29,100028c <fail>
 1000178:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 100017c:	00200293          	addi	x5,x0,2
 1000180:	fc521ce3          	bne	x4,x5,1000158 <test_13+0x8>

01000184 <test_14>:
 1000184:	00e00193          	addi	x3,x0,14
 1000188:	00000213          	addi	x4,x0,0
 100018c:	00000097          	auipc	x1,0x0
 1000190:	13808093          	addi	x1,x1,312 # 10002c4 <tdat>
 1000194:	0040af03          	lw	x30,4(x1)
 1000198:	00000013          	addi	x0,x0,0
 100019c:	00000013          	addi	x0,x0,0
 10001a0:	000f0313          	addi	x6,x30,0
 10001a4:	ff010eb7          	lui	x29,0xff010
 10001a8:	f00e8e93          	addi	x29,x29,-256 # ff00ff00 <_end+0xfe00fc2c>
 10001ac:	0fd31063          	bne	x6,x29,100028c <fail>
 10001b0:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10001b4:	00200293          	addi	x5,x0,2
 10001b8:	fc521ae3          	bne	x4,x5,100018c <test_14+0x8>

010001bc <test_15>:
 10001bc:	00f00193          	addi	x3,x0,15
 10001c0:	00000213          	addi	x4,x0,0
 10001c4:	00000097          	auipc	x1,0x0
 10001c8:	10408093          	addi	x1,x1,260 # 10002c8 <tdat2>
 10001cc:	0040af03          	lw	x30,4(x1)
 10001d0:	0ff01eb7          	lui	x29,0xff01
 10001d4:	ff0e8e93          	addi	x29,x29,-16 # ff00ff0 <_end+0xef00d1c>
 10001d8:	0bdf1a63          	bne	x30,x29,100028c <fail>
 10001dc:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10001e0:	00200293          	addi	x5,x0,2
 10001e4:	fe5210e3          	bne	x4,x5,10001c4 <test_15+0x8>

010001e8 <test_16>:
 10001e8:	01000193          	addi	x3,x0,16
 10001ec:	00000213          	addi	x4,x0,0
 10001f0:	00000097          	auipc	x1,0x0
 10001f4:	0dc08093          	addi	x1,x1,220 # 10002cc <tdat3>
 10001f8:	00000013          	addi	x0,x0,0
 10001fc:	0040af03          	lw	x30,4(x1)
 1000200:	f00ffeb7          	lui	x29,0xf00ff
 1000204:	00fe8e93          	addi	x29,x29,15 # f00ff00f <_end+0xef0fed3b>
 1000208:	09df1263          	bne	x30,x29,100028c <fail>
 100020c:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000210:	00200293          	addi	x5,x0,2
 1000214:	fc521ee3          	bne	x4,x5,10001f0 <test_16+0x8>

01000218 <test_17>:
 1000218:	01100193          	addi	x3,x0,17
 100021c:	00000213          	addi	x4,x0,0
 1000220:	00000097          	auipc	x1,0x0
 1000224:	0a408093          	addi	x1,x1,164 # 10002c4 <tdat>
 1000228:	00000013          	addi	x0,x0,0
 100022c:	00000013          	addi	x0,x0,0
 1000230:	0040af03          	lw	x30,4(x1)
 1000234:	ff010eb7          	lui	x29,0xff010
 1000238:	f00e8e93          	addi	x29,x29,-256 # ff00ff00 <_end+0xfe00fc2c>
 100023c:	05df1863          	bne	x30,x29,100028c <fail>
 1000240:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000244:	00200293          	addi	x5,x0,2
 1000248:	fc521ce3          	bne	x4,x5,1000220 <test_17+0x8>

0100024c <test_18>:
 100024c:	00000297          	auipc	x5,0x0
 1000250:	07828293          	addi	x5,x5,120 # 10002c4 <tdat>
 1000254:	0002a103          	lw	x2,0(x5)
 1000258:	00200113          	addi	x2,x0,2
 100025c:	00200e93          	addi	x29,x0,2
 1000260:	01200193          	addi	x3,x0,18
 1000264:	03d11463          	bne	x2,x29,100028c <fail>

01000268 <test_19>:
 1000268:	00000297          	auipc	x5,0x0
 100026c:	05c28293          	addi	x5,x5,92 # 10002c4 <tdat>
 1000270:	0002a103          	lw	x2,0(x5)
 1000274:	00000013          	addi	x0,x0,0
 1000278:	00200113          	addi	x2,x0,2
 100027c:	00200e93          	addi	x29,x0,2
 1000280:	01300193          	addi	x3,x0,19
 1000284:	01d11463          	bne	x2,x29,100028c <fail>
 1000288:	00301c63          	bne	x0,x3,10002a0 <pass>

0100028c <fail>:
 100028c:	0ff0000f          	fence	iorw,iorw
 1000290:	00018063          	beq	x3,x0,1000290 <fail+0x4>
 1000294:	00119193          	slli	x3,x3,0x1
 1000298:	0011e193          	ori	x3,x3,1
 100029c:	00000073          	ecall

010002a0 <pass>:
 10002a0:	0ff0000f          	fence	iorw,iorw
 10002a4:	00100193          	addi	x3,x0,1
 10002a8:	00000073          	ecall
 10002ac:	c0001073          	unimp
 10002b0:	0000                	c.unimp
 10002b2:	0000                	c.unimp
 10002b4:	0000                	c.unimp
 10002b6:	0000                	c.unimp
 10002b8:	0000                	c.unimp
 10002ba:	0000                	c.unimp
 10002bc:	0000                	c.unimp
 10002be:	0000                	c.unimp
 10002c0:	0000                	c.unimp
 10002c2:	0000                	c.unimp

Disassembly of section .data:

010002c4 <tdat>:
 10002c4:	00ff                	0xff
 10002c6:	00ff                	0xff

010002c8 <tdat2>:
 10002c8:	ff00                	c.fsw	f8,56(x14)
 10002ca:	ff00                	c.fsw	f8,56(x14)

010002cc <tdat3>:
 10002cc:	0ff0                	c.addi4spn	x12,x2,988
 10002ce:	0ff0                	c.addi4spn	x12,x2,988

010002d0 <tdat4>:
 10002d0:	f00ff00f          	0xf00ff00f
