
output/rv32ui-p-slli:     file format elf32-littleriscv


Disassembly of section .text.init:

01000000 <_start>:
 1000000:	00100093          	addi	x1,x0,1
 1000004:	00009f13          	slli	x30,x1,0x0
 1000008:	00100e93          	addi	x29,x0,1
 100000c:	00200193          	addi	x3,x0,2
 1000010:	27df1a63          	bne	x30,x29,1000284 <fail>

01000014 <test_3>:
 1000014:	00100093          	addi	x1,x0,1
 1000018:	00109f13          	slli	x30,x1,0x1
 100001c:	00200e93          	addi	x29,x0,2
 1000020:	00300193          	addi	x3,x0,3
 1000024:	27df1063          	bne	x30,x29,1000284 <fail>

01000028 <test_4>:
 1000028:	00100093          	addi	x1,x0,1
 100002c:	00709f13          	slli	x30,x1,0x7
 1000030:	08000e93          	addi	x29,x0,128
 1000034:	00400193          	addi	x3,x0,4
 1000038:	25df1663          	bne	x30,x29,1000284 <fail>

0100003c <test_5>:
 100003c:	00100093          	addi	x1,x0,1
 1000040:	00e09f13          	slli	x30,x1,0xe
 1000044:	00004eb7          	lui	x29,0x4
 1000048:	00500193          	addi	x3,x0,5
 100004c:	23df1c63          	bne	x30,x29,1000284 <fail>

01000050 <test_6>:
 1000050:	00100093          	addi	x1,x0,1
 1000054:	01f09f13          	slli	x30,x1,0x1f
 1000058:	80000eb7          	lui	x29,0x80000
 100005c:	00600193          	addi	x3,x0,6
 1000060:	23df1263          	bne	x30,x29,1000284 <fail>

01000064 <test_7>:
 1000064:	fff00093          	addi	x1,x0,-1
 1000068:	00009f13          	slli	x30,x1,0x0
 100006c:	fff00e93          	addi	x29,x0,-1
 1000070:	00700193          	addi	x3,x0,7
 1000074:	21df1863          	bne	x30,x29,1000284 <fail>

01000078 <test_8>:
 1000078:	fff00093          	addi	x1,x0,-1
 100007c:	00109f13          	slli	x30,x1,0x1
 1000080:	ffe00e93          	addi	x29,x0,-2
 1000084:	00800193          	addi	x3,x0,8
 1000088:	1fdf1e63          	bne	x30,x29,1000284 <fail>

0100008c <test_9>:
 100008c:	fff00093          	addi	x1,x0,-1
 1000090:	00709f13          	slli	x30,x1,0x7
 1000094:	f8000e93          	addi	x29,x0,-128
 1000098:	00900193          	addi	x3,x0,9
 100009c:	1fdf1463          	bne	x30,x29,1000284 <fail>

010000a0 <test_10>:
 10000a0:	fff00093          	addi	x1,x0,-1
 10000a4:	00e09f13          	slli	x30,x1,0xe
 10000a8:	ffffceb7          	lui	x29,0xffffc
 10000ac:	00a00193          	addi	x3,x0,10
 10000b0:	1ddf1a63          	bne	x30,x29,1000284 <fail>

010000b4 <test_11>:
 10000b4:	fff00093          	addi	x1,x0,-1
 10000b8:	01f09f13          	slli	x30,x1,0x1f
 10000bc:	80000eb7          	lui	x29,0x80000
 10000c0:	00b00193          	addi	x3,x0,11
 10000c4:	1ddf1063          	bne	x30,x29,1000284 <fail>

010000c8 <test_12>:
 10000c8:	212120b7          	lui	x1,0x21212
 10000cc:	12108093          	addi	x1,x1,289 # 21212121 <begin_signature+0x20211dc1>
 10000d0:	00009f13          	slli	x30,x1,0x0
 10000d4:	21212eb7          	lui	x29,0x21212
 10000d8:	121e8e93          	addi	x29,x29,289 # 21212121 <begin_signature+0x20211dc1>
 10000dc:	00c00193          	addi	x3,x0,12
 10000e0:	1bdf1263          	bne	x30,x29,1000284 <fail>

