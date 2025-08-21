
output/rv32ui-p-srli:     file format elf32-littleriscv


Disassembly of section .text.init:

01000000 <_start>:
 1000000:	800000b7          	lui	x1,0x80000
 1000004:	0000df13          	srli	x30,x1,0x0
 1000008:	80000eb7          	lui	x29,0x80000
 100000c:	00200193          	addi	x3,x0,2
 1000010:	29df1863          	bne	x30,x29,10002a0 <fail>

01000014 <test_3>:
 1000014:	800000b7          	lui	x1,0x80000
 1000018:	0010df13          	srli	x30,x1,0x1
 100001c:	40000eb7          	lui	x29,0x40000
 1000020:	00300193          	addi	x3,x0,3
 1000024:	27df1e63          	bne	x30,x29,10002a0 <fail>

01000028 <test_4>:
 1000028:	800000b7          	lui	x1,0x80000
 100002c:	0070df13          	srli	x30,x1,0x7
 1000030:	01000eb7          	lui	x29,0x1000
 1000034:	00400193          	addi	x3,x0,4
 1000038:	27df1463          	bne	x30,x29,10002a0 <fail>

0100003c <test_5>:
 100003c:	800000b7          	lui	x1,0x80000
 1000040:	00e0df13          	srli	x30,x1,0xe
 1000044:	00020eb7          	lui	x29,0x20
 1000048:	00500193          	addi	x3,x0,5
 100004c:	25df1a63          	bne	x30,x29,10002a0 <fail>

01000050 <test_6>:
 1000050:	800000b7          	lui	x1,0x80000
 1000054:	00108093          	addi	x1,x1,1 # 80000001 <begin_signature+0x7efffca1>
 1000058:	01f0df13          	srli	x30,x1,0x1f
 100005c:	00100e93          	addi	x29,x0,1
 1000060:	00600193          	addi	x3,x0,6
 1000064:	23df1e63          	bne	x30,x29,10002a0 <fail>

01000068 <test_7>:
 1000068:	fff00093          	addi	x1,x0,-1
 100006c:	0000df13          	srli	x30,x1,0x0
 1000070:	fff00e93          	addi	x29,x0,-1
 1000074:	00700193          	addi	x3,x0,7
 1000078:	23df1463          	bne	x30,x29,10002a0 <fail>

0100007c <test_8>:
 100007c:	fff00093          	addi	x1,x0,-1
 1000080:	0010df13          	srli	x30,x1,0x1
 1000084:	80000eb7          	lui	x29,0x80000
 1000088:	fffe8e93          	addi	x29,x29,-1 # 7fffffff <begin_signature+0x7efffc9f>
 100008c:	00800193          	addi	x3,x0,8
 1000090:	21df1863          	bne	x30,x29,10002a0 <fail>

01000094 <test_9>:
 1000094:	fff00093          	addi	x1,x0,-1
 1000098:	0070df13          	srli	x30,x1,0x7
 100009c:	02000eb7          	lui	x29,0x2000
 10000a0:	fffe8e93          	addi	x29,x29,-1 # 1ffffff <begin_signature+0xfffc9f>
 10000a4:	00900193          	addi	x3,x0,9
 10000a8:	1fdf1c63          	bne	x30,x29,10002a0 <fail>

010000ac <test_10>:
 10000ac:	fff00093          	addi	x1,x0,-1
 10000b0:	00e0df13          	srli	x30,x1,0xe
 10000b4:	00040eb7          	lui	x29,0x40
 10000b8:	fffe8e93          	addi	x29,x29,-1 # 3ffff <_start-0xfc0001>
 10000bc:	00a00193          	addi	x3,x0,10
 10000c0:	1fdf1063          	bne	x30,x29,10002a0 <fail>

010000c4 <test_11>:
 10000c4:	fff00093          	addi	x1,x0,-1
 10000c8:	01f0df13          	srli	x30,x1,0x1f
 10000cc:	00100e93          	addi	x29,x0,1
 10000d0:	00b00193          	addi	x3,x0,11
 10000d4:	1ddf1663          	bne	x30,x29,10002a0 <fail>

