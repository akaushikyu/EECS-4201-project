
output/rv32ui-p-srai:     file format elf32-littleriscv


Disassembly of section .text.init:

01000000 <_start>:
 1000000:	00000093          	addi	x1,x0,0
 1000004:	4000df13          	srai	x30,x1,0x0
 1000008:	00000e93          	addi	x29,x0,0
 100000c:	00200193          	addi	x3,x0,2
 1000010:	2bdf1463          	bne	x30,x29,10002b8 <fail>

01000014 <test_3>:
 1000014:	800000b7          	lui	x1,0x80000
 1000018:	4010df13          	srai	x30,x1,0x1
 100001c:	c0000eb7          	lui	x29,0xc0000
 1000020:	00300193          	addi	x3,x0,3
 1000024:	29df1a63          	bne	x30,x29,10002b8 <fail>

01000028 <test_4>:
 1000028:	800000b7          	lui	x1,0x80000
 100002c:	4070df13          	srai	x30,x1,0x7
 1000030:	ff000eb7          	lui	x29,0xff000
 1000034:	00400193          	addi	x3,x0,4
 1000038:	29df1063          	bne	x30,x29,10002b8 <fail>

0100003c <test_5>:
 100003c:	800000b7          	lui	x1,0x80000
 1000040:	40e0df13          	srai	x30,x1,0xe
 1000044:	fffe0eb7          	lui	x29,0xfffe0
 1000048:	00500193          	addi	x3,x0,5
 100004c:	27df1663          	bne	x30,x29,10002b8 <fail>

01000050 <test_6>:
 1000050:	800000b7          	lui	x1,0x80000
 1000054:	00108093          	addi	x1,x1,1 # 80000001 <begin_signature+0x7efffc61>
 1000058:	41f0df13          	srai	x30,x1,0x1f
 100005c:	fff00e93          	addi	x29,x0,-1
 1000060:	00600193          	addi	x3,x0,6
 1000064:	25df1a63          	bne	x30,x29,10002b8 <fail>

01000068 <test_7>:
 1000068:	800000b7          	lui	x1,0x80000
 100006c:	fff08093          	addi	x1,x1,-1 # 7fffffff <begin_signature+0x7efffc5f>
 1000070:	4000df13          	srai	x30,x1,0x0
 1000074:	80000eb7          	lui	x29,0x80000
 1000078:	fffe8e93          	addi	x29,x29,-1 # 7fffffff <begin_signature+0x7efffc5f>
 100007c:	00700193          	addi	x3,x0,7
 1000080:	23df1c63          	bne	x30,x29,10002b8 <fail>

01000084 <test_8>:
 1000084:	800000b7          	lui	x1,0x80000
 1000088:	fff08093          	addi	x1,x1,-1 # 7fffffff <begin_signature+0x7efffc5f>
 100008c:	4010df13          	srai	x30,x1,0x1
 1000090:	40000eb7          	lui	x29,0x40000
 1000094:	fffe8e93          	addi	x29,x29,-1 # 3fffffff <begin_signature+0x3efffc5f>
 1000098:	00800193          	addi	x3,x0,8
 100009c:	21df1e63          	bne	x30,x29,10002b8 <fail>

010000a0 <test_9>:
 10000a0:	800000b7          	lui	x1,0x80000
 10000a4:	fff08093          	addi	x1,x1,-1 # 7fffffff <begin_signature+0x7efffc5f>
 10000a8:	4070df13          	srai	x30,x1,0x7
 10000ac:	01000eb7          	lui	x29,0x1000
 10000b0:	fffe8e93          	addi	x29,x29,-1 # ffffff <_start-0x1>
 10000b4:	00900193          	addi	x3,x0,9
 10000b8:	21df1063          	bne	x30,x29,10002b8 <fail>

010000bc <test_10>:
 10000bc:	800000b7          	lui	x1,0x80000
 10000c0:	fff08093          	addi	x1,x1,-1 # 7fffffff <begin_signature+0x7efffc5f>
 10000c4:	40e0df13          	srai	x30,x1,0xe
 10000c8:	00020eb7          	lui	x29,0x20
 10000cc:	fffe8e93          	addi	x29,x29,-1 # 1ffff <_start-0xfe0001>
 10000d0:	00a00193          	addi	x3,x0,10
 10000d4:	1fdf1263          	bne	x30,x29,10002b8 <fail>

010000d8 <test_11>:
 10000d8:	800000b7          	lui	x1,0x80000
 10000dc:	fff08093          	addi	x1,x1,-1 # 7fffffff <begin_signature+0x7efffc5f>
 10000e0:	41f0df13          	srai	x30,x1,0x1f
 10000e4:	00000e93          	addi	x29,x0,0
 10000e8:	00b00193          	addi	x3,x0,11
 10000ec:	1ddf1663          	bne	x30,x29,10002b8 <fail>

