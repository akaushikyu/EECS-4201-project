
output/rv32ui-p-bltu:     file format elf32-littleriscv


Disassembly of section .text.init:

01000000 <_start>:
 1000000:	00200193          	addi	x3,x0,2
 1000004:	00000093          	addi	x1,x0,0
 1000008:	00100113          	addi	x2,x0,1
 100000c:	0020e663          	bltu	x1,x2,1000018 <_start+0x18>
 1000010:	2e301263          	bne	x0,x3,10002f4 <fail>
 1000014:	00301663          	bne	x0,x3,1000020 <test_3>
 1000018:	fe20eee3          	bltu	x1,x2,1000014 <_start+0x14>
 100001c:	2c301c63          	bne	x0,x3,10002f4 <fail>

01000020 <test_3>:
 1000020:	00300193          	addi	x3,x0,3
 1000024:	ffe00093          	addi	x1,x0,-2
 1000028:	fff00113          	addi	x2,x0,-1
 100002c:	0020e663          	bltu	x1,x2,1000038 <test_3+0x18>
 1000030:	2c301263          	bne	x0,x3,10002f4 <fail>
 1000034:	00301663          	bne	x0,x3,1000040 <test_4>
 1000038:	fe20eee3          	bltu	x1,x2,1000034 <test_3+0x14>
 100003c:	2a301c63          	bne	x0,x3,10002f4 <fail>

01000040 <test_4>:
 1000040:	00400193          	addi	x3,x0,4
 1000044:	00000093          	addi	x1,x0,0
 1000048:	fff00113          	addi	x2,x0,-1
 100004c:	0020e663          	bltu	x1,x2,1000058 <test_4+0x18>
 1000050:	2a301263          	bne	x0,x3,10002f4 <fail>
 1000054:	00301663          	bne	x0,x3,1000060 <test_5>
 1000058:	fe20eee3          	bltu	x1,x2,1000054 <test_4+0x14>
 100005c:	28301c63          	bne	x0,x3,10002f4 <fail>

01000060 <test_5>:
 1000060:	00500193          	addi	x3,x0,5
 1000064:	00100093          	addi	x1,x0,1
 1000068:	00000113          	addi	x2,x0,0
 100006c:	0020e463          	bltu	x1,x2,1000074 <test_5+0x14>
 1000070:	00301463          	bne	x0,x3,1000078 <test_5+0x18>
 1000074:	28301063          	bne	x0,x3,10002f4 <fail>
 1000078:	fe20eee3          	bltu	x1,x2,1000074 <test_5+0x14>

0100007c <test_6>:
 100007c:	00600193          	addi	x3,x0,6
 1000080:	fff00093          	addi	x1,x0,-1
 1000084:	ffe00113          	addi	x2,x0,-2
 1000088:	0020e463          	bltu	x1,x2,1000090 <test_6+0x14>
 100008c:	00301463          	bne	x0,x3,1000094 <test_6+0x18>
 1000090:	26301263          	bne	x0,x3,10002f4 <fail>
 1000094:	fe20eee3          	bltu	x1,x2,1000090 <test_6+0x14>

01000098 <test_7>:
 1000098:	00700193          	addi	x3,x0,7
 100009c:	fff00093          	addi	x1,x0,-1
 10000a0:	00000113          	addi	x2,x0,0
 10000a4:	0020e463          	bltu	x1,x2,10000ac <test_7+0x14>
 10000a8:	00301463          	bne	x0,x3,10000b0 <test_7+0x18>
 10000ac:	24301463          	bne	x0,x3,10002f4 <fail>
 10000b0:	fe20eee3          	bltu	x1,x2,10000ac <test_7+0x14>

010000b4 <test_8>:
 10000b4:	00800193          	addi	x3,x0,8
 10000b8:	800000b7          	lui	x1,0x80000
 10000bc:	80000137          	lui	x2,0x80000
 10000c0:	fff10113          	addi	x2,x2,-1 # 7fffffff <begin_signature+0x7efffc1f>
 10000c4:	0020e463          	bltu	x1,x2,10000cc <test_8+0x18>
 10000c8:	00301463          	bne	x0,x3,10000d0 <test_8+0x1c>
 10000cc:	22301463          	bne	x0,x3,10002f4 <fail>
 10000d0:	fe20eee3          	bltu	x1,x2,10000cc <test_8+0x18>

010000d4 <test_9>:
 10000d4:	00900193          	addi	x3,x0,9
 10000d8:	00000213          	addi	x4,x0,0
 10000dc:	f00000b7          	lui	x1,0xf0000
 10000e0:	f0000137          	lui	x2,0xf0000
 10000e4:	fff10113          	addi	x2,x2,-1 # efffffff <begin_signature+0xeefffc1f>
 10000e8:	2020e663          	bltu	x1,x2,10002f4 <fail>
 10000ec:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10000f0:	00200293          	addi	x5,x0,2
 10000f4:	fe5214e3          	bne	x4,x5,10000dc <test_9+0x8>

