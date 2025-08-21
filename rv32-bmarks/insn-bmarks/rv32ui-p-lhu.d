
output/rv32ui-p-lhu:     file format elf32-littleriscv


Disassembly of section .text.init:

01000000 <_start>:
 1000000:	00000097          	auipc	x1,0x0
 1000004:	2c408093          	addi	x1,x1,708 # 10002c4 <tdat>
 1000008:	0000df03          	lhu	x30,0(x1)
 100000c:	0ff00e93          	addi	x29,x0,255
 1000010:	00200193          	addi	x3,x0,2
 1000014:	27df1663          	bne	x30,x29,1000280 <fail>

01000018 <test_3>:
 1000018:	00000097          	auipc	x1,0x0
 100001c:	2ac08093          	addi	x1,x1,684 # 10002c4 <tdat>
 1000020:	0020df03          	lhu	x30,2(x1)
 1000024:	00010eb7          	lui	x29,0x10
 1000028:	f00e8e93          	addi	x29,x29,-256 # ff00 <_start-0xff0100>
 100002c:	00300193          	addi	x3,x0,3
 1000030:	25df1863          	bne	x30,x29,1000280 <fail>

01000034 <test_4>:
 1000034:	00000097          	auipc	x1,0x0
 1000038:	29008093          	addi	x1,x1,656 # 10002c4 <tdat>
 100003c:	0040df03          	lhu	x30,4(x1)
 1000040:	00001eb7          	lui	x29,0x1
 1000044:	ff0e8e93          	addi	x29,x29,-16 # ff0 <_start-0xfff010>
 1000048:	00400193          	addi	x3,x0,4
 100004c:	23df1a63          	bne	x30,x29,1000280 <fail>

01000050 <test_5>:
 1000050:	00000097          	auipc	x1,0x0
 1000054:	27408093          	addi	x1,x1,628 # 10002c4 <tdat>
 1000058:	0060df03          	lhu	x30,6(x1)
 100005c:	0000feb7          	lui	x29,0xf
 1000060:	00fe8e93          	addi	x29,x29,15 # f00f <_start-0xff0ff1>
 1000064:	00500193          	addi	x3,x0,5
 1000068:	21df1c63          	bne	x30,x29,1000280 <fail>

0100006c <test_6>:
 100006c:	00000097          	auipc	x1,0x0
 1000070:	25e08093          	addi	x1,x1,606 # 10002ca <tdat4>
 1000074:	ffa0df03          	lhu	x30,-6(x1)
 1000078:	0ff00e93          	addi	x29,x0,255
 100007c:	00600193          	addi	x3,x0,6
 1000080:	21df1063          	bne	x30,x29,1000280 <fail>

01000084 <test_7>:
 1000084:	00000097          	auipc	x1,0x0
 1000088:	24608093          	addi	x1,x1,582 # 10002ca <tdat4>
 100008c:	ffc0df03          	lhu	x30,-4(x1)
 1000090:	00010eb7          	lui	x29,0x10
 1000094:	f00e8e93          	addi	x29,x29,-256 # ff00 <_start-0xff0100>
 1000098:	00700193          	addi	x3,x0,7
 100009c:	1fdf1263          	bne	x30,x29,1000280 <fail>

010000a0 <test_8>:
 10000a0:	00000097          	auipc	x1,0x0
 10000a4:	22a08093          	addi	x1,x1,554 # 10002ca <tdat4>
 10000a8:	ffe0df03          	lhu	x30,-2(x1)
 10000ac:	00001eb7          	lui	x29,0x1
 10000b0:	ff0e8e93          	addi	x29,x29,-16 # ff0 <_start-0xfff010>
 10000b4:	00800193          	addi	x3,x0,8
 10000b8:	1ddf1463          	bne	x30,x29,1000280 <fail>

010000bc <test_9>:
 10000bc:	00000097          	auipc	x1,0x0
 10000c0:	20e08093          	addi	x1,x1,526 # 10002ca <tdat4>
 10000c4:	0000df03          	lhu	x30,0(x1)
 10000c8:	0000feb7          	lui	x29,0xf
 10000cc:	00fe8e93          	addi	x29,x29,15 # f00f <_start-0xff0ff1>
 10000d0:	00900193          	addi	x3,x0,9
 10000d4:	1bdf1663          	bne	x30,x29,1000280 <fail>