010000f0 <test_12>:
 10000f0:	818180b7          	lui	x1,0x81818
 10000f4:	18108093          	addi	x1,x1,385 # 81818181 <begin_signature+0x80817de1>
 10000f8:	4000df13          	srai	x30,x1,0x0
 10000fc:	81818eb7          	lui	x29,0x81818
 1000100:	181e8e93          	addi	x29,x29,385 # 81818181 <begin_signature+0x80817de1>
 1000104:	00c00193          	addi	x3,x0,12
 1000108:	1bdf1863          	bne	x30,x29,10002b8 <fail>

0100010c <test_13>:
 100010c:	818180b7          	lui	x1,0x81818
 1000110:	18108093          	addi	x1,x1,385 # 81818181 <begin_signature+0x80817de1>
 1000114:	4010df13          	srai	x30,x1,0x1
 1000118:	c0c0ceb7          	lui	x29,0xc0c0c
 100011c:	0c0e8e93          	addi	x29,x29,192 # c0c0c0c0 <begin_signature+0xbfc0bd20>
 1000120:	00d00193          	addi	x3,x0,13
 1000124:	19df1a63          	bne	x30,x29,10002b8 <fail>

01000128 <test_14>:
 1000128:	818180b7          	lui	x1,0x81818
 100012c:	18108093          	addi	x1,x1,385 # 81818181 <begin_signature+0x80817de1>
 1000130:	4070df13          	srai	x30,x1,0x7
 1000134:	ff030eb7          	lui	x29,0xff030
 1000138:	303e8e93          	addi	x29,x29,771 # ff030303 <begin_signature+0xfe02ff63>
 100013c:	00e00193          	addi	x3,x0,14
 1000140:	17df1c63          	bne	x30,x29,10002b8 <fail>

01000144 <test_15>:
 1000144:	818180b7          	lui	x1,0x81818
 1000148:	18108093          	addi	x1,x1,385 # 81818181 <begin_signature+0x80817de1>
 100014c:	40e0df13          	srai	x30,x1,0xe
 1000150:	fffe0eb7          	lui	x29,0xfffe0
 1000154:	606e8e93          	addi	x29,x29,1542 # fffe0606 <begin_signature+0xfefe0266>
 1000158:	00f00193          	addi	x3,x0,15
 100015c:	15df1e63          	bne	x30,x29,10002b8 <fail>

01000160 <test_16>:
 1000160:	818180b7          	lui	x1,0x81818
 1000164:	18108093          	addi	x1,x1,385 # 81818181 <begin_signature+0x80817de1>
 1000168:	41f0df13          	srai	x30,x1,0x1f
 100016c:	fff00e93          	addi	x29,x0,-1
 1000170:	01000193          	addi	x3,x0,16
 1000174:	15df1263          	bne	x30,x29,10002b8 <fail>

01000178 <test_17>:
 1000178:	800000b7          	lui	x1,0x80000
 100017c:	4070d093          	srai	x1,x1,0x7
 1000180:	ff000eb7          	lui	x29,0xff000
 1000184:	01100193          	addi	x3,x0,17
 1000188:	13d09863          	bne	x1,x29,10002b8 <fail>

0100018c <test_18>:
 100018c:	00000213          	addi	x4,x0,0
 1000190:	800000b7          	lui	x1,0x80000
 1000194:	4070df13          	srai	x30,x1,0x7
 1000198:	000f0313          	addi	x6,x30,0
 100019c:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10001a0:	00200293          	addi	x5,x0,2
 10001a4:	fe5216e3          	bne	x4,x5,1000190 <test_18+0x4>
 10001a8:	ff000eb7          	lui	x29,0xff000
 10001ac:	01200193          	addi	x3,x0,18
 10001b0:	11d31463          	bne	x6,x29,10002b8 <fail>

010001b4 <test_19>:
 10001b4:	00000213          	addi	x4,x0,0
 10001b8:	800000b7          	lui	x1,0x80000
 10001bc:	40e0df13          	srai	x30,x1,0xe
 10001c0:	00000013          	addi	x0,x0,0
 10001c4:	000f0313          	addi	x6,x30,0
 10001c8:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10001cc:	00200293          	addi	x5,x0,2
 10001d0:	fe5214e3          	bne	x4,x5,10001b8 <test_19+0x4>
 10001d4:	fffe0eb7          	lui	x29,0xfffe0
 10001d8:	01300193          	addi	x3,x0,19
 10001dc:	0dd31e63          	bne	x6,x29,10002b8 <fail>