010000f8 <test_10>:
 10000f8:	00a00193          	addi	x3,x0,10
 10000fc:	00000213          	addi	x4,x0,0
 1000100:	f00000b7          	lui	x1,0xf0000
 1000104:	f0000137          	lui	x2,0xf0000
 1000108:	fff10113          	addi	x2,x2,-1 # efffffff <begin_signature+0xeefffc1f>
 100010c:	00000013          	addi	x0,x0,0
 1000110:	1e20e263          	bltu	x1,x2,10002f4 <fail>
 1000114:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000118:	00200293          	addi	x5,x0,2
 100011c:	fe5212e3          	bne	x4,x5,1000100 <test_10+0x8>

01000120 <test_11>:
 1000120:	00b00193          	addi	x3,x0,11
 1000124:	00000213          	addi	x4,x0,0
 1000128:	f00000b7          	lui	x1,0xf0000
 100012c:	f0000137          	lui	x2,0xf0000
 1000130:	fff10113          	addi	x2,x2,-1 # efffffff <begin_signature+0xeefffc1f>
 1000134:	00000013          	addi	x0,x0,0
 1000138:	00000013          	addi	x0,x0,0
 100013c:	1a20ec63          	bltu	x1,x2,10002f4 <fail>
 1000140:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000144:	00200293          	addi	x5,x0,2
 1000148:	fe5210e3          	bne	x4,x5,1000128 <test_11+0x8>

0100014c <test_12>:
 100014c:	00c00193          	addi	x3,x0,12
 1000150:	00000213          	addi	x4,x0,0
 1000154:	f00000b7          	lui	x1,0xf0000
 1000158:	00000013          	addi	x0,x0,0
 100015c:	f0000137          	lui	x2,0xf0000
 1000160:	fff10113          	addi	x2,x2,-1 # efffffff <begin_signature+0xeefffc1f>
 1000164:	1820e863          	bltu	x1,x2,10002f4 <fail>
 1000168:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 100016c:	00200293          	addi	x5,x0,2
 1000170:	fe5212e3          	bne	x4,x5,1000154 <test_12+0x8>

01000174 <test_13>:
 1000174:	00d00193          	addi	x3,x0,13
 1000178:	00000213          	addi	x4,x0,0
 100017c:	f00000b7          	lui	x1,0xf0000
 1000180:	00000013          	addi	x0,x0,0
 1000184:	f0000137          	lui	x2,0xf0000
 1000188:	fff10113          	addi	x2,x2,-1 # efffffff <begin_signature+0xeefffc1f>
 100018c:	00000013          	addi	x0,x0,0
 1000190:	1620e263          	bltu	x1,x2,10002f4 <fail>
 1000194:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000198:	00200293          	addi	x5,x0,2
 100019c:	fe5210e3          	bne	x4,x5,100017c <test_13+0x8>

010001a0 <test_14>:
 10001a0:	00e00193          	addi	x3,x0,14
 10001a4:	00000213          	addi	x4,x0,0
 10001a8:	f00000b7          	lui	x1,0xf0000
 10001ac:	00000013          	addi	x0,x0,0
 10001b0:	00000013          	addi	x0,x0,0
 10001b4:	f0000137          	lui	x2,0xf0000
 10001b8:	fff10113          	addi	x2,x2,-1 # efffffff <begin_signature+0xeefffc1f>
 10001bc:	1220ec63          	bltu	x1,x2,10002f4 <fail>
 10001c0:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10001c4:	00200293          	addi	x5,x0,2
 10001c8:	fe5210e3          	bne	x4,x5,10001a8 <test_14+0x8>

010001cc <test_15>:
 10001cc:	00f00193          	addi	x3,x0,15
 10001d0:	00000213          	addi	x4,x0,0
 10001d4:	f00000b7          	lui	x1,0xf0000
 10001d8:	f0000137          	lui	x2,0xf0000
 10001dc:	fff10113          	addi	x2,x2,-1 # efffffff <begin_signature+0xeefffc1f>
 10001e0:	1020ea63          	bltu	x1,x2,10002f4 <fail>
 10001e4:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10001e8:	00200293          	addi	x5,x0,2
 10001ec:	fe5214e3          	bne	x4,x5,10001d4 <test_15+0x8>

010001f0 <test_16>:
 10001f0:	01000193          	addi	x3,x0,16
 10001f4:	00000213          	addi	x4,x0,0
 10001f8:	f00000b7          	lui	x1,0xf0000
 10001fc:	f0000137          	lui	x2,0xf0000
 1000200:	fff10113          	addi	x2,x2,-1 # efffffff <begin_signature+0xeefffc1f>
 1000204:	00000013          	addi	x0,x0,0
 1000208:	0e20e663          	bltu	x1,x2,10002f4 <fail>
 100020c:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000210:	00200293          	addi	x5,x0,2
 1000214:	fe5212e3          	bne	x4,x5,10001f8 <test_16+0x8>

