
output/rv32ui-p-lh:     file format elf32-littleriscv


Disassembly of section .text.init:

01000000 <_start>:
 1000000:	00000097          	auipc	x1,0x0
 1000004:	2c408093          	addi	x1,x1,708 # 10002c4 <tdat>
 1000008:	00009f03          	lh	x30,0(x1)
 100000c:	0ff00e93          	addi	x29,x0,255
 1000010:	00200193          	addi	x3,x0,2
 1000014:	25df1c63          	bne	x30,x29,100026c <fail>

01000018 <test_3>:
 1000018:	00000097          	auipc	x1,0x0
 100001c:	2ac08093          	addi	x1,x1,684 # 10002c4 <tdat>
 1000020:	00209f03          	lh	x30,2(x1)
 1000024:	f0000e93          	addi	x29,x0,-256
 1000028:	00300193          	addi	x3,x0,3
 100002c:	25df1063          	bne	x30,x29,100026c <fail>

01000030 <test_4>:
 1000030:	00000097          	auipc	x1,0x0
 1000034:	29408093          	addi	x1,x1,660 # 10002c4 <tdat>
 1000038:	00409f03          	lh	x30,4(x1)
 100003c:	00001eb7          	lui	x29,0x1
 1000040:	ff0e8e93          	addi	x29,x29,-16 # ff0 <_start-0xfff010>
 1000044:	00400193          	addi	x3,x0,4
 1000048:	23df1263          	bne	x30,x29,100026c <fail>

0100004c <test_5>:
 100004c:	00000097          	auipc	x1,0x0
 1000050:	27808093          	addi	x1,x1,632 # 10002c4 <tdat>
 1000054:	00609f03          	lh	x30,6(x1)
 1000058:	fffffeb7          	lui	x29,0xfffff
 100005c:	00fe8e93          	addi	x29,x29,15 # fffff00f <_end+0xfeffed43>
 1000060:	00500193          	addi	x3,x0,5
 1000064:	21df1463          	bne	x30,x29,100026c <fail>

01000068 <test_6>:
 1000068:	00000097          	auipc	x1,0x0
 100006c:	26208093          	addi	x1,x1,610 # 10002ca <tdat4>
 1000070:	ffa09f03          	lh	x30,-6(x1)
 1000074:	0ff00e93          	addi	x29,x0,255
 1000078:	00600193          	addi	x3,x0,6
 100007c:	1fdf1863          	bne	x30,x29,100026c <fail>

01000080 <test_7>:
 1000080:	00000097          	auipc	x1,0x0
 1000084:	24a08093          	addi	x1,x1,586 # 10002ca <tdat4>
 1000088:	ffc09f03          	lh	x30,-4(x1)
 100008c:	f0000e93          	addi	x29,x0,-256
 1000090:	00700193          	addi	x3,x0,7
 1000094:	1ddf1c63          	bne	x30,x29,100026c <fail>

01000098 <test_8>:
 1000098:	00000097          	auipc	x1,0x0
 100009c:	23208093          	addi	x1,x1,562 # 10002ca <tdat4>
 10000a0:	ffe09f03          	lh	x30,-2(x1)
 10000a4:	00001eb7          	lui	x29,0x1
 10000a8:	ff0e8e93          	addi	x29,x29,-16 # ff0 <_start-0xfff010>
 10000ac:	00800193          	addi	x3,x0,8
 10000b0:	1bdf1e63          	bne	x30,x29,100026c <fail>

010000b4 <test_9>:
 10000b4:	00000097          	auipc	x1,0x0
 10000b8:	21608093          	addi	x1,x1,534 # 10002ca <tdat4>
 10000bc:	00009f03          	lh	x30,0(x1)
 10000c0:	fffffeb7          	lui	x29,0xfffff
 10000c4:	00fe8e93          	addi	x29,x29,15 # fffff00f <_end+0xfeffed43>
 10000c8:	00900193          	addi	x3,x0,9
 10000cc:	1bdf1063          	bne	x30,x29,100026c <fail>

