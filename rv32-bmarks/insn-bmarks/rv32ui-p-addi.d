
output/rv32ui-p-addi:     file format elf32-littleriscv


Disassembly of section .text.init:

01000000 <_start>:
 1000000:	00000093          	addi	x1,x0,0
 1000004:	00008f13          	addi	x30,x1,0
 1000008:	00000e93          	addi	x29,x0,0
 100000c:	00200193          	addi	x3,x0,2
 1000010:	27df1c63          	bne	x30,x29,1000288 <fail>

01000014 <test_3>:
 1000014:	00100093          	addi	x1,x0,1
 1000018:	00108f13          	addi	x30,x1,1
 100001c:	00200e93          	addi	x29,x0,2
 1000020:	00300193          	addi	x3,x0,3
 1000024:	27df1263          	bne	x30,x29,1000288 <fail>

01000028 <test_4>:
 1000028:	00300093          	addi	x1,x0,3
 100002c:	00708f13          	addi	x30,x1,7
 1000030:	00a00e93          	addi	x29,x0,10
 1000034:	00400193          	addi	x3,x0,4
 1000038:	25df1863          	bne	x30,x29,1000288 <fail>

0100003c <test_5>:
 100003c:	00000093          	addi	x1,x0,0
 1000040:	80008f13          	addi	x30,x1,-2048
 1000044:	80000e93          	addi	x29,x0,-2048
 1000048:	00500193          	addi	x3,x0,5
 100004c:	23df1e63          	bne	x30,x29,1000288 <fail>

01000050 <test_6>:
 1000050:	800000b7          	lui	x1,0x80000
 1000054:	00008f13          	addi	x30,x1,0 # 80000000 <begin_signature+0x7efffca0>
 1000058:	80000eb7          	lui	x29,0x80000
 100005c:	00600193          	addi	x3,x0,6
 1000060:	23df1463          	bne	x30,x29,1000288 <fail>

01000064 <test_7>:
 1000064:	800000b7          	lui	x1,0x80000
 1000068:	80008f13          	addi	x30,x1,-2048 # 7ffff800 <begin_signature+0x7efff4a0>
 100006c:	80000eb7          	lui	x29,0x80000
 1000070:	800e8e93          	addi	x29,x29,-2048 # 7ffff800 <begin_signature+0x7efff4a0>
 1000074:	00700193          	addi	x3,x0,7
 1000078:	21df1863          	bne	x30,x29,1000288 <fail>

0100007c <test_8>:
 100007c:	00000093          	addi	x1,x0,0
 1000080:	7ff08f13          	addi	x30,x1,2047
 1000084:	7ff00e93          	addi	x29,x0,2047
 1000088:	00800193          	addi	x3,x0,8
 100008c:	1fdf1e63          	bne	x30,x29,1000288 <fail>

01000090 <test_9>:
 1000090:	800000b7          	lui	x1,0x80000
 1000094:	fff08093          	addi	x1,x1,-1 # 7fffffff <begin_signature+0x7efffc9f>
 1000098:	00008f13          	addi	x30,x1,0
 100009c:	80000eb7          	lui	x29,0x80000
 10000a0:	fffe8e93          	addi	x29,x29,-1 # 7fffffff <begin_signature+0x7efffc9f>
 10000a4:	00900193          	addi	x3,x0,9
 10000a8:	1fdf1063          	bne	x30,x29,1000288 <fail>

010000ac <test_10>:
 10000ac:	800000b7          	lui	x1,0x80000
 10000b0:	fff08093          	addi	x1,x1,-1 # 7fffffff <begin_signature+0x7efffc9f>
 10000b4:	7ff08f13          	addi	x30,x1,2047
 10000b8:	80000eb7          	lui	x29,0x80000
 10000bc:	7fee8e93          	addi	x29,x29,2046 # 800007fe <begin_signature+0x7f00049e>
 10000c0:	00a00193          	addi	x3,x0,10
 10000c4:	1ddf1263          	bne	x30,x29,1000288 <fail>

