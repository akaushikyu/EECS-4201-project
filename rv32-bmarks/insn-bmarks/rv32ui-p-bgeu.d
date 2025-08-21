
output/rv32ui-p-bgeu:     file format elf32-littleriscv


Disassembly of section .text.init:

01000000 <_start>:
 1000000:	00200193          	addi	x3,x0,2
 1000004:	00000093          	addi	x1,x0,0
 1000008:	00000113          	addi	x2,x0,0
 100000c:	0020f663          	bgeu	x1,x2,1000018 <_start+0x18>
 1000010:	34301263          	bne	x0,x3,1000354 <fail>
 1000014:	00301663          	bne	x0,x3,1000020 <test_3>
 1000018:	fe20fee3          	bgeu	x1,x2,1000014 <_start+0x14>
 100001c:	32301c63          	bne	x0,x3,1000354 <fail>

01000020 <test_3>:
 1000020:	00300193          	addi	x3,x0,3
 1000024:	00100093          	addi	x1,x0,1
 1000028:	00100113          	addi	x2,x0,1
 100002c:	0020f663          	bgeu	x1,x2,1000038 <test_3+0x18>
 1000030:	32301263          	bne	x0,x3,1000354 <fail>
 1000034:	00301663          	bne	x0,x3,1000040 <test_4>
 1000038:	fe20fee3          	bgeu	x1,x2,1000034 <test_3+0x14>
 100003c:	30301c63          	bne	x0,x3,1000354 <fail>

01000040 <test_4>:
 1000040:	00400193          	addi	x3,x0,4
 1000044:	fff00093          	addi	x1,x0,-1
 1000048:	fff00113          	addi	x2,x0,-1
 100004c:	0020f663          	bgeu	x1,x2,1000058 <test_4+0x18>
 1000050:	30301263          	bne	x0,x3,1000354 <fail>
 1000054:	00301663          	bne	x0,x3,1000060 <test_5>
 1000058:	fe20fee3          	bgeu	x1,x2,1000054 <test_4+0x14>
 100005c:	2e301c63          	bne	x0,x3,1000354 <fail>

01000060 <test_5>:
 1000060:	00500193          	addi	x3,x0,5
 1000064:	00100093          	addi	x1,x0,1
 1000068:	00000113          	addi	x2,x0,0
 100006c:	0020f663          	bgeu	x1,x2,1000078 <test_5+0x18>
 1000070:	2e301263          	bne	x0,x3,1000354 <fail>
 1000074:	00301663          	bne	x0,x3,1000080 <test_6>
 1000078:	fe20fee3          	bgeu	x1,x2,1000074 <test_5+0x14>
 100007c:	2c301c63          	bne	x0,x3,1000354 <fail>

01000080 <test_6>:
 1000080:	00600193          	addi	x3,x0,6
 1000084:	fff00093          	addi	x1,x0,-1
 1000088:	ffe00113          	addi	x2,x0,-2
 100008c:	0020f663          	bgeu	x1,x2,1000098 <test_6+0x18>
 1000090:	2c301263          	bne	x0,x3,1000354 <fail>
 1000094:	00301663          	bne	x0,x3,10000a0 <test_7>
 1000098:	fe20fee3          	bgeu	x1,x2,1000094 <test_6+0x14>
 100009c:	2a301c63          	bne	x0,x3,1000354 <fail>

010000a0 <test_7>:
 10000a0:	00700193          	addi	x3,x0,7
 10000a4:	fff00093          	addi	x1,x0,-1
 10000a8:	00000113          	addi	x2,x0,0
 10000ac:	0020f663          	bgeu	x1,x2,10000b8 <test_7+0x18>
 10000b0:	2a301263          	bne	x0,x3,1000354 <fail>
 10000b4:	00301663          	bne	x0,x3,10000c0 <test_8>
 10000b8:	fe20fee3          	bgeu	x1,x2,10000b4 <test_7+0x14>
 10000bc:	28301c63          	bne	x0,x3,1000354 <fail>