010000d8 <test_10>:
 10000d8:	00000097          	auipc	x1,0x0
 10000dc:	1ec08093          	addi	x1,x1,492 # 10002c4 <tdat>
 10000e0:	fe008093          	addi	x1,x1,-32
 10000e4:	0200d283          	lhu	x5,32(x1)
 10000e8:	0ff00e93          	addi	x29,x0,255
 10000ec:	00a00193          	addi	x3,x0,10
 10000f0:	19d29863          	bne	x5,x29,1000280 <fail>

010000f4 <test_11>:
 10000f4:	00000097          	auipc	x1,0x0
 10000f8:	1d008093          	addi	x1,x1,464 # 10002c4 <tdat>
 10000fc:	ffb08093          	addi	x1,x1,-5
 1000100:	0070d283          	lhu	x5,7(x1)
 1000104:	00010eb7          	lui	x29,0x10
 1000108:	f00e8e93          	addi	x29,x29,-256 # ff00 <_start-0xff0100>
 100010c:	00b00193          	addi	x3,x0,11
 1000110:	17d29863          	bne	x5,x29,1000280 <fail>

01000114 <test_12>:
 1000114:	00c00193          	addi	x3,x0,12
 1000118:	00000213          	addi	x4,x0,0
 100011c:	00000097          	auipc	x1,0x0
 1000120:	1aa08093          	addi	x1,x1,426 # 10002c6 <tdat2>
 1000124:	0020df03          	lhu	x30,2(x1)
 1000128:	000f0313          	addi	x6,x30,0
 100012c:	00001eb7          	lui	x29,0x1
 1000130:	ff0e8e93          	addi	x29,x29,-16 # ff0 <_start-0xfff010>
 1000134:	15d31663          	bne	x6,x29,1000280 <fail>
 1000138:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 100013c:	00200293          	addi	x5,x0,2
 1000140:	fc521ee3          	bne	x4,x5,100011c <test_12+0x8>

01000144 <test_13>:
 1000144:	00d00193          	addi	x3,x0,13
 1000148:	00000213          	addi	x4,x0,0
 100014c:	00000097          	auipc	x1,0x0
 1000150:	17c08093          	addi	x1,x1,380 # 10002c8 <tdat3>
 1000154:	0020df03          	lhu	x30,2(x1)
 1000158:	00000013          	addi	x0,x0,0
 100015c:	000f0313          	addi	x6,x30,0
 1000160:	0000feb7          	lui	x29,0xf
 1000164:	00fe8e93          	addi	x29,x29,15 # f00f <_start-0xff0ff1>
 1000168:	11d31c63          	bne	x6,x29,1000280 <fail>
 100016c:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000170:	00200293          	addi	x5,x0,2
 1000174:	fc521ce3          	bne	x4,x5,100014c <test_13+0x8>

01000178 <test_14>:
 1000178:	00e00193          	addi	x3,x0,14
 100017c:	00000213          	addi	x4,x0,0
 1000180:	00000097          	auipc	x1,0x0
 1000184:	14408093          	addi	x1,x1,324 # 10002c4 <tdat>
 1000188:	0020df03          	lhu	x30,2(x1)
 100018c:	00000013          	addi	x0,x0,0
 1000190:	00000013          	addi	x0,x0,0
 1000194:	000f0313          	addi	x6,x30,0
 1000198:	00010eb7          	lui	x29,0x10
 100019c:	f00e8e93          	addi	x29,x29,-256 # ff00 <_start-0xff0100>
 10001a0:	0fd31063          	bne	x6,x29,1000280 <fail>
 10001a4:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10001a8:	00200293          	addi	x5,x0,2
 10001ac:	fc521ae3          	bne	x4,x5,1000180 <test_14+0x8>