010001e0 <test_20>:
 10001e0:	00000213          	addi	x4,x0,0
 10001e4:	800000b7          	lui	x1,0x80000
 10001e8:	00108093          	addi	x1,x1,1 # 80000001 <begin_signature+0x7efffc61>
 10001ec:	41f0df13          	srai	x30,x1,0x1f
 10001f0:	00000013          	addi	x0,x0,0
 10001f4:	00000013          	addi	x0,x0,0
 10001f8:	000f0313          	addi	x6,x30,0
 10001fc:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000200:	00200293          	addi	x5,x0,2
 1000204:	fe5210e3          	bne	x4,x5,10001e4 <test_20+0x4>
 1000208:	fff00e93          	addi	x29,x0,-1
 100020c:	01400193          	addi	x3,x0,20
 1000210:	0bd31463          	bne	x6,x29,10002b8 <fail>

01000214 <test_21>:
 1000214:	00000213          	addi	x4,x0,0
 1000218:	800000b7          	lui	x1,0x80000
 100021c:	4070df13          	srai	x30,x1,0x7
 1000220:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000224:	00200293          	addi	x5,x0,2
 1000228:	fe5218e3          	bne	x4,x5,1000218 <test_21+0x4>
 100022c:	ff000eb7          	lui	x29,0xff000
 1000230:	01500193          	addi	x3,x0,21
 1000234:	09df1263          	bne	x30,x29,10002b8 <fail>

01000238 <test_22>:
 1000238:	00000213          	addi	x4,x0,0
 100023c:	800000b7          	lui	x1,0x80000
 1000240:	00000013          	addi	x0,x0,0
 1000244:	40e0df13          	srai	x30,x1,0xe
 1000248:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 100024c:	00200293          	addi	x5,x0,2
 1000250:	fe5216e3          	bne	x4,x5,100023c <test_22+0x4>
 1000254:	fffe0eb7          	lui	x29,0xfffe0
 1000258:	01600193          	addi	x3,x0,22
 100025c:	05df1e63          	bne	x30,x29,10002b8 <fail>

01000260 <test_23>:
 1000260:	00000213          	addi	x4,x0,0
 1000264:	800000b7          	lui	x1,0x80000
 1000268:	00108093          	addi	x1,x1,1 # 80000001 <begin_signature+0x7efffc61>
 100026c:	00000013          	addi	x0,x0,0
 1000270:	00000013          	addi	x0,x0,0
 1000274:	41f0df13          	srai	x30,x1,0x1f
 1000278:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 100027c:	00200293          	addi	x5,x0,2
 1000280:	fe5212e3          	bne	x4,x5,1000264 <test_23+0x4>
 1000284:	fff00e93          	addi	x29,x0,-1
 1000288:	01700193          	addi	x3,x0,23
 100028c:	03df1663          	bne	x30,x29,10002b8 <fail>

01000290 <test_24>:
 1000290:	40405093          	srai	x1,x0,0x4
 1000294:	00000e93          	addi	x29,x0,0
 1000298:	01800193          	addi	x3,x0,24
 100029c:	01d09e63          	bne	x1,x29,10002b8 <fail>

010002a0 <test_25>:
 10002a0:	02100093          	addi	x1,x0,33
 10002a4:	40a0d013          	srai	x0,x1,0xa
 10002a8:	00000e93          	addi	x29,x0,0
 10002ac:	01900193          	addi	x3,x0,25
 10002b0:	01d01463          	bne	x0,x29,10002b8 <fail>
 10002b4:	00301c63          	bne	x0,x3,10002cc <pass>

010002b8 <fail>:
 10002b8:	0ff0000f          	fence	iorw,iorw
 10002bc:	00018063          	beq	x3,x0,10002bc <fail+0x4>
 10002c0:	00119193          	slli	x3,x3,0x1
 10002c4:	0011e193          	ori	x3,x3,1
 10002c8:	00000073          	ecall

010002cc <pass>:
 10002cc:	0ff0000f          	fence	iorw,iorw
 10002d0:	00100193          	addi	x3,x0,1
 10002d4:	00000073          	ecall
 10002d8:	c0001073          	unimp
 10002dc:	0000                	c.unimp
 10002de:	0000                	c.unimp
 10002e0:	0000                	c.unimp
 10002e2:	0000                	c.unimp
 10002e4:	0000                	c.unimp
 10002e6:	0000                	c.unimp
 10002e8:	0000                	c.unimp
 10002ea:	0000                	c.unimp
 10002ec:	0000                	c.unimp
 10002ee:	0000                	c.unimp
 10002f0:	0000                	c.unimp
 10002f2:	0000                	c.unimp
 10002f4:	0000                	c.unimp
 10002f6:	0000                	c.unimp
 10002f8:	0000                	c.unimp
 10002fa:	0000                	c.unimp
 10002fc:	0000                	c.unimp
 10002fe:	0000                	c.unimp
 1000300:	0000                	c.unimp
 1000302:	0000                	c.unimp

Disassembly of section .text:

01000390 <end_signature>:
 1000390:	0000                	c.unimp
 1000392:	0000                	c.unimp