010000e4 <test_13>:
 10000e4:	212120b7          	lui	x1,0x21212
 10000e8:	12108093          	addi	x1,x1,289 # 21212121 <begin_signature+0x20211dc1>
 10000ec:	00109f13          	slli	x30,x1,0x1
 10000f0:	42424eb7          	lui	x29,0x42424
 10000f4:	242e8e93          	addi	x29,x29,578 # 42424242 <begin_signature+0x41423ee2>
 10000f8:	00d00193          	addi	x3,x0,13
 10000fc:	19df1463          	bne	x30,x29,1000284 <fail>

01000100 <test_14>:
 1000100:	212120b7          	lui	x1,0x21212
 1000104:	12108093          	addi	x1,x1,289 # 21212121 <begin_signature+0x20211dc1>
 1000108:	00709f13          	slli	x30,x1,0x7
 100010c:	90909eb7          	lui	x29,0x90909
 1000110:	080e8e93          	addi	x29,x29,128 # 90909080 <begin_signature+0x8f908d20>
 1000114:	00e00193          	addi	x3,x0,14
 1000118:	17df1663          	bne	x30,x29,1000284 <fail>

0100011c <test_15>:
 100011c:	212120b7          	lui	x1,0x21212
 1000120:	12108093          	addi	x1,x1,289 # 21212121 <begin_signature+0x20211dc1>
 1000124:	00e09f13          	slli	x30,x1,0xe
 1000128:	48484eb7          	lui	x29,0x48484
 100012c:	00f00193          	addi	x3,x0,15
 1000130:	15df1a63          	bne	x30,x29,1000284 <fail>

01000134 <test_16>:
 1000134:	212120b7          	lui	x1,0x21212
 1000138:	12108093          	addi	x1,x1,289 # 21212121 <begin_signature+0x20211dc1>
 100013c:	01f09f13          	slli	x30,x1,0x1f
 1000140:	80000eb7          	lui	x29,0x80000
 1000144:	01000193          	addi	x3,x0,16
 1000148:	13df1e63          	bne	x30,x29,1000284 <fail>

0100014c <test_17>:
 100014c:	00100093          	addi	x1,x0,1
 1000150:	00709093          	slli	x1,x1,0x7
 1000154:	08000e93          	addi	x29,x0,128
 1000158:	01100193          	addi	x3,x0,17
 100015c:	13d09463          	bne	x1,x29,1000284 <fail>

01000160 <test_18>:
 1000160:	00000213          	addi	x4,x0,0
 1000164:	00100093          	addi	x1,x0,1
 1000168:	00709f13          	slli	x30,x1,0x7
 100016c:	000f0313          	addi	x6,x30,0
 1000170:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000174:	00200293          	addi	x5,x0,2
 1000178:	fe5216e3          	bne	x4,x5,1000164 <test_18+0x4>
 100017c:	08000e93          	addi	x29,x0,128
 1000180:	01200193          	addi	x3,x0,18
 1000184:	11d31063          	bne	x6,x29,1000284 <fail>

01000188 <test_19>:
 1000188:	00000213          	addi	x4,x0,0
 100018c:	00100093          	addi	x1,x0,1
 1000190:	00e09f13          	slli	x30,x1,0xe
 1000194:	00000013          	addi	x0,x0,0
 1000198:	000f0313          	addi	x6,x30,0
 100019c:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10001a0:	00200293          	addi	x5,x0,2
 10001a4:	fe5214e3          	bne	x4,x5,100018c <test_19+0x4>
 10001a8:	00004eb7          	lui	x29,0x4
 10001ac:	01300193          	addi	x3,x0,19
 10001b0:	0dd31a63          	bne	x6,x29,1000284 <fail>