010000c8 <test_11>:
 10000c8:	800000b7          	lui	x1,0x80000
 10000cc:	7ff08f13          	addi	x30,x1,2047 # 800007ff <begin_signature+0x7f00049f>
 10000d0:	80000eb7          	lui	x29,0x80000
 10000d4:	7ffe8e93          	addi	x29,x29,2047 # 800007ff <begin_signature+0x7f00049f>
 10000d8:	00b00193          	addi	x3,x0,11
 10000dc:	1bdf1663          	bne	x30,x29,1000288 <fail>

010000e0 <test_12>:
 10000e0:	800000b7          	lui	x1,0x80000
 10000e4:	fff08093          	addi	x1,x1,-1 # 7fffffff <begin_signature+0x7efffc9f>
 10000e8:	80008f13          	addi	x30,x1,-2048
 10000ec:	7ffffeb7          	lui	x29,0x7ffff
 10000f0:	7ffe8e93          	addi	x29,x29,2047 # 7ffff7ff <begin_signature+0x7efff49f>
 10000f4:	00c00193          	addi	x3,x0,12
 10000f8:	19df1863          	bne	x30,x29,1000288 <fail>

010000fc <test_13>:
 10000fc:	00000093          	addi	x1,x0,0
 1000100:	fff08f13          	addi	x30,x1,-1
 1000104:	fff00e93          	addi	x29,x0,-1
 1000108:	00d00193          	addi	x3,x0,13
 100010c:	17df1e63          	bne	x30,x29,1000288 <fail>

01000110 <test_14>:
 1000110:	fff00093          	addi	x1,x0,-1
 1000114:	00108f13          	addi	x30,x1,1
 1000118:	00000e93          	addi	x29,x0,0
 100011c:	00e00193          	addi	x3,x0,14
 1000120:	17df1463          	bne	x30,x29,1000288 <fail>

01000124 <test_15>:
 1000124:	fff00093          	addi	x1,x0,-1
 1000128:	fff08f13          	addi	x30,x1,-1
 100012c:	ffe00e93          	addi	x29,x0,-2
 1000130:	00f00193          	addi	x3,x0,15
 1000134:	15df1a63          	bne	x30,x29,1000288 <fail>

01000138 <test_16>:
 1000138:	800000b7          	lui	x1,0x80000
 100013c:	fff08093          	addi	x1,x1,-1 # 7fffffff <begin_signature+0x7efffc9f>
 1000140:	00108f13          	addi	x30,x1,1
 1000144:	80000eb7          	lui	x29,0x80000
 1000148:	01000193          	addi	x3,x0,16
 100014c:	13df1e63          	bne	x30,x29,1000288 <fail>

01000150 <test_17>:
 1000150:	00d00093          	addi	x1,x0,13
 1000154:	00b08093          	addi	x1,x1,11
 1000158:	01800e93          	addi	x29,x0,24
 100015c:	01100193          	addi	x3,x0,17
 1000160:	13d09463          	bne	x1,x29,1000288 <fail>

01000164 <test_18>:
 1000164:	00000213          	addi	x4,x0,0
 1000168:	00d00093          	addi	x1,x0,13
 100016c:	00b08f13          	addi	x30,x1,11
 1000170:	000f0313          	addi	x6,x30,0
 1000174:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000178:	00200293          	addi	x5,x0,2
 100017c:	fe5216e3          	bne	x4,x5,1000168 <test_18+0x4>
 1000180:	01800e93          	addi	x29,x0,24
 1000184:	01200193          	addi	x3,x0,18
 1000188:	11d31063          	bne	x6,x29,1000288 <fail>

0100018c <test_19>:
 100018c:	00000213          	addi	x4,x0,0
 1000190:	00d00093          	addi	x1,x0,13
 1000194:	00a08f13          	addi	x30,x1,10
 1000198:	00000013          	addi	x0,x0,0
 100019c:	000f0313          	addi	x6,x30,0
 10001a0:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10001a4:	00200293          	addi	x5,x0,2
 10001a8:	fe5214e3          	bne	x4,x5,1000190 <test_19+0x4>
 10001ac:	01700e93          	addi	x29,x0,23
 10001b0:	01300193          	addi	x3,x0,19
 10001b4:	0dd31a63          	bne	x6,x29,1000288 <fail>