010000c0 <test_8>:
 10000c0:	00800193          	addi	x3,x0,8
 10000c4:	00000093          	addi	x1,x0,0
 10000c8:	00100113          	addi	x2,x0,1
 10000cc:	0020f463          	bgeu	x1,x2,10000d4 <test_8+0x14>
 10000d0:	00301463          	bne	x0,x3,10000d8 <test_8+0x18>
 10000d4:	28301063          	bne	x0,x3,1000354 <fail>
 10000d8:	fe20fee3          	bgeu	x1,x2,10000d4 <test_8+0x14>

010000dc <test_9>:
 10000dc:	00900193          	addi	x3,x0,9
 10000e0:	ffe00093          	addi	x1,x0,-2
 10000e4:	fff00113          	addi	x2,x0,-1
 10000e8:	0020f463          	bgeu	x1,x2,10000f0 <test_9+0x14>
 10000ec:	00301463          	bne	x0,x3,10000f4 <test_9+0x18>
 10000f0:	26301263          	bne	x0,x3,1000354 <fail>
 10000f4:	fe20fee3          	bgeu	x1,x2,10000f0 <test_9+0x14>

010000f8 <test_10>:
 10000f8:	00a00193          	addi	x3,x0,10
 10000fc:	00000093          	addi	x1,x0,0
 1000100:	fff00113          	addi	x2,x0,-1
 1000104:	0020f463          	bgeu	x1,x2,100010c <test_10+0x14>
 1000108:	00301463          	bne	x0,x3,1000110 <test_10+0x18>
 100010c:	24301463          	bne	x0,x3,1000354 <fail>
 1000110:	fe20fee3          	bgeu	x1,x2,100010c <test_10+0x14>

01000114 <test_11>:
 1000114:	00b00193          	addi	x3,x0,11
 1000118:	800000b7          	lui	x1,0x80000
 100011c:	fff08093          	addi	x1,x1,-1 # 7fffffff <begin_signature+0x7efffbdf>
 1000120:	80000137          	lui	x2,0x80000
 1000124:	0020f463          	bgeu	x1,x2,100012c <test_11+0x18>
 1000128:	00301463          	bne	x0,x3,1000130 <test_11+0x1c>
 100012c:	22301463          	bne	x0,x3,1000354 <fail>
 1000130:	fe20fee3          	bgeu	x1,x2,100012c <test_11+0x18>

01000134 <test_12>:
 1000134:	00c00193          	addi	x3,x0,12
 1000138:	00000213          	addi	x4,x0,0
 100013c:	f00000b7          	lui	x1,0xf0000
 1000140:	fff08093          	addi	x1,x1,-1 # efffffff <begin_signature+0xeefffbdf>
 1000144:	f0000137          	lui	x2,0xf0000
 1000148:	2020f663          	bgeu	x1,x2,1000354 <fail>
 100014c:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000150:	00200293          	addi	x5,x0,2
 1000154:	fe5214e3          	bne	x4,x5,100013c <test_12+0x8>

01000158 <test_13>:
 1000158:	00d00193          	addi	x3,x0,13
 100015c:	00000213          	addi	x4,x0,0
 1000160:	f00000b7          	lui	x1,0xf0000
 1000164:	fff08093          	addi	x1,x1,-1 # efffffff <begin_signature+0xeefffbdf>
 1000168:	f0000137          	lui	x2,0xf0000
 100016c:	00000013          	addi	x0,x0,0
 1000170:	1e20f263          	bgeu	x1,x2,1000354 <fail>
 1000174:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000178:	00200293          	addi	x5,x0,2
 100017c:	fe5212e3          	bne	x4,x5,1000160 <test_13+0x8>

01000180 <test_14>:
 1000180:	00e00193          	addi	x3,x0,14
 1000184:	00000213          	addi	x4,x0,0
 1000188:	f00000b7          	lui	x1,0xf0000
 100018c:	fff08093          	addi	x1,x1,-1 # efffffff <begin_signature+0xeefffbdf>
 1000190:	f0000137          	lui	x2,0xf0000
 1000194:	00000013          	addi	x0,x0,0
 1000198:	00000013          	addi	x0,x0,0
 100019c:	1a20fc63          	bgeu	x1,x2,1000354 <fail>
 10001a0:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10001a4:	00200293          	addi	x5,x0,2
 10001a8:	fe5210e3          	bne	x4,x5,1000188 <test_14+0x8>