010001b0 <test_15>:
 10001b0:	00f00193          	addi	x3,x0,15
 10001b4:	00000213          	addi	x4,x0,0
 10001b8:	00000097          	auipc	x1,0x0
 10001bc:	10e08093          	addi	x1,x1,270 # 10002c6 <tdat2>
 10001c0:	0020df03          	lhu	x30,2(x1)
 10001c4:	00001eb7          	lui	x29,0x1
 10001c8:	ff0e8e93          	addi	x29,x29,-16 # ff0 <_start-0xfff010>
 10001cc:	0bdf1a63          	bne	x30,x29,1000280 <fail>
 10001d0:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10001d4:	00200293          	addi	x5,x0,2
 10001d8:	fe5210e3          	bne	x4,x5,10001b8 <test_15+0x8>

010001dc <test_16>:
 10001dc:	01000193          	addi	x3,x0,16
 10001e0:	00000213          	addi	x4,x0,0
 10001e4:	00000097          	auipc	x1,0x0
 10001e8:	0e408093          	addi	x1,x1,228 # 10002c8 <tdat3>
 10001ec:	00000013          	addi	x0,x0,0
 10001f0:	0020df03          	lhu	x30,2(x1)
 10001f4:	0000feb7          	lui	x29,0xf
 10001f8:	00fe8e93          	addi	x29,x29,15 # f00f <_start-0xff0ff1>
 10001fc:	09df1263          	bne	x30,x29,1000280 <fail>
 1000200:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000204:	00200293          	addi	x5,x0,2
 1000208:	fc521ee3          	bne	x4,x5,10001e4 <test_16+0x8>

0100020c <test_17>:
 100020c:	01100193          	addi	x3,x0,17
 1000210:	00000213          	addi	x4,x0,0
 1000214:	00000097          	auipc	x1,0x0
 1000218:	0b008093          	addi	x1,x1,176 # 10002c4 <tdat>
 100021c:	00000013          	addi	x0,x0,0
 1000220:	00000013          	addi	x0,x0,0
 1000224:	0020df03          	lhu	x30,2(x1)
 1000228:	00010eb7          	lui	x29,0x10
 100022c:	f00e8e93          	addi	x29,x29,-256 # ff00 <_start-0xff0100>
 1000230:	05df1863          	bne	x30,x29,1000280 <fail>
 1000234:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000238:	00200293          	addi	x5,x0,2
 100023c:	fc521ce3          	bne	x4,x5,1000214 <test_17+0x8>

01000240 <test_18>:
 1000240:	00000297          	auipc	x5,0x0
 1000244:	08428293          	addi	x5,x5,132 # 10002c4 <tdat>
 1000248:	0002d103          	lhu	x2,0(x5)
 100024c:	00200113          	addi	x2,x0,2
 1000250:	00200e93          	addi	x29,x0,2
 1000254:	01200193          	addi	x3,x0,18
 1000258:	03d11463          	bne	x2,x29,1000280 <fail>

0100025c <test_19>:
 100025c:	00000297          	auipc	x5,0x0
 1000260:	06828293          	addi	x5,x5,104 # 10002c4 <tdat>
 1000264:	0002d103          	lhu	x2,0(x5)
 1000268:	00000013          	addi	x0,x0,0
 100026c:	00200113          	addi	x2,x0,2
 1000270:	00200e93          	addi	x29,x0,2
 1000274:	01300193          	addi	x3,x0,19
 1000278:	01d11463          	bne	x2,x29,1000280 <fail>
 100027c:	00301c63          	bne	x0,x3,1000294 <pass>

01000280 <fail>:
 1000280:	0ff0000f          	fence	iorw,iorw
 1000284:	00018063          	beq	x3,x0,1000284 <fail+0x4>
 1000288:	00119193          	slli	x3,x3,0x1
 100028c:	0011e193          	ori	x3,x3,1
 1000290:	00000073          	ecall

01000294 <pass>:
 1000294:	0ff0000f          	fence	iorw,iorw
 1000298:	00100193          	addi	x3,x0,1
 100029c:	00000073          	ecall
 10002a0:	c0001073          	unimp
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