010001b8 <test_20>:
 10001b8:	00000213          	addi	x4,x0,0
 10001bc:	00d00093          	addi	x1,x0,13
 10001c0:	00908f13          	addi	x30,x1,9
 10001c4:	00000013          	addi	x0,x0,0
 10001c8:	00000013          	addi	x0,x0,0
 10001cc:	000f0313          	addi	x6,x30,0
 10001d0:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10001d4:	00200293          	addi	x5,x0,2
 10001d8:	fe5212e3          	bne	x4,x5,10001bc <test_20+0x4>
 10001dc:	01600e93          	addi	x29,x0,22
 10001e0:	01400193          	addi	x3,x0,20
 10001e4:	0bd31263          	bne	x6,x29,1000288 <fail>

010001e8 <test_21>:
 10001e8:	00000213          	addi	x4,x0,0
 10001ec:	00d00093          	addi	x1,x0,13
 10001f0:	00b08f13          	addi	x30,x1,11
 10001f4:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10001f8:	00200293          	addi	x5,x0,2
 10001fc:	fe5218e3          	bne	x4,x5,10001ec <test_21+0x4>
 1000200:	01800e93          	addi	x29,x0,24
 1000204:	01500193          	addi	x3,x0,21
 1000208:	09df1063          	bne	x30,x29,1000288 <fail>

0100020c <test_22>:
 100020c:	00000213          	addi	x4,x0,0
 1000210:	00d00093          	addi	x1,x0,13
 1000214:	00000013          	addi	x0,x0,0
 1000218:	00a08f13          	addi	x30,x1,10
 100021c:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000220:	00200293          	addi	x5,x0,2
 1000224:	fe5216e3          	bne	x4,x5,1000210 <test_22+0x4>
 1000228:	01700e93          	addi	x29,x0,23
 100022c:	01600193          	addi	x3,x0,22
 1000230:	05df1c63          	bne	x30,x29,1000288 <fail>

01000234 <test_23>:
 1000234:	00000213          	addi	x4,x0,0
 1000238:	00d00093          	addi	x1,x0,13
 100023c:	00000013          	addi	x0,x0,0
 1000240:	00000013          	addi	x0,x0,0
 1000244:	00908f13          	addi	x30,x1,9
 1000248:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 100024c:	00200293          	addi	x5,x0,2
 1000250:	fe5214e3          	bne	x4,x5,1000238 <test_23+0x4>
 1000254:	01600e93          	addi	x29,x0,22
 1000258:	01700193          	addi	x3,x0,23
 100025c:	03df1663          	bne	x30,x29,1000288 <fail>

01000260 <test_24>:
 1000260:	02000093          	addi	x1,x0,32
 1000264:	02000e93          	addi	x29,x0,32
 1000268:	01800193          	addi	x3,x0,24
 100026c:	01d09e63          	bne	x1,x29,1000288 <fail>

01000270 <test_25>:
 1000270:	02100093          	addi	x1,x0,33
 1000274:	03208013          	addi	x0,x1,50
 1000278:	00000e93          	addi	x29,x0,0
 100027c:	01900193          	addi	x3,x0,25
 1000280:	01d01463          	bne	x0,x29,1000288 <fail>
 1000284:	00301c63          	bne	x0,x3,100029c <pass>

01000288 <fail>:
 1000288:	0ff0000f          	fence	iorw,iorw
 100028c:	00018063          	beq	x3,x0,100028c <fail+0x4>
 1000290:	00119193          	slli	x3,x3,0x1
 1000294:	0011e193          	ori	x3,x3,1
 1000298:	00000073          	ecall

0100029c <pass>:
 100029c:	0ff0000f          	fence	iorw,iorw
 10002a0:	00100193          	addi	x3,x0,1
 10002a4:	00000073          	ecall
 10002a8:	c0001073          	unimp
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