010001ac <test_15>:
 10001ac:	00f00193          	addi	x3,x0,15
 10001b0:	00000213          	addi	x4,x0,0
 10001b4:	f00000b7          	lui	x1,0xf0000
 10001b8:	fff08093          	addi	x1,x1,-1 # efffffff <begin_signature+0xeefffbdf>
 10001bc:	00000013          	addi	x0,x0,0
 10001c0:	f0000137          	lui	x2,0xf0000
 10001c4:	1820f863          	bgeu	x1,x2,1000354 <fail>
 10001c8:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10001cc:	00200293          	addi	x5,x0,2
 10001d0:	fe5212e3          	bne	x4,x5,10001b4 <test_15+0x8>

010001d4 <test_16>:
 10001d4:	01000193          	addi	x3,x0,16
 10001d8:	00000213          	addi	x4,x0,0
 10001dc:	f00000b7          	lui	x1,0xf0000
 10001e0:	fff08093          	addi	x1,x1,-1 # efffffff <begin_signature+0xeefffbdf>
 10001e4:	00000013          	addi	x0,x0,0
 10001e8:	f0000137          	lui	x2,0xf0000
 10001ec:	00000013          	addi	x0,x0,0
 10001f0:	1620f263          	bgeu	x1,x2,1000354 <fail>
 10001f4:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10001f8:	00200293          	addi	x5,x0,2
 10001fc:	fe5210e3          	bne	x4,x5,10001dc <test_16+0x8>

01000200 <test_17>:
 1000200:	01100193          	addi	x3,x0,17
 1000204:	00000213          	addi	x4,x0,0
 1000208:	f00000b7          	lui	x1,0xf0000
 100020c:	fff08093          	addi	x1,x1,-1 # efffffff <begin_signature+0xeefffbdf>
 1000210:	00000013          	addi	x0,x0,0
 1000214:	00000013          	addi	x0,x0,0
 1000218:	f0000137          	lui	x2,0xf0000
 100021c:	1220fc63          	bgeu	x1,x2,1000354 <fail>
 1000220:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000224:	00200293          	addi	x5,x0,2
 1000228:	fe5210e3          	bne	x4,x5,1000208 <test_17+0x8>

0100022c <test_18>:
 100022c:	01200193          	addi	x3,x0,18
 1000230:	00000213          	addi	x4,x0,0
 1000234:	f00000b7          	lui	x1,0xf0000
 1000238:	fff08093          	addi	x1,x1,-1 # efffffff <begin_signature+0xeefffbdf>
 100023c:	f0000137          	lui	x2,0xf0000
 1000240:	1020fa63          	bgeu	x1,x2,1000354 <fail>
 1000244:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000248:	00200293          	addi	x5,x0,2
 100024c:	fe5214e3          	bne	x4,x5,1000234 <test_18+0x8>

01000250 <test_19>:
 1000250:	01300193          	addi	x3,x0,19
 1000254:	00000213          	addi	x4,x0,0
 1000258:	f00000b7          	lui	x1,0xf0000
 100025c:	fff08093          	addi	x1,x1,-1 # efffffff <begin_signature+0xeefffbdf>
 1000260:	f0000137          	lui	x2,0xf0000
 1000264:	00000013          	addi	x0,x0,0
 1000268:	0e20f663          	bgeu	x1,x2,1000354 <fail>
 100026c:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000270:	00200293          	addi	x5,x0,2
 1000274:	fe5212e3          	bne	x4,x5,1000258 <test_19+0x8>

01000278 <test_20>:
 1000278:	01400193          	addi	x3,x0,20
 100027c:	00000213          	addi	x4,x0,0
 1000280:	f00000b7          	lui	x1,0xf0000
 1000284:	fff08093          	addi	x1,x1,-1 # efffffff <begin_signature+0xeefffbdf>
 1000288:	f0000137          	lui	x2,0xf0000
 100028c:	00000013          	addi	x0,x0,0
 1000290:	00000013          	addi	x0,x0,0
 1000294:	0c20f063          	bgeu	x1,x2,1000354 <fail>
 1000298:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 100029c:	00200293          	addi	x5,x0,2
 10002a0:	fe5210e3          	bne	x4,x5,1000280 <test_20+0x8>