010000d8 <test_12>:
 10000d8:	212120b7          	lui	x1,0x21212
 10000dc:	12108093          	addi	x1,x1,289 # 21212121 <begin_signature+0x20211dc1>
 10000e0:	0000df13          	srli	x30,x1,0x0
 10000e4:	21212eb7          	lui	x29,0x21212
 10000e8:	121e8e93          	addi	x29,x29,289 # 21212121 <begin_signature+0x20211dc1>
 10000ec:	00c00193          	addi	x3,x0,12
 10000f0:	1bdf1863          	bne	x30,x29,10002a0 <fail>

010000f4 <test_13>:
 10000f4:	212120b7          	lui	x1,0x21212
 10000f8:	12108093          	addi	x1,x1,289 # 21212121 <begin_signature+0x20211dc1>
 10000fc:	0010df13          	srli	x30,x1,0x1
 1000100:	10909eb7          	lui	x29,0x10909
 1000104:	090e8e93          	addi	x29,x29,144 # 10909090 <begin_signature+0xf908d30>
 1000108:	00d00193          	addi	x3,x0,13
 100010c:	19df1a63          	bne	x30,x29,10002a0 <fail>

01000110 <test_14>:
 1000110:	212120b7          	lui	x1,0x21212
 1000114:	12108093          	addi	x1,x1,289 # 21212121 <begin_signature+0x20211dc1>
 1000118:	0070df13          	srli	x30,x1,0x7
 100011c:	00424eb7          	lui	x29,0x424
 1000120:	242e8e93          	addi	x29,x29,578 # 424242 <_start-0xbdbdbe>
 1000124:	00e00193          	addi	x3,x0,14
 1000128:	17df1c63          	bne	x30,x29,10002a0 <fail>

0100012c <test_15>:
 100012c:	212120b7          	lui	x1,0x21212
 1000130:	12108093          	addi	x1,x1,289 # 21212121 <begin_signature+0x20211dc1>
 1000134:	00e0df13          	srli	x30,x1,0xe
 1000138:	00008eb7          	lui	x29,0x8
 100013c:	484e8e93          	addi	x29,x29,1156 # 8484 <_start-0xff7b7c>
 1000140:	00f00193          	addi	x3,x0,15
 1000144:	15df1e63          	bne	x30,x29,10002a0 <fail>

01000148 <test_16>:
 1000148:	212120b7          	lui	x1,0x21212
 100014c:	12108093          	addi	x1,x1,289 # 21212121 <begin_signature+0x20211dc1>
 1000150:	01f0df13          	srli	x30,x1,0x1f
 1000154:	00000e93          	addi	x29,x0,0
 1000158:	01000193          	addi	x3,x0,16
 100015c:	15df1263          	bne	x30,x29,10002a0 <fail>

01000160 <test_17>:
 1000160:	800000b7          	lui	x1,0x80000
 1000164:	0070d093          	srli	x1,x1,0x7
 1000168:	01000eb7          	lui	x29,0x1000
 100016c:	01100193          	addi	x3,x0,17
 1000170:	13d09863          	bne	x1,x29,10002a0 <fail>

01000174 <test_18>:
 1000174:	00000213          	addi	x4,x0,0
 1000178:	800000b7          	lui	x1,0x80000
 100017c:	0070df13          	srli	x30,x1,0x7
 1000180:	000f0313          	addi	x6,x30,0
 1000184:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000188:	00200293          	addi	x5,x0,2
 100018c:	fe5216e3          	bne	x4,x5,1000178 <test_18+0x4>
 1000190:	01000eb7          	lui	x29,0x1000
 1000194:	01200193          	addi	x3,x0,18
 1000198:	11d31463          	bne	x6,x29,10002a0 <fail>

0100019c <test_19>:
 100019c:	00000213          	addi	x4,x0,0
 10001a0:	800000b7          	lui	x1,0x80000
 10001a4:	00e0df13          	srli	x30,x1,0xe
 10001a8:	00000013          	addi	x0,x0,0
 10001ac:	000f0313          	addi	x6,x30,0
 10001b0:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10001b4:	00200293          	addi	x5,x0,2
 10001b8:	fe5214e3          	bne	x4,x5,10001a0 <test_19+0x4>
 10001bc:	00020eb7          	lui	x29,0x20
 10001c0:	01300193          	addi	x3,x0,19
 10001c4:	0dd31e63          	bne	x6,x29,10002a0 <fail>