010000d0 <test_10>:
 10000d0:	00000097          	auipc	x1,0x0
 10000d4:	1f408093          	addi	x1,x1,500 # 10002c4 <tdat>
 10000d8:	fe008093          	addi	x1,x1,-32
 10000dc:	02009283          	lh	x5,32(x1)
 10000e0:	0ff00e93          	addi	x29,x0,255
 10000e4:	00a00193          	addi	x3,x0,10
 10000e8:	19d29263          	bne	x5,x29,100026c <fail>

010000ec <test_11>:
 10000ec:	00000097          	auipc	x1,0x0
 10000f0:	1d808093          	addi	x1,x1,472 # 10002c4 <tdat>
 10000f4:	ffb08093          	addi	x1,x1,-5
 10000f8:	00709283          	lh	x5,7(x1)
 10000fc:	f0000e93          	addi	x29,x0,-256
 1000100:	00b00193          	addi	x3,x0,11
 1000104:	17d29463          	bne	x5,x29,100026c <fail>

01000108 <test_12>:
 1000108:	00c00193          	addi	x3,x0,12
 100010c:	00000213          	addi	x4,x0,0
 1000110:	00000097          	auipc	x1,0x0
 1000114:	1b608093          	addi	x1,x1,438 # 10002c6 <tdat2>
 1000118:	00209f03          	lh	x30,2(x1)
 100011c:	000f0313          	addi	x6,x30,0
 1000120:	00001eb7          	lui	x29,0x1
 1000124:	ff0e8e93          	addi	x29,x29,-16 # ff0 <_start-0xfff010>
 1000128:	15d31263          	bne	x6,x29,100026c <fail>
 100012c:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000130:	00200293          	addi	x5,x0,2
 1000134:	fc521ee3          	bne	x4,x5,1000110 <test_12+0x8>

01000138 <test_13>:
 1000138:	00d00193          	addi	x3,x0,13
 100013c:	00000213          	addi	x4,x0,0
 1000140:	00000097          	auipc	x1,0x0
 1000144:	18808093          	addi	x1,x1,392 # 10002c8 <tdat3>
 1000148:	00209f03          	lh	x30,2(x1)
 100014c:	00000013          	addi	x0,x0,0
 1000150:	000f0313          	addi	x6,x30,0
 1000154:	fffffeb7          	lui	x29,0xfffff
 1000158:	00fe8e93          	addi	x29,x29,15 # fffff00f <_end+0xfeffed43>
 100015c:	11d31863          	bne	x6,x29,100026c <fail>
 1000160:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000164:	00200293          	addi	x5,x0,2
 1000168:	fc521ce3          	bne	x4,x5,1000140 <test_13+0x8>

0100016c <test_14>:
 100016c:	00e00193          	addi	x3,x0,14
 1000170:	00000213          	addi	x4,x0,0
 1000174:	00000097          	auipc	x1,0x0
 1000178:	15008093          	addi	x1,x1,336 # 10002c4 <tdat>
 100017c:	00209f03          	lh	x30,2(x1)
 1000180:	00000013          	addi	x0,x0,0
 1000184:	00000013          	addi	x0,x0,0
 1000188:	000f0313          	addi	x6,x30,0
 100018c:	f0000e93          	addi	x29,x0,-256
 1000190:	0dd31e63          	bne	x6,x29,100026c <fail>
 1000194:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000198:	00200293          	addi	x5,x0,2
 100019c:	fc521ce3          	bne	x4,x5,1000174 <test_14+0x8>

010001a0 <test_15>:
 10001a0:	00f00193          	addi	x3,x0,15
 10001a4:	00000213          	addi	x4,x0,0
 10001a8:	00000097          	auipc	x1,0x0
 10001ac:	11e08093          	addi	x1,x1,286 # 10002c6 <tdat2>
 10001b0:	00209f03          	lh	x30,2(x1)
 10001b4:	00001eb7          	lui	x29,0x1
 10001b8:	ff0e8e93          	addi	x29,x29,-16 # ff0 <_start-0xfff010>
 10001bc:	0bdf1863          	bne	x30,x29,100026c <fail>
 10001c0:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10001c4:	00200293          	addi	x5,x0,2
 10001c8:	fe5210e3          	bne	x4,x5,10001a8 <test_15+0x8>