010002a4 <test_21>:
 10002a4:	01500193          	addi	x3,x0,21
 10002a8:	00000213          	addi	x4,x0,0
 10002ac:	f00000b7          	lui	x1,0xf0000
 10002b0:	fff08093          	addi	x1,x1,-1 # efffffff <begin_signature+0xeefffbdf>
 10002b4:	00000013          	addi	x0,x0,0
 10002b8:	f0000137          	lui	x2,0xf0000
 10002bc:	0820fc63          	bgeu	x1,x2,1000354 <fail>
 10002c0:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10002c4:	00200293          	addi	x5,x0,2
 10002c8:	fe5212e3          	bne	x4,x5,10002ac <test_21+0x8>

010002cc <test_22>:
 10002cc:	01600193          	addi	x3,x0,22
 10002d0:	00000213          	addi	x4,x0,0
 10002d4:	f00000b7          	lui	x1,0xf0000
 10002d8:	fff08093          	addi	x1,x1,-1 # efffffff <begin_signature+0xeefffbdf>
 10002dc:	00000013          	addi	x0,x0,0
 10002e0:	f0000137          	lui	x2,0xf0000
 10002e4:	00000013          	addi	x0,x0,0
 10002e8:	0620f663          	bgeu	x1,x2,1000354 <fail>
 10002ec:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10002f0:	00200293          	addi	x5,x0,2
 10002f4:	fe5210e3          	bne	x4,x5,10002d4 <test_22+0x8>

010002f8 <test_23>:
 10002f8:	01700193          	addi	x3,x0,23
 10002fc:	00000213          	addi	x4,x0,0
 1000300:	f00000b7          	lui	x1,0xf0000
 1000304:	fff08093          	addi	x1,x1,-1 # efffffff <begin_signature+0xeefffbdf>
 1000308:	00000013          	addi	x0,x0,0
 100030c:	00000013          	addi	x0,x0,0
 1000310:	f0000137          	lui	x2,0xf0000
 1000314:	0420f063          	bgeu	x1,x2,1000354 <fail>
 1000318:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 100031c:	00200293          	addi	x5,x0,2
 1000320:	fe5210e3          	bne	x4,x5,1000300 <test_23+0x8>

01000324 <test_24>:
 1000324:	00100093          	addi	x1,x0,1
 1000328:	0000fa63          	bgeu	x1,x0,100033c <test_24+0x18>
 100032c:	00108093          	addi	x1,x1,1
 1000330:	00108093          	addi	x1,x1,1
 1000334:	00108093          	addi	x1,x1,1
 1000338:	00108093          	addi	x1,x1,1
 100033c:	00108093          	addi	x1,x1,1
 1000340:	00108093          	addi	x1,x1,1
 1000344:	00300e93          	addi	x29,x0,3
 1000348:	01800193          	addi	x3,x0,24
 100034c:	01d09463          	bne	x1,x29,1000354 <fail>
 1000350:	00301c63          	bne	x0,x3,1000368 <pass>

01000354 <fail>:
 1000354:	0ff0000f          	fence	iorw,iorw
 1000358:	00018063          	beq	x3,x0,1000358 <fail+0x4>
 100035c:	00119193          	slli	x3,x3,0x1
 1000360:	0011e193          	ori	x3,x3,1
 1000364:	00000073          	ecall

01000368 <pass>:
 1000368:	0ff0000f          	fence	iorw,iorw
 100036c:	00100193          	addi	x3,x0,1
 1000370:	00000073          	ecall
 1000374:	c0001073          	unimp
 1000378:	0000                	c.unimp
 100037a:	0000                	c.unimp
 100037c:	0000                	c.unimp
 100037e:	0000                	c.unimp
 1000380:	0000                	c.unimp
 1000382:	0000                	c.unimp

Disassembly of section .text:

01000410 <end_signature>:
 1000410:	0000                	c.unimp
 1000412:	0000                	c.unimp