010001c8 <test_20>:
 10001c8:	00000213          	addi	x4,x0,0
 10001cc:	800000b7          	lui	x1,0x80000
 10001d0:	00108093          	addi	x1,x1,1 # 80000001 <begin_signature+0x7efffca1>
 10001d4:	01f0df13          	srli	x30,x1,0x1f
 10001d8:	00000013          	addi	x0,x0,0
 10001dc:	00000013          	addi	x0,x0,0
 10001e0:	000f0313          	addi	x6,x30,0
 10001e4:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10001e8:	00200293          	addi	x5,x0,2
 10001ec:	fe5210e3          	bne	x4,x5,10001cc <test_20+0x4>
 10001f0:	00100e93          	addi	x29,x0,1
 10001f4:	01400193          	addi	x3,x0,20
 10001f8:	0bd31463          	bne	x6,x29,10002a0 <fail>

010001fc <test_21>:
 10001fc:	00000213          	addi	x4,x0,0
 1000200:	800000b7          	lui	x1,0x80000
 1000204:	0070df13          	srli	x30,x1,0x7
 1000208:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 100020c:	00200293          	addi	x5,x0,2
 1000210:	fe5218e3          	bne	x4,x5,1000200 <test_21+0x4>
 1000214:	01000eb7          	lui	x29,0x1000
 1000218:	01500193          	addi	x3,x0,21
 100021c:	09df1263          	bne	x30,x29,10002a0 <fail>

01000220 <test_22>:
 1000220:	00000213          	addi	x4,x0,0
 1000224:	800000b7          	lui	x1,0x80000
 1000228:	00000013          	addi	x0,x0,0
 100022c:	00e0df13          	srli	x30,x1,0xe
 1000230:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000234:	00200293          	addi	x5,x0,2
 1000238:	fe5216e3          	bne	x4,x5,1000224 <test_22+0x4>
 100023c:	00020eb7          	lui	x29,0x20
 1000240:	01600193          	addi	x3,x0,22
 1000244:	05df1e63          	bne	x30,x29,10002a0 <fail>

01000248 <test_23>:
 1000248:	00000213          	addi	x4,x0,0
 100024c:	800000b7          	lui	x1,0x80000
 1000250:	00108093          	addi	x1,x1,1 # 80000001 <begin_signature+0x7efffca1>
 1000254:	00000013          	addi	x0,x0,0
 1000258:	00000013          	addi	x0,x0,0
 100025c:	01f0df13          	srli	x30,x1,0x1f
 1000260:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000264:	00200293          	addi	x5,x0,2
 1000268:	fe5212e3          	bne	x4,x5,100024c <test_23+0x4>
 100026c:	00100e93          	addi	x29,x0,1
 1000270:	01700193          	addi	x3,x0,23
 1000274:	03df1663          	bne	x30,x29,10002a0 <fail>

01000278 <test_24>:
 1000278:	00405093          	srli	x1,x0,0x4
 100027c:	00000e93          	addi	x29,x0,0
 1000280:	01800193          	addi	x3,x0,24
 1000284:	01d09e63          	bne	x1,x29,10002a0 <fail>

01000288 <test_25>:
 1000288:	02100093          	addi	x1,x0,33
 100028c:	00a0d013          	srli	x0,x1,0xa
 1000290:	00000e93          	addi	x29,x0,0
 1000294:	01900193          	addi	x3,x0,25
 1000298:	01d01463          	bne	x0,x29,10002a0 <fail>
 100029c:	00301c63          	bne	x0,x3,10002b4 <pass>

010002a0 <fail>:
 10002a0:	0ff0000f          	fence	iorw,iorw
 10002a4:	00018063          	beq	x3,x0,10002a4 <fail+0x4>
 10002a8:	00119193          	slli	x3,x3,0x1
 10002ac:	0011e193          	ori	x3,x3,1
 10002b0:	00000073          	ecall

010002b4 <pass>:
 10002b4:	0ff0000f          	fence	iorw,iorw
 10002b8:	00100193          	addi	x3,x0,1
 10002bc:	00000073          	ecall
 10002c0:	c0001073          	unimp

Disassembly of section .text:

01000350 <end_signature>:
 1000350:	0000                	c.unimp
 1000352:	0000                	c.unimp