010001cc <test_16>:
 10001cc:	01000193          	addi	x3,x0,16
 10001d0:	00000213          	addi	x4,x0,0
 10001d4:	00000097          	auipc	x1,0x0
 10001d8:	0f408093          	addi	x1,x1,244 # 10002c8 <tdat3>
 10001dc:	00000013          	addi	x0,x0,0
 10001e0:	00209f03          	lh	x30,2(x1)
 10001e4:	fffffeb7          	lui	x29,0xfffff
 10001e8:	00fe8e93          	addi	x29,x29,15 # fffff00f <_end+0xfeffed43>
 10001ec:	09df1063          	bne	x30,x29,100026c <fail>
 10001f0:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10001f4:	00200293          	addi	x5,x0,2
 10001f8:	fc521ee3          	bne	x4,x5,10001d4 <test_16+0x8>

010001fc <test_17>:
 10001fc:	01100193          	addi	x3,x0,17
 1000200:	00000213          	addi	x4,x0,0
 1000204:	00000097          	auipc	x1,0x0
 1000208:	0c008093          	addi	x1,x1,192 # 10002c4 <tdat>
 100020c:	00000013          	addi	x0,x0,0
 1000210:	00000013          	addi	x0,x0,0
 1000214:	00209f03          	lh	x30,2(x1)
 1000218:	f0000e93          	addi	x29,x0,-256
 100021c:	05df1863          	bne	x30,x29,100026c <fail>
 1000220:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000224:	00200293          	addi	x5,x0,2
 1000228:	fc521ee3          	bne	x4,x5,1000204 <test_17+0x8>

0100022c <test_18>:
 100022c:	00000297          	auipc	x5,0x0
 1000230:	09828293          	addi	x5,x5,152 # 10002c4 <tdat>
 1000234:	00029103          	lh	x2,0(x5)
 1000238:	00200113          	addi	x2,x0,2
 100023c:	00200e93          	addi	x29,x0,2
 1000240:	01200193          	addi	x3,x0,18
 1000244:	03d11463          	bne	x2,x29,100026c <fail>

01000248 <test_19>:
 1000248:	00000297          	auipc	x5,0x0
 100024c:	07c28293          	addi	x5,x5,124 # 10002c4 <tdat>
 1000250:	00029103          	lh	x2,0(x5)
 1000254:	00000013          	addi	x0,x0,0
 1000258:	00200113          	addi	x2,x0,2
 100025c:	00200e93          	addi	x29,x0,2
 1000260:	01300193          	addi	x3,x0,19
 1000264:	01d11463          	bne	x2,x29,100026c <fail>
 1000268:	00301c63          	bne	x0,x3,1000280 <pass>

0100026c <fail>:
 100026c:	0ff0000f          	fence	iorw,iorw
 1000270:	00018063          	beq	x3,x0,1000270 <fail+0x4>
 1000274:	00119193          	slli	x3,x3,0x1
 1000278:	0011e193          	ori	x3,x3,1
 100027c:	00000073          	ecall

01000280 <pass>:
 1000280:	0ff0000f          	fence	iorw,iorw
 1000284:	00100193          	addi	x3,x0,1
 1000288:	00000073          	ecall
 100028c:	c0001073          	unimp
 1000290:	0000                	c.unimp
 1000292:	0000                	c.unimp
 1000294:	0000                	c.unimp
 1000296:	0000                	c.unimp
 1000298:	0000                	c.unimp
 100029a:	0000                	c.unimp
 100029c:	0000                	c.unimp
 100029e:	0000                	c.unimp
 10002a0:	0000                	c.unimp
 10002a2:	0000                	c.unimp
 10002a4:	0000                	c.unimp
 10002a6:	0000                	c.unimp
 10002a8:	0000                	c.unimp
 10002aa:	0000                	c.unimp
 10002ac:	0000                	c.unimp
 10002ae:	0000                	c.unimp
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

010002c6 <tdat2>:
 10002c6:	ff00                	c.fsw	f8,56(x14)

010002c8 <tdat3>:
 10002c8:	0ff0                	c.addi4spn	x12,x2,988

010002ca <tdat4>:
 10002ca:	          	0xf00f