010001b4 <test_20>:
 10001b4:	00000213          	addi	x4,x0,0
 10001b8:	00100093          	addi	x1,x0,1
 10001bc:	01f09f13          	slli	x30,x1,0x1f
 10001c0:	00000013          	addi	x0,x0,0
 10001c4:	00000013          	addi	x0,x0,0
 10001c8:	000f0313          	addi	x6,x30,0
 10001cc:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10001d0:	00200293          	addi	x5,x0,2
 10001d4:	fe5212e3          	bne	x4,x5,10001b8 <test_20+0x4>
 10001d8:	80000eb7          	lui	x29,0x80000
 10001dc:	01400193          	addi	x3,x0,20
 10001e0:	0bd31263          	bne	x6,x29,1000284 <fail>

010001e4 <test_21>:
 10001e4:	00000213          	addi	x4,x0,0
 10001e8:	00100093          	addi	x1,x0,1
 10001ec:	00709f13          	slli	x30,x1,0x7
 10001f0:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10001f4:	00200293          	addi	x5,x0,2
 10001f8:	fe5218e3          	bne	x4,x5,10001e8 <test_21+0x4>
 10001fc:	08000e93          	addi	x29,x0,128
 1000200:	01500193          	addi	x3,x0,21
 1000204:	09df1063          	bne	x30,x29,1000284 <fail>

01000208 <test_22>:
 1000208:	00000213          	addi	x4,x0,0
 100020c:	00100093          	addi	x1,x0,1
 1000210:	00000013          	addi	x0,x0,0
 1000214:	00e09f13          	slli	x30,x1,0xe
 1000218:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 100021c:	00200293          	addi	x5,x0,2
 1000220:	fe5216e3          	bne	x4,x5,100020c <test_22+0x4>
 1000224:	00004eb7          	lui	x29,0x4
 1000228:	01600193          	addi	x3,x0,22
 100022c:	05df1c63          	bne	x30,x29,1000284 <fail>

01000230 <test_23>:
 1000230:	00000213          	addi	x4,x0,0
 1000234:	00100093          	addi	x1,x0,1
 1000238:	00000013          	addi	x0,x0,0
 100023c:	00000013          	addi	x0,x0,0
 1000240:	01f09f13          	slli	x30,x1,0x1f
 1000244:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000248:	00200293          	addi	x5,x0,2
 100024c:	fe5214e3          	bne	x4,x5,1000234 <test_23+0x4>
 1000250:	80000eb7          	lui	x29,0x80000
 1000254:	01700193          	addi	x3,x0,23
 1000258:	03df1663          	bne	x30,x29,1000284 <fail>

0100025c <test_24>:
 100025c:	01f01093          	slli	x1,x0,0x1f
 1000260:	00000e93          	addi	x29,x0,0
 1000264:	01800193          	addi	x3,x0,24
 1000268:	01d09e63          	bne	x1,x29,1000284 <fail>

0100026c <test_25>:
 100026c:	02100093          	addi	x1,x0,33
 1000270:	01409013          	slli	x0,x1,0x14
 1000274:	00000e93          	addi	x29,x0,0
 1000278:	01900193          	addi	x3,x0,25
 100027c:	01d01463          	bne	x0,x29,1000284 <fail>
 1000280:	00301c63          	bne	x0,x3,1000298 <pass>

01000284 <fail>:
 1000284:	0ff0000f          	fence	iorw,iorw
 1000288:	00018063          	beq	x3,x0,1000288 <fail+0x4>
 100028c:	00119193          	slli	x3,x3,0x1
 1000290:	0011e193          	ori	x3,x3,1
 1000294:	00000073          	ecall

01000298 <pass>:
 1000298:	0ff0000f          	fence	iorw,iorw
 100029c:	00100193          	addi	x3,x0,1
 10002a0:	00000073          	ecall
 10002a4:	c0001073          	unimp
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

Disassembly of section .text:

01000350 <end_signature>:
 1000350:	0000                	c.unimp
 1000352:	0000                	c.unimp