01000218 <test_17>:
 1000218:	01100193          	addi	x3,x0,17
 100021c:	00000213          	addi	x4,x0,0
 1000220:	f00000b7          	lui	x1,0xf0000
 1000224:	f0000137          	lui	x2,0xf0000
 1000228:	fff10113          	addi	x2,x2,-1 # efffffff <begin_signature+0xeefffc1f>
 100022c:	00000013          	addi	x0,x0,0
 1000230:	00000013          	addi	x0,x0,0
 1000234:	0c20e063          	bltu	x1,x2,10002f4 <fail>
 1000238:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 100023c:	00200293          	addi	x5,x0,2
 1000240:	fe5210e3          	bne	x4,x5,1000220 <test_17+0x8>

01000244 <test_18>:
 1000244:	01200193          	addi	x3,x0,18
 1000248:	00000213          	addi	x4,x0,0
 100024c:	f00000b7          	lui	x1,0xf0000
 1000250:	00000013          	addi	x0,x0,0
 1000254:	f0000137          	lui	x2,0xf0000
 1000258:	fff10113          	addi	x2,x2,-1 # efffffff <begin_signature+0xeefffc1f>
 100025c:	0820ec63          	bltu	x1,x2,10002f4 <fail>
 1000260:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000264:	00200293          	addi	x5,x0,2
 1000268:	fe5212e3          	bne	x4,x5,100024c <test_18+0x8>

0100026c <test_19>:
 100026c:	01300193          	addi	x3,x0,19
 1000270:	00000213          	addi	x4,x0,0
 1000274:	f00000b7          	lui	x1,0xf0000
 1000278:	00000013          	addi	x0,x0,0
 100027c:	f0000137          	lui	x2,0xf0000
 1000280:	fff10113          	addi	x2,x2,-1 # efffffff <begin_signature+0xeefffc1f>
 1000284:	00000013          	addi	x0,x0,0
 1000288:	0620e663          	bltu	x1,x2,10002f4 <fail>
 100028c:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 1000290:	00200293          	addi	x5,x0,2
 1000294:	fe5210e3          	bne	x4,x5,1000274 <test_19+0x8>

01000298 <test_20>:
 1000298:	01400193          	addi	x3,x0,20
 100029c:	00000213          	addi	x4,x0,0
 10002a0:	f00000b7          	lui	x1,0xf0000
 10002a4:	00000013          	addi	x0,x0,0
 10002a8:	00000013          	addi	x0,x0,0
 10002ac:	f0000137          	lui	x2,0xf0000
 10002b0:	fff10113          	addi	x2,x2,-1 # efffffff <begin_signature+0xeefffc1f>
 10002b4:	0420e063          	bltu	x1,x2,10002f4 <fail>
 10002b8:	00120213          	addi	x4,x4,1 # 1 <_start-0xffffff>
 10002bc:	00200293          	addi	x5,x0,2
 10002c0:	fe5210e3          	bne	x4,x5,10002a0 <test_20+0x8>

010002c4 <test_21>:
 10002c4:	00100093          	addi	x1,x0,1
 10002c8:	00106a63          	bltu	x0,x1,10002dc <test_21+0x18>
 10002cc:	00108093          	addi	x1,x1,1 # f0000001 <begin_signature+0xeefffc21>
 10002d0:	00108093          	addi	x1,x1,1
 10002d4:	00108093          	addi	x1,x1,1
 10002d8:	00108093          	addi	x1,x1,1
 10002dc:	00108093          	addi	x1,x1,1
 10002e0:	00108093          	addi	x1,x1,1
 10002e4:	00300e93          	addi	x29,x0,3
 10002e8:	01500193          	addi	x3,x0,21
 10002ec:	01d09463          	bne	x1,x29,10002f4 <fail>
 10002f0:	00301c63          	bne	x0,x3,1000308 <pass>

010002f4 <fail>:
 10002f4:	0ff0000f          	fence	iorw,iorw
 10002f8:	00018063          	beq	x3,x0,10002f8 <fail+0x4>
 10002fc:	00119193          	slli	x3,x3,0x1
 1000300:	0011e193          	ori	x3,x3,1
 1000304:	00000073          	ecall

01000308 <pass>:
 1000308:	0ff0000f          	fence	iorw,iorw
 100030c:	00100193          	addi	x3,x0,1
 1000310:	00000073          	ecall
 1000314:	c0001073          	unimp
 1000318:	0000                	c.unimp
 100031a:	0000                	c.unimp
 100031c:	0000                	c.unimp
 100031e:	0000                	c.unimp
 1000320:	0000                	c.unimp
 1000322:	0000                	c.unimp
 1000324:	0000                	c.unimp
 1000326:	0000                	c.unimp
 1000328:	0000                	c.unimp
 100032a:	0000                	c.unimp
 100032c:	0000                	c.unimp
 100032e:	0000                	c.unimp
 1000330:	0000                	c.unimp
 1000332:	0000                	c.unimp
 1000334:	0000                	c.unimp
 1000336:	0000                	c.unimp
 1000338:	0000                	c.unimp
 100033a:	0000                	c.unimp
 100033c:	0000                	c.unimp
 100033e:	0000                	c.unimp
 1000340:	0000                	c.unimp
 1000342:	0000                	c.unimp

Disassembly of section .text:

010003d0 <end_signature>:
 10003d0:	0000                	c.unimp
 10003d2:	0000                	c.unimp
