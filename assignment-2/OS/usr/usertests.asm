
_usertests:     file format elf32-littlearm


Disassembly of section .text:

00000000 <opentest>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd008 	sub	sp, sp, #8
       c:	e59f309c 	ldr	r3, [pc, #156]	@ b0 <opentest+0xb0>
      10:	e5933000 	ldr	r3, [r3]
      14:	e59f1098 	ldr	r1, [pc, #152]	@ b4 <opentest+0xb4>
      18:	e1a00003 	mov	r0, r3
      1c:	eb001294 	bl	4a74 <printf>
      20:	e3a01000 	mov	r1, #0
      24:	e59f008c 	ldr	r0, [pc, #140]	@ b8 <opentest+0xb8>
      28:	eb00119c 	bl	46a0 <open>
      2c:	e50b0008 	str	r0, [fp, #-8]
      30:	e51b3008 	ldr	r3, [fp, #-8]
      34:	e3530000 	cmp	r3, #0
      38:	aa000005 	bge	54 <opentest+0x54>
      3c:	e59f306c 	ldr	r3, [pc, #108]	@ b0 <opentest+0xb0>
      40:	e5933000 	ldr	r3, [r3]
      44:	e59f1070 	ldr	r1, [pc, #112]	@ bc <opentest+0xbc>
      48:	e1a00003 	mov	r0, r3
      4c:	eb001288 	bl	4a74 <printf>
      50:	eb00114a 	bl	4580 <exit>
      54:	e51b0008 	ldr	r0, [fp, #-8]
      58:	eb001175 	bl	4634 <close>
      5c:	e3a01000 	mov	r1, #0
      60:	e59f0058 	ldr	r0, [pc, #88]	@ c0 <opentest+0xc0>
      64:	eb00118d 	bl	46a0 <open>
      68:	e50b0008 	str	r0, [fp, #-8]
      6c:	e51b3008 	ldr	r3, [fp, #-8]
      70:	e3530000 	cmp	r3, #0
      74:	ba000005 	blt	90 <opentest+0x90>
      78:	e59f3030 	ldr	r3, [pc, #48]	@ b0 <opentest+0xb0>
      7c:	e5933000 	ldr	r3, [r3]
      80:	e59f103c 	ldr	r1, [pc, #60]	@ c4 <opentest+0xc4>
      84:	e1a00003 	mov	r0, r3
      88:	eb001279 	bl	4a74 <printf>
      8c:	eb00113b 	bl	4580 <exit>
      90:	e59f3018 	ldr	r3, [pc, #24]	@ b0 <opentest+0xb0>
      94:	e5933000 	ldr	r3, [r3]
      98:	e59f1028 	ldr	r1, [pc, #40]	@ c8 <opentest+0xc8>
      9c:	e1a00003 	mov	r0, r3
      a0:	eb001273 	bl	4a74 <printf>
      a4:	e1a00000 	nop			@ (mov r0, r0)
      a8:	e24bd004 	sub	sp, fp, #4
      ac:	e8bd8800 	pop	{fp, pc}
      b0:	0000697c 	.word	0x0000697c
      b4:	0000514c 	.word	0x0000514c
      b8:	00005130 	.word	0x00005130
      bc:	00005158 	.word	0x00005158
      c0:	0000516c 	.word	0x0000516c
      c4:	0000517c 	.word	0x0000517c
      c8:	0000519c 	.word	0x0000519c

000000cc <writetest>:
      cc:	e92d4800 	push	{fp, lr}
      d0:	e28db004 	add	fp, sp, #4
      d4:	e24dd008 	sub	sp, sp, #8
      d8:	e59f31f4 	ldr	r3, [pc, #500]	@ 2d4 <writetest+0x208>
      dc:	e5933000 	ldr	r3, [r3]
      e0:	e59f11f0 	ldr	r1, [pc, #496]	@ 2d8 <writetest+0x20c>
      e4:	e1a00003 	mov	r0, r3
      e8:	eb001261 	bl	4a74 <printf>
      ec:	e59f11e8 	ldr	r1, [pc, #488]	@ 2dc <writetest+0x210>
      f0:	e59f01e8 	ldr	r0, [pc, #488]	@ 2e0 <writetest+0x214>
      f4:	eb001169 	bl	46a0 <open>
      f8:	e50b000c 	str	r0, [fp, #-12]
      fc:	e51b300c 	ldr	r3, [fp, #-12]
     100:	e3530000 	cmp	r3, #0
     104:	ba000007 	blt	128 <writetest+0x5c>
     108:	e59f31c4 	ldr	r3, [pc, #452]	@ 2d4 <writetest+0x208>
     10c:	e5933000 	ldr	r3, [r3]
     110:	e59f11cc 	ldr	r1, [pc, #460]	@ 2e4 <writetest+0x218>
     114:	e1a00003 	mov	r0, r3
     118:	eb001255 	bl	4a74 <printf>
     11c:	e3a03000 	mov	r3, #0
     120:	e50b3008 	str	r3, [fp, #-8]
     124:	ea000024 	b	1bc <writetest+0xf0>
     128:	e59f31a4 	ldr	r3, [pc, #420]	@ 2d4 <writetest+0x208>
     12c:	e5933000 	ldr	r3, [r3]
     130:	e59f11b0 	ldr	r1, [pc, #432]	@ 2e8 <writetest+0x21c>
     134:	e1a00003 	mov	r0, r3
     138:	eb00124d 	bl	4a74 <printf>
     13c:	eb00110f 	bl	4580 <exit>
     140:	e3a0200a 	mov	r2, #10
     144:	e59f11a0 	ldr	r1, [pc, #416]	@ 2ec <writetest+0x220>
     148:	e51b000c 	ldr	r0, [fp, #-12]
     14c:	eb00112f 	bl	4610 <write>
     150:	e1a03000 	mov	r3, r0
     154:	e353000a 	cmp	r3, #10
     158:	0a000006 	beq	178 <writetest+0xac>
     15c:	e59f3170 	ldr	r3, [pc, #368]	@ 2d4 <writetest+0x208>
     160:	e5933000 	ldr	r3, [r3]
     164:	e51b2008 	ldr	r2, [fp, #-8]
     168:	e59f1180 	ldr	r1, [pc, #384]	@ 2f0 <writetest+0x224>
     16c:	e1a00003 	mov	r0, r3
     170:	eb00123f 	bl	4a74 <printf>
     174:	eb001101 	bl	4580 <exit>
     178:	e3a0200a 	mov	r2, #10
     17c:	e59f1170 	ldr	r1, [pc, #368]	@ 2f4 <writetest+0x228>
     180:	e51b000c 	ldr	r0, [fp, #-12]
     184:	eb001121 	bl	4610 <write>
     188:	e1a03000 	mov	r3, r0
     18c:	e353000a 	cmp	r3, #10
     190:	0a000006 	beq	1b0 <writetest+0xe4>
     194:	e59f3138 	ldr	r3, [pc, #312]	@ 2d4 <writetest+0x208>
     198:	e5933000 	ldr	r3, [r3]
     19c:	e51b2008 	ldr	r2, [fp, #-8]
     1a0:	e59f1150 	ldr	r1, [pc, #336]	@ 2f8 <writetest+0x22c>
     1a4:	e1a00003 	mov	r0, r3
     1a8:	eb001231 	bl	4a74 <printf>
     1ac:	eb0010f3 	bl	4580 <exit>
     1b0:	e51b3008 	ldr	r3, [fp, #-8]
     1b4:	e2833001 	add	r3, r3, #1
     1b8:	e50b3008 	str	r3, [fp, #-8]
     1bc:	e51b3008 	ldr	r3, [fp, #-8]
     1c0:	e3530063 	cmp	r3, #99	@ 0x63
     1c4:	daffffdd 	ble	140 <writetest+0x74>
     1c8:	e59f3104 	ldr	r3, [pc, #260]	@ 2d4 <writetest+0x208>
     1cc:	e5933000 	ldr	r3, [r3]
     1d0:	e59f1124 	ldr	r1, [pc, #292]	@ 2fc <writetest+0x230>
     1d4:	e1a00003 	mov	r0, r3
     1d8:	eb001225 	bl	4a74 <printf>
     1dc:	e51b000c 	ldr	r0, [fp, #-12]
     1e0:	eb001113 	bl	4634 <close>
     1e4:	e3a01000 	mov	r1, #0
     1e8:	e59f00f0 	ldr	r0, [pc, #240]	@ 2e0 <writetest+0x214>
     1ec:	eb00112b 	bl	46a0 <open>
     1f0:	e50b000c 	str	r0, [fp, #-12]
     1f4:	e51b300c 	ldr	r3, [fp, #-12]
     1f8:	e3530000 	cmp	r3, #0
     1fc:	ba00000d 	blt	238 <writetest+0x16c>
     200:	e59f30cc 	ldr	r3, [pc, #204]	@ 2d4 <writetest+0x208>
     204:	e5933000 	ldr	r3, [r3]
     208:	e59f10f0 	ldr	r1, [pc, #240]	@ 300 <writetest+0x234>
     20c:	e1a00003 	mov	r0, r3
     210:	eb001217 	bl	4a74 <printf>
     214:	e3a02e7d 	mov	r2, #2000	@ 0x7d0
     218:	e59f10e4 	ldr	r1, [pc, #228]	@ 304 <writetest+0x238>
     21c:	e51b000c 	ldr	r0, [fp, #-12]
     220:	eb0010f1 	bl	45ec <read>
     224:	e50b0008 	str	r0, [fp, #-8]
     228:	e51b3008 	ldr	r3, [fp, #-8]
     22c:	e3530e7d 	cmp	r3, #2000	@ 0x7d0
     230:	0a000006 	beq	250 <writetest+0x184>
     234:	ea000012 	b	284 <writetest+0x1b8>
     238:	e59f3094 	ldr	r3, [pc, #148]	@ 2d4 <writetest+0x208>
     23c:	e5933000 	ldr	r3, [r3]
     240:	e59f10c0 	ldr	r1, [pc, #192]	@ 308 <writetest+0x23c>
     244:	e1a00003 	mov	r0, r3
     248:	eb001209 	bl	4a74 <printf>
     24c:	eb0010cb 	bl	4580 <exit>
     250:	e59f307c 	ldr	r3, [pc, #124]	@ 2d4 <writetest+0x208>
     254:	e5933000 	ldr	r3, [r3]
     258:	e59f10ac 	ldr	r1, [pc, #172]	@ 30c <writetest+0x240>
     25c:	e1a00003 	mov	r0, r3
     260:	eb001203 	bl	4a74 <printf>
     264:	e51b000c 	ldr	r0, [fp, #-12]
     268:	eb0010f1 	bl	4634 <close>
     26c:	e59f006c 	ldr	r0, [pc, #108]	@ 2e0 <writetest+0x214>
     270:	eb00111c 	bl	46e8 <unlink>
     274:	e1a03000 	mov	r3, r0
     278:	e3530000 	cmp	r3, #0
     27c:	ba000006 	blt	29c <writetest+0x1d0>
     280:	ea00000b 	b	2b4 <writetest+0x1e8>
     284:	e59f3048 	ldr	r3, [pc, #72]	@ 2d4 <writetest+0x208>
     288:	e5933000 	ldr	r3, [r3]
     28c:	e59f107c 	ldr	r1, [pc, #124]	@ 310 <writetest+0x244>
     290:	e1a00003 	mov	r0, r3
     294:	eb0011f6 	bl	4a74 <printf>
     298:	eb0010b8 	bl	4580 <exit>
     29c:	e59f3030 	ldr	r3, [pc, #48]	@ 2d4 <writetest+0x208>
     2a0:	e5933000 	ldr	r3, [r3]
     2a4:	e59f1068 	ldr	r1, [pc, #104]	@ 314 <writetest+0x248>
     2a8:	e1a00003 	mov	r0, r3
     2ac:	eb0011f0 	bl	4a74 <printf>
     2b0:	eb0010b2 	bl	4580 <exit>
     2b4:	e59f3018 	ldr	r3, [pc, #24]	@ 2d4 <writetest+0x208>
     2b8:	e5933000 	ldr	r3, [r3]
     2bc:	e59f1054 	ldr	r1, [pc, #84]	@ 318 <writetest+0x24c>
     2c0:	e1a00003 	mov	r0, r3
     2c4:	eb0011ea 	bl	4a74 <printf>
     2c8:	e1a00000 	nop			@ (mov r0, r0)
     2cc:	e24bd004 	sub	sp, fp, #4
     2d0:	e8bd8800 	pop	{fp, pc}
     2d4:	0000697c 	.word	0x0000697c
     2d8:	000051ac 	.word	0x000051ac
     2dc:	00000202 	.word	0x00000202
     2e0:	000051c0 	.word	0x000051c0
     2e4:	000051c8 	.word	0x000051c8
     2e8:	000051e4 	.word	0x000051e4
     2ec:	00005200 	.word	0x00005200
     2f0:	0000520c 	.word	0x0000520c
     2f4:	00005230 	.word	0x00005230
     2f8:	0000523c 	.word	0x0000523c
     2fc:	00005260 	.word	0x00005260
     300:	0000526c 	.word	0x0000526c
     304:	00006998 	.word	0x00006998
     308:	00005288 	.word	0x00005288
     30c:	000052a4 	.word	0x000052a4
     310:	000052b8 	.word	0x000052b8
     314:	000052c8 	.word	0x000052c8
     318:	000052e0 	.word	0x000052e0

0000031c <writetest1>:
     31c:	e92d4800 	push	{fp, lr}
     320:	e28db004 	add	fp, sp, #4
     324:	e24dd010 	sub	sp, sp, #16
     328:	e59f31f8 	ldr	r3, [pc, #504]	@ 528 <writetest1+0x20c>
     32c:	e5933000 	ldr	r3, [r3]
     330:	e59f11f4 	ldr	r1, [pc, #500]	@ 52c <writetest1+0x210>
     334:	e1a00003 	mov	r0, r3
     338:	eb0011cd 	bl	4a74 <printf>
     33c:	e59f11ec 	ldr	r1, [pc, #492]	@ 530 <writetest1+0x214>
     340:	e59f01ec 	ldr	r0, [pc, #492]	@ 534 <writetest1+0x218>
     344:	eb0010d5 	bl	46a0 <open>
     348:	e50b0010 	str	r0, [fp, #-16]
     34c:	e51b3010 	ldr	r3, [fp, #-16]
     350:	e3530000 	cmp	r3, #0
     354:	aa000005 	bge	370 <writetest1+0x54>
     358:	e59f31c8 	ldr	r3, [pc, #456]	@ 528 <writetest1+0x20c>
     35c:	e5933000 	ldr	r3, [r3]
     360:	e59f11d0 	ldr	r1, [pc, #464]	@ 538 <writetest1+0x21c>
     364:	e1a00003 	mov	r0, r3
     368:	eb0011c1 	bl	4a74 <printf>
     36c:	eb001083 	bl	4580 <exit>
     370:	e3a03000 	mov	r3, #0
     374:	e50b3008 	str	r3, [fp, #-8]
     378:	ea000013 	b	3cc <writetest1+0xb0>
     37c:	e59f21b8 	ldr	r2, [pc, #440]	@ 53c <writetest1+0x220>
     380:	e51b3008 	ldr	r3, [fp, #-8]
     384:	e5823000 	str	r3, [r2]
     388:	e3a02c02 	mov	r2, #512	@ 0x200
     38c:	e59f11a8 	ldr	r1, [pc, #424]	@ 53c <writetest1+0x220>
     390:	e51b0010 	ldr	r0, [fp, #-16]
     394:	eb00109d 	bl	4610 <write>
     398:	e1a03000 	mov	r3, r0
     39c:	e3530c02 	cmp	r3, #512	@ 0x200
     3a0:	0a000006 	beq	3c0 <writetest1+0xa4>
     3a4:	e59f317c 	ldr	r3, [pc, #380]	@ 528 <writetest1+0x20c>
     3a8:	e5933000 	ldr	r3, [r3]
     3ac:	e51b2008 	ldr	r2, [fp, #-8]
     3b0:	e59f1188 	ldr	r1, [pc, #392]	@ 540 <writetest1+0x224>
     3b4:	e1a00003 	mov	r0, r3
     3b8:	eb0011ad 	bl	4a74 <printf>
     3bc:	eb00106f 	bl	4580 <exit>
     3c0:	e51b3008 	ldr	r3, [fp, #-8]
     3c4:	e2833001 	add	r3, r3, #1
     3c8:	e50b3008 	str	r3, [fp, #-8]
     3cc:	e51b3008 	ldr	r3, [fp, #-8]
     3d0:	e353008b 	cmp	r3, #139	@ 0x8b
     3d4:	9affffe8 	bls	37c <writetest1+0x60>
     3d8:	e51b0010 	ldr	r0, [fp, #-16]
     3dc:	eb001094 	bl	4634 <close>
     3e0:	e3a01000 	mov	r1, #0
     3e4:	e59f0148 	ldr	r0, [pc, #328]	@ 534 <writetest1+0x218>
     3e8:	eb0010ac 	bl	46a0 <open>
     3ec:	e50b0010 	str	r0, [fp, #-16]
     3f0:	e51b3010 	ldr	r3, [fp, #-16]
     3f4:	e3530000 	cmp	r3, #0
     3f8:	aa000005 	bge	414 <writetest1+0xf8>
     3fc:	e59f3124 	ldr	r3, [pc, #292]	@ 528 <writetest1+0x20c>
     400:	e5933000 	ldr	r3, [r3]
     404:	e59f1138 	ldr	r1, [pc, #312]	@ 544 <writetest1+0x228>
     408:	e1a00003 	mov	r0, r3
     40c:	eb001198 	bl	4a74 <printf>
     410:	eb00105a 	bl	4580 <exit>
     414:	e3a03000 	mov	r3, #0
     418:	e50b300c 	str	r3, [fp, #-12]
     41c:	e3a02c02 	mov	r2, #512	@ 0x200
     420:	e59f1114 	ldr	r1, [pc, #276]	@ 53c <writetest1+0x220>
     424:	e51b0010 	ldr	r0, [fp, #-16]
     428:	eb00106f 	bl	45ec <read>
     42c:	e50b0008 	str	r0, [fp, #-8]
     430:	e51b3008 	ldr	r3, [fp, #-8]
     434:	e3530000 	cmp	r3, #0
     438:	1a000009 	bne	464 <writetest1+0x148>
     43c:	e51b300c 	ldr	r3, [fp, #-12]
     440:	e353008b 	cmp	r3, #139	@ 0x8b
     444:	1a000021 	bne	4d0 <writetest1+0x1b4>
     448:	e59f30d8 	ldr	r3, [pc, #216]	@ 528 <writetest1+0x20c>
     44c:	e5933000 	ldr	r3, [r3]
     450:	e51b200c 	ldr	r2, [fp, #-12]
     454:	e59f10ec 	ldr	r1, [pc, #236]	@ 548 <writetest1+0x22c>
     458:	e1a00003 	mov	r0, r3
     45c:	eb001184 	bl	4a74 <printf>
     460:	eb001046 	bl	4580 <exit>
     464:	e51b3008 	ldr	r3, [fp, #-8]
     468:	e3530c02 	cmp	r3, #512	@ 0x200
     46c:	0a000006 	beq	48c <writetest1+0x170>
     470:	e59f30b0 	ldr	r3, [pc, #176]	@ 528 <writetest1+0x20c>
     474:	e5933000 	ldr	r3, [r3]
     478:	e51b2008 	ldr	r2, [fp, #-8]
     47c:	e59f10c8 	ldr	r1, [pc, #200]	@ 54c <writetest1+0x230>
     480:	e1a00003 	mov	r0, r3
     484:	eb00117a 	bl	4a74 <printf>
     488:	eb00103c 	bl	4580 <exit>
     48c:	e59f30a8 	ldr	r3, [pc, #168]	@ 53c <writetest1+0x220>
     490:	e5933000 	ldr	r3, [r3]
     494:	e51b200c 	ldr	r2, [fp, #-12]
     498:	e1520003 	cmp	r2, r3
     49c:	0a000007 	beq	4c0 <writetest1+0x1a4>
     4a0:	e59f3080 	ldr	r3, [pc, #128]	@ 528 <writetest1+0x20c>
     4a4:	e5930000 	ldr	r0, [r3]
     4a8:	e59f308c 	ldr	r3, [pc, #140]	@ 53c <writetest1+0x220>
     4ac:	e5933000 	ldr	r3, [r3]
     4b0:	e51b200c 	ldr	r2, [fp, #-12]
     4b4:	e59f1094 	ldr	r1, [pc, #148]	@ 550 <writetest1+0x234>
     4b8:	eb00116d 	bl	4a74 <printf>
     4bc:	eb00102f 	bl	4580 <exit>
     4c0:	e51b300c 	ldr	r3, [fp, #-12]
     4c4:	e2833001 	add	r3, r3, #1
     4c8:	e50b300c 	str	r3, [fp, #-12]
     4cc:	eaffffd2 	b	41c <writetest1+0x100>
     4d0:	e1a00000 	nop			@ (mov r0, r0)
     4d4:	e51b0010 	ldr	r0, [fp, #-16]
     4d8:	eb001055 	bl	4634 <close>
     4dc:	e59f0050 	ldr	r0, [pc, #80]	@ 534 <writetest1+0x218>
     4e0:	eb001080 	bl	46e8 <unlink>
     4e4:	e1a03000 	mov	r3, r0
     4e8:	e3530000 	cmp	r3, #0
     4ec:	aa000005 	bge	508 <writetest1+0x1ec>
     4f0:	e59f3030 	ldr	r3, [pc, #48]	@ 528 <writetest1+0x20c>
     4f4:	e5933000 	ldr	r3, [r3]
     4f8:	e59f1054 	ldr	r1, [pc, #84]	@ 554 <writetest1+0x238>
     4fc:	e1a00003 	mov	r0, r3
     500:	eb00115b 	bl	4a74 <printf>
     504:	eb00101d 	bl	4580 <exit>
     508:	e59f3018 	ldr	r3, [pc, #24]	@ 528 <writetest1+0x20c>
     50c:	e5933000 	ldr	r3, [r3]
     510:	e59f1040 	ldr	r1, [pc, #64]	@ 558 <writetest1+0x23c>
     514:	e1a00003 	mov	r0, r3
     518:	eb001155 	bl	4a74 <printf>
     51c:	e1a00000 	nop			@ (mov r0, r0)
     520:	e24bd004 	sub	sp, fp, #4
     524:	e8bd8800 	pop	{fp, pc}
     528:	0000697c 	.word	0x0000697c
     52c:	000052f4 	.word	0x000052f4
     530:	00000202 	.word	0x00000202
     534:	00005304 	.word	0x00005304
     538:	00005308 	.word	0x00005308
     53c:	00006998 	.word	0x00006998
     540:	00005324 	.word	0x00005324
     544:	00005344 	.word	0x00005344
     548:	00005360 	.word	0x00005360
     54c:	00005380 	.word	0x00005380
     550:	00005390 	.word	0x00005390
     554:	000053b0 	.word	0x000053b0
     558:	000053c4 	.word	0x000053c4

0000055c <createtest>:
     55c:	e92d4800 	push	{fp, lr}
     560:	e28db004 	add	fp, sp, #4
     564:	e24dd008 	sub	sp, sp, #8
     568:	e59f30f4 	ldr	r3, [pc, #244]	@ 664 <createtest+0x108>
     56c:	e5933000 	ldr	r3, [r3]
     570:	e59f10f0 	ldr	r1, [pc, #240]	@ 668 <createtest+0x10c>
     574:	e1a00003 	mov	r0, r3
     578:	eb00113d 	bl	4a74 <printf>
     57c:	e59f30e8 	ldr	r3, [pc, #232]	@ 66c <createtest+0x110>
     580:	e3a02061 	mov	r2, #97	@ 0x61
     584:	e5c32000 	strb	r2, [r3]
     588:	e59f30dc 	ldr	r3, [pc, #220]	@ 66c <createtest+0x110>
     58c:	e3a02000 	mov	r2, #0
     590:	e5c32002 	strb	r2, [r3, #2]
     594:	e3a03000 	mov	r3, #0
     598:	e50b3008 	str	r3, [fp, #-8]
     59c:	ea00000e 	b	5dc <createtest+0x80>
     5a0:	e51b3008 	ldr	r3, [fp, #-8]
     5a4:	e6ef3073 	uxtb	r3, r3
     5a8:	e2833030 	add	r3, r3, #48	@ 0x30
     5ac:	e6ef2073 	uxtb	r2, r3
     5b0:	e59f30b4 	ldr	r3, [pc, #180]	@ 66c <createtest+0x110>
     5b4:	e5c32001 	strb	r2, [r3, #1]
     5b8:	e59f10b0 	ldr	r1, [pc, #176]	@ 670 <createtest+0x114>
     5bc:	e59f00a8 	ldr	r0, [pc, #168]	@ 66c <createtest+0x110>
     5c0:	eb001036 	bl	46a0 <open>
     5c4:	e50b000c 	str	r0, [fp, #-12]
     5c8:	e51b000c 	ldr	r0, [fp, #-12]
     5cc:	eb001018 	bl	4634 <close>
     5d0:	e51b3008 	ldr	r3, [fp, #-8]
     5d4:	e2833001 	add	r3, r3, #1
     5d8:	e50b3008 	str	r3, [fp, #-8]
     5dc:	e51b3008 	ldr	r3, [fp, #-8]
     5e0:	e3530033 	cmp	r3, #51	@ 0x33
     5e4:	daffffed 	ble	5a0 <createtest+0x44>
     5e8:	e59f307c 	ldr	r3, [pc, #124]	@ 66c <createtest+0x110>
     5ec:	e3a02061 	mov	r2, #97	@ 0x61
     5f0:	e5c32000 	strb	r2, [r3]
     5f4:	e59f3070 	ldr	r3, [pc, #112]	@ 66c <createtest+0x110>
     5f8:	e3a02000 	mov	r2, #0
     5fc:	e5c32002 	strb	r2, [r3, #2]
     600:	e3a03000 	mov	r3, #0
     604:	e50b3008 	str	r3, [fp, #-8]
     608:	ea00000a 	b	638 <createtest+0xdc>
     60c:	e51b3008 	ldr	r3, [fp, #-8]
     610:	e6ef3073 	uxtb	r3, r3
     614:	e2833030 	add	r3, r3, #48	@ 0x30
     618:	e6ef2073 	uxtb	r2, r3
     61c:	e59f3048 	ldr	r3, [pc, #72]	@ 66c <createtest+0x110>
     620:	e5c32001 	strb	r2, [r3, #1]
     624:	e59f0040 	ldr	r0, [pc, #64]	@ 66c <createtest+0x110>
     628:	eb00102e 	bl	46e8 <unlink>
     62c:	e51b3008 	ldr	r3, [fp, #-8]
     630:	e2833001 	add	r3, r3, #1
     634:	e50b3008 	str	r3, [fp, #-8]
     638:	e51b3008 	ldr	r3, [fp, #-8]
     63c:	e3530033 	cmp	r3, #51	@ 0x33
     640:	dafffff1 	ble	60c <createtest+0xb0>
     644:	e59f3018 	ldr	r3, [pc, #24]	@ 664 <createtest+0x108>
     648:	e5933000 	ldr	r3, [r3]
     64c:	e59f1020 	ldr	r1, [pc, #32]	@ 674 <createtest+0x118>
     650:	e1a00003 	mov	r0, r3
     654:	eb001106 	bl	4a74 <printf>
     658:	e1a00000 	nop			@ (mov r0, r0)
     65c:	e24bd004 	sub	sp, fp, #4
     660:	e8bd8800 	pop	{fp, pc}
     664:	0000697c 	.word	0x0000697c
     668:	000053d4 	.word	0x000053d4
     66c:	00008998 	.word	0x00008998
     670:	00000202 	.word	0x00000202
     674:	000053fc 	.word	0x000053fc

00000678 <dirtest>:
     678:	e92d4800 	push	{fp, lr}
     67c:	e28db004 	add	fp, sp, #4
     680:	e59f30d8 	ldr	r3, [pc, #216]	@ 760 <dirtest+0xe8>
     684:	e5933000 	ldr	r3, [r3]
     688:	e59f10d4 	ldr	r1, [pc, #212]	@ 764 <dirtest+0xec>
     68c:	e1a00003 	mov	r0, r3
     690:	eb0010f7 	bl	4a74 <printf>
     694:	e59f00cc 	ldr	r0, [pc, #204]	@ 768 <dirtest+0xf0>
     698:	eb00102d 	bl	4754 <mkdir>
     69c:	e1a03000 	mov	r3, r0
     6a0:	e3530000 	cmp	r3, #0
     6a4:	aa000005 	bge	6c0 <dirtest+0x48>
     6a8:	e59f30b0 	ldr	r3, [pc, #176]	@ 760 <dirtest+0xe8>
     6ac:	e5933000 	ldr	r3, [r3]
     6b0:	e59f10b4 	ldr	r1, [pc, #180]	@ 76c <dirtest+0xf4>
     6b4:	e1a00003 	mov	r0, r3
     6b8:	eb0010ed 	bl	4a74 <printf>
     6bc:	eb000faf 	bl	4580 <exit>
     6c0:	e59f00a0 	ldr	r0, [pc, #160]	@ 768 <dirtest+0xf0>
     6c4:	eb00102b 	bl	4778 <chdir>
     6c8:	e1a03000 	mov	r3, r0
     6cc:	e3530000 	cmp	r3, #0
     6d0:	aa000005 	bge	6ec <dirtest+0x74>
     6d4:	e59f3084 	ldr	r3, [pc, #132]	@ 760 <dirtest+0xe8>
     6d8:	e5933000 	ldr	r3, [r3]
     6dc:	e59f108c 	ldr	r1, [pc, #140]	@ 770 <dirtest+0xf8>
     6e0:	e1a00003 	mov	r0, r3
     6e4:	eb0010e2 	bl	4a74 <printf>
     6e8:	eb000fa4 	bl	4580 <exit>
     6ec:	e59f0080 	ldr	r0, [pc, #128]	@ 774 <dirtest+0xfc>
     6f0:	eb001020 	bl	4778 <chdir>
     6f4:	e1a03000 	mov	r3, r0
     6f8:	e3530000 	cmp	r3, #0
     6fc:	aa000005 	bge	718 <dirtest+0xa0>
     700:	e59f3058 	ldr	r3, [pc, #88]	@ 760 <dirtest+0xe8>
     704:	e5933000 	ldr	r3, [r3]
     708:	e59f1068 	ldr	r1, [pc, #104]	@ 778 <dirtest+0x100>
     70c:	e1a00003 	mov	r0, r3
     710:	eb0010d7 	bl	4a74 <printf>
     714:	eb000f99 	bl	4580 <exit>
     718:	e59f0048 	ldr	r0, [pc, #72]	@ 768 <dirtest+0xf0>
     71c:	eb000ff1 	bl	46e8 <unlink>
     720:	e1a03000 	mov	r3, r0
     724:	e3530000 	cmp	r3, #0
     728:	aa000005 	bge	744 <dirtest+0xcc>
     72c:	e59f302c 	ldr	r3, [pc, #44]	@ 760 <dirtest+0xe8>
     730:	e5933000 	ldr	r3, [r3]
     734:	e59f1040 	ldr	r1, [pc, #64]	@ 77c <dirtest+0x104>
     738:	e1a00003 	mov	r0, r3
     73c:	eb0010cc 	bl	4a74 <printf>
     740:	eb000f8e 	bl	4580 <exit>
     744:	e59f3014 	ldr	r3, [pc, #20]	@ 760 <dirtest+0xe8>
     748:	e5933000 	ldr	r3, [r3]
     74c:	e59f1010 	ldr	r1, [pc, #16]	@ 764 <dirtest+0xec>
     750:	e1a00003 	mov	r0, r3
     754:	eb0010c6 	bl	4a74 <printf>
     758:	e1a00000 	nop			@ (mov r0, r0)
     75c:	e8bd8800 	pop	{fp, pc}
     760:	0000697c 	.word	0x0000697c
     764:	00005424 	.word	0x00005424
     768:	00005430 	.word	0x00005430
     76c:	00005438 	.word	0x00005438
     770:	00005448 	.word	0x00005448
     774:	0000545c 	.word	0x0000545c
     778:	00005460 	.word	0x00005460
     77c:	00005474 	.word	0x00005474

00000780 <exectest>:
     780:	e92d4800 	push	{fp, lr}
     784:	e28db004 	add	fp, sp, #4
     788:	e59f3044 	ldr	r3, [pc, #68]	@ 7d4 <exectest+0x54>
     78c:	e5933000 	ldr	r3, [r3]
     790:	e59f1040 	ldr	r1, [pc, #64]	@ 7d8 <exectest+0x58>
     794:	e1a00003 	mov	r0, r3
     798:	eb0010b5 	bl	4a74 <printf>
     79c:	e59f1038 	ldr	r1, [pc, #56]	@ 7dc <exectest+0x5c>
     7a0:	e59f0038 	ldr	r0, [pc, #56]	@ 7e0 <exectest+0x60>
     7a4:	eb000fb4 	bl	467c <exec>
     7a8:	e1a03000 	mov	r3, r0
     7ac:	e3530000 	cmp	r3, #0
     7b0:	aa000005 	bge	7cc <exectest+0x4c>
     7b4:	e59f3018 	ldr	r3, [pc, #24]	@ 7d4 <exectest+0x54>
     7b8:	e5933000 	ldr	r3, [r3]
     7bc:	e59f1020 	ldr	r1, [pc, #32]	@ 7e4 <exectest+0x64>
     7c0:	e1a00003 	mov	r0, r3
     7c4:	eb0010aa 	bl	4a74 <printf>
     7c8:	eb000f6c 	bl	4580 <exit>
     7cc:	e1a00000 	nop			@ (mov r0, r0)
     7d0:	e8bd8800 	pop	{fp, pc}
     7d4:	0000697c 	.word	0x0000697c
     7d8:	00005488 	.word	0x00005488
     7dc:	00006968 	.word	0x00006968
     7e0:	00005130 	.word	0x00005130
     7e4:	00005494 	.word	0x00005494

000007e8 <pipe1>:
     7e8:	e92d4800 	push	{fp, lr}
     7ec:	e28db004 	add	fp, sp, #4
     7f0:	e24dd020 	sub	sp, sp, #32
     7f4:	e24b3024 	sub	r3, fp, #36	@ 0x24
     7f8:	e1a00003 	mov	r0, r3
     7fc:	eb000f71 	bl	45c8 <pipe>
     800:	e1a03000 	mov	r3, r0
     804:	e3530000 	cmp	r3, #0
     808:	0a000003 	beq	81c <pipe1+0x34>
     80c:	e59f1218 	ldr	r1, [pc, #536]	@ a2c <pipe1+0x244>
     810:	e3a00001 	mov	r0, #1
     814:	eb001096 	bl	4a74 <printf>
     818:	eb000f58 	bl	4580 <exit>
     81c:	eb000f4e 	bl	455c <fork>
     820:	e50b001c 	str	r0, [fp, #-28]	@ 0xffffffe4
     824:	e3a03000 	mov	r3, #0
     828:	e50b3008 	str	r3, [fp, #-8]
     82c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     830:	e3530000 	cmp	r3, #0
     834:	1a00002c 	bne	8ec <pipe1+0x104>
     838:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
     83c:	e1a00003 	mov	r0, r3
     840:	eb000f7b 	bl	4634 <close>
     844:	e3a03000 	mov	r3, #0
     848:	e50b3010 	str	r3, [fp, #-16]
     84c:	ea000022 	b	8dc <pipe1+0xf4>
     850:	e3a03000 	mov	r3, #0
     854:	e50b300c 	str	r3, [fp, #-12]
     858:	ea00000b 	b	88c <pipe1+0xa4>
     85c:	e51b3008 	ldr	r3, [fp, #-8]
     860:	e2832001 	add	r2, r3, #1
     864:	e50b2008 	str	r2, [fp, #-8]
     868:	e6ef1073 	uxtb	r1, r3
     86c:	e59f21bc 	ldr	r2, [pc, #444]	@ a30 <pipe1+0x248>
     870:	e51b300c 	ldr	r3, [fp, #-12]
     874:	e0823003 	add	r3, r2, r3
     878:	e1a02001 	mov	r2, r1
     87c:	e5c32000 	strb	r2, [r3]
     880:	e51b300c 	ldr	r3, [fp, #-12]
     884:	e2833001 	add	r3, r3, #1
     888:	e50b300c 	str	r3, [fp, #-12]
     88c:	e51b300c 	ldr	r3, [fp, #-12]
     890:	e59f219c 	ldr	r2, [pc, #412]	@ a34 <pipe1+0x24c>
     894:	e1530002 	cmp	r3, r2
     898:	daffffef 	ble	85c <pipe1+0x74>
     89c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     8a0:	e59f2190 	ldr	r2, [pc, #400]	@ a38 <pipe1+0x250>
     8a4:	e59f1184 	ldr	r1, [pc, #388]	@ a30 <pipe1+0x248>
     8a8:	e1a00003 	mov	r0, r3
     8ac:	eb000f57 	bl	4610 <write>
     8b0:	e1a03000 	mov	r3, r0
     8b4:	e59f217c 	ldr	r2, [pc, #380]	@ a38 <pipe1+0x250>
     8b8:	e1530002 	cmp	r3, r2
     8bc:	0a000003 	beq	8d0 <pipe1+0xe8>
     8c0:	e59f1174 	ldr	r1, [pc, #372]	@ a3c <pipe1+0x254>
     8c4:	e3a00001 	mov	r0, #1
     8c8:	eb001069 	bl	4a74 <printf>
     8cc:	eb000f2b 	bl	4580 <exit>
     8d0:	e51b3010 	ldr	r3, [fp, #-16]
     8d4:	e2833001 	add	r3, r3, #1
     8d8:	e50b3010 	str	r3, [fp, #-16]
     8dc:	e51b3010 	ldr	r3, [fp, #-16]
     8e0:	e3530004 	cmp	r3, #4
     8e4:	daffffd9 	ble	850 <pipe1+0x68>
     8e8:	eb000f24 	bl	4580 <exit>
     8ec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     8f0:	e3530000 	cmp	r3, #0
     8f4:	da000046 	ble	a14 <pipe1+0x22c>
     8f8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     8fc:	e1a00003 	mov	r0, r3
     900:	eb000f4b 	bl	4634 <close>
     904:	e3a03000 	mov	r3, #0
     908:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     90c:	e3a03001 	mov	r3, #1
     910:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     914:	ea000024 	b	9ac <pipe1+0x1c4>
     918:	e3a03000 	mov	r3, #0
     91c:	e50b300c 	str	r3, [fp, #-12]
     920:	ea000011 	b	96c <pipe1+0x184>
     924:	e59f2104 	ldr	r2, [pc, #260]	@ a30 <pipe1+0x248>
     928:	e51b300c 	ldr	r3, [fp, #-12]
     92c:	e0823003 	add	r3, r2, r3
     930:	e5d33000 	ldrb	r3, [r3]
     934:	e1a01003 	mov	r1, r3
     938:	e51b3008 	ldr	r3, [fp, #-8]
     93c:	e2832001 	add	r2, r3, #1
     940:	e50b2008 	str	r2, [fp, #-8]
     944:	e6ef3073 	uxtb	r3, r3
     948:	e1510003 	cmp	r1, r3
     94c:	0a000003 	beq	960 <pipe1+0x178>
     950:	e59f10e8 	ldr	r1, [pc, #232]	@ a40 <pipe1+0x258>
     954:	e3a00001 	mov	r0, #1
     958:	eb001045 	bl	4a74 <printf>
     95c:	ea000030 	b	a24 <pipe1+0x23c>
     960:	e51b300c 	ldr	r3, [fp, #-12]
     964:	e2833001 	add	r3, r3, #1
     968:	e50b300c 	str	r3, [fp, #-12]
     96c:	e51b200c 	ldr	r2, [fp, #-12]
     970:	e51b3010 	ldr	r3, [fp, #-16]
     974:	e1520003 	cmp	r2, r3
     978:	baffffe9 	blt	924 <pipe1+0x13c>
     97c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     980:	e51b3010 	ldr	r3, [fp, #-16]
     984:	e0823003 	add	r3, r2, r3
     988:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     98c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     990:	e1a03083 	lsl	r3, r3, #1
     994:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     998:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     99c:	e3530a02 	cmp	r3, #8192	@ 0x2000
     9a0:	9a000001 	bls	9ac <pipe1+0x1c4>
     9a4:	e3a03a02 	mov	r3, #8192	@ 0x2000
     9a8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     9ac:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
     9b0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     9b4:	e59f1074 	ldr	r1, [pc, #116]	@ a30 <pipe1+0x248>
     9b8:	e1a00003 	mov	r0, r3
     9bc:	eb000f0a 	bl	45ec <read>
     9c0:	e50b0010 	str	r0, [fp, #-16]
     9c4:	e51b3010 	ldr	r3, [fp, #-16]
     9c8:	e3530000 	cmp	r3, #0
     9cc:	caffffd1 	bgt	918 <pipe1+0x130>
     9d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     9d4:	e59f2068 	ldr	r2, [pc, #104]	@ a44 <pipe1+0x25c>
     9d8:	e1530002 	cmp	r3, r2
     9dc:	0a000004 	beq	9f4 <pipe1+0x20c>
     9e0:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     9e4:	e59f105c 	ldr	r1, [pc, #92]	@ a48 <pipe1+0x260>
     9e8:	e3a00001 	mov	r0, #1
     9ec:	eb001020 	bl	4a74 <printf>
     9f0:	eb000ee2 	bl	4580 <exit>
     9f4:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
     9f8:	e1a00003 	mov	r0, r3
     9fc:	eb000f0c 	bl	4634 <close>
     a00:	eb000ee7 	bl	45a4 <wait>
     a04:	e59f1040 	ldr	r1, [pc, #64]	@ a4c <pipe1+0x264>
     a08:	e3a00001 	mov	r0, #1
     a0c:	eb001018 	bl	4a74 <printf>
     a10:	ea000003 	b	a24 <pipe1+0x23c>
     a14:	e59f1034 	ldr	r1, [pc, #52]	@ a50 <pipe1+0x268>
     a18:	e3a00001 	mov	r0, #1
     a1c:	eb001014 	bl	4a74 <printf>
     a20:	eb000ed6 	bl	4580 <exit>
     a24:	e24bd004 	sub	sp, fp, #4
     a28:	e8bd8800 	pop	{fp, pc}
     a2c:	000054a8 	.word	0x000054a8
     a30:	00006998 	.word	0x00006998
     a34:	00000408 	.word	0x00000408
     a38:	00000409 	.word	0x00000409
     a3c:	000054b8 	.word	0x000054b8
     a40:	000054c8 	.word	0x000054c8
     a44:	0000142d 	.word	0x0000142d
     a48:	000054d8 	.word	0x000054d8
     a4c:	000054f0 	.word	0x000054f0
     a50:	000054fc 	.word	0x000054fc

00000a54 <preempt>:
     a54:	e92d4800 	push	{fp, lr}
     a58:	e28db004 	add	fp, sp, #4
     a5c:	e24dd018 	sub	sp, sp, #24
     a60:	e59f1140 	ldr	r1, [pc, #320]	@ ba8 <preempt+0x154>
     a64:	e3a00001 	mov	r0, #1
     a68:	eb001001 	bl	4a74 <printf>
     a6c:	eb000eba 	bl	455c <fork>
     a70:	e50b0008 	str	r0, [fp, #-8]
     a74:	e51b3008 	ldr	r3, [fp, #-8]
     a78:	e3530000 	cmp	r3, #0
     a7c:	1a000001 	bne	a88 <preempt+0x34>
     a80:	e1a00000 	nop			@ (mov r0, r0)
     a84:	eafffffd 	b	a80 <preempt+0x2c>
     a88:	eb000eb3 	bl	455c <fork>
     a8c:	e50b000c 	str	r0, [fp, #-12]
     a90:	e51b300c 	ldr	r3, [fp, #-12]
     a94:	e3530000 	cmp	r3, #0
     a98:	1a000001 	bne	aa4 <preempt+0x50>
     a9c:	e1a00000 	nop			@ (mov r0, r0)
     aa0:	eafffffd 	b	a9c <preempt+0x48>
     aa4:	e24b3018 	sub	r3, fp, #24
     aa8:	e1a00003 	mov	r0, r3
     aac:	eb000ec5 	bl	45c8 <pipe>
     ab0:	eb000ea9 	bl	455c <fork>
     ab4:	e50b0010 	str	r0, [fp, #-16]
     ab8:	e51b3010 	ldr	r3, [fp, #-16]
     abc:	e3530000 	cmp	r3, #0
     ac0:	1a000012 	bne	b10 <preempt+0xbc>
     ac4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ac8:	e1a00003 	mov	r0, r3
     acc:	eb000ed8 	bl	4634 <close>
     ad0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     ad4:	e3a02001 	mov	r2, #1
     ad8:	e59f10cc 	ldr	r1, [pc, #204]	@ bac <preempt+0x158>
     adc:	e1a00003 	mov	r0, r3
     ae0:	eb000eca 	bl	4610 <write>
     ae4:	e1a03000 	mov	r3, r0
     ae8:	e3530001 	cmp	r3, #1
     aec:	0a000002 	beq	afc <preempt+0xa8>
     af0:	e59f10b8 	ldr	r1, [pc, #184]	@ bb0 <preempt+0x15c>
     af4:	e3a00001 	mov	r0, #1
     af8:	eb000fdd 	bl	4a74 <printf>
     afc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b00:	e1a00003 	mov	r0, r3
     b04:	eb000eca 	bl	4634 <close>
     b08:	e1a00000 	nop			@ (mov r0, r0)
     b0c:	eafffffd 	b	b08 <preempt+0xb4>
     b10:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b14:	e1a00003 	mov	r0, r3
     b18:	eb000ec5 	bl	4634 <close>
     b1c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b20:	e3a02a02 	mov	r2, #8192	@ 0x2000
     b24:	e59f1088 	ldr	r1, [pc, #136]	@ bb4 <preempt+0x160>
     b28:	e1a00003 	mov	r0, r3
     b2c:	eb000eae 	bl	45ec <read>
     b30:	e1a03000 	mov	r3, r0
     b34:	e3530001 	cmp	r3, #1
     b38:	0a000003 	beq	b4c <preempt+0xf8>
     b3c:	e59f1074 	ldr	r1, [pc, #116]	@ bb8 <preempt+0x164>
     b40:	e3a00001 	mov	r0, #1
     b44:	eb000fca 	bl	4a74 <printf>
     b48:	ea000014 	b	ba0 <preempt+0x14c>
     b4c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b50:	e1a00003 	mov	r0, r3
     b54:	eb000eb6 	bl	4634 <close>
     b58:	e59f105c 	ldr	r1, [pc, #92]	@ bbc <preempt+0x168>
     b5c:	e3a00001 	mov	r0, #1
     b60:	eb000fc3 	bl	4a74 <printf>
     b64:	e51b0008 	ldr	r0, [fp, #-8]
     b68:	eb000eba 	bl	4658 <kill>
     b6c:	e51b000c 	ldr	r0, [fp, #-12]
     b70:	eb000eb8 	bl	4658 <kill>
     b74:	e51b0010 	ldr	r0, [fp, #-16]
     b78:	eb000eb6 	bl	4658 <kill>
     b7c:	e59f103c 	ldr	r1, [pc, #60]	@ bc0 <preempt+0x16c>
     b80:	e3a00001 	mov	r0, #1
     b84:	eb000fba 	bl	4a74 <printf>
     b88:	eb000e85 	bl	45a4 <wait>
     b8c:	eb000e84 	bl	45a4 <wait>
     b90:	eb000e83 	bl	45a4 <wait>
     b94:	e59f1028 	ldr	r1, [pc, #40]	@ bc4 <preempt+0x170>
     b98:	e3a00001 	mov	r0, #1
     b9c:	eb000fb4 	bl	4a74 <printf>
     ba0:	e24bd004 	sub	sp, fp, #4
     ba4:	e8bd8800 	pop	{fp, pc}
     ba8:	0000550c 	.word	0x0000550c
     bac:	00005518 	.word	0x00005518
     bb0:	0000551c 	.word	0x0000551c
     bb4:	00006998 	.word	0x00006998
     bb8:	00005530 	.word	0x00005530
     bbc:	00005544 	.word	0x00005544
     bc0:	00005550 	.word	0x00005550
     bc4:	0000555c 	.word	0x0000555c

00000bc8 <exitwait>:
     bc8:	e92d4800 	push	{fp, lr}
     bcc:	e28db004 	add	fp, sp, #4
     bd0:	e24dd008 	sub	sp, sp, #8
     bd4:	e3a03000 	mov	r3, #0
     bd8:	e50b3008 	str	r3, [fp, #-8]
     bdc:	ea000018 	b	c44 <exitwait+0x7c>
     be0:	eb000e5d 	bl	455c <fork>
     be4:	e50b000c 	str	r0, [fp, #-12]
     be8:	e51b300c 	ldr	r3, [fp, #-12]
     bec:	e3530000 	cmp	r3, #0
     bf0:	aa000003 	bge	c04 <exitwait+0x3c>
     bf4:	e59f1068 	ldr	r1, [pc, #104]	@ c64 <exitwait+0x9c>
     bf8:	e3a00001 	mov	r0, #1
     bfc:	eb000f9c 	bl	4a74 <printf>
     c00:	ea000015 	b	c5c <exitwait+0x94>
     c04:	e51b300c 	ldr	r3, [fp, #-12]
     c08:	e3530000 	cmp	r3, #0
     c0c:	0a000008 	beq	c34 <exitwait+0x6c>
     c10:	eb000e63 	bl	45a4 <wait>
     c14:	e1a02000 	mov	r2, r0
     c18:	e51b300c 	ldr	r3, [fp, #-12]
     c1c:	e1530002 	cmp	r3, r2
     c20:	0a000004 	beq	c38 <exitwait+0x70>
     c24:	e59f103c 	ldr	r1, [pc, #60]	@ c68 <exitwait+0xa0>
     c28:	e3a00001 	mov	r0, #1
     c2c:	eb000f90 	bl	4a74 <printf>
     c30:	ea000009 	b	c5c <exitwait+0x94>
     c34:	eb000e51 	bl	4580 <exit>
     c38:	e51b3008 	ldr	r3, [fp, #-8]
     c3c:	e2833001 	add	r3, r3, #1
     c40:	e50b3008 	str	r3, [fp, #-8]
     c44:	e51b3008 	ldr	r3, [fp, #-8]
     c48:	e3530063 	cmp	r3, #99	@ 0x63
     c4c:	daffffe3 	ble	be0 <exitwait+0x18>
     c50:	e59f1014 	ldr	r1, [pc, #20]	@ c6c <exitwait+0xa4>
     c54:	e3a00001 	mov	r0, #1
     c58:	eb000f85 	bl	4a74 <printf>
     c5c:	e24bd004 	sub	sp, fp, #4
     c60:	e8bd8800 	pop	{fp, pc}
     c64:	00005568 	.word	0x00005568
     c68:	00005578 	.word	0x00005578
     c6c:	00005588 	.word	0x00005588

00000c70 <mem>:
     c70:	e92d4800 	push	{fp, lr}
     c74:	e28db004 	add	fp, sp, #4
     c78:	e24dd010 	sub	sp, sp, #16
     c7c:	e59f10dc 	ldr	r1, [pc, #220]	@ d60 <mem+0xf0>
     c80:	e3a00001 	mov	r0, #1
     c84:	eb000f7a 	bl	4a74 <printf>
     c88:	eb000ecc 	bl	47c0 <getpid>
     c8c:	e50b000c 	str	r0, [fp, #-12]
     c90:	eb000e31 	bl	455c <fork>
     c94:	e50b0010 	str	r0, [fp, #-16]
     c98:	e51b3010 	ldr	r3, [fp, #-16]
     c9c:	e3530000 	cmp	r3, #0
     ca0:	1a00002a 	bne	d50 <mem+0xe0>
     ca4:	e3a03000 	mov	r3, #0
     ca8:	e50b3008 	str	r3, [fp, #-8]
     cac:	ea000004 	b	cc4 <mem+0x54>
     cb0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     cb4:	e51b2008 	ldr	r2, [fp, #-8]
     cb8:	e5832000 	str	r2, [r3]
     cbc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     cc0:	e50b3008 	str	r3, [fp, #-8]
     cc4:	e59f0098 	ldr	r0, [pc, #152]	@ d64 <mem+0xf4>
     cc8:	eb001078 	bl	4eb0 <malloc>
     ccc:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
     cd0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     cd4:	e3530000 	cmp	r3, #0
     cd8:	1afffff4 	bne	cb0 <mem+0x40>
     cdc:	ea000006 	b	cfc <mem+0x8c>
     ce0:	e51b3008 	ldr	r3, [fp, #-8]
     ce4:	e5933000 	ldr	r3, [r3]
     ce8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     cec:	e51b0008 	ldr	r0, [fp, #-8]
     cf0:	eb000fed 	bl	4cac <free>
     cf4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     cf8:	e50b3008 	str	r3, [fp, #-8]
     cfc:	e51b3008 	ldr	r3, [fp, #-8]
     d00:	e3530000 	cmp	r3, #0
     d04:	1afffff5 	bne	ce0 <mem+0x70>
     d08:	e3a00a05 	mov	r0, #20480	@ 0x5000
     d0c:	eb001067 	bl	4eb0 <malloc>
     d10:	e50b0008 	str	r0, [fp, #-8]
     d14:	e51b3008 	ldr	r3, [fp, #-8]
     d18:	e3530000 	cmp	r3, #0
     d1c:	1a000005 	bne	d38 <mem+0xc8>
     d20:	e59f1040 	ldr	r1, [pc, #64]	@ d68 <mem+0xf8>
     d24:	e3a00001 	mov	r0, #1
     d28:	eb000f51 	bl	4a74 <printf>
     d2c:	e51b000c 	ldr	r0, [fp, #-12]
     d30:	eb000e48 	bl	4658 <kill>
     d34:	eb000e11 	bl	4580 <exit>
     d38:	e51b0008 	ldr	r0, [fp, #-8]
     d3c:	eb000fda 	bl	4cac <free>
     d40:	e59f1024 	ldr	r1, [pc, #36]	@ d6c <mem+0xfc>
     d44:	e3a00001 	mov	r0, #1
     d48:	eb000f49 	bl	4a74 <printf>
     d4c:	eb000e0b 	bl	4580 <exit>
     d50:	eb000e13 	bl	45a4 <wait>
     d54:	e1a00000 	nop			@ (mov r0, r0)
     d58:	e24bd004 	sub	sp, fp, #4
     d5c:	e8bd8800 	pop	{fp, pc}
     d60:	00005598 	.word	0x00005598
     d64:	00002711 	.word	0x00002711
     d68:	000055a4 	.word	0x000055a4
     d6c:	000055c0 	.word	0x000055c0

00000d70 <sharedfd>:
     d70:	e92d4800 	push	{fp, lr}
     d74:	e28db004 	add	fp, sp, #4
     d78:	e24dd028 	sub	sp, sp, #40	@ 0x28
     d7c:	e59f1208 	ldr	r1, [pc, #520]	@ f8c <sharedfd+0x21c>
     d80:	e3a00001 	mov	r0, #1
     d84:	eb000f3a 	bl	4a74 <printf>
     d88:	e59f0200 	ldr	r0, [pc, #512]	@ f90 <sharedfd+0x220>
     d8c:	eb000e55 	bl	46e8 <unlink>
     d90:	e59f11fc 	ldr	r1, [pc, #508]	@ f94 <sharedfd+0x224>
     d94:	e59f01f4 	ldr	r0, [pc, #500]	@ f90 <sharedfd+0x220>
     d98:	eb000e40 	bl	46a0 <open>
     d9c:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
     da0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     da4:	e3530000 	cmp	r3, #0
     da8:	aa000003 	bge	dbc <sharedfd+0x4c>
     dac:	e59f11e4 	ldr	r1, [pc, #484]	@ f98 <sharedfd+0x228>
     db0:	e3a00001 	mov	r0, #1
     db4:	eb000f2e 	bl	4a74 <printf>
     db8:	ea000071 	b	f84 <sharedfd+0x214>
     dbc:	eb000de6 	bl	455c <fork>
     dc0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     dc4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     dc8:	e3530000 	cmp	r3, #0
     dcc:	1a000001 	bne	dd8 <sharedfd+0x68>
     dd0:	e3a01063 	mov	r1, #99	@ 0x63
     dd4:	ea000000 	b	ddc <sharedfd+0x6c>
     dd8:	e3a01070 	mov	r1, #112	@ 0x70
     ddc:	e24b3028 	sub	r3, fp, #40	@ 0x28
     de0:	e3a0200a 	mov	r2, #10
     de4:	e1a00003 	mov	r0, r3
     de8:	eb000cf2 	bl	41b8 <memset>
     dec:	e3a03000 	mov	r3, #0
     df0:	e50b3008 	str	r3, [fp, #-8]
     df4:	ea00000e 	b	e34 <sharedfd+0xc4>
     df8:	e24b3028 	sub	r3, fp, #40	@ 0x28
     dfc:	e3a0200a 	mov	r2, #10
     e00:	e1a01003 	mov	r1, r3
     e04:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
     e08:	eb000e00 	bl	4610 <write>
     e0c:	e1a03000 	mov	r3, r0
     e10:	e353000a 	cmp	r3, #10
     e14:	0a000003 	beq	e28 <sharedfd+0xb8>
     e18:	e59f117c 	ldr	r1, [pc, #380]	@ f9c <sharedfd+0x22c>
     e1c:	e3a00001 	mov	r0, #1
     e20:	eb000f13 	bl	4a74 <printf>
     e24:	ea000005 	b	e40 <sharedfd+0xd0>
     e28:	e51b3008 	ldr	r3, [fp, #-8]
     e2c:	e2833001 	add	r3, r3, #1
     e30:	e50b3008 	str	r3, [fp, #-8]
     e34:	e51b3008 	ldr	r3, [fp, #-8]
     e38:	e3530ffa 	cmp	r3, #1000	@ 0x3e8
     e3c:	baffffed 	blt	df8 <sharedfd+0x88>
     e40:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e44:	e3530000 	cmp	r3, #0
     e48:	1a000000 	bne	e50 <sharedfd+0xe0>
     e4c:	eb000dcb 	bl	4580 <exit>
     e50:	eb000dd3 	bl	45a4 <wait>
     e54:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
     e58:	eb000df5 	bl	4634 <close>
     e5c:	e3a01000 	mov	r1, #0
     e60:	e59f0128 	ldr	r0, [pc, #296]	@ f90 <sharedfd+0x220>
     e64:	eb000e0d 	bl	46a0 <open>
     e68:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
     e6c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     e70:	e3530000 	cmp	r3, #0
     e74:	aa000003 	bge	e88 <sharedfd+0x118>
     e78:	e59f1120 	ldr	r1, [pc, #288]	@ fa0 <sharedfd+0x230>
     e7c:	e3a00001 	mov	r0, #1
     e80:	eb000efb 	bl	4a74 <printf>
     e84:	ea00003e 	b	f84 <sharedfd+0x214>
     e88:	e3a03000 	mov	r3, #0
     e8c:	e50b3010 	str	r3, [fp, #-16]
     e90:	e51b3010 	ldr	r3, [fp, #-16]
     e94:	e50b300c 	str	r3, [fp, #-12]
     e98:	ea00001a 	b	f08 <sharedfd+0x198>
     e9c:	e3a03000 	mov	r3, #0
     ea0:	e50b3008 	str	r3, [fp, #-8]
     ea4:	ea000014 	b	efc <sharedfd+0x18c>
     ea8:	e24b2028 	sub	r2, fp, #40	@ 0x28
     eac:	e51b3008 	ldr	r3, [fp, #-8]
     eb0:	e0823003 	add	r3, r2, r3
     eb4:	e5d33000 	ldrb	r3, [r3]
     eb8:	e3530063 	cmp	r3, #99	@ 0x63
     ebc:	1a000002 	bne	ecc <sharedfd+0x15c>
     ec0:	e51b300c 	ldr	r3, [fp, #-12]
     ec4:	e2833001 	add	r3, r3, #1
     ec8:	e50b300c 	str	r3, [fp, #-12]
     ecc:	e24b2028 	sub	r2, fp, #40	@ 0x28
     ed0:	e51b3008 	ldr	r3, [fp, #-8]
     ed4:	e0823003 	add	r3, r2, r3
     ed8:	e5d33000 	ldrb	r3, [r3]
     edc:	e3530070 	cmp	r3, #112	@ 0x70
     ee0:	1a000002 	bne	ef0 <sharedfd+0x180>
     ee4:	e51b3010 	ldr	r3, [fp, #-16]
     ee8:	e2833001 	add	r3, r3, #1
     eec:	e50b3010 	str	r3, [fp, #-16]
     ef0:	e51b3008 	ldr	r3, [fp, #-8]
     ef4:	e2833001 	add	r3, r3, #1
     ef8:	e50b3008 	str	r3, [fp, #-8]
     efc:	e51b3008 	ldr	r3, [fp, #-8]
     f00:	e3530009 	cmp	r3, #9
     f04:	9affffe7 	bls	ea8 <sharedfd+0x138>
     f08:	e24b3028 	sub	r3, fp, #40	@ 0x28
     f0c:	e3a0200a 	mov	r2, #10
     f10:	e1a01003 	mov	r1, r3
     f14:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
     f18:	eb000db3 	bl	45ec <read>
     f1c:	e50b001c 	str	r0, [fp, #-28]	@ 0xffffffe4
     f20:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f24:	e3530000 	cmp	r3, #0
     f28:	caffffdb 	bgt	e9c <sharedfd+0x12c>
     f2c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
     f30:	eb000dbf 	bl	4634 <close>
     f34:	e59f0054 	ldr	r0, [pc, #84]	@ f90 <sharedfd+0x220>
     f38:	eb000dea 	bl	46e8 <unlink>
     f3c:	e51b300c 	ldr	r3, [fp, #-12]
     f40:	e59f205c 	ldr	r2, [pc, #92]	@ fa4 <sharedfd+0x234>
     f44:	e1530002 	cmp	r3, r2
     f48:	1a000007 	bne	f6c <sharedfd+0x1fc>
     f4c:	e51b3010 	ldr	r3, [fp, #-16]
     f50:	e59f204c 	ldr	r2, [pc, #76]	@ fa4 <sharedfd+0x234>
     f54:	e1530002 	cmp	r3, r2
     f58:	1a000003 	bne	f6c <sharedfd+0x1fc>
     f5c:	e59f1044 	ldr	r1, [pc, #68]	@ fa8 <sharedfd+0x238>
     f60:	e3a00001 	mov	r0, #1
     f64:	eb000ec2 	bl	4a74 <printf>
     f68:	ea000005 	b	f84 <sharedfd+0x214>
     f6c:	e51b3010 	ldr	r3, [fp, #-16]
     f70:	e51b200c 	ldr	r2, [fp, #-12]
     f74:	e59f1030 	ldr	r1, [pc, #48]	@ fac <sharedfd+0x23c>
     f78:	e3a00001 	mov	r0, #1
     f7c:	eb000ebc 	bl	4a74 <printf>
     f80:	eb000d7e 	bl	4580 <exit>
     f84:	e24bd004 	sub	sp, fp, #4
     f88:	e8bd8800 	pop	{fp, pc}
     f8c:	000055c8 	.word	0x000055c8
     f90:	000055d8 	.word	0x000055d8
     f94:	00000202 	.word	0x00000202
     f98:	000055e4 	.word	0x000055e4
     f9c:	00005610 	.word	0x00005610
     fa0:	00005630 	.word	0x00005630
     fa4:	00002710 	.word	0x00002710
     fa8:	0000565c 	.word	0x0000565c
     fac:	0000566c 	.word	0x0000566c

00000fb0 <twofiles>:
     fb0:	e92d4800 	push	{fp, lr}
     fb4:	e28db004 	add	fp, sp, #4
     fb8:	e24dd020 	sub	sp, sp, #32
     fbc:	e59f1268 	ldr	r1, [pc, #616]	@ 122c <twofiles+0x27c>
     fc0:	e3a00001 	mov	r0, #1
     fc4:	eb000eaa 	bl	4a74 <printf>
     fc8:	e59f0260 	ldr	r0, [pc, #608]	@ 1230 <twofiles+0x280>
     fcc:	eb000dc5 	bl	46e8 <unlink>
     fd0:	e59f025c 	ldr	r0, [pc, #604]	@ 1234 <twofiles+0x284>
     fd4:	eb000dc3 	bl	46e8 <unlink>
     fd8:	eb000d5f 	bl	455c <fork>
     fdc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     fe0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fe4:	e3530000 	cmp	r3, #0
     fe8:	aa000003 	bge	ffc <twofiles+0x4c>
     fec:	e59f1244 	ldr	r1, [pc, #580]	@ 1238 <twofiles+0x288>
     ff0:	e3a00001 	mov	r0, #1
     ff4:	eb000e9e 	bl	4a74 <printf>
     ff8:	eb000d60 	bl	4580 <exit>
     ffc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1000:	e3530000 	cmp	r3, #0
    1004:	0a000002 	beq	1014 <twofiles+0x64>
    1008:	e59f3220 	ldr	r3, [pc, #544]	@ 1230 <twofiles+0x280>
    100c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1010:	ea000001 	b	101c <twofiles+0x6c>
    1014:	e59f3218 	ldr	r3, [pc, #536]	@ 1234 <twofiles+0x284>
    1018:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    101c:	e59f1218 	ldr	r1, [pc, #536]	@ 123c <twofiles+0x28c>
    1020:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
    1024:	eb000d9d 	bl	46a0 <open>
    1028:	e50b001c 	str	r0, [fp, #-28]	@ 0xffffffe4
    102c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1030:	e3530000 	cmp	r3, #0
    1034:	aa000003 	bge	1048 <twofiles+0x98>
    1038:	e59f1200 	ldr	r1, [pc, #512]	@ 1240 <twofiles+0x290>
    103c:	e3a00001 	mov	r0, #1
    1040:	eb000e8b 	bl	4a74 <printf>
    1044:	eb000d4d 	bl	4580 <exit>
    1048:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    104c:	e3530000 	cmp	r3, #0
    1050:	0a000001 	beq	105c <twofiles+0xac>
    1054:	e3a03070 	mov	r3, #112	@ 0x70
    1058:	ea000000 	b	1060 <twofiles+0xb0>
    105c:	e3a03063 	mov	r3, #99	@ 0x63
    1060:	e3a02c02 	mov	r2, #512	@ 0x200
    1064:	e1a01003 	mov	r1, r3
    1068:	e59f01d4 	ldr	r0, [pc, #468]	@ 1244 <twofiles+0x294>
    106c:	eb000c51 	bl	41b8 <memset>
    1070:	e3a03000 	mov	r3, #0
    1074:	e50b3008 	str	r3, [fp, #-8]
    1078:	ea00000f 	b	10bc <twofiles+0x10c>
    107c:	e3a02f7d 	mov	r2, #500	@ 0x1f4
    1080:	e59f11bc 	ldr	r1, [pc, #444]	@ 1244 <twofiles+0x294>
    1084:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
    1088:	eb000d60 	bl	4610 <write>
    108c:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
    1090:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1094:	e3530f7d 	cmp	r3, #500	@ 0x1f4
    1098:	0a000004 	beq	10b0 <twofiles+0x100>
    109c:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
    10a0:	e59f11a0 	ldr	r1, [pc, #416]	@ 1248 <twofiles+0x298>
    10a4:	e3a00001 	mov	r0, #1
    10a8:	eb000e71 	bl	4a74 <printf>
    10ac:	eb000d33 	bl	4580 <exit>
    10b0:	e51b3008 	ldr	r3, [fp, #-8]
    10b4:	e2833001 	add	r3, r3, #1
    10b8:	e50b3008 	str	r3, [fp, #-8]
    10bc:	e51b3008 	ldr	r3, [fp, #-8]
    10c0:	e353000b 	cmp	r3, #11
    10c4:	daffffec 	ble	107c <twofiles+0xcc>
    10c8:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
    10cc:	eb000d58 	bl	4634 <close>
    10d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10d4:	e3530000 	cmp	r3, #0
    10d8:	0a000003 	beq	10ec <twofiles+0x13c>
    10dc:	eb000d30 	bl	45a4 <wait>
    10e0:	e3a03000 	mov	r3, #0
    10e4:	e50b3008 	str	r3, [fp, #-8]
    10e8:	ea000042 	b	11f8 <twofiles+0x248>
    10ec:	eb000d23 	bl	4580 <exit>
    10f0:	e51b3008 	ldr	r3, [fp, #-8]
    10f4:	e3530000 	cmp	r3, #0
    10f8:	0a000001 	beq	1104 <twofiles+0x154>
    10fc:	e59f312c 	ldr	r3, [pc, #300]	@ 1230 <twofiles+0x280>
    1100:	ea000000 	b	1108 <twofiles+0x158>
    1104:	e59f3128 	ldr	r3, [pc, #296]	@ 1234 <twofiles+0x284>
    1108:	e3a01000 	mov	r1, #0
    110c:	e1a00003 	mov	r0, r3
    1110:	eb000d62 	bl	46a0 <open>
    1114:	e50b001c 	str	r0, [fp, #-28]	@ 0xffffffe4
    1118:	e3a03000 	mov	r3, #0
    111c:	e50b3010 	str	r3, [fp, #-16]
    1120:	ea00001e 	b	11a0 <twofiles+0x1f0>
    1124:	e3a03000 	mov	r3, #0
    1128:	e50b300c 	str	r3, [fp, #-12]
    112c:	ea000013 	b	1180 <twofiles+0x1d0>
    1130:	e59f210c 	ldr	r2, [pc, #268]	@ 1244 <twofiles+0x294>
    1134:	e51b300c 	ldr	r3, [fp, #-12]
    1138:	e0823003 	add	r3, r2, r3
    113c:	e5d33000 	ldrb	r3, [r3]
    1140:	e1a02003 	mov	r2, r3
    1144:	e51b3008 	ldr	r3, [fp, #-8]
    1148:	e3530000 	cmp	r3, #0
    114c:	0a000001 	beq	1158 <twofiles+0x1a8>
    1150:	e3a03070 	mov	r3, #112	@ 0x70
    1154:	ea000000 	b	115c <twofiles+0x1ac>
    1158:	e3a03063 	mov	r3, #99	@ 0x63
    115c:	e1530002 	cmp	r3, r2
    1160:	0a000003 	beq	1174 <twofiles+0x1c4>
    1164:	e59f10e0 	ldr	r1, [pc, #224]	@ 124c <twofiles+0x29c>
    1168:	e3a00001 	mov	r0, #1
    116c:	eb000e40 	bl	4a74 <printf>
    1170:	eb000d02 	bl	4580 <exit>
    1174:	e51b300c 	ldr	r3, [fp, #-12]
    1178:	e2833001 	add	r3, r3, #1
    117c:	e50b300c 	str	r3, [fp, #-12]
    1180:	e51b200c 	ldr	r2, [fp, #-12]
    1184:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1188:	e1520003 	cmp	r2, r3
    118c:	baffffe7 	blt	1130 <twofiles+0x180>
    1190:	e51b2010 	ldr	r2, [fp, #-16]
    1194:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1198:	e0823003 	add	r3, r2, r3
    119c:	e50b3010 	str	r3, [fp, #-16]
    11a0:	e3a02a02 	mov	r2, #8192	@ 0x2000
    11a4:	e59f1098 	ldr	r1, [pc, #152]	@ 1244 <twofiles+0x294>
    11a8:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
    11ac:	eb000d0e 	bl	45ec <read>
    11b0:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
    11b4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    11b8:	e3530000 	cmp	r3, #0
    11bc:	caffffd8 	bgt	1124 <twofiles+0x174>
    11c0:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
    11c4:	eb000d1a 	bl	4634 <close>
    11c8:	e51b3010 	ldr	r3, [fp, #-16]
    11cc:	e59f207c 	ldr	r2, [pc, #124]	@ 1250 <twofiles+0x2a0>
    11d0:	e1530002 	cmp	r3, r2
    11d4:	0a000004 	beq	11ec <twofiles+0x23c>
    11d8:	e51b2010 	ldr	r2, [fp, #-16]
    11dc:	e59f1070 	ldr	r1, [pc, #112]	@ 1254 <twofiles+0x2a4>
    11e0:	e3a00001 	mov	r0, #1
    11e4:	eb000e22 	bl	4a74 <printf>
    11e8:	eb000ce4 	bl	4580 <exit>
    11ec:	e51b3008 	ldr	r3, [fp, #-8]
    11f0:	e2833001 	add	r3, r3, #1
    11f4:	e50b3008 	str	r3, [fp, #-8]
    11f8:	e51b3008 	ldr	r3, [fp, #-8]
    11fc:	e3530001 	cmp	r3, #1
    1200:	daffffba 	ble	10f0 <twofiles+0x140>
    1204:	e59f0024 	ldr	r0, [pc, #36]	@ 1230 <twofiles+0x280>
    1208:	eb000d36 	bl	46e8 <unlink>
    120c:	e59f0020 	ldr	r0, [pc, #32]	@ 1234 <twofiles+0x284>
    1210:	eb000d34 	bl	46e8 <unlink>
    1214:	e59f103c 	ldr	r1, [pc, #60]	@ 1258 <twofiles+0x2a8>
    1218:	e3a00001 	mov	r0, #1
    121c:	eb000e14 	bl	4a74 <printf>
    1220:	e1a00000 	nop			@ (mov r0, r0)
    1224:	e24bd004 	sub	sp, fp, #4
    1228:	e8bd8800 	pop	{fp, pc}
    122c:	00005684 	.word	0x00005684
    1230:	00005694 	.word	0x00005694
    1234:	00005698 	.word	0x00005698
    1238:	00005568 	.word	0x00005568
    123c:	00000202 	.word	0x00000202
    1240:	0000569c 	.word	0x0000569c
    1244:	00006998 	.word	0x00006998
    1248:	000056ac 	.word	0x000056ac
    124c:	000056c0 	.word	0x000056c0
    1250:	00001770 	.word	0x00001770
    1254:	000056cc 	.word	0x000056cc
    1258:	000056e0 	.word	0x000056e0

0000125c <createdelete>:
    125c:	e92d4800 	push	{fp, lr}
    1260:	e28db004 	add	fp, sp, #4
    1264:	e24dd030 	sub	sp, sp, #48	@ 0x30
    1268:	e59f1348 	ldr	r1, [pc, #840]	@ 15b8 <createdelete+0x35c>
    126c:	e3a00001 	mov	r0, #1
    1270:	eb000dff 	bl	4a74 <printf>
    1274:	eb000cb8 	bl	455c <fork>
    1278:	e50b000c 	str	r0, [fp, #-12]
    127c:	e51b300c 	ldr	r3, [fp, #-12]
    1280:	e3530000 	cmp	r3, #0
    1284:	aa000003 	bge	1298 <createdelete+0x3c>
    1288:	e59f132c 	ldr	r1, [pc, #812]	@ 15bc <createdelete+0x360>
    128c:	e3a00001 	mov	r0, #1
    1290:	eb000df7 	bl	4a74 <printf>
    1294:	eb000cb9 	bl	4580 <exit>
    1298:	e51b300c 	ldr	r3, [fp, #-12]
    129c:	e3530000 	cmp	r3, #0
    12a0:	0a000001 	beq	12ac <createdelete+0x50>
    12a4:	e3a03070 	mov	r3, #112	@ 0x70
    12a8:	ea000000 	b	12b0 <createdelete+0x54>
    12ac:	e3a03063 	mov	r3, #99	@ 0x63
    12b0:	e54b3030 	strb	r3, [fp, #-48]	@ 0xffffffd0
    12b4:	e3a03000 	mov	r3, #0
    12b8:	e54b302e 	strb	r3, [fp, #-46]	@ 0xffffffd2
    12bc:	e3a03000 	mov	r3, #0
    12c0:	e50b3008 	str	r3, [fp, #-8]
    12c4:	ea00002e 	b	1384 <createdelete+0x128>
    12c8:	e51b3008 	ldr	r3, [fp, #-8]
    12cc:	e6ef3073 	uxtb	r3, r3
    12d0:	e2833030 	add	r3, r3, #48	@ 0x30
    12d4:	e6ef3073 	uxtb	r3, r3
    12d8:	e54b302f 	strb	r3, [fp, #-47]	@ 0xffffffd1
    12dc:	e24b3030 	sub	r3, fp, #48	@ 0x30
    12e0:	e59f12d8 	ldr	r1, [pc, #728]	@ 15c0 <createdelete+0x364>
    12e4:	e1a00003 	mov	r0, r3
    12e8:	eb000cec 	bl	46a0 <open>
    12ec:	e50b0010 	str	r0, [fp, #-16]
    12f0:	e51b3010 	ldr	r3, [fp, #-16]
    12f4:	e3530000 	cmp	r3, #0
    12f8:	aa000003 	bge	130c <createdelete+0xb0>
    12fc:	e59f12c0 	ldr	r1, [pc, #704]	@ 15c4 <createdelete+0x368>
    1300:	e3a00001 	mov	r0, #1
    1304:	eb000dda 	bl	4a74 <printf>
    1308:	eb000c9c 	bl	4580 <exit>
    130c:	e51b0010 	ldr	r0, [fp, #-16]
    1310:	eb000cc7 	bl	4634 <close>
    1314:	e51b3008 	ldr	r3, [fp, #-8]
    1318:	e3530000 	cmp	r3, #0
    131c:	da000015 	ble	1378 <createdelete+0x11c>
    1320:	e51b3008 	ldr	r3, [fp, #-8]
    1324:	e2033001 	and	r3, r3, #1
    1328:	e3530000 	cmp	r3, #0
    132c:	1a000011 	bne	1378 <createdelete+0x11c>
    1330:	e51b3008 	ldr	r3, [fp, #-8]
    1334:	e1a02fa3 	lsr	r2, r3, #31
    1338:	e0823003 	add	r3, r2, r3
    133c:	e1a030c3 	asr	r3, r3, #1
    1340:	e6ef3073 	uxtb	r3, r3
    1344:	e2833030 	add	r3, r3, #48	@ 0x30
    1348:	e6ef3073 	uxtb	r3, r3
    134c:	e54b302f 	strb	r3, [fp, #-47]	@ 0xffffffd1
    1350:	e24b3030 	sub	r3, fp, #48	@ 0x30
    1354:	e1a00003 	mov	r0, r3
    1358:	eb000ce2 	bl	46e8 <unlink>
    135c:	e1a03000 	mov	r3, r0
    1360:	e3530000 	cmp	r3, #0
    1364:	aa000003 	bge	1378 <createdelete+0x11c>
    1368:	e59f1258 	ldr	r1, [pc, #600]	@ 15c8 <createdelete+0x36c>
    136c:	e3a00001 	mov	r0, #1
    1370:	eb000dbf 	bl	4a74 <printf>
    1374:	eb000c81 	bl	4580 <exit>
    1378:	e51b3008 	ldr	r3, [fp, #-8]
    137c:	e2833001 	add	r3, r3, #1
    1380:	e50b3008 	str	r3, [fp, #-8]
    1384:	e51b3008 	ldr	r3, [fp, #-8]
    1388:	e3530013 	cmp	r3, #19
    138c:	daffffcd 	ble	12c8 <createdelete+0x6c>
    1390:	e51b300c 	ldr	r3, [fp, #-12]
    1394:	e3530000 	cmp	r3, #0
    1398:	1a000000 	bne	13a0 <createdelete+0x144>
    139c:	eb000c77 	bl	4580 <exit>
    13a0:	eb000c7f 	bl	45a4 <wait>
    13a4:	e3a03000 	mov	r3, #0
    13a8:	e50b3008 	str	r3, [fp, #-8]
    13ac:	ea000060 	b	1534 <createdelete+0x2d8>
    13b0:	e3a03070 	mov	r3, #112	@ 0x70
    13b4:	e54b3030 	strb	r3, [fp, #-48]	@ 0xffffffd0
    13b8:	e51b3008 	ldr	r3, [fp, #-8]
    13bc:	e6ef3073 	uxtb	r3, r3
    13c0:	e2833030 	add	r3, r3, #48	@ 0x30
    13c4:	e6ef3073 	uxtb	r3, r3
    13c8:	e54b302f 	strb	r3, [fp, #-47]	@ 0xffffffd1
    13cc:	e24b3030 	sub	r3, fp, #48	@ 0x30
    13d0:	e3a01000 	mov	r1, #0
    13d4:	e1a00003 	mov	r0, r3
    13d8:	eb000cb0 	bl	46a0 <open>
    13dc:	e50b0010 	str	r0, [fp, #-16]
    13e0:	e51b3008 	ldr	r3, [fp, #-8]
    13e4:	e3530000 	cmp	r3, #0
    13e8:	0a000002 	beq	13f8 <createdelete+0x19c>
    13ec:	e51b3008 	ldr	r3, [fp, #-8]
    13f0:	e3530009 	cmp	r3, #9
    13f4:	da000008 	ble	141c <createdelete+0x1c0>
    13f8:	e51b3010 	ldr	r3, [fp, #-16]
    13fc:	e3530000 	cmp	r3, #0
    1400:	aa000005 	bge	141c <createdelete+0x1c0>
    1404:	e24b3030 	sub	r3, fp, #48	@ 0x30
    1408:	e1a02003 	mov	r2, r3
    140c:	e59f11b8 	ldr	r1, [pc, #440]	@ 15cc <createdelete+0x370>
    1410:	e3a00001 	mov	r0, #1
    1414:	eb000d96 	bl	4a74 <printf>
    1418:	eb000c58 	bl	4580 <exit>
    141c:	e51b3008 	ldr	r3, [fp, #-8]
    1420:	e3530000 	cmp	r3, #0
    1424:	da00000b 	ble	1458 <createdelete+0x1fc>
    1428:	e51b3008 	ldr	r3, [fp, #-8]
    142c:	e3530009 	cmp	r3, #9
    1430:	ca000008 	bgt	1458 <createdelete+0x1fc>
    1434:	e51b3010 	ldr	r3, [fp, #-16]
    1438:	e3530000 	cmp	r3, #0
    143c:	ba000005 	blt	1458 <createdelete+0x1fc>
    1440:	e24b3030 	sub	r3, fp, #48	@ 0x30
    1444:	e1a02003 	mov	r2, r3
    1448:	e59f1180 	ldr	r1, [pc, #384]	@ 15d0 <createdelete+0x374>
    144c:	e3a00001 	mov	r0, #1
    1450:	eb000d87 	bl	4a74 <printf>
    1454:	eb000c49 	bl	4580 <exit>
    1458:	e51b3010 	ldr	r3, [fp, #-16]
    145c:	e3530000 	cmp	r3, #0
    1460:	ba000001 	blt	146c <createdelete+0x210>
    1464:	e51b0010 	ldr	r0, [fp, #-16]
    1468:	eb000c71 	bl	4634 <close>
    146c:	e3a03063 	mov	r3, #99	@ 0x63
    1470:	e54b3030 	strb	r3, [fp, #-48]	@ 0xffffffd0
    1474:	e51b3008 	ldr	r3, [fp, #-8]
    1478:	e6ef3073 	uxtb	r3, r3
    147c:	e2833030 	add	r3, r3, #48	@ 0x30
    1480:	e6ef3073 	uxtb	r3, r3
    1484:	e54b302f 	strb	r3, [fp, #-47]	@ 0xffffffd1
    1488:	e24b3030 	sub	r3, fp, #48	@ 0x30
    148c:	e3a01000 	mov	r1, #0
    1490:	e1a00003 	mov	r0, r3
    1494:	eb000c81 	bl	46a0 <open>
    1498:	e50b0010 	str	r0, [fp, #-16]
    149c:	e51b3008 	ldr	r3, [fp, #-8]
    14a0:	e3530000 	cmp	r3, #0
    14a4:	0a000002 	beq	14b4 <createdelete+0x258>
    14a8:	e51b3008 	ldr	r3, [fp, #-8]
    14ac:	e3530009 	cmp	r3, #9
    14b0:	da000008 	ble	14d8 <createdelete+0x27c>
    14b4:	e51b3010 	ldr	r3, [fp, #-16]
    14b8:	e3530000 	cmp	r3, #0
    14bc:	aa000005 	bge	14d8 <createdelete+0x27c>
    14c0:	e24b3030 	sub	r3, fp, #48	@ 0x30
    14c4:	e1a02003 	mov	r2, r3
    14c8:	e59f10fc 	ldr	r1, [pc, #252]	@ 15cc <createdelete+0x370>
    14cc:	e3a00001 	mov	r0, #1
    14d0:	eb000d67 	bl	4a74 <printf>
    14d4:	eb000c29 	bl	4580 <exit>
    14d8:	e51b3008 	ldr	r3, [fp, #-8]
    14dc:	e3530000 	cmp	r3, #0
    14e0:	da00000b 	ble	1514 <createdelete+0x2b8>
    14e4:	e51b3008 	ldr	r3, [fp, #-8]
    14e8:	e3530009 	cmp	r3, #9
    14ec:	ca000008 	bgt	1514 <createdelete+0x2b8>
    14f0:	e51b3010 	ldr	r3, [fp, #-16]
    14f4:	e3530000 	cmp	r3, #0
    14f8:	ba000005 	blt	1514 <createdelete+0x2b8>
    14fc:	e24b3030 	sub	r3, fp, #48	@ 0x30
    1500:	e1a02003 	mov	r2, r3
    1504:	e59f10c4 	ldr	r1, [pc, #196]	@ 15d0 <createdelete+0x374>
    1508:	e3a00001 	mov	r0, #1
    150c:	eb000d58 	bl	4a74 <printf>
    1510:	eb000c1a 	bl	4580 <exit>
    1514:	e51b3010 	ldr	r3, [fp, #-16]
    1518:	e3530000 	cmp	r3, #0
    151c:	ba000001 	blt	1528 <createdelete+0x2cc>
    1520:	e51b0010 	ldr	r0, [fp, #-16]
    1524:	eb000c42 	bl	4634 <close>
    1528:	e51b3008 	ldr	r3, [fp, #-8]
    152c:	e2833001 	add	r3, r3, #1
    1530:	e50b3008 	str	r3, [fp, #-8]
    1534:	e51b3008 	ldr	r3, [fp, #-8]
    1538:	e3530013 	cmp	r3, #19
    153c:	daffff9b 	ble	13b0 <createdelete+0x154>
    1540:	e3a03000 	mov	r3, #0
    1544:	e50b3008 	str	r3, [fp, #-8]
    1548:	ea000011 	b	1594 <createdelete+0x338>
    154c:	e3a03070 	mov	r3, #112	@ 0x70
    1550:	e54b3030 	strb	r3, [fp, #-48]	@ 0xffffffd0
    1554:	e51b3008 	ldr	r3, [fp, #-8]
    1558:	e6ef3073 	uxtb	r3, r3
    155c:	e2833030 	add	r3, r3, #48	@ 0x30
    1560:	e6ef3073 	uxtb	r3, r3
    1564:	e54b302f 	strb	r3, [fp, #-47]	@ 0xffffffd1
    1568:	e24b3030 	sub	r3, fp, #48	@ 0x30
    156c:	e1a00003 	mov	r0, r3
    1570:	eb000c5c 	bl	46e8 <unlink>
    1574:	e3a03063 	mov	r3, #99	@ 0x63
    1578:	e54b3030 	strb	r3, [fp, #-48]	@ 0xffffffd0
    157c:	e24b3030 	sub	r3, fp, #48	@ 0x30
    1580:	e1a00003 	mov	r0, r3
    1584:	eb000c57 	bl	46e8 <unlink>
    1588:	e51b3008 	ldr	r3, [fp, #-8]
    158c:	e2833001 	add	r3, r3, #1
    1590:	e50b3008 	str	r3, [fp, #-8]
    1594:	e51b3008 	ldr	r3, [fp, #-8]
    1598:	e3530013 	cmp	r3, #19
    159c:	daffffea 	ble	154c <createdelete+0x2f0>
    15a0:	e59f102c 	ldr	r1, [pc, #44]	@ 15d4 <createdelete+0x378>
    15a4:	e3a00001 	mov	r0, #1
    15a8:	eb000d31 	bl	4a74 <printf>
    15ac:	e1a00000 	nop			@ (mov r0, r0)
    15b0:	e24bd004 	sub	sp, fp, #4
    15b4:	e8bd8800 	pop	{fp, pc}
    15b8:	000056f0 	.word	0x000056f0
    15bc:	00005568 	.word	0x00005568
    15c0:	00000202 	.word	0x00000202
    15c4:	0000569c 	.word	0x0000569c
    15c8:	00005704 	.word	0x00005704
    15cc:	00005714 	.word	0x00005714
    15d0:	00005738 	.word	0x00005738
    15d4:	00005758 	.word	0x00005758

000015d8 <unlinkread>:
    15d8:	e92d4800 	push	{fp, lr}
    15dc:	e28db004 	add	fp, sp, #4
    15e0:	e24dd008 	sub	sp, sp, #8
    15e4:	e59f1160 	ldr	r1, [pc, #352]	@ 174c <unlinkread+0x174>
    15e8:	e3a00001 	mov	r0, #1
    15ec:	eb000d20 	bl	4a74 <printf>
    15f0:	e59f1158 	ldr	r1, [pc, #344]	@ 1750 <unlinkread+0x178>
    15f4:	e59f0158 	ldr	r0, [pc, #344]	@ 1754 <unlinkread+0x17c>
    15f8:	eb000c28 	bl	46a0 <open>
    15fc:	e50b0008 	str	r0, [fp, #-8]
    1600:	e51b3008 	ldr	r3, [fp, #-8]
    1604:	e3530000 	cmp	r3, #0
    1608:	aa000003 	bge	161c <unlinkread+0x44>
    160c:	e59f1144 	ldr	r1, [pc, #324]	@ 1758 <unlinkread+0x180>
    1610:	e3a00001 	mov	r0, #1
    1614:	eb000d16 	bl	4a74 <printf>
    1618:	eb000bd8 	bl	4580 <exit>
    161c:	e3a02005 	mov	r2, #5
    1620:	e59f1134 	ldr	r1, [pc, #308]	@ 175c <unlinkread+0x184>
    1624:	e51b0008 	ldr	r0, [fp, #-8]
    1628:	eb000bf8 	bl	4610 <write>
    162c:	e51b0008 	ldr	r0, [fp, #-8]
    1630:	eb000bff 	bl	4634 <close>
    1634:	e3a01002 	mov	r1, #2
    1638:	e59f0114 	ldr	r0, [pc, #276]	@ 1754 <unlinkread+0x17c>
    163c:	eb000c17 	bl	46a0 <open>
    1640:	e50b0008 	str	r0, [fp, #-8]
    1644:	e51b3008 	ldr	r3, [fp, #-8]
    1648:	e3530000 	cmp	r3, #0
    164c:	aa000003 	bge	1660 <unlinkread+0x88>
    1650:	e59f1108 	ldr	r1, [pc, #264]	@ 1760 <unlinkread+0x188>
    1654:	e3a00001 	mov	r0, #1
    1658:	eb000d05 	bl	4a74 <printf>
    165c:	eb000bc7 	bl	4580 <exit>
    1660:	e59f00ec 	ldr	r0, [pc, #236]	@ 1754 <unlinkread+0x17c>
    1664:	eb000c1f 	bl	46e8 <unlink>
    1668:	e1a03000 	mov	r3, r0
    166c:	e3530000 	cmp	r3, #0
    1670:	0a000003 	beq	1684 <unlinkread+0xac>
    1674:	e59f10e8 	ldr	r1, [pc, #232]	@ 1764 <unlinkread+0x18c>
    1678:	e3a00001 	mov	r0, #1
    167c:	eb000cfc 	bl	4a74 <printf>
    1680:	eb000bbe 	bl	4580 <exit>
    1684:	e59f10c4 	ldr	r1, [pc, #196]	@ 1750 <unlinkread+0x178>
    1688:	e59f00c4 	ldr	r0, [pc, #196]	@ 1754 <unlinkread+0x17c>
    168c:	eb000c03 	bl	46a0 <open>
    1690:	e50b000c 	str	r0, [fp, #-12]
    1694:	e3a02003 	mov	r2, #3
    1698:	e59f10c8 	ldr	r1, [pc, #200]	@ 1768 <unlinkread+0x190>
    169c:	e51b000c 	ldr	r0, [fp, #-12]
    16a0:	eb000bda 	bl	4610 <write>
    16a4:	e51b000c 	ldr	r0, [fp, #-12]
    16a8:	eb000be1 	bl	4634 <close>
    16ac:	e3a02a02 	mov	r2, #8192	@ 0x2000
    16b0:	e59f10b4 	ldr	r1, [pc, #180]	@ 176c <unlinkread+0x194>
    16b4:	e51b0008 	ldr	r0, [fp, #-8]
    16b8:	eb000bcb 	bl	45ec <read>
    16bc:	e1a03000 	mov	r3, r0
    16c0:	e3530005 	cmp	r3, #5
    16c4:	0a000003 	beq	16d8 <unlinkread+0x100>
    16c8:	e59f10a0 	ldr	r1, [pc, #160]	@ 1770 <unlinkread+0x198>
    16cc:	e3a00001 	mov	r0, #1
    16d0:	eb000ce7 	bl	4a74 <printf>
    16d4:	eb000ba9 	bl	4580 <exit>
    16d8:	e59f308c 	ldr	r3, [pc, #140]	@ 176c <unlinkread+0x194>
    16dc:	e5d33000 	ldrb	r3, [r3]
    16e0:	e3530068 	cmp	r3, #104	@ 0x68
    16e4:	0a000003 	beq	16f8 <unlinkread+0x120>
    16e8:	e59f1084 	ldr	r1, [pc, #132]	@ 1774 <unlinkread+0x19c>
    16ec:	e3a00001 	mov	r0, #1
    16f0:	eb000cdf 	bl	4a74 <printf>
    16f4:	eb000ba1 	bl	4580 <exit>
    16f8:	e3a0200a 	mov	r2, #10
    16fc:	e59f1068 	ldr	r1, [pc, #104]	@ 176c <unlinkread+0x194>
    1700:	e51b0008 	ldr	r0, [fp, #-8]
    1704:	eb000bc1 	bl	4610 <write>
    1708:	e1a03000 	mov	r3, r0
    170c:	e353000a 	cmp	r3, #10
    1710:	0a000003 	beq	1724 <unlinkread+0x14c>
    1714:	e59f105c 	ldr	r1, [pc, #92]	@ 1778 <unlinkread+0x1a0>
    1718:	e3a00001 	mov	r0, #1
    171c:	eb000cd4 	bl	4a74 <printf>
    1720:	eb000b96 	bl	4580 <exit>
    1724:	e51b0008 	ldr	r0, [fp, #-8]
    1728:	eb000bc1 	bl	4634 <close>
    172c:	e59f0020 	ldr	r0, [pc, #32]	@ 1754 <unlinkread+0x17c>
    1730:	eb000bec 	bl	46e8 <unlink>
    1734:	e59f1040 	ldr	r1, [pc, #64]	@ 177c <unlinkread+0x1a4>
    1738:	e3a00001 	mov	r0, #1
    173c:	eb000ccc 	bl	4a74 <printf>
    1740:	e1a00000 	nop			@ (mov r0, r0)
    1744:	e24bd004 	sub	sp, fp, #4
    1748:	e8bd8800 	pop	{fp, pc}
    174c:	0000576c 	.word	0x0000576c
    1750:	00000202 	.word	0x00000202
    1754:	00005780 	.word	0x00005780
    1758:	0000578c 	.word	0x0000578c
    175c:	000057a8 	.word	0x000057a8
    1760:	000057b0 	.word	0x000057b0
    1764:	000057c8 	.word	0x000057c8
    1768:	000057e4 	.word	0x000057e4
    176c:	00006998 	.word	0x00006998
    1770:	000057e8 	.word	0x000057e8
    1774:	00005800 	.word	0x00005800
    1778:	00005818 	.word	0x00005818
    177c:	00005834 	.word	0x00005834

00001780 <linktest>:
    1780:	e92d4800 	push	{fp, lr}
    1784:	e28db004 	add	fp, sp, #4
    1788:	e24dd008 	sub	sp, sp, #8
    178c:	e59f11c4 	ldr	r1, [pc, #452]	@ 1958 <linktest+0x1d8>
    1790:	e3a00001 	mov	r0, #1
    1794:	eb000cb6 	bl	4a74 <printf>
    1798:	e59f01bc 	ldr	r0, [pc, #444]	@ 195c <linktest+0x1dc>
    179c:	eb000bd1 	bl	46e8 <unlink>
    17a0:	e59f01b8 	ldr	r0, [pc, #440]	@ 1960 <linktest+0x1e0>
    17a4:	eb000bcf 	bl	46e8 <unlink>
    17a8:	e59f11b4 	ldr	r1, [pc, #436]	@ 1964 <linktest+0x1e4>
    17ac:	e59f01a8 	ldr	r0, [pc, #424]	@ 195c <linktest+0x1dc>
    17b0:	eb000bba 	bl	46a0 <open>
    17b4:	e50b0008 	str	r0, [fp, #-8]
    17b8:	e51b3008 	ldr	r3, [fp, #-8]
    17bc:	e3530000 	cmp	r3, #0
    17c0:	aa000003 	bge	17d4 <linktest+0x54>
    17c4:	e59f119c 	ldr	r1, [pc, #412]	@ 1968 <linktest+0x1e8>
    17c8:	e3a00001 	mov	r0, #1
    17cc:	eb000ca8 	bl	4a74 <printf>
    17d0:	eb000b6a 	bl	4580 <exit>
    17d4:	e3a02005 	mov	r2, #5
    17d8:	e59f118c 	ldr	r1, [pc, #396]	@ 196c <linktest+0x1ec>
    17dc:	e51b0008 	ldr	r0, [fp, #-8]
    17e0:	eb000b8a 	bl	4610 <write>
    17e4:	e1a03000 	mov	r3, r0
    17e8:	e3530005 	cmp	r3, #5
    17ec:	0a000003 	beq	1800 <linktest+0x80>
    17f0:	e59f1178 	ldr	r1, [pc, #376]	@ 1970 <linktest+0x1f0>
    17f4:	e3a00001 	mov	r0, #1
    17f8:	eb000c9d 	bl	4a74 <printf>
    17fc:	eb000b5f 	bl	4580 <exit>
    1800:	e51b0008 	ldr	r0, [fp, #-8]
    1804:	eb000b8a 	bl	4634 <close>
    1808:	e59f1150 	ldr	r1, [pc, #336]	@ 1960 <linktest+0x1e0>
    180c:	e59f0148 	ldr	r0, [pc, #328]	@ 195c <linktest+0x1dc>
    1810:	eb000bc6 	bl	4730 <link>
    1814:	e1a03000 	mov	r3, r0
    1818:	e3530000 	cmp	r3, #0
    181c:	aa000003 	bge	1830 <linktest+0xb0>
    1820:	e59f114c 	ldr	r1, [pc, #332]	@ 1974 <linktest+0x1f4>
    1824:	e3a00001 	mov	r0, #1
    1828:	eb000c91 	bl	4a74 <printf>
    182c:	eb000b53 	bl	4580 <exit>
    1830:	e59f0124 	ldr	r0, [pc, #292]	@ 195c <linktest+0x1dc>
    1834:	eb000bab 	bl	46e8 <unlink>
    1838:	e3a01000 	mov	r1, #0
    183c:	e59f0118 	ldr	r0, [pc, #280]	@ 195c <linktest+0x1dc>
    1840:	eb000b96 	bl	46a0 <open>
    1844:	e1a03000 	mov	r3, r0
    1848:	e3530000 	cmp	r3, #0
    184c:	ba000003 	blt	1860 <linktest+0xe0>
    1850:	e59f1120 	ldr	r1, [pc, #288]	@ 1978 <linktest+0x1f8>
    1854:	e3a00001 	mov	r0, #1
    1858:	eb000c85 	bl	4a74 <printf>
    185c:	eb000b47 	bl	4580 <exit>
    1860:	e3a01000 	mov	r1, #0
    1864:	e59f00f4 	ldr	r0, [pc, #244]	@ 1960 <linktest+0x1e0>
    1868:	eb000b8c 	bl	46a0 <open>
    186c:	e50b0008 	str	r0, [fp, #-8]
    1870:	e51b3008 	ldr	r3, [fp, #-8]
    1874:	e3530000 	cmp	r3, #0
    1878:	aa000003 	bge	188c <linktest+0x10c>
    187c:	e59f10f8 	ldr	r1, [pc, #248]	@ 197c <linktest+0x1fc>
    1880:	e3a00001 	mov	r0, #1
    1884:	eb000c7a 	bl	4a74 <printf>
    1888:	eb000b3c 	bl	4580 <exit>
    188c:	e3a02a02 	mov	r2, #8192	@ 0x2000
    1890:	e59f10e8 	ldr	r1, [pc, #232]	@ 1980 <linktest+0x200>
    1894:	e51b0008 	ldr	r0, [fp, #-8]
    1898:	eb000b53 	bl	45ec <read>
    189c:	e1a03000 	mov	r3, r0
    18a0:	e3530005 	cmp	r3, #5
    18a4:	0a000003 	beq	18b8 <linktest+0x138>
    18a8:	e59f10d4 	ldr	r1, [pc, #212]	@ 1984 <linktest+0x204>
    18ac:	e3a00001 	mov	r0, #1
    18b0:	eb000c6f 	bl	4a74 <printf>
    18b4:	eb000b31 	bl	4580 <exit>
    18b8:	e51b0008 	ldr	r0, [fp, #-8]
    18bc:	eb000b5c 	bl	4634 <close>
    18c0:	e59f1098 	ldr	r1, [pc, #152]	@ 1960 <linktest+0x1e0>
    18c4:	e59f0094 	ldr	r0, [pc, #148]	@ 1960 <linktest+0x1e0>
    18c8:	eb000b98 	bl	4730 <link>
    18cc:	e1a03000 	mov	r3, r0
    18d0:	e3530000 	cmp	r3, #0
    18d4:	ba000003 	blt	18e8 <linktest+0x168>
    18d8:	e59f10a8 	ldr	r1, [pc, #168]	@ 1988 <linktest+0x208>
    18dc:	e3a00001 	mov	r0, #1
    18e0:	eb000c63 	bl	4a74 <printf>
    18e4:	eb000b25 	bl	4580 <exit>
    18e8:	e59f0070 	ldr	r0, [pc, #112]	@ 1960 <linktest+0x1e0>
    18ec:	eb000b7d 	bl	46e8 <unlink>
    18f0:	e59f1064 	ldr	r1, [pc, #100]	@ 195c <linktest+0x1dc>
    18f4:	e59f0064 	ldr	r0, [pc, #100]	@ 1960 <linktest+0x1e0>
    18f8:	eb000b8c 	bl	4730 <link>
    18fc:	e1a03000 	mov	r3, r0
    1900:	e3530000 	cmp	r3, #0
    1904:	ba000003 	blt	1918 <linktest+0x198>
    1908:	e59f107c 	ldr	r1, [pc, #124]	@ 198c <linktest+0x20c>
    190c:	e3a00001 	mov	r0, #1
    1910:	eb000c57 	bl	4a74 <printf>
    1914:	eb000b19 	bl	4580 <exit>
    1918:	e59f103c 	ldr	r1, [pc, #60]	@ 195c <linktest+0x1dc>
    191c:	e59f006c 	ldr	r0, [pc, #108]	@ 1990 <linktest+0x210>
    1920:	eb000b82 	bl	4730 <link>
    1924:	e1a03000 	mov	r3, r0
    1928:	e3530000 	cmp	r3, #0
    192c:	ba000003 	blt	1940 <linktest+0x1c0>
    1930:	e59f105c 	ldr	r1, [pc, #92]	@ 1994 <linktest+0x214>
    1934:	e3a00001 	mov	r0, #1
    1938:	eb000c4d 	bl	4a74 <printf>
    193c:	eb000b0f 	bl	4580 <exit>
    1940:	e59f1050 	ldr	r1, [pc, #80]	@ 1998 <linktest+0x218>
    1944:	e3a00001 	mov	r0, #1
    1948:	eb000c49 	bl	4a74 <printf>
    194c:	e1a00000 	nop			@ (mov r0, r0)
    1950:	e24bd004 	sub	sp, fp, #4
    1954:	e8bd8800 	pop	{fp, pc}
    1958:	00005844 	.word	0x00005844
    195c:	00005850 	.word	0x00005850
    1960:	00005854 	.word	0x00005854
    1964:	00000202 	.word	0x00000202
    1968:	00005858 	.word	0x00005858
    196c:	000057a8 	.word	0x000057a8
    1970:	0000586c 	.word	0x0000586c
    1974:	00005880 	.word	0x00005880
    1978:	00005898 	.word	0x00005898
    197c:	000058c0 	.word	0x000058c0
    1980:	00006998 	.word	0x00006998
    1984:	000058d4 	.word	0x000058d4
    1988:	000058e8 	.word	0x000058e8
    198c:	00005908 	.word	0x00005908
    1990:	0000592c 	.word	0x0000592c
    1994:	00005930 	.word	0x00005930
    1998:	0000594c 	.word	0x0000594c

0000199c <concreate>:
    199c:	e92d4800 	push	{fp, lr}
    19a0:	e28db004 	add	fp, sp, #4
    19a4:	e24dd050 	sub	sp, sp, #80	@ 0x50
    19a8:	e59f1420 	ldr	r1, [pc, #1056]	@ 1dd0 <concreate+0x434>
    19ac:	e3a00001 	mov	r0, #1
    19b0:	eb000c2f 	bl	4a74 <printf>
    19b4:	e3a03043 	mov	r3, #67	@ 0x43
    19b8:	e54b3018 	strb	r3, [fp, #-24]	@ 0xffffffe8
    19bc:	e3a03000 	mov	r3, #0
    19c0:	e54b3016 	strb	r3, [fp, #-22]	@ 0xffffffea
    19c4:	e3a03000 	mov	r3, #0
    19c8:	e50b3008 	str	r3, [fp, #-8]
    19cc:	ea000048 	b	1af4 <concreate+0x158>
    19d0:	e51b3008 	ldr	r3, [fp, #-8]
    19d4:	e6ef3073 	uxtb	r3, r3
    19d8:	e2833030 	add	r3, r3, #48	@ 0x30
    19dc:	e6ef3073 	uxtb	r3, r3
    19e0:	e54b3017 	strb	r3, [fp, #-23]	@ 0xffffffe9
    19e4:	e24b3018 	sub	r3, fp, #24
    19e8:	e1a00003 	mov	r0, r3
    19ec:	eb000b3d 	bl	46e8 <unlink>
    19f0:	eb000ad9 	bl	455c <fork>
    19f4:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
    19f8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    19fc:	e3530000 	cmp	r3, #0
    1a00:	0a00000f 	beq	1a44 <concreate+0xa8>
    1a04:	e51b1008 	ldr	r1, [fp, #-8]
    1a08:	e59f33c4 	ldr	r3, [pc, #964]	@ 1dd4 <concreate+0x438>
    1a0c:	e0c23193 	smull	r3, r2, r3, r1
    1a10:	e1a03fc1 	asr	r3, r1, #31
    1a14:	e0422003 	sub	r2, r2, r3
    1a18:	e1a03002 	mov	r3, r2
    1a1c:	e1a03083 	lsl	r3, r3, #1
    1a20:	e0833002 	add	r3, r3, r2
    1a24:	e0412003 	sub	r2, r1, r3
    1a28:	e3520001 	cmp	r2, #1
    1a2c:	1a000004 	bne	1a44 <concreate+0xa8>
    1a30:	e24b3018 	sub	r3, fp, #24
    1a34:	e1a01003 	mov	r1, r3
    1a38:	e59f0398 	ldr	r0, [pc, #920]	@ 1dd8 <concreate+0x43c>
    1a3c:	eb000b3b 	bl	4730 <link>
    1a40:	ea000023 	b	1ad4 <concreate+0x138>
    1a44:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1a48:	e3530000 	cmp	r3, #0
    1a4c:	1a000010 	bne	1a94 <concreate+0xf8>
    1a50:	e51b1008 	ldr	r1, [fp, #-8]
    1a54:	e59f3380 	ldr	r3, [pc, #896]	@ 1ddc <concreate+0x440>
    1a58:	e0c32193 	smull	r2, r3, r3, r1
    1a5c:	e1a020c3 	asr	r2, r3, #1
    1a60:	e1a03fc1 	asr	r3, r1, #31
    1a64:	e0422003 	sub	r2, r2, r3
    1a68:	e1a03002 	mov	r3, r2
    1a6c:	e1a03103 	lsl	r3, r3, #2
    1a70:	e0833002 	add	r3, r3, r2
    1a74:	e0412003 	sub	r2, r1, r3
    1a78:	e3520001 	cmp	r2, #1
    1a7c:	1a000004 	bne	1a94 <concreate+0xf8>
    1a80:	e24b3018 	sub	r3, fp, #24
    1a84:	e1a01003 	mov	r1, r3
    1a88:	e59f0348 	ldr	r0, [pc, #840]	@ 1dd8 <concreate+0x43c>
    1a8c:	eb000b27 	bl	4730 <link>
    1a90:	ea00000f 	b	1ad4 <concreate+0x138>
    1a94:	e24b3018 	sub	r3, fp, #24
    1a98:	e59f1340 	ldr	r1, [pc, #832]	@ 1de0 <concreate+0x444>
    1a9c:	e1a00003 	mov	r0, r3
    1aa0:	eb000afe 	bl	46a0 <open>
    1aa4:	e50b0010 	str	r0, [fp, #-16]
    1aa8:	e51b3010 	ldr	r3, [fp, #-16]
    1aac:	e3530000 	cmp	r3, #0
    1ab0:	aa000005 	bge	1acc <concreate+0x130>
    1ab4:	e24b3018 	sub	r3, fp, #24
    1ab8:	e1a02003 	mov	r2, r3
    1abc:	e59f1320 	ldr	r1, [pc, #800]	@ 1de4 <concreate+0x448>
    1ac0:	e3a00001 	mov	r0, #1
    1ac4:	eb000bea 	bl	4a74 <printf>
    1ac8:	eb000aac 	bl	4580 <exit>
    1acc:	e51b0010 	ldr	r0, [fp, #-16]
    1ad0:	eb000ad7 	bl	4634 <close>
    1ad4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1ad8:	e3530000 	cmp	r3, #0
    1adc:	1a000000 	bne	1ae4 <concreate+0x148>
    1ae0:	eb000aa6 	bl	4580 <exit>
    1ae4:	eb000aae 	bl	45a4 <wait>
    1ae8:	e51b3008 	ldr	r3, [fp, #-8]
    1aec:	e2833001 	add	r3, r3, #1
    1af0:	e50b3008 	str	r3, [fp, #-8]
    1af4:	e51b3008 	ldr	r3, [fp, #-8]
    1af8:	e3530027 	cmp	r3, #39	@ 0x27
    1afc:	daffffb3 	ble	19d0 <concreate+0x34>
    1b00:	e24b3040 	sub	r3, fp, #64	@ 0x40
    1b04:	e3a02028 	mov	r2, #40	@ 0x28
    1b08:	e3a01000 	mov	r1, #0
    1b0c:	e1a00003 	mov	r0, r3
    1b10:	eb0009a8 	bl	41b8 <memset>
    1b14:	e3a01000 	mov	r1, #0
    1b18:	e59f02c8 	ldr	r0, [pc, #712]	@ 1de8 <concreate+0x44c>
    1b1c:	eb000adf 	bl	46a0 <open>
    1b20:	e50b0010 	str	r0, [fp, #-16]
    1b24:	e3a03000 	mov	r3, #0
    1b28:	e50b300c 	str	r3, [fp, #-12]
    1b2c:	ea00002f 	b	1bf0 <concreate+0x254>
    1b30:	e15b35b0 	ldrh	r3, [fp, #-80]	@ 0xffffffb0
    1b34:	e3530000 	cmp	r3, #0
    1b38:	0a00002b 	beq	1bec <concreate+0x250>
    1b3c:	e55b304e 	ldrb	r3, [fp, #-78]	@ 0xffffffb2
    1b40:	e3530043 	cmp	r3, #67	@ 0x43
    1b44:	1a000029 	bne	1bf0 <concreate+0x254>
    1b48:	e55b304c 	ldrb	r3, [fp, #-76]	@ 0xffffffb4
    1b4c:	e3530000 	cmp	r3, #0
    1b50:	1a000026 	bne	1bf0 <concreate+0x254>
    1b54:	e55b304d 	ldrb	r3, [fp, #-77]	@ 0xffffffb3
    1b58:	e2433030 	sub	r3, r3, #48	@ 0x30
    1b5c:	e50b3008 	str	r3, [fp, #-8]
    1b60:	e51b3008 	ldr	r3, [fp, #-8]
    1b64:	e3530000 	cmp	r3, #0
    1b68:	ba000002 	blt	1b78 <concreate+0x1dc>
    1b6c:	e51b3008 	ldr	r3, [fp, #-8]
    1b70:	e3530027 	cmp	r3, #39	@ 0x27
    1b74:	9a000006 	bls	1b94 <concreate+0x1f8>
    1b78:	e24b3050 	sub	r3, fp, #80	@ 0x50
    1b7c:	e2833002 	add	r3, r3, #2
    1b80:	e1a02003 	mov	r2, r3
    1b84:	e59f1260 	ldr	r1, [pc, #608]	@ 1dec <concreate+0x450>
    1b88:	e3a00001 	mov	r0, #1
    1b8c:	eb000bb8 	bl	4a74 <printf>
    1b90:	eb000a7a 	bl	4580 <exit>
    1b94:	e24b2040 	sub	r2, fp, #64	@ 0x40
    1b98:	e51b3008 	ldr	r3, [fp, #-8]
    1b9c:	e0823003 	add	r3, r2, r3
    1ba0:	e5d33000 	ldrb	r3, [r3]
    1ba4:	e3530000 	cmp	r3, #0
    1ba8:	0a000006 	beq	1bc8 <concreate+0x22c>
    1bac:	e24b3050 	sub	r3, fp, #80	@ 0x50
    1bb0:	e2833002 	add	r3, r3, #2
    1bb4:	e1a02003 	mov	r2, r3
    1bb8:	e59f1230 	ldr	r1, [pc, #560]	@ 1df0 <concreate+0x454>
    1bbc:	e3a00001 	mov	r0, #1
    1bc0:	eb000bab 	bl	4a74 <printf>
    1bc4:	eb000a6d 	bl	4580 <exit>
    1bc8:	e24b2040 	sub	r2, fp, #64	@ 0x40
    1bcc:	e51b3008 	ldr	r3, [fp, #-8]
    1bd0:	e0823003 	add	r3, r2, r3
    1bd4:	e3a02001 	mov	r2, #1
    1bd8:	e5c32000 	strb	r2, [r3]
    1bdc:	e51b300c 	ldr	r3, [fp, #-12]
    1be0:	e2833001 	add	r3, r3, #1
    1be4:	e50b300c 	str	r3, [fp, #-12]
    1be8:	ea000000 	b	1bf0 <concreate+0x254>
    1bec:	e1a00000 	nop			@ (mov r0, r0)
    1bf0:	e24b3050 	sub	r3, fp, #80	@ 0x50
    1bf4:	e3a02010 	mov	r2, #16
    1bf8:	e1a01003 	mov	r1, r3
    1bfc:	e51b0010 	ldr	r0, [fp, #-16]
    1c00:	eb000a79 	bl	45ec <read>
    1c04:	e1a03000 	mov	r3, r0
    1c08:	e3530000 	cmp	r3, #0
    1c0c:	caffffc7 	bgt	1b30 <concreate+0x194>
    1c10:	e51b0010 	ldr	r0, [fp, #-16]
    1c14:	eb000a86 	bl	4634 <close>
    1c18:	e51b300c 	ldr	r3, [fp, #-12]
    1c1c:	e3530028 	cmp	r3, #40	@ 0x28
    1c20:	0a000003 	beq	1c34 <concreate+0x298>
    1c24:	e59f11c8 	ldr	r1, [pc, #456]	@ 1df4 <concreate+0x458>
    1c28:	e3a00001 	mov	r0, #1
    1c2c:	eb000b90 	bl	4a74 <printf>
    1c30:	eb000a52 	bl	4580 <exit>
    1c34:	e3a03000 	mov	r3, #0
    1c38:	e50b3008 	str	r3, [fp, #-8]
    1c3c:	ea00005a 	b	1dac <concreate+0x410>
    1c40:	e51b3008 	ldr	r3, [fp, #-8]
    1c44:	e6ef3073 	uxtb	r3, r3
    1c48:	e2833030 	add	r3, r3, #48	@ 0x30
    1c4c:	e6ef3073 	uxtb	r3, r3
    1c50:	e54b3017 	strb	r3, [fp, #-23]	@ 0xffffffe9
    1c54:	eb000a40 	bl	455c <fork>
    1c58:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
    1c5c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1c60:	e3530000 	cmp	r3, #0
    1c64:	aa000003 	bge	1c78 <concreate+0x2dc>
    1c68:	e59f1188 	ldr	r1, [pc, #392]	@ 1df8 <concreate+0x45c>
    1c6c:	e3a00001 	mov	r0, #1
    1c70:	eb000b7f 	bl	4a74 <printf>
    1c74:	eb000a41 	bl	4580 <exit>
    1c78:	e51b1008 	ldr	r1, [fp, #-8]
    1c7c:	e59f3150 	ldr	r3, [pc, #336]	@ 1dd4 <concreate+0x438>
    1c80:	e0c23193 	smull	r3, r2, r3, r1
    1c84:	e1a03fc1 	asr	r3, r1, #31
    1c88:	e0422003 	sub	r2, r2, r3
    1c8c:	e1a03002 	mov	r3, r2
    1c90:	e1a03083 	lsl	r3, r3, #1
    1c94:	e0833002 	add	r3, r3, r2
    1c98:	e0412003 	sub	r2, r1, r3
    1c9c:	e3520000 	cmp	r2, #0
    1ca0:	1a000002 	bne	1cb0 <concreate+0x314>
    1ca4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1ca8:	e3530000 	cmp	r3, #0
    1cac:	0a00000d 	beq	1ce8 <concreate+0x34c>
    1cb0:	e51b1008 	ldr	r1, [fp, #-8]
    1cb4:	e59f3118 	ldr	r3, [pc, #280]	@ 1dd4 <concreate+0x438>
    1cb8:	e0c23193 	smull	r3, r2, r3, r1
    1cbc:	e1a03fc1 	asr	r3, r1, #31
    1cc0:	e0422003 	sub	r2, r2, r3
    1cc4:	e1a03002 	mov	r3, r2
    1cc8:	e1a03083 	lsl	r3, r3, #1
    1ccc:	e0833002 	add	r3, r3, r2
    1cd0:	e0412003 	sub	r2, r1, r3
    1cd4:	e3520001 	cmp	r2, #1
    1cd8:	1a00001f 	bne	1d5c <concreate+0x3c0>
    1cdc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1ce0:	e3530000 	cmp	r3, #0
    1ce4:	0a00001c 	beq	1d5c <concreate+0x3c0>
    1ce8:	e24b3018 	sub	r3, fp, #24
    1cec:	e3a01000 	mov	r1, #0
    1cf0:	e1a00003 	mov	r0, r3
    1cf4:	eb000a69 	bl	46a0 <open>
    1cf8:	e1a03000 	mov	r3, r0
    1cfc:	e1a00003 	mov	r0, r3
    1d00:	eb000a4b 	bl	4634 <close>
    1d04:	e24b3018 	sub	r3, fp, #24
    1d08:	e3a01000 	mov	r1, #0
    1d0c:	e1a00003 	mov	r0, r3
    1d10:	eb000a62 	bl	46a0 <open>
    1d14:	e1a03000 	mov	r3, r0
    1d18:	e1a00003 	mov	r0, r3
    1d1c:	eb000a44 	bl	4634 <close>
    1d20:	e24b3018 	sub	r3, fp, #24
    1d24:	e3a01000 	mov	r1, #0
    1d28:	e1a00003 	mov	r0, r3
    1d2c:	eb000a5b 	bl	46a0 <open>
    1d30:	e1a03000 	mov	r3, r0
    1d34:	e1a00003 	mov	r0, r3
    1d38:	eb000a3d 	bl	4634 <close>
    1d3c:	e24b3018 	sub	r3, fp, #24
    1d40:	e3a01000 	mov	r1, #0
    1d44:	e1a00003 	mov	r0, r3
    1d48:	eb000a54 	bl	46a0 <open>
    1d4c:	e1a03000 	mov	r3, r0
    1d50:	e1a00003 	mov	r0, r3
    1d54:	eb000a36 	bl	4634 <close>
    1d58:	ea00000b 	b	1d8c <concreate+0x3f0>
    1d5c:	e24b3018 	sub	r3, fp, #24
    1d60:	e1a00003 	mov	r0, r3
    1d64:	eb000a5f 	bl	46e8 <unlink>
    1d68:	e24b3018 	sub	r3, fp, #24
    1d6c:	e1a00003 	mov	r0, r3
    1d70:	eb000a5c 	bl	46e8 <unlink>
    1d74:	e24b3018 	sub	r3, fp, #24
    1d78:	e1a00003 	mov	r0, r3
    1d7c:	eb000a59 	bl	46e8 <unlink>
    1d80:	e24b3018 	sub	r3, fp, #24
    1d84:	e1a00003 	mov	r0, r3
    1d88:	eb000a56 	bl	46e8 <unlink>
    1d8c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1d90:	e3530000 	cmp	r3, #0
    1d94:	1a000000 	bne	1d9c <concreate+0x400>
    1d98:	eb0009f8 	bl	4580 <exit>
    1d9c:	eb000a00 	bl	45a4 <wait>
    1da0:	e51b3008 	ldr	r3, [fp, #-8]
    1da4:	e2833001 	add	r3, r3, #1
    1da8:	e50b3008 	str	r3, [fp, #-8]
    1dac:	e51b3008 	ldr	r3, [fp, #-8]
    1db0:	e3530027 	cmp	r3, #39	@ 0x27
    1db4:	daffffa1 	ble	1c40 <concreate+0x2a4>
    1db8:	e59f103c 	ldr	r1, [pc, #60]	@ 1dfc <concreate+0x460>
    1dbc:	e3a00001 	mov	r0, #1
    1dc0:	eb000b2b 	bl	4a74 <printf>
    1dc4:	e1a00000 	nop			@ (mov r0, r0)
    1dc8:	e24bd004 	sub	sp, fp, #4
    1dcc:	e8bd8800 	pop	{fp, pc}
    1dd0:	0000595c 	.word	0x0000595c
    1dd4:	55555556 	.word	0x55555556
    1dd8:	0000596c 	.word	0x0000596c
    1ddc:	66666667 	.word	0x66666667
    1de0:	00000202 	.word	0x00000202
    1de4:	00005970 	.word	0x00005970
    1de8:	0000592c 	.word	0x0000592c
    1dec:	0000598c 	.word	0x0000598c
    1df0:	000059a8 	.word	0x000059a8
    1df4:	000059c8 	.word	0x000059c8
    1df8:	00005568 	.word	0x00005568
    1dfc:	000059fc 	.word	0x000059fc

00001e00 <linkunlink>:
    1e00:	e92d4800 	push	{fp, lr}
    1e04:	e28db004 	add	fp, sp, #4
    1e08:	e24dd010 	sub	sp, sp, #16
    1e0c:	e59f113c 	ldr	r1, [pc, #316]	@ 1f50 <linkunlink+0x150>
    1e10:	e3a00001 	mov	r0, #1
    1e14:	eb000b16 	bl	4a74 <printf>
    1e18:	e59f0134 	ldr	r0, [pc, #308]	@ 1f54 <linkunlink+0x154>
    1e1c:	eb000a31 	bl	46e8 <unlink>
    1e20:	eb0009cd 	bl	455c <fork>
    1e24:	e50b0010 	str	r0, [fp, #-16]
    1e28:	e51b3010 	ldr	r3, [fp, #-16]
    1e2c:	e3530000 	cmp	r3, #0
    1e30:	aa000003 	bge	1e44 <linkunlink+0x44>
    1e34:	e59f111c 	ldr	r1, [pc, #284]	@ 1f58 <linkunlink+0x158>
    1e38:	e3a00001 	mov	r0, #1
    1e3c:	eb000b0c 	bl	4a74 <printf>
    1e40:	eb0009ce 	bl	4580 <exit>
    1e44:	e51b3010 	ldr	r3, [fp, #-16]
    1e48:	e3530000 	cmp	r3, #0
    1e4c:	0a000002 	beq	1e5c <linkunlink+0x5c>
    1e50:	e3a03001 	mov	r3, #1
    1e54:	e50b300c 	str	r3, [fp, #-12]
    1e58:	ea000001 	b	1e64 <linkunlink+0x64>
    1e5c:	e3a03061 	mov	r3, #97	@ 0x61
    1e60:	e50b300c 	str	r3, [fp, #-12]
    1e64:	e3a03000 	mov	r3, #0
    1e68:	e50b3008 	str	r3, [fp, #-8]
    1e6c:	ea000029 	b	1f18 <linkunlink+0x118>
    1e70:	e51b300c 	ldr	r3, [fp, #-12]
    1e74:	e59f20e0 	ldr	r2, [pc, #224]	@ 1f5c <linkunlink+0x15c>
    1e78:	e0030392 	mul	r3, r2, r3
    1e7c:	e2833a03 	add	r3, r3, #12288	@ 0x3000
    1e80:	e2833039 	add	r3, r3, #57	@ 0x39
    1e84:	e50b300c 	str	r3, [fp, #-12]
    1e88:	e51b100c 	ldr	r1, [fp, #-12]
    1e8c:	e59f30cc 	ldr	r3, [pc, #204]	@ 1f60 <linkunlink+0x160>
    1e90:	e0832193 	umull	r2, r3, r3, r1
    1e94:	e1a020a3 	lsr	r2, r3, #1
    1e98:	e1a03002 	mov	r3, r2
    1e9c:	e1a03083 	lsl	r3, r3, #1
    1ea0:	e0833002 	add	r3, r3, r2
    1ea4:	e0412003 	sub	r2, r1, r3
    1ea8:	e3520000 	cmp	r2, #0
    1eac:	1a000006 	bne	1ecc <linkunlink+0xcc>
    1eb0:	e59f10ac 	ldr	r1, [pc, #172]	@ 1f64 <linkunlink+0x164>
    1eb4:	e59f0098 	ldr	r0, [pc, #152]	@ 1f54 <linkunlink+0x154>
    1eb8:	eb0009f8 	bl	46a0 <open>
    1ebc:	e1a03000 	mov	r3, r0
    1ec0:	e1a00003 	mov	r0, r3
    1ec4:	eb0009da 	bl	4634 <close>
    1ec8:	ea00000f 	b	1f0c <linkunlink+0x10c>
    1ecc:	e51b100c 	ldr	r1, [fp, #-12]
    1ed0:	e59f3088 	ldr	r3, [pc, #136]	@ 1f60 <linkunlink+0x160>
    1ed4:	e0832193 	umull	r2, r3, r3, r1
    1ed8:	e1a020a3 	lsr	r2, r3, #1
    1edc:	e1a03002 	mov	r3, r2
    1ee0:	e1a03083 	lsl	r3, r3, #1
    1ee4:	e0833002 	add	r3, r3, r2
    1ee8:	e0412003 	sub	r2, r1, r3
    1eec:	e3520001 	cmp	r2, #1
    1ef0:	1a000003 	bne	1f04 <linkunlink+0x104>
    1ef4:	e59f1058 	ldr	r1, [pc, #88]	@ 1f54 <linkunlink+0x154>
    1ef8:	e59f0068 	ldr	r0, [pc, #104]	@ 1f68 <linkunlink+0x168>
    1efc:	eb000a0b 	bl	4730 <link>
    1f00:	ea000001 	b	1f0c <linkunlink+0x10c>
    1f04:	e59f0048 	ldr	r0, [pc, #72]	@ 1f54 <linkunlink+0x154>
    1f08:	eb0009f6 	bl	46e8 <unlink>
    1f0c:	e51b3008 	ldr	r3, [fp, #-8]
    1f10:	e2833001 	add	r3, r3, #1
    1f14:	e50b3008 	str	r3, [fp, #-8]
    1f18:	e51b3008 	ldr	r3, [fp, #-8]
    1f1c:	e3530063 	cmp	r3, #99	@ 0x63
    1f20:	daffffd2 	ble	1e70 <linkunlink+0x70>
    1f24:	e51b3010 	ldr	r3, [fp, #-16]
    1f28:	e3530000 	cmp	r3, #0
    1f2c:	0a000004 	beq	1f44 <linkunlink+0x144>
    1f30:	eb00099b 	bl	45a4 <wait>
    1f34:	e59f1030 	ldr	r1, [pc, #48]	@ 1f6c <linkunlink+0x16c>
    1f38:	e3a00001 	mov	r0, #1
    1f3c:	eb000acc 	bl	4a74 <printf>
    1f40:	ea000000 	b	1f48 <linkunlink+0x148>
    1f44:	eb00098d 	bl	4580 <exit>
    1f48:	e24bd004 	sub	sp, fp, #4
    1f4c:	e8bd8800 	pop	{fp, pc}
    1f50:	00005a0c 	.word	0x00005a0c
    1f54:	00005518 	.word	0x00005518
    1f58:	00005568 	.word	0x00005568
    1f5c:	41c64e6d 	.word	0x41c64e6d
    1f60:	aaaaaaab 	.word	0xaaaaaaab
    1f64:	00000202 	.word	0x00000202
    1f68:	00005a20 	.word	0x00005a20
    1f6c:	00005a24 	.word	0x00005a24

00001f70 <bigdir>:
    1f70:	e92d4800 	push	{fp, lr}
    1f74:	e28db004 	add	fp, sp, #4
    1f78:	e24dd018 	sub	sp, sp, #24
    1f7c:	e59f11b4 	ldr	r1, [pc, #436]	@ 2138 <bigdir+0x1c8>
    1f80:	e3a00001 	mov	r0, #1
    1f84:	eb000aba 	bl	4a74 <printf>
    1f88:	e59f01ac 	ldr	r0, [pc, #428]	@ 213c <bigdir+0x1cc>
    1f8c:	eb0009d5 	bl	46e8 <unlink>
    1f90:	e3a01c02 	mov	r1, #512	@ 0x200
    1f94:	e59f01a0 	ldr	r0, [pc, #416]	@ 213c <bigdir+0x1cc>
    1f98:	eb0009c0 	bl	46a0 <open>
    1f9c:	e50b000c 	str	r0, [fp, #-12]
    1fa0:	e51b300c 	ldr	r3, [fp, #-12]
    1fa4:	e3530000 	cmp	r3, #0
    1fa8:	aa000003 	bge	1fbc <bigdir+0x4c>
    1fac:	e59f118c 	ldr	r1, [pc, #396]	@ 2140 <bigdir+0x1d0>
    1fb0:	e3a00001 	mov	r0, #1
    1fb4:	eb000aae 	bl	4a74 <printf>
    1fb8:	eb000970 	bl	4580 <exit>
    1fbc:	e51b000c 	ldr	r0, [fp, #-12]
    1fc0:	eb00099b 	bl	4634 <close>
    1fc4:	e3a03000 	mov	r3, #0
    1fc8:	e50b3008 	str	r3, [fp, #-8]
    1fcc:	ea000024 	b	2064 <bigdir+0xf4>
    1fd0:	e3a03078 	mov	r3, #120	@ 0x78
    1fd4:	e54b3018 	strb	r3, [fp, #-24]	@ 0xffffffe8
    1fd8:	e51b3008 	ldr	r3, [fp, #-8]
    1fdc:	e283203f 	add	r2, r3, #63	@ 0x3f
    1fe0:	e3530000 	cmp	r3, #0
    1fe4:	b1a03002 	movlt	r3, r2
    1fe8:	a1a03003 	movge	r3, r3
    1fec:	e1a03343 	asr	r3, r3, #6
    1ff0:	e6ef3073 	uxtb	r3, r3
    1ff4:	e2833030 	add	r3, r3, #48	@ 0x30
    1ff8:	e6ef3073 	uxtb	r3, r3
    1ffc:	e54b3017 	strb	r3, [fp, #-23]	@ 0xffffffe9
    2000:	e51b3008 	ldr	r3, [fp, #-8]
    2004:	e2732000 	rsbs	r2, r3, #0
    2008:	e203303f 	and	r3, r3, #63	@ 0x3f
    200c:	e202203f 	and	r2, r2, #63	@ 0x3f
    2010:	52623000 	rsbpl	r3, r2, #0
    2014:	e6ef3073 	uxtb	r3, r3
    2018:	e2833030 	add	r3, r3, #48	@ 0x30
    201c:	e6ef3073 	uxtb	r3, r3
    2020:	e54b3016 	strb	r3, [fp, #-22]	@ 0xffffffea
    2024:	e3a03000 	mov	r3, #0
    2028:	e54b3015 	strb	r3, [fp, #-21]	@ 0xffffffeb
    202c:	e24b3018 	sub	r3, fp, #24
    2030:	e1a01003 	mov	r1, r3
    2034:	e59f0100 	ldr	r0, [pc, #256]	@ 213c <bigdir+0x1cc>
    2038:	eb0009bc 	bl	4730 <link>
    203c:	e1a03000 	mov	r3, r0
    2040:	e3530000 	cmp	r3, #0
    2044:	0a000003 	beq	2058 <bigdir+0xe8>
    2048:	e59f10f4 	ldr	r1, [pc, #244]	@ 2144 <bigdir+0x1d4>
    204c:	e3a00001 	mov	r0, #1
    2050:	eb000a87 	bl	4a74 <printf>
    2054:	eb000949 	bl	4580 <exit>
    2058:	e51b3008 	ldr	r3, [fp, #-8]
    205c:	e2833001 	add	r3, r3, #1
    2060:	e50b3008 	str	r3, [fp, #-8]
    2064:	e51b3008 	ldr	r3, [fp, #-8]
    2068:	e3530f7d 	cmp	r3, #500	@ 0x1f4
    206c:	baffffd7 	blt	1fd0 <bigdir+0x60>
    2070:	e59f00c4 	ldr	r0, [pc, #196]	@ 213c <bigdir+0x1cc>
    2074:	eb00099b 	bl	46e8 <unlink>
    2078:	e3a03000 	mov	r3, #0
    207c:	e50b3008 	str	r3, [fp, #-8]
    2080:	ea000023 	b	2114 <bigdir+0x1a4>
    2084:	e3a03078 	mov	r3, #120	@ 0x78
    2088:	e54b3018 	strb	r3, [fp, #-24]	@ 0xffffffe8
    208c:	e51b3008 	ldr	r3, [fp, #-8]
    2090:	e283203f 	add	r2, r3, #63	@ 0x3f
    2094:	e3530000 	cmp	r3, #0
    2098:	b1a03002 	movlt	r3, r2
    209c:	a1a03003 	movge	r3, r3
    20a0:	e1a03343 	asr	r3, r3, #6
    20a4:	e6ef3073 	uxtb	r3, r3
    20a8:	e2833030 	add	r3, r3, #48	@ 0x30
    20ac:	e6ef3073 	uxtb	r3, r3
    20b0:	e54b3017 	strb	r3, [fp, #-23]	@ 0xffffffe9
    20b4:	e51b3008 	ldr	r3, [fp, #-8]
    20b8:	e2732000 	rsbs	r2, r3, #0
    20bc:	e203303f 	and	r3, r3, #63	@ 0x3f
    20c0:	e202203f 	and	r2, r2, #63	@ 0x3f
    20c4:	52623000 	rsbpl	r3, r2, #0
    20c8:	e6ef3073 	uxtb	r3, r3
    20cc:	e2833030 	add	r3, r3, #48	@ 0x30
    20d0:	e6ef3073 	uxtb	r3, r3
    20d4:	e54b3016 	strb	r3, [fp, #-22]	@ 0xffffffea
    20d8:	e3a03000 	mov	r3, #0
    20dc:	e54b3015 	strb	r3, [fp, #-21]	@ 0xffffffeb
    20e0:	e24b3018 	sub	r3, fp, #24
    20e4:	e1a00003 	mov	r0, r3
    20e8:	eb00097e 	bl	46e8 <unlink>
    20ec:	e1a03000 	mov	r3, r0
    20f0:	e3530000 	cmp	r3, #0
    20f4:	0a000003 	beq	2108 <bigdir+0x198>
    20f8:	e59f1048 	ldr	r1, [pc, #72]	@ 2148 <bigdir+0x1d8>
    20fc:	e3a00001 	mov	r0, #1
    2100:	eb000a5b 	bl	4a74 <printf>
    2104:	eb00091d 	bl	4580 <exit>
    2108:	e51b3008 	ldr	r3, [fp, #-8]
    210c:	e2833001 	add	r3, r3, #1
    2110:	e50b3008 	str	r3, [fp, #-8]
    2114:	e51b3008 	ldr	r3, [fp, #-8]
    2118:	e3530f7d 	cmp	r3, #500	@ 0x1f4
    211c:	baffffd8 	blt	2084 <bigdir+0x114>
    2120:	e59f1024 	ldr	r1, [pc, #36]	@ 214c <bigdir+0x1dc>
    2124:	e3a00001 	mov	r0, #1
    2128:	eb000a51 	bl	4a74 <printf>
    212c:	e1a00000 	nop			@ (mov r0, r0)
    2130:	e24bd004 	sub	sp, fp, #4
    2134:	e8bd8800 	pop	{fp, pc}
    2138:	00005a34 	.word	0x00005a34
    213c:	00005a44 	.word	0x00005a44
    2140:	00005a48 	.word	0x00005a48
    2144:	00005a60 	.word	0x00005a60
    2148:	00005a74 	.word	0x00005a74
    214c:	00005a8c 	.word	0x00005a8c

00002150 <subdir>:
    2150:	e92d4800 	push	{fp, lr}
    2154:	e28db004 	add	fp, sp, #4
    2158:	e24dd008 	sub	sp, sp, #8
    215c:	e59f1608 	ldr	r1, [pc, #1544]	@ 276c <subdir+0x61c>
    2160:	e3a00001 	mov	r0, #1
    2164:	eb000a42 	bl	4a74 <printf>
    2168:	e59f0600 	ldr	r0, [pc, #1536]	@ 2770 <subdir+0x620>
    216c:	eb00095d 	bl	46e8 <unlink>
    2170:	e59f05fc 	ldr	r0, [pc, #1532]	@ 2774 <subdir+0x624>
    2174:	eb000976 	bl	4754 <mkdir>
    2178:	e1a03000 	mov	r3, r0
    217c:	e3530000 	cmp	r3, #0
    2180:	0a000003 	beq	2194 <subdir+0x44>
    2184:	e59f15ec 	ldr	r1, [pc, #1516]	@ 2778 <subdir+0x628>
    2188:	e3a00001 	mov	r0, #1
    218c:	eb000a38 	bl	4a74 <printf>
    2190:	eb0008fa 	bl	4580 <exit>
    2194:	e59f15e0 	ldr	r1, [pc, #1504]	@ 277c <subdir+0x62c>
    2198:	e59f05e0 	ldr	r0, [pc, #1504]	@ 2780 <subdir+0x630>
    219c:	eb00093f 	bl	46a0 <open>
    21a0:	e50b0008 	str	r0, [fp, #-8]
    21a4:	e51b3008 	ldr	r3, [fp, #-8]
    21a8:	e3530000 	cmp	r3, #0
    21ac:	aa000003 	bge	21c0 <subdir+0x70>
    21b0:	e59f15cc 	ldr	r1, [pc, #1484]	@ 2784 <subdir+0x634>
    21b4:	e3a00001 	mov	r0, #1
    21b8:	eb000a2d 	bl	4a74 <printf>
    21bc:	eb0008ef 	bl	4580 <exit>
    21c0:	e3a02002 	mov	r2, #2
    21c4:	e59f15a4 	ldr	r1, [pc, #1444]	@ 2770 <subdir+0x620>
    21c8:	e51b0008 	ldr	r0, [fp, #-8]
    21cc:	eb00090f 	bl	4610 <write>
    21d0:	e51b0008 	ldr	r0, [fp, #-8]
    21d4:	eb000916 	bl	4634 <close>
    21d8:	e59f0594 	ldr	r0, [pc, #1428]	@ 2774 <subdir+0x624>
    21dc:	eb000941 	bl	46e8 <unlink>
    21e0:	e1a03000 	mov	r3, r0
    21e4:	e3530000 	cmp	r3, #0
    21e8:	ba000003 	blt	21fc <subdir+0xac>
    21ec:	e59f1594 	ldr	r1, [pc, #1428]	@ 2788 <subdir+0x638>
    21f0:	e3a00001 	mov	r0, #1
    21f4:	eb000a1e 	bl	4a74 <printf>
    21f8:	eb0008e0 	bl	4580 <exit>
    21fc:	e59f0588 	ldr	r0, [pc, #1416]	@ 278c <subdir+0x63c>
    2200:	eb000953 	bl	4754 <mkdir>
    2204:	e1a03000 	mov	r3, r0
    2208:	e3530000 	cmp	r3, #0
    220c:	0a000003 	beq	2220 <subdir+0xd0>
    2210:	e59f1578 	ldr	r1, [pc, #1400]	@ 2790 <subdir+0x640>
    2214:	e3a00001 	mov	r0, #1
    2218:	eb000a15 	bl	4a74 <printf>
    221c:	eb0008d7 	bl	4580 <exit>
    2220:	e59f1554 	ldr	r1, [pc, #1364]	@ 277c <subdir+0x62c>
    2224:	e59f0568 	ldr	r0, [pc, #1384]	@ 2794 <subdir+0x644>
    2228:	eb00091c 	bl	46a0 <open>
    222c:	e50b0008 	str	r0, [fp, #-8]
    2230:	e51b3008 	ldr	r3, [fp, #-8]
    2234:	e3530000 	cmp	r3, #0
    2238:	aa000003 	bge	224c <subdir+0xfc>
    223c:	e59f1554 	ldr	r1, [pc, #1364]	@ 2798 <subdir+0x648>
    2240:	e3a00001 	mov	r0, #1
    2244:	eb000a0a 	bl	4a74 <printf>
    2248:	eb0008cc 	bl	4580 <exit>
    224c:	e3a02002 	mov	r2, #2
    2250:	e59f1544 	ldr	r1, [pc, #1348]	@ 279c <subdir+0x64c>
    2254:	e51b0008 	ldr	r0, [fp, #-8]
    2258:	eb0008ec 	bl	4610 <write>
    225c:	e51b0008 	ldr	r0, [fp, #-8]
    2260:	eb0008f3 	bl	4634 <close>
    2264:	e3a01000 	mov	r1, #0
    2268:	e59f0530 	ldr	r0, [pc, #1328]	@ 27a0 <subdir+0x650>
    226c:	eb00090b 	bl	46a0 <open>
    2270:	e50b0008 	str	r0, [fp, #-8]
    2274:	e51b3008 	ldr	r3, [fp, #-8]
    2278:	e3530000 	cmp	r3, #0
    227c:	aa000003 	bge	2290 <subdir+0x140>
    2280:	e59f151c 	ldr	r1, [pc, #1308]	@ 27a4 <subdir+0x654>
    2284:	e3a00001 	mov	r0, #1
    2288:	eb0009f9 	bl	4a74 <printf>
    228c:	eb0008bb 	bl	4580 <exit>
    2290:	e3a02a02 	mov	r2, #8192	@ 0x2000
    2294:	e59f150c 	ldr	r1, [pc, #1292]	@ 27a8 <subdir+0x658>
    2298:	e51b0008 	ldr	r0, [fp, #-8]
    229c:	eb0008d2 	bl	45ec <read>
    22a0:	e50b000c 	str	r0, [fp, #-12]
    22a4:	e51b300c 	ldr	r3, [fp, #-12]
    22a8:	e3530002 	cmp	r3, #2
    22ac:	1a000003 	bne	22c0 <subdir+0x170>
    22b0:	e59f34f0 	ldr	r3, [pc, #1264]	@ 27a8 <subdir+0x658>
    22b4:	e5d33000 	ldrb	r3, [r3]
    22b8:	e3530066 	cmp	r3, #102	@ 0x66
    22bc:	0a000003 	beq	22d0 <subdir+0x180>
    22c0:	e59f14e4 	ldr	r1, [pc, #1252]	@ 27ac <subdir+0x65c>
    22c4:	e3a00001 	mov	r0, #1
    22c8:	eb0009e9 	bl	4a74 <printf>
    22cc:	eb0008ab 	bl	4580 <exit>
    22d0:	e51b0008 	ldr	r0, [fp, #-8]
    22d4:	eb0008d6 	bl	4634 <close>
    22d8:	e59f14d0 	ldr	r1, [pc, #1232]	@ 27b0 <subdir+0x660>
    22dc:	e59f04b0 	ldr	r0, [pc, #1200]	@ 2794 <subdir+0x644>
    22e0:	eb000912 	bl	4730 <link>
    22e4:	e1a03000 	mov	r3, r0
    22e8:	e3530000 	cmp	r3, #0
    22ec:	0a000003 	beq	2300 <subdir+0x1b0>
    22f0:	e59f14bc 	ldr	r1, [pc, #1212]	@ 27b4 <subdir+0x664>
    22f4:	e3a00001 	mov	r0, #1
    22f8:	eb0009dd 	bl	4a74 <printf>
    22fc:	eb00089f 	bl	4580 <exit>
    2300:	e59f048c 	ldr	r0, [pc, #1164]	@ 2794 <subdir+0x644>
    2304:	eb0008f7 	bl	46e8 <unlink>
    2308:	e1a03000 	mov	r3, r0
    230c:	e3530000 	cmp	r3, #0
    2310:	0a000003 	beq	2324 <subdir+0x1d4>
    2314:	e59f149c 	ldr	r1, [pc, #1180]	@ 27b8 <subdir+0x668>
    2318:	e3a00001 	mov	r0, #1
    231c:	eb0009d4 	bl	4a74 <printf>
    2320:	eb000896 	bl	4580 <exit>
    2324:	e3a01000 	mov	r1, #0
    2328:	e59f0464 	ldr	r0, [pc, #1124]	@ 2794 <subdir+0x644>
    232c:	eb0008db 	bl	46a0 <open>
    2330:	e1a03000 	mov	r3, r0
    2334:	e3530000 	cmp	r3, #0
    2338:	ba000003 	blt	234c <subdir+0x1fc>
    233c:	e59f1478 	ldr	r1, [pc, #1144]	@ 27bc <subdir+0x66c>
    2340:	e3a00001 	mov	r0, #1
    2344:	eb0009ca 	bl	4a74 <printf>
    2348:	eb00088c 	bl	4580 <exit>
    234c:	e59f0420 	ldr	r0, [pc, #1056]	@ 2774 <subdir+0x624>
    2350:	eb000908 	bl	4778 <chdir>
    2354:	e1a03000 	mov	r3, r0
    2358:	e3530000 	cmp	r3, #0
    235c:	0a000003 	beq	2370 <subdir+0x220>
    2360:	e59f1458 	ldr	r1, [pc, #1112]	@ 27c0 <subdir+0x670>
    2364:	e3a00001 	mov	r0, #1
    2368:	eb0009c1 	bl	4a74 <printf>
    236c:	eb000883 	bl	4580 <exit>
    2370:	e59f044c 	ldr	r0, [pc, #1100]	@ 27c4 <subdir+0x674>
    2374:	eb0008ff 	bl	4778 <chdir>
    2378:	e1a03000 	mov	r3, r0
    237c:	e3530000 	cmp	r3, #0
    2380:	0a000003 	beq	2394 <subdir+0x244>
    2384:	e59f143c 	ldr	r1, [pc, #1084]	@ 27c8 <subdir+0x678>
    2388:	e3a00001 	mov	r0, #1
    238c:	eb0009b8 	bl	4a74 <printf>
    2390:	eb00087a 	bl	4580 <exit>
    2394:	e59f0430 	ldr	r0, [pc, #1072]	@ 27cc <subdir+0x67c>
    2398:	eb0008f6 	bl	4778 <chdir>
    239c:	e1a03000 	mov	r3, r0
    23a0:	e3530000 	cmp	r3, #0
    23a4:	0a000003 	beq	23b8 <subdir+0x268>
    23a8:	e59f1418 	ldr	r1, [pc, #1048]	@ 27c8 <subdir+0x678>
    23ac:	e3a00001 	mov	r0, #1
    23b0:	eb0009af 	bl	4a74 <printf>
    23b4:	eb000871 	bl	4580 <exit>
    23b8:	e59f0410 	ldr	r0, [pc, #1040]	@ 27d0 <subdir+0x680>
    23bc:	eb0008ed 	bl	4778 <chdir>
    23c0:	e1a03000 	mov	r3, r0
    23c4:	e3530000 	cmp	r3, #0
    23c8:	0a000003 	beq	23dc <subdir+0x28c>
    23cc:	e59f1400 	ldr	r1, [pc, #1024]	@ 27d4 <subdir+0x684>
    23d0:	e3a00001 	mov	r0, #1
    23d4:	eb0009a6 	bl	4a74 <printf>
    23d8:	eb000868 	bl	4580 <exit>
    23dc:	e3a01000 	mov	r1, #0
    23e0:	e59f03c8 	ldr	r0, [pc, #968]	@ 27b0 <subdir+0x660>
    23e4:	eb0008ad 	bl	46a0 <open>
    23e8:	e50b0008 	str	r0, [fp, #-8]
    23ec:	e51b3008 	ldr	r3, [fp, #-8]
    23f0:	e3530000 	cmp	r3, #0
    23f4:	aa000003 	bge	2408 <subdir+0x2b8>
    23f8:	e59f13d8 	ldr	r1, [pc, #984]	@ 27d8 <subdir+0x688>
    23fc:	e3a00001 	mov	r0, #1
    2400:	eb00099b 	bl	4a74 <printf>
    2404:	eb00085d 	bl	4580 <exit>
    2408:	e3a02a02 	mov	r2, #8192	@ 0x2000
    240c:	e59f1394 	ldr	r1, [pc, #916]	@ 27a8 <subdir+0x658>
    2410:	e51b0008 	ldr	r0, [fp, #-8]
    2414:	eb000874 	bl	45ec <read>
    2418:	e1a03000 	mov	r3, r0
    241c:	e3530002 	cmp	r3, #2
    2420:	0a000003 	beq	2434 <subdir+0x2e4>
    2424:	e59f13b0 	ldr	r1, [pc, #944]	@ 27dc <subdir+0x68c>
    2428:	e3a00001 	mov	r0, #1
    242c:	eb000990 	bl	4a74 <printf>
    2430:	eb000852 	bl	4580 <exit>
    2434:	e51b0008 	ldr	r0, [fp, #-8]
    2438:	eb00087d 	bl	4634 <close>
    243c:	e3a01000 	mov	r1, #0
    2440:	e59f034c 	ldr	r0, [pc, #844]	@ 2794 <subdir+0x644>
    2444:	eb000895 	bl	46a0 <open>
    2448:	e1a03000 	mov	r3, r0
    244c:	e3530000 	cmp	r3, #0
    2450:	ba000003 	blt	2464 <subdir+0x314>
    2454:	e59f1384 	ldr	r1, [pc, #900]	@ 27e0 <subdir+0x690>
    2458:	e3a00001 	mov	r0, #1
    245c:	eb000984 	bl	4a74 <printf>
    2460:	eb000846 	bl	4580 <exit>
    2464:	e59f1310 	ldr	r1, [pc, #784]	@ 277c <subdir+0x62c>
    2468:	e59f0374 	ldr	r0, [pc, #884]	@ 27e4 <subdir+0x694>
    246c:	eb00088b 	bl	46a0 <open>
    2470:	e1a03000 	mov	r3, r0
    2474:	e3530000 	cmp	r3, #0
    2478:	ba000003 	blt	248c <subdir+0x33c>
    247c:	e59f1364 	ldr	r1, [pc, #868]	@ 27e8 <subdir+0x698>
    2480:	e3a00001 	mov	r0, #1
    2484:	eb00097a 	bl	4a74 <printf>
    2488:	eb00083c 	bl	4580 <exit>
    248c:	e59f12e8 	ldr	r1, [pc, #744]	@ 277c <subdir+0x62c>
    2490:	e59f0354 	ldr	r0, [pc, #852]	@ 27ec <subdir+0x69c>
    2494:	eb000881 	bl	46a0 <open>
    2498:	e1a03000 	mov	r3, r0
    249c:	e3530000 	cmp	r3, #0
    24a0:	ba000003 	blt	24b4 <subdir+0x364>
    24a4:	e59f1344 	ldr	r1, [pc, #836]	@ 27f0 <subdir+0x6a0>
    24a8:	e3a00001 	mov	r0, #1
    24ac:	eb000970 	bl	4a74 <printf>
    24b0:	eb000832 	bl	4580 <exit>
    24b4:	e3a01c02 	mov	r1, #512	@ 0x200
    24b8:	e59f02b4 	ldr	r0, [pc, #692]	@ 2774 <subdir+0x624>
    24bc:	eb000877 	bl	46a0 <open>
    24c0:	e1a03000 	mov	r3, r0
    24c4:	e3530000 	cmp	r3, #0
    24c8:	ba000003 	blt	24dc <subdir+0x38c>
    24cc:	e59f1320 	ldr	r1, [pc, #800]	@ 27f4 <subdir+0x6a4>
    24d0:	e3a00001 	mov	r0, #1
    24d4:	eb000966 	bl	4a74 <printf>
    24d8:	eb000828 	bl	4580 <exit>
    24dc:	e3a01002 	mov	r1, #2
    24e0:	e59f028c 	ldr	r0, [pc, #652]	@ 2774 <subdir+0x624>
    24e4:	eb00086d 	bl	46a0 <open>
    24e8:	e1a03000 	mov	r3, r0
    24ec:	e3530000 	cmp	r3, #0
    24f0:	ba000003 	blt	2504 <subdir+0x3b4>
    24f4:	e59f12fc 	ldr	r1, [pc, #764]	@ 27f8 <subdir+0x6a8>
    24f8:	e3a00001 	mov	r0, #1
    24fc:	eb00095c 	bl	4a74 <printf>
    2500:	eb00081e 	bl	4580 <exit>
    2504:	e3a01001 	mov	r1, #1
    2508:	e59f0264 	ldr	r0, [pc, #612]	@ 2774 <subdir+0x624>
    250c:	eb000863 	bl	46a0 <open>
    2510:	e1a03000 	mov	r3, r0
    2514:	e3530000 	cmp	r3, #0
    2518:	ba000003 	blt	252c <subdir+0x3dc>
    251c:	e59f12d8 	ldr	r1, [pc, #728]	@ 27fc <subdir+0x6ac>
    2520:	e3a00001 	mov	r0, #1
    2524:	eb000952 	bl	4a74 <printf>
    2528:	eb000814 	bl	4580 <exit>
    252c:	e59f12cc 	ldr	r1, [pc, #716]	@ 2800 <subdir+0x6b0>
    2530:	e59f02ac 	ldr	r0, [pc, #684]	@ 27e4 <subdir+0x694>
    2534:	eb00087d 	bl	4730 <link>
    2538:	e1a03000 	mov	r3, r0
    253c:	e3530000 	cmp	r3, #0
    2540:	1a000003 	bne	2554 <subdir+0x404>
    2544:	e59f12b8 	ldr	r1, [pc, #696]	@ 2804 <subdir+0x6b4>
    2548:	e3a00001 	mov	r0, #1
    254c:	eb000948 	bl	4a74 <printf>
    2550:	eb00080a 	bl	4580 <exit>
    2554:	e59f12a4 	ldr	r1, [pc, #676]	@ 2800 <subdir+0x6b0>
    2558:	e59f028c 	ldr	r0, [pc, #652]	@ 27ec <subdir+0x69c>
    255c:	eb000873 	bl	4730 <link>
    2560:	e1a03000 	mov	r3, r0
    2564:	e3530000 	cmp	r3, #0
    2568:	1a000003 	bne	257c <subdir+0x42c>
    256c:	e59f1294 	ldr	r1, [pc, #660]	@ 2808 <subdir+0x6b8>
    2570:	e3a00001 	mov	r0, #1
    2574:	eb00093e 	bl	4a74 <printf>
    2578:	eb000800 	bl	4580 <exit>
    257c:	e59f122c 	ldr	r1, [pc, #556]	@ 27b0 <subdir+0x660>
    2580:	e59f01f8 	ldr	r0, [pc, #504]	@ 2780 <subdir+0x630>
    2584:	eb000869 	bl	4730 <link>
    2588:	e1a03000 	mov	r3, r0
    258c:	e3530000 	cmp	r3, #0
    2590:	1a000003 	bne	25a4 <subdir+0x454>
    2594:	e59f1270 	ldr	r1, [pc, #624]	@ 280c <subdir+0x6bc>
    2598:	e3a00001 	mov	r0, #1
    259c:	eb000934 	bl	4a74 <printf>
    25a0:	eb0007f6 	bl	4580 <exit>
    25a4:	e59f0238 	ldr	r0, [pc, #568]	@ 27e4 <subdir+0x694>
    25a8:	eb000869 	bl	4754 <mkdir>
    25ac:	e1a03000 	mov	r3, r0
    25b0:	e3530000 	cmp	r3, #0
    25b4:	1a000003 	bne	25c8 <subdir+0x478>
    25b8:	e59f1250 	ldr	r1, [pc, #592]	@ 2810 <subdir+0x6c0>
    25bc:	e3a00001 	mov	r0, #1
    25c0:	eb00092b 	bl	4a74 <printf>
    25c4:	eb0007ed 	bl	4580 <exit>
    25c8:	e59f021c 	ldr	r0, [pc, #540]	@ 27ec <subdir+0x69c>
    25cc:	eb000860 	bl	4754 <mkdir>
    25d0:	e1a03000 	mov	r3, r0
    25d4:	e3530000 	cmp	r3, #0
    25d8:	1a000003 	bne	25ec <subdir+0x49c>
    25dc:	e59f1230 	ldr	r1, [pc, #560]	@ 2814 <subdir+0x6c4>
    25e0:	e3a00001 	mov	r0, #1
    25e4:	eb000922 	bl	4a74 <printf>
    25e8:	eb0007e4 	bl	4580 <exit>
    25ec:	e59f01bc 	ldr	r0, [pc, #444]	@ 27b0 <subdir+0x660>
    25f0:	eb000857 	bl	4754 <mkdir>
    25f4:	e1a03000 	mov	r3, r0
    25f8:	e3530000 	cmp	r3, #0
    25fc:	1a000003 	bne	2610 <subdir+0x4c0>
    2600:	e59f1210 	ldr	r1, [pc, #528]	@ 2818 <subdir+0x6c8>
    2604:	e3a00001 	mov	r0, #1
    2608:	eb000919 	bl	4a74 <printf>
    260c:	eb0007db 	bl	4580 <exit>
    2610:	e59f01d4 	ldr	r0, [pc, #468]	@ 27ec <subdir+0x69c>
    2614:	eb000833 	bl	46e8 <unlink>
    2618:	e1a03000 	mov	r3, r0
    261c:	e3530000 	cmp	r3, #0
    2620:	1a000003 	bne	2634 <subdir+0x4e4>
    2624:	e59f11f0 	ldr	r1, [pc, #496]	@ 281c <subdir+0x6cc>
    2628:	e3a00001 	mov	r0, #1
    262c:	eb000910 	bl	4a74 <printf>
    2630:	eb0007d2 	bl	4580 <exit>
    2634:	e59f01a8 	ldr	r0, [pc, #424]	@ 27e4 <subdir+0x694>
    2638:	eb00082a 	bl	46e8 <unlink>
    263c:	e1a03000 	mov	r3, r0
    2640:	e3530000 	cmp	r3, #0
    2644:	1a000003 	bne	2658 <subdir+0x508>
    2648:	e59f11d0 	ldr	r1, [pc, #464]	@ 2820 <subdir+0x6d0>
    264c:	e3a00001 	mov	r0, #1
    2650:	eb000907 	bl	4a74 <printf>
    2654:	eb0007c9 	bl	4580 <exit>
    2658:	e59f0120 	ldr	r0, [pc, #288]	@ 2780 <subdir+0x630>
    265c:	eb000845 	bl	4778 <chdir>
    2660:	e1a03000 	mov	r3, r0
    2664:	e3530000 	cmp	r3, #0
    2668:	1a000003 	bne	267c <subdir+0x52c>
    266c:	e59f11b0 	ldr	r1, [pc, #432]	@ 2824 <subdir+0x6d4>
    2670:	e3a00001 	mov	r0, #1
    2674:	eb0008fe 	bl	4a74 <printf>
    2678:	eb0007c0 	bl	4580 <exit>
    267c:	e59f01a4 	ldr	r0, [pc, #420]	@ 2828 <subdir+0x6d8>
    2680:	eb00083c 	bl	4778 <chdir>
    2684:	e1a03000 	mov	r3, r0
    2688:	e3530000 	cmp	r3, #0
    268c:	1a000003 	bne	26a0 <subdir+0x550>
    2690:	e59f1194 	ldr	r1, [pc, #404]	@ 282c <subdir+0x6dc>
    2694:	e3a00001 	mov	r0, #1
    2698:	eb0008f5 	bl	4a74 <printf>
    269c:	eb0007b7 	bl	4580 <exit>
    26a0:	e59f0108 	ldr	r0, [pc, #264]	@ 27b0 <subdir+0x660>
    26a4:	eb00080f 	bl	46e8 <unlink>
    26a8:	e1a03000 	mov	r3, r0
    26ac:	e3530000 	cmp	r3, #0
    26b0:	0a000003 	beq	26c4 <subdir+0x574>
    26b4:	e59f10fc 	ldr	r1, [pc, #252]	@ 27b8 <subdir+0x668>
    26b8:	e3a00001 	mov	r0, #1
    26bc:	eb0008ec 	bl	4a74 <printf>
    26c0:	eb0007ae 	bl	4580 <exit>
    26c4:	e59f00b4 	ldr	r0, [pc, #180]	@ 2780 <subdir+0x630>
    26c8:	eb000806 	bl	46e8 <unlink>
    26cc:	e1a03000 	mov	r3, r0
    26d0:	e3530000 	cmp	r3, #0
    26d4:	0a000003 	beq	26e8 <subdir+0x598>
    26d8:	e59f1150 	ldr	r1, [pc, #336]	@ 2830 <subdir+0x6e0>
    26dc:	e3a00001 	mov	r0, #1
    26e0:	eb0008e3 	bl	4a74 <printf>
    26e4:	eb0007a5 	bl	4580 <exit>
    26e8:	e59f0084 	ldr	r0, [pc, #132]	@ 2774 <subdir+0x624>
    26ec:	eb0007fd 	bl	46e8 <unlink>
    26f0:	e1a03000 	mov	r3, r0
    26f4:	e3530000 	cmp	r3, #0
    26f8:	1a000003 	bne	270c <subdir+0x5bc>
    26fc:	e59f1130 	ldr	r1, [pc, #304]	@ 2834 <subdir+0x6e4>
    2700:	e3a00001 	mov	r0, #1
    2704:	eb0008da 	bl	4a74 <printf>
    2708:	eb00079c 	bl	4580 <exit>
    270c:	e59f0124 	ldr	r0, [pc, #292]	@ 2838 <subdir+0x6e8>
    2710:	eb0007f4 	bl	46e8 <unlink>
    2714:	e1a03000 	mov	r3, r0
    2718:	e3530000 	cmp	r3, #0
    271c:	aa000003 	bge	2730 <subdir+0x5e0>
    2720:	e59f1114 	ldr	r1, [pc, #276]	@ 283c <subdir+0x6ec>
    2724:	e3a00001 	mov	r0, #1
    2728:	eb0008d1 	bl	4a74 <printf>
    272c:	eb000793 	bl	4580 <exit>
    2730:	e59f003c 	ldr	r0, [pc, #60]	@ 2774 <subdir+0x624>
    2734:	eb0007eb 	bl	46e8 <unlink>
    2738:	e1a03000 	mov	r3, r0
    273c:	e3530000 	cmp	r3, #0
    2740:	aa000003 	bge	2754 <subdir+0x604>
    2744:	e59f10f4 	ldr	r1, [pc, #244]	@ 2840 <subdir+0x6f0>
    2748:	e3a00001 	mov	r0, #1
    274c:	eb0008c8 	bl	4a74 <printf>
    2750:	eb00078a 	bl	4580 <exit>
    2754:	e59f10e8 	ldr	r1, [pc, #232]	@ 2844 <subdir+0x6f4>
    2758:	e3a00001 	mov	r0, #1
    275c:	eb0008c4 	bl	4a74 <printf>
    2760:	e1a00000 	nop			@ (mov r0, r0)
    2764:	e24bd004 	sub	sp, fp, #4
    2768:	e8bd8800 	pop	{fp, pc}
    276c:	00005a98 	.word	0x00005a98
    2770:	00005aa8 	.word	0x00005aa8
    2774:	00005aac 	.word	0x00005aac
    2778:	00005ab0 	.word	0x00005ab0
    277c:	00000202 	.word	0x00000202
    2780:	00005ac8 	.word	0x00005ac8
    2784:	00005ad0 	.word	0x00005ad0
    2788:	00005ae8 	.word	0x00005ae8
    278c:	00005b10 	.word	0x00005b10
    2790:	00005b18 	.word	0x00005b18
    2794:	00005b34 	.word	0x00005b34
    2798:	00005b40 	.word	0x00005b40
    279c:	00005b58 	.word	0x00005b58
    27a0:	00005b5c 	.word	0x00005b5c
    27a4:	00005b68 	.word	0x00005b68
    27a8:	00006998 	.word	0x00006998
    27ac:	00005b84 	.word	0x00005b84
    27b0:	00005ba0 	.word	0x00005ba0
    27b4:	00005bac 	.word	0x00005bac
    27b8:	00005bd0 	.word	0x00005bd0
    27bc:	00005be8 	.word	0x00005be8
    27c0:	00005c0c 	.word	0x00005c0c
    27c4:	00005c20 	.word	0x00005c20
    27c8:	00005c2c 	.word	0x00005c2c
    27cc:	00005c48 	.word	0x00005c48
    27d0:	00005c58 	.word	0x00005c58
    27d4:	00005c60 	.word	0x00005c60
    27d8:	00005c74 	.word	0x00005c74
    27dc:	00005c8c 	.word	0x00005c8c
    27e0:	00005ca8 	.word	0x00005ca8
    27e4:	00005cd0 	.word	0x00005cd0
    27e8:	00005cdc 	.word	0x00005cdc
    27ec:	00005cf8 	.word	0x00005cf8
    27f0:	00005d04 	.word	0x00005d04
    27f4:	00005d20 	.word	0x00005d20
    27f8:	00005d38 	.word	0x00005d38
    27fc:	00005d54 	.word	0x00005d54
    2800:	00005d70 	.word	0x00005d70
    2804:	00005d7c 	.word	0x00005d7c
    2808:	00005da0 	.word	0x00005da0
    280c:	00005dc4 	.word	0x00005dc4
    2810:	00005de8 	.word	0x00005de8
    2814:	00005e04 	.word	0x00005e04
    2818:	00005e20 	.word	0x00005e20
    281c:	00005e40 	.word	0x00005e40
    2820:	00005e5c 	.word	0x00005e5c
    2824:	00005e78 	.word	0x00005e78
    2828:	00005e90 	.word	0x00005e90
    282c:	00005e98 	.word	0x00005e98
    2830:	00005eb0 	.word	0x00005eb0
    2834:	00005ec8 	.word	0x00005ec8
    2838:	00005ee8 	.word	0x00005ee8
    283c:	00005ef0 	.word	0x00005ef0
    2840:	00005f08 	.word	0x00005f08
    2844:	00005f1c 	.word	0x00005f1c

00002848 <bigwrite>:
    2848:	e92d4800 	push	{fp, lr}
    284c:	e28db004 	add	fp, sp, #4
    2850:	e24dd010 	sub	sp, sp, #16
    2854:	e59f10e8 	ldr	r1, [pc, #232]	@ 2944 <bigwrite+0xfc>
    2858:	e3a00001 	mov	r0, #1
    285c:	eb000884 	bl	4a74 <printf>
    2860:	e59f00e0 	ldr	r0, [pc, #224]	@ 2948 <bigwrite+0x100>
    2864:	eb00079f 	bl	46e8 <unlink>
    2868:	e59f30dc 	ldr	r3, [pc, #220]	@ 294c <bigwrite+0x104>
    286c:	e50b3008 	str	r3, [fp, #-8]
    2870:	ea00002a 	b	2920 <bigwrite+0xd8>
    2874:	e59f10d4 	ldr	r1, [pc, #212]	@ 2950 <bigwrite+0x108>
    2878:	e59f00c8 	ldr	r0, [pc, #200]	@ 2948 <bigwrite+0x100>
    287c:	eb000787 	bl	46a0 <open>
    2880:	e50b0010 	str	r0, [fp, #-16]
    2884:	e51b3010 	ldr	r3, [fp, #-16]
    2888:	e3530000 	cmp	r3, #0
    288c:	aa000003 	bge	28a0 <bigwrite+0x58>
    2890:	e59f10bc 	ldr	r1, [pc, #188]	@ 2954 <bigwrite+0x10c>
    2894:	e3a00001 	mov	r0, #1
    2898:	eb000875 	bl	4a74 <printf>
    289c:	eb000737 	bl	4580 <exit>
    28a0:	e3a03000 	mov	r3, #0
    28a4:	e50b300c 	str	r3, [fp, #-12]
    28a8:	ea000011 	b	28f4 <bigwrite+0xac>
    28ac:	e51b2008 	ldr	r2, [fp, #-8]
    28b0:	e59f10a0 	ldr	r1, [pc, #160]	@ 2958 <bigwrite+0x110>
    28b4:	e51b0010 	ldr	r0, [fp, #-16]
    28b8:	eb000754 	bl	4610 <write>
    28bc:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
    28c0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
    28c4:	e51b3008 	ldr	r3, [fp, #-8]
    28c8:	e1520003 	cmp	r2, r3
    28cc:	0a000005 	beq	28e8 <bigwrite+0xa0>
    28d0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    28d4:	e51b2008 	ldr	r2, [fp, #-8]
    28d8:	e59f107c 	ldr	r1, [pc, #124]	@ 295c <bigwrite+0x114>
    28dc:	e3a00001 	mov	r0, #1
    28e0:	eb000863 	bl	4a74 <printf>
    28e4:	eb000725 	bl	4580 <exit>
    28e8:	e51b300c 	ldr	r3, [fp, #-12]
    28ec:	e2833001 	add	r3, r3, #1
    28f0:	e50b300c 	str	r3, [fp, #-12]
    28f4:	e51b300c 	ldr	r3, [fp, #-12]
    28f8:	e3530001 	cmp	r3, #1
    28fc:	daffffea 	ble	28ac <bigwrite+0x64>
    2900:	e51b0010 	ldr	r0, [fp, #-16]
    2904:	eb00074a 	bl	4634 <close>
    2908:	e59f0038 	ldr	r0, [pc, #56]	@ 2948 <bigwrite+0x100>
    290c:	eb000775 	bl	46e8 <unlink>
    2910:	e51b3008 	ldr	r3, [fp, #-8]
    2914:	e2833f75 	add	r3, r3, #468	@ 0x1d4
    2918:	e2833003 	add	r3, r3, #3
    291c:	e50b3008 	str	r3, [fp, #-8]
    2920:	e51b3008 	ldr	r3, [fp, #-8]
    2924:	e3530b06 	cmp	r3, #6144	@ 0x1800
    2928:	baffffd1 	blt	2874 <bigwrite+0x2c>
    292c:	e59f102c 	ldr	r1, [pc, #44]	@ 2960 <bigwrite+0x118>
    2930:	e3a00001 	mov	r0, #1
    2934:	eb00084e 	bl	4a74 <printf>
    2938:	e1a00000 	nop			@ (mov r0, r0)
    293c:	e24bd004 	sub	sp, fp, #4
    2940:	e8bd8800 	pop	{fp, pc}
    2944:	00005f28 	.word	0x00005f28
    2948:	00005f38 	.word	0x00005f38
    294c:	000001f3 	.word	0x000001f3
    2950:	00000202 	.word	0x00000202
    2954:	00005f44 	.word	0x00005f44
    2958:	00006998 	.word	0x00006998
    295c:	00005f5c 	.word	0x00005f5c
    2960:	00005f70 	.word	0x00005f70

00002964 <bigfile>:
    2964:	e92d4800 	push	{fp, lr}
    2968:	e28db004 	add	fp, sp, #4
    296c:	e24dd010 	sub	sp, sp, #16
    2970:	e59f11f8 	ldr	r1, [pc, #504]	@ 2b70 <bigfile+0x20c>
    2974:	e3a00001 	mov	r0, #1
    2978:	eb00083d 	bl	4a74 <printf>
    297c:	e59f01f0 	ldr	r0, [pc, #496]	@ 2b74 <bigfile+0x210>
    2980:	eb000758 	bl	46e8 <unlink>
    2984:	e59f11ec 	ldr	r1, [pc, #492]	@ 2b78 <bigfile+0x214>
    2988:	e59f01e4 	ldr	r0, [pc, #484]	@ 2b74 <bigfile+0x210>
    298c:	eb000743 	bl	46a0 <open>
    2990:	e50b0010 	str	r0, [fp, #-16]
    2994:	e51b3010 	ldr	r3, [fp, #-16]
    2998:	e3530000 	cmp	r3, #0
    299c:	aa000003 	bge	29b0 <bigfile+0x4c>
    29a0:	e59f11d4 	ldr	r1, [pc, #468]	@ 2b7c <bigfile+0x218>
    29a4:	e3a00001 	mov	r0, #1
    29a8:	eb000831 	bl	4a74 <printf>
    29ac:	eb0006f3 	bl	4580 <exit>
    29b0:	e3a03000 	mov	r3, #0
    29b4:	e50b3008 	str	r3, [fp, #-8]
    29b8:	ea000011 	b	2a04 <bigfile+0xa0>
    29bc:	e3a02f96 	mov	r2, #600	@ 0x258
    29c0:	e51b1008 	ldr	r1, [fp, #-8]
    29c4:	e59f01b4 	ldr	r0, [pc, #436]	@ 2b80 <bigfile+0x21c>
    29c8:	eb0005fa 	bl	41b8 <memset>
    29cc:	e3a02f96 	mov	r2, #600	@ 0x258
    29d0:	e59f11a8 	ldr	r1, [pc, #424]	@ 2b80 <bigfile+0x21c>
    29d4:	e51b0010 	ldr	r0, [fp, #-16]
    29d8:	eb00070c 	bl	4610 <write>
    29dc:	e1a03000 	mov	r3, r0
    29e0:	e3530f96 	cmp	r3, #600	@ 0x258
    29e4:	0a000003 	beq	29f8 <bigfile+0x94>
    29e8:	e59f1194 	ldr	r1, [pc, #404]	@ 2b84 <bigfile+0x220>
    29ec:	e3a00001 	mov	r0, #1
    29f0:	eb00081f 	bl	4a74 <printf>
    29f4:	eb0006e1 	bl	4580 <exit>
    29f8:	e51b3008 	ldr	r3, [fp, #-8]
    29fc:	e2833001 	add	r3, r3, #1
    2a00:	e50b3008 	str	r3, [fp, #-8]
    2a04:	e51b3008 	ldr	r3, [fp, #-8]
    2a08:	e3530013 	cmp	r3, #19
    2a0c:	daffffea 	ble	29bc <bigfile+0x58>
    2a10:	e51b0010 	ldr	r0, [fp, #-16]
    2a14:	eb000706 	bl	4634 <close>
    2a18:	e3a01000 	mov	r1, #0
    2a1c:	e59f0150 	ldr	r0, [pc, #336]	@ 2b74 <bigfile+0x210>
    2a20:	eb00071e 	bl	46a0 <open>
    2a24:	e50b0010 	str	r0, [fp, #-16]
    2a28:	e51b3010 	ldr	r3, [fp, #-16]
    2a2c:	e3530000 	cmp	r3, #0
    2a30:	aa000003 	bge	2a44 <bigfile+0xe0>
    2a34:	e59f114c 	ldr	r1, [pc, #332]	@ 2b88 <bigfile+0x224>
    2a38:	e3a00001 	mov	r0, #1
    2a3c:	eb00080c 	bl	4a74 <printf>
    2a40:	eb0006ce 	bl	4580 <exit>
    2a44:	e3a03000 	mov	r3, #0
    2a48:	e50b300c 	str	r3, [fp, #-12]
    2a4c:	e3a03000 	mov	r3, #0
    2a50:	e50b3008 	str	r3, [fp, #-8]
    2a54:	e3a02f4b 	mov	r2, #300	@ 0x12c
    2a58:	e59f1120 	ldr	r1, [pc, #288]	@ 2b80 <bigfile+0x21c>
    2a5c:	e51b0010 	ldr	r0, [fp, #-16]
    2a60:	eb0006e1 	bl	45ec <read>
    2a64:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
    2a68:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    2a6c:	e3530000 	cmp	r3, #0
    2a70:	aa000003 	bge	2a84 <bigfile+0x120>
    2a74:	e59f1110 	ldr	r1, [pc, #272]	@ 2b8c <bigfile+0x228>
    2a78:	e3a00001 	mov	r0, #1
    2a7c:	eb0007fc 	bl	4a74 <printf>
    2a80:	eb0006be 	bl	4580 <exit>
    2a84:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    2a88:	e3530000 	cmp	r3, #0
    2a8c:	0a000024 	beq	2b24 <bigfile+0x1c0>
    2a90:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    2a94:	e3530f4b 	cmp	r3, #300	@ 0x12c
    2a98:	0a000003 	beq	2aac <bigfile+0x148>
    2a9c:	e59f10ec 	ldr	r1, [pc, #236]	@ 2b90 <bigfile+0x22c>
    2aa0:	e3a00001 	mov	r0, #1
    2aa4:	eb0007f2 	bl	4a74 <printf>
    2aa8:	eb0006b4 	bl	4580 <exit>
    2aac:	e59f30cc 	ldr	r3, [pc, #204]	@ 2b80 <bigfile+0x21c>
    2ab0:	e5d33000 	ldrb	r3, [r3]
    2ab4:	e1a01003 	mov	r1, r3
    2ab8:	e51b3008 	ldr	r3, [fp, #-8]
    2abc:	e1a02fa3 	lsr	r2, r3, #31
    2ac0:	e0823003 	add	r3, r2, r3
    2ac4:	e1a030c3 	asr	r3, r3, #1
    2ac8:	e1510003 	cmp	r1, r3
    2acc:	1a000008 	bne	2af4 <bigfile+0x190>
    2ad0:	e59f30a8 	ldr	r3, [pc, #168]	@ 2b80 <bigfile+0x21c>
    2ad4:	e5d3312b 	ldrb	r3, [r3, #299]	@ 0x12b
    2ad8:	e1a01003 	mov	r1, r3
    2adc:	e51b3008 	ldr	r3, [fp, #-8]
    2ae0:	e1a02fa3 	lsr	r2, r3, #31
    2ae4:	e0823003 	add	r3, r2, r3
    2ae8:	e1a030c3 	asr	r3, r3, #1
    2aec:	e1510003 	cmp	r1, r3
    2af0:	0a000003 	beq	2b04 <bigfile+0x1a0>
    2af4:	e59f1098 	ldr	r1, [pc, #152]	@ 2b94 <bigfile+0x230>
    2af8:	e3a00001 	mov	r0, #1
    2afc:	eb0007dc 	bl	4a74 <printf>
    2b00:	eb00069e 	bl	4580 <exit>
    2b04:	e51b200c 	ldr	r2, [fp, #-12]
    2b08:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    2b0c:	e0823003 	add	r3, r2, r3
    2b10:	e50b300c 	str	r3, [fp, #-12]
    2b14:	e51b3008 	ldr	r3, [fp, #-8]
    2b18:	e2833001 	add	r3, r3, #1
    2b1c:	e50b3008 	str	r3, [fp, #-8]
    2b20:	eaffffcb 	b	2a54 <bigfile+0xf0>
    2b24:	e1a00000 	nop			@ (mov r0, r0)
    2b28:	e51b0010 	ldr	r0, [fp, #-16]
    2b2c:	eb0006c0 	bl	4634 <close>
    2b30:	e51b300c 	ldr	r3, [fp, #-12]
    2b34:	e59f205c 	ldr	r2, [pc, #92]	@ 2b98 <bigfile+0x234>
    2b38:	e1530002 	cmp	r3, r2
    2b3c:	0a000003 	beq	2b50 <bigfile+0x1ec>
    2b40:	e59f1054 	ldr	r1, [pc, #84]	@ 2b9c <bigfile+0x238>
    2b44:	e3a00001 	mov	r0, #1
    2b48:	eb0007c9 	bl	4a74 <printf>
    2b4c:	eb00068b 	bl	4580 <exit>
    2b50:	e59f001c 	ldr	r0, [pc, #28]	@ 2b74 <bigfile+0x210>
    2b54:	eb0006e3 	bl	46e8 <unlink>
    2b58:	e59f1040 	ldr	r1, [pc, #64]	@ 2ba0 <bigfile+0x23c>
    2b5c:	e3a00001 	mov	r0, #1
    2b60:	eb0007c3 	bl	4a74 <printf>
    2b64:	e1a00000 	nop			@ (mov r0, r0)
    2b68:	e24bd004 	sub	sp, fp, #4
    2b6c:	e8bd8800 	pop	{fp, pc}
    2b70:	00005f80 	.word	0x00005f80
    2b74:	00005f90 	.word	0x00005f90
    2b78:	00000202 	.word	0x00000202
    2b7c:	00005f98 	.word	0x00005f98
    2b80:	00006998 	.word	0x00006998
    2b84:	00005fb0 	.word	0x00005fb0
    2b88:	00005fc8 	.word	0x00005fc8
    2b8c:	00005fe0 	.word	0x00005fe0
    2b90:	00005ff8 	.word	0x00005ff8
    2b94:	0000600c 	.word	0x0000600c
    2b98:	00002ee0 	.word	0x00002ee0
    2b9c:	00006028 	.word	0x00006028
    2ba0:	00006044 	.word	0x00006044

00002ba4 <fourteen>:
    2ba4:	e92d4800 	push	{fp, lr}
    2ba8:	e28db004 	add	fp, sp, #4
    2bac:	e24dd008 	sub	sp, sp, #8
    2bb0:	e59f1114 	ldr	r1, [pc, #276]	@ 2ccc <fourteen+0x128>
    2bb4:	e3a00001 	mov	r0, #1
    2bb8:	eb0007ad 	bl	4a74 <printf>
    2bbc:	e59f010c 	ldr	r0, [pc, #268]	@ 2cd0 <fourteen+0x12c>
    2bc0:	eb0006e3 	bl	4754 <mkdir>
    2bc4:	e1a03000 	mov	r3, r0
    2bc8:	e3530000 	cmp	r3, #0
    2bcc:	0a000003 	beq	2be0 <fourteen+0x3c>
    2bd0:	e59f10fc 	ldr	r1, [pc, #252]	@ 2cd4 <fourteen+0x130>
    2bd4:	e3a00001 	mov	r0, #1
    2bd8:	eb0007a5 	bl	4a74 <printf>
    2bdc:	eb000667 	bl	4580 <exit>
    2be0:	e59f00f0 	ldr	r0, [pc, #240]	@ 2cd8 <fourteen+0x134>
    2be4:	eb0006da 	bl	4754 <mkdir>
    2be8:	e1a03000 	mov	r3, r0
    2bec:	e3530000 	cmp	r3, #0
    2bf0:	0a000003 	beq	2c04 <fourteen+0x60>
    2bf4:	e59f10e0 	ldr	r1, [pc, #224]	@ 2cdc <fourteen+0x138>
    2bf8:	e3a00001 	mov	r0, #1
    2bfc:	eb00079c 	bl	4a74 <printf>
    2c00:	eb00065e 	bl	4580 <exit>
    2c04:	e3a01c02 	mov	r1, #512	@ 0x200
    2c08:	e59f00d0 	ldr	r0, [pc, #208]	@ 2ce0 <fourteen+0x13c>
    2c0c:	eb0006a3 	bl	46a0 <open>
    2c10:	e50b0008 	str	r0, [fp, #-8]
    2c14:	e51b3008 	ldr	r3, [fp, #-8]
    2c18:	e3530000 	cmp	r3, #0
    2c1c:	aa000003 	bge	2c30 <fourteen+0x8c>
    2c20:	e59f10bc 	ldr	r1, [pc, #188]	@ 2ce4 <fourteen+0x140>
    2c24:	e3a00001 	mov	r0, #1
    2c28:	eb000791 	bl	4a74 <printf>
    2c2c:	eb000653 	bl	4580 <exit>
    2c30:	e51b0008 	ldr	r0, [fp, #-8]
    2c34:	eb00067e 	bl	4634 <close>
    2c38:	e3a01000 	mov	r1, #0
    2c3c:	e59f00a4 	ldr	r0, [pc, #164]	@ 2ce8 <fourteen+0x144>
    2c40:	eb000696 	bl	46a0 <open>
    2c44:	e50b0008 	str	r0, [fp, #-8]
    2c48:	e51b3008 	ldr	r3, [fp, #-8]
    2c4c:	e3530000 	cmp	r3, #0
    2c50:	aa000003 	bge	2c64 <fourteen+0xc0>
    2c54:	e59f1090 	ldr	r1, [pc, #144]	@ 2cec <fourteen+0x148>
    2c58:	e3a00001 	mov	r0, #1
    2c5c:	eb000784 	bl	4a74 <printf>
    2c60:	eb000646 	bl	4580 <exit>
    2c64:	e51b0008 	ldr	r0, [fp, #-8]
    2c68:	eb000671 	bl	4634 <close>
    2c6c:	e59f007c 	ldr	r0, [pc, #124]	@ 2cf0 <fourteen+0x14c>
    2c70:	eb0006b7 	bl	4754 <mkdir>
    2c74:	e1a03000 	mov	r3, r0
    2c78:	e3530000 	cmp	r3, #0
    2c7c:	1a000003 	bne	2c90 <fourteen+0xec>
    2c80:	e59f106c 	ldr	r1, [pc, #108]	@ 2cf4 <fourteen+0x150>
    2c84:	e3a00001 	mov	r0, #1
    2c88:	eb000779 	bl	4a74 <printf>
    2c8c:	eb00063b 	bl	4580 <exit>
    2c90:	e59f0060 	ldr	r0, [pc, #96]	@ 2cf8 <fourteen+0x154>
    2c94:	eb0006ae 	bl	4754 <mkdir>
    2c98:	e1a03000 	mov	r3, r0
    2c9c:	e3530000 	cmp	r3, #0
    2ca0:	1a000003 	bne	2cb4 <fourteen+0x110>
    2ca4:	e59f1050 	ldr	r1, [pc, #80]	@ 2cfc <fourteen+0x158>
    2ca8:	e3a00001 	mov	r0, #1
    2cac:	eb000770 	bl	4a74 <printf>
    2cb0:	eb000632 	bl	4580 <exit>
    2cb4:	e59f1044 	ldr	r1, [pc, #68]	@ 2d00 <fourteen+0x15c>
    2cb8:	e3a00001 	mov	r0, #1
    2cbc:	eb00076c 	bl	4a74 <printf>
    2cc0:	e1a00000 	nop			@ (mov r0, r0)
    2cc4:	e24bd004 	sub	sp, fp, #4
    2cc8:	e8bd8800 	pop	{fp, pc}
    2ccc:	00006058 	.word	0x00006058
    2cd0:	00006068 	.word	0x00006068
    2cd4:	00006078 	.word	0x00006078
    2cd8:	00006098 	.word	0x00006098
    2cdc:	000060b8 	.word	0x000060b8
    2ce0:	000060e8 	.word	0x000060e8
    2ce4:	00006118 	.word	0x00006118
    2ce8:	00006158 	.word	0x00006158
    2cec:	00006188 	.word	0x00006188
    2cf0:	000061c4 	.word	0x000061c4
    2cf4:	000061e4 	.word	0x000061e4
    2cf8:	00006214 	.word	0x00006214
    2cfc:	00006234 	.word	0x00006234
    2d00:	00006268 	.word	0x00006268

00002d04 <rmdot>:
    2d04:	e92d4800 	push	{fp, lr}
    2d08:	e28db004 	add	fp, sp, #4
    2d0c:	e59f1138 	ldr	r1, [pc, #312]	@ 2e4c <rmdot+0x148>
    2d10:	e3a00001 	mov	r0, #1
    2d14:	eb000756 	bl	4a74 <printf>
    2d18:	e59f0130 	ldr	r0, [pc, #304]	@ 2e50 <rmdot+0x14c>
    2d1c:	eb00068c 	bl	4754 <mkdir>
    2d20:	e1a03000 	mov	r3, r0
    2d24:	e3530000 	cmp	r3, #0
    2d28:	0a000003 	beq	2d3c <rmdot+0x38>
    2d2c:	e59f1120 	ldr	r1, [pc, #288]	@ 2e54 <rmdot+0x150>
    2d30:	e3a00001 	mov	r0, #1
    2d34:	eb00074e 	bl	4a74 <printf>
    2d38:	eb000610 	bl	4580 <exit>
    2d3c:	e59f010c 	ldr	r0, [pc, #268]	@ 2e50 <rmdot+0x14c>
    2d40:	eb00068c 	bl	4778 <chdir>
    2d44:	e1a03000 	mov	r3, r0
    2d48:	e3530000 	cmp	r3, #0
    2d4c:	0a000003 	beq	2d60 <rmdot+0x5c>
    2d50:	e59f1100 	ldr	r1, [pc, #256]	@ 2e58 <rmdot+0x154>
    2d54:	e3a00001 	mov	r0, #1
    2d58:	eb000745 	bl	4a74 <printf>
    2d5c:	eb000607 	bl	4580 <exit>
    2d60:	e59f00f4 	ldr	r0, [pc, #244]	@ 2e5c <rmdot+0x158>
    2d64:	eb00065f 	bl	46e8 <unlink>
    2d68:	e1a03000 	mov	r3, r0
    2d6c:	e3530000 	cmp	r3, #0
    2d70:	1a000003 	bne	2d84 <rmdot+0x80>
    2d74:	e59f10e4 	ldr	r1, [pc, #228]	@ 2e60 <rmdot+0x15c>
    2d78:	e3a00001 	mov	r0, #1
    2d7c:	eb00073c 	bl	4a74 <printf>
    2d80:	eb0005fe 	bl	4580 <exit>
    2d84:	e59f00d8 	ldr	r0, [pc, #216]	@ 2e64 <rmdot+0x160>
    2d88:	eb000656 	bl	46e8 <unlink>
    2d8c:	e1a03000 	mov	r3, r0
    2d90:	e3530000 	cmp	r3, #0
    2d94:	1a000003 	bne	2da8 <rmdot+0xa4>
    2d98:	e59f10c8 	ldr	r1, [pc, #200]	@ 2e68 <rmdot+0x164>
    2d9c:	e3a00001 	mov	r0, #1
    2da0:	eb000733 	bl	4a74 <printf>
    2da4:	eb0005f5 	bl	4580 <exit>
    2da8:	e59f00bc 	ldr	r0, [pc, #188]	@ 2e6c <rmdot+0x168>
    2dac:	eb000671 	bl	4778 <chdir>
    2db0:	e1a03000 	mov	r3, r0
    2db4:	e3530000 	cmp	r3, #0
    2db8:	0a000003 	beq	2dcc <rmdot+0xc8>
    2dbc:	e59f10ac 	ldr	r1, [pc, #172]	@ 2e70 <rmdot+0x16c>
    2dc0:	e3a00001 	mov	r0, #1
    2dc4:	eb00072a 	bl	4a74 <printf>
    2dc8:	eb0005ec 	bl	4580 <exit>
    2dcc:	e59f00a0 	ldr	r0, [pc, #160]	@ 2e74 <rmdot+0x170>
    2dd0:	eb000644 	bl	46e8 <unlink>
    2dd4:	e1a03000 	mov	r3, r0
    2dd8:	e3530000 	cmp	r3, #0
    2ddc:	1a000003 	bne	2df0 <rmdot+0xec>
    2de0:	e59f1090 	ldr	r1, [pc, #144]	@ 2e78 <rmdot+0x174>
    2de4:	e3a00001 	mov	r0, #1
    2de8:	eb000721 	bl	4a74 <printf>
    2dec:	eb0005e3 	bl	4580 <exit>
    2df0:	e59f0084 	ldr	r0, [pc, #132]	@ 2e7c <rmdot+0x178>
    2df4:	eb00063b 	bl	46e8 <unlink>
    2df8:	e1a03000 	mov	r3, r0
    2dfc:	e3530000 	cmp	r3, #0
    2e00:	1a000003 	bne	2e14 <rmdot+0x110>
    2e04:	e59f1074 	ldr	r1, [pc, #116]	@ 2e80 <rmdot+0x17c>
    2e08:	e3a00001 	mov	r0, #1
    2e0c:	eb000718 	bl	4a74 <printf>
    2e10:	eb0005da 	bl	4580 <exit>
    2e14:	e59f0034 	ldr	r0, [pc, #52]	@ 2e50 <rmdot+0x14c>
    2e18:	eb000632 	bl	46e8 <unlink>
    2e1c:	e1a03000 	mov	r3, r0
    2e20:	e3530000 	cmp	r3, #0
    2e24:	0a000003 	beq	2e38 <rmdot+0x134>
    2e28:	e59f1054 	ldr	r1, [pc, #84]	@ 2e84 <rmdot+0x180>
    2e2c:	e3a00001 	mov	r0, #1
    2e30:	eb00070f 	bl	4a74 <printf>
    2e34:	eb0005d1 	bl	4580 <exit>
    2e38:	e59f1048 	ldr	r1, [pc, #72]	@ 2e88 <rmdot+0x184>
    2e3c:	e3a00001 	mov	r0, #1
    2e40:	eb00070b 	bl	4a74 <printf>
    2e44:	e1a00000 	nop			@ (mov r0, r0)
    2e48:	e8bd8800 	pop	{fp, pc}
    2e4c:	00006278 	.word	0x00006278
    2e50:	00006284 	.word	0x00006284
    2e54:	0000628c 	.word	0x0000628c
    2e58:	000062a0 	.word	0x000062a0
    2e5c:	0000592c 	.word	0x0000592c
    2e60:	000062b4 	.word	0x000062b4
    2e64:	0000545c 	.word	0x0000545c
    2e68:	000062c4 	.word	0x000062c4
    2e6c:	000062d4 	.word	0x000062d4
    2e70:	000062d8 	.word	0x000062d8
    2e74:	000062e8 	.word	0x000062e8
    2e78:	000062f0 	.word	0x000062f0
    2e7c:	00006308 	.word	0x00006308
    2e80:	00006310 	.word	0x00006310
    2e84:	00006328 	.word	0x00006328
    2e88:	00006340 	.word	0x00006340

00002e8c <dirfile>:
    2e8c:	e92d4800 	push	{fp, lr}
    2e90:	e28db004 	add	fp, sp, #4
    2e94:	e24dd008 	sub	sp, sp, #8
    2e98:	e59f11d0 	ldr	r1, [pc, #464]	@ 3070 <dirfile+0x1e4>
    2e9c:	e3a00001 	mov	r0, #1
    2ea0:	eb0006f3 	bl	4a74 <printf>
    2ea4:	e3a01c02 	mov	r1, #512	@ 0x200
    2ea8:	e59f01c4 	ldr	r0, [pc, #452]	@ 3074 <dirfile+0x1e8>
    2eac:	eb0005fb 	bl	46a0 <open>
    2eb0:	e50b0008 	str	r0, [fp, #-8]
    2eb4:	e51b3008 	ldr	r3, [fp, #-8]
    2eb8:	e3530000 	cmp	r3, #0
    2ebc:	aa000003 	bge	2ed0 <dirfile+0x44>
    2ec0:	e59f11b0 	ldr	r1, [pc, #432]	@ 3078 <dirfile+0x1ec>
    2ec4:	e3a00001 	mov	r0, #1
    2ec8:	eb0006e9 	bl	4a74 <printf>
    2ecc:	eb0005ab 	bl	4580 <exit>
    2ed0:	e51b0008 	ldr	r0, [fp, #-8]
    2ed4:	eb0005d6 	bl	4634 <close>
    2ed8:	e59f0194 	ldr	r0, [pc, #404]	@ 3074 <dirfile+0x1e8>
    2edc:	eb000625 	bl	4778 <chdir>
    2ee0:	e1a03000 	mov	r3, r0
    2ee4:	e3530000 	cmp	r3, #0
    2ee8:	1a000003 	bne	2efc <dirfile+0x70>
    2eec:	e59f1188 	ldr	r1, [pc, #392]	@ 307c <dirfile+0x1f0>
    2ef0:	e3a00001 	mov	r0, #1
    2ef4:	eb0006de 	bl	4a74 <printf>
    2ef8:	eb0005a0 	bl	4580 <exit>
    2efc:	e3a01000 	mov	r1, #0
    2f00:	e59f0178 	ldr	r0, [pc, #376]	@ 3080 <dirfile+0x1f4>
    2f04:	eb0005e5 	bl	46a0 <open>
    2f08:	e50b0008 	str	r0, [fp, #-8]
    2f0c:	e51b3008 	ldr	r3, [fp, #-8]
    2f10:	e3530000 	cmp	r3, #0
    2f14:	ba000003 	blt	2f28 <dirfile+0x9c>
    2f18:	e59f1164 	ldr	r1, [pc, #356]	@ 3084 <dirfile+0x1f8>
    2f1c:	e3a00001 	mov	r0, #1
    2f20:	eb0006d3 	bl	4a74 <printf>
    2f24:	eb000595 	bl	4580 <exit>
    2f28:	e3a01c02 	mov	r1, #512	@ 0x200
    2f2c:	e59f014c 	ldr	r0, [pc, #332]	@ 3080 <dirfile+0x1f4>
    2f30:	eb0005da 	bl	46a0 <open>
    2f34:	e50b0008 	str	r0, [fp, #-8]
    2f38:	e51b3008 	ldr	r3, [fp, #-8]
    2f3c:	e3530000 	cmp	r3, #0
    2f40:	ba000003 	blt	2f54 <dirfile+0xc8>
    2f44:	e59f1138 	ldr	r1, [pc, #312]	@ 3084 <dirfile+0x1f8>
    2f48:	e3a00001 	mov	r0, #1
    2f4c:	eb0006c8 	bl	4a74 <printf>
    2f50:	eb00058a 	bl	4580 <exit>
    2f54:	e59f0124 	ldr	r0, [pc, #292]	@ 3080 <dirfile+0x1f4>
    2f58:	eb0005fd 	bl	4754 <mkdir>
    2f5c:	e1a03000 	mov	r3, r0
    2f60:	e3530000 	cmp	r3, #0
    2f64:	1a000003 	bne	2f78 <dirfile+0xec>
    2f68:	e59f1118 	ldr	r1, [pc, #280]	@ 3088 <dirfile+0x1fc>
    2f6c:	e3a00001 	mov	r0, #1
    2f70:	eb0006bf 	bl	4a74 <printf>
    2f74:	eb000581 	bl	4580 <exit>
    2f78:	e59f0100 	ldr	r0, [pc, #256]	@ 3080 <dirfile+0x1f4>
    2f7c:	eb0005d9 	bl	46e8 <unlink>
    2f80:	e1a03000 	mov	r3, r0
    2f84:	e3530000 	cmp	r3, #0
    2f88:	1a000003 	bne	2f9c <dirfile+0x110>
    2f8c:	e59f10f8 	ldr	r1, [pc, #248]	@ 308c <dirfile+0x200>
    2f90:	e3a00001 	mov	r0, #1
    2f94:	eb0006b6 	bl	4a74 <printf>
    2f98:	eb000578 	bl	4580 <exit>
    2f9c:	e59f10dc 	ldr	r1, [pc, #220]	@ 3080 <dirfile+0x1f4>
    2fa0:	e59f00e8 	ldr	r0, [pc, #232]	@ 3090 <dirfile+0x204>
    2fa4:	eb0005e1 	bl	4730 <link>
    2fa8:	e1a03000 	mov	r3, r0
    2fac:	e3530000 	cmp	r3, #0
    2fb0:	1a000003 	bne	2fc4 <dirfile+0x138>
    2fb4:	e59f10d8 	ldr	r1, [pc, #216]	@ 3094 <dirfile+0x208>
    2fb8:	e3a00001 	mov	r0, #1
    2fbc:	eb0006ac 	bl	4a74 <printf>
    2fc0:	eb00056e 	bl	4580 <exit>
    2fc4:	e59f00a8 	ldr	r0, [pc, #168]	@ 3074 <dirfile+0x1e8>
    2fc8:	eb0005c6 	bl	46e8 <unlink>
    2fcc:	e1a03000 	mov	r3, r0
    2fd0:	e3530000 	cmp	r3, #0
    2fd4:	0a000003 	beq	2fe8 <dirfile+0x15c>
    2fd8:	e59f10b8 	ldr	r1, [pc, #184]	@ 3098 <dirfile+0x20c>
    2fdc:	e3a00001 	mov	r0, #1
    2fe0:	eb0006a3 	bl	4a74 <printf>
    2fe4:	eb000565 	bl	4580 <exit>
    2fe8:	e3a01002 	mov	r1, #2
    2fec:	e59f00a8 	ldr	r0, [pc, #168]	@ 309c <dirfile+0x210>
    2ff0:	eb0005aa 	bl	46a0 <open>
    2ff4:	e50b0008 	str	r0, [fp, #-8]
    2ff8:	e51b3008 	ldr	r3, [fp, #-8]
    2ffc:	e3530000 	cmp	r3, #0
    3000:	ba000003 	blt	3014 <dirfile+0x188>
    3004:	e59f1094 	ldr	r1, [pc, #148]	@ 30a0 <dirfile+0x214>
    3008:	e3a00001 	mov	r0, #1
    300c:	eb000698 	bl	4a74 <printf>
    3010:	eb00055a 	bl	4580 <exit>
    3014:	e3a01000 	mov	r1, #0
    3018:	e59f007c 	ldr	r0, [pc, #124]	@ 309c <dirfile+0x210>
    301c:	eb00059f 	bl	46a0 <open>
    3020:	e50b0008 	str	r0, [fp, #-8]
    3024:	e3a02001 	mov	r2, #1
    3028:	e59f1074 	ldr	r1, [pc, #116]	@ 30a4 <dirfile+0x218>
    302c:	e51b0008 	ldr	r0, [fp, #-8]
    3030:	eb000576 	bl	4610 <write>
    3034:	e1a03000 	mov	r3, r0
    3038:	e3530000 	cmp	r3, #0
    303c:	da000003 	ble	3050 <dirfile+0x1c4>
    3040:	e59f1060 	ldr	r1, [pc, #96]	@ 30a8 <dirfile+0x21c>
    3044:	e3a00001 	mov	r0, #1
    3048:	eb000689 	bl	4a74 <printf>
    304c:	eb00054b 	bl	4580 <exit>
    3050:	e51b0008 	ldr	r0, [fp, #-8]
    3054:	eb000576 	bl	4634 <close>
    3058:	e59f104c 	ldr	r1, [pc, #76]	@ 30ac <dirfile+0x220>
    305c:	e3a00001 	mov	r0, #1
    3060:	eb000683 	bl	4a74 <printf>
    3064:	e1a00000 	nop			@ (mov r0, r0)
    3068:	e24bd004 	sub	sp, fp, #4
    306c:	e8bd8800 	pop	{fp, pc}
    3070:	0000634c 	.word	0x0000634c
    3074:	0000635c 	.word	0x0000635c
    3078:	00006364 	.word	0x00006364
    307c:	0000637c 	.word	0x0000637c
    3080:	00006398 	.word	0x00006398
    3084:	000063a4 	.word	0x000063a4
    3088:	000063c4 	.word	0x000063c4
    308c:	000063e4 	.word	0x000063e4
    3090:	00006404 	.word	0x00006404
    3094:	0000640c 	.word	0x0000640c
    3098:	0000642c 	.word	0x0000642c
    309c:	0000592c 	.word	0x0000592c
    30a0:	00006444 	.word	0x00006444
    30a4:	00005518 	.word	0x00005518
    30a8:	00006464 	.word	0x00006464
    30ac:	00006478 	.word	0x00006478

000030b0 <iref>:
    30b0:	e92d4800 	push	{fp, lr}
    30b4:	e28db004 	add	fp, sp, #4
    30b8:	e24dd008 	sub	sp, sp, #8
    30bc:	e59f10f4 	ldr	r1, [pc, #244]	@ 31b8 <iref+0x108>
    30c0:	e3a00001 	mov	r0, #1
    30c4:	eb00066a 	bl	4a74 <printf>
    30c8:	e3a03000 	mov	r3, #0
    30cc:	e50b3008 	str	r3, [fp, #-8]
    30d0:	ea00002d 	b	318c <iref+0xdc>
    30d4:	e59f00e0 	ldr	r0, [pc, #224]	@ 31bc <iref+0x10c>
    30d8:	eb00059d 	bl	4754 <mkdir>
    30dc:	e1a03000 	mov	r3, r0
    30e0:	e3530000 	cmp	r3, #0
    30e4:	0a000003 	beq	30f8 <iref+0x48>
    30e8:	e59f10d0 	ldr	r1, [pc, #208]	@ 31c0 <iref+0x110>
    30ec:	e3a00001 	mov	r0, #1
    30f0:	eb00065f 	bl	4a74 <printf>
    30f4:	eb000521 	bl	4580 <exit>
    30f8:	e59f00bc 	ldr	r0, [pc, #188]	@ 31bc <iref+0x10c>
    30fc:	eb00059d 	bl	4778 <chdir>
    3100:	e1a03000 	mov	r3, r0
    3104:	e3530000 	cmp	r3, #0
    3108:	0a000003 	beq	311c <iref+0x6c>
    310c:	e59f10b0 	ldr	r1, [pc, #176]	@ 31c4 <iref+0x114>
    3110:	e3a00001 	mov	r0, #1
    3114:	eb000656 	bl	4a74 <printf>
    3118:	eb000518 	bl	4580 <exit>
    311c:	e59f00a4 	ldr	r0, [pc, #164]	@ 31c8 <iref+0x118>
    3120:	eb00058b 	bl	4754 <mkdir>
    3124:	e59f109c 	ldr	r1, [pc, #156]	@ 31c8 <iref+0x118>
    3128:	e59f009c 	ldr	r0, [pc, #156]	@ 31cc <iref+0x11c>
    312c:	eb00057f 	bl	4730 <link>
    3130:	e3a01c02 	mov	r1, #512	@ 0x200
    3134:	e59f008c 	ldr	r0, [pc, #140]	@ 31c8 <iref+0x118>
    3138:	eb000558 	bl	46a0 <open>
    313c:	e50b000c 	str	r0, [fp, #-12]
    3140:	e51b300c 	ldr	r3, [fp, #-12]
    3144:	e3530000 	cmp	r3, #0
    3148:	ba000001 	blt	3154 <iref+0xa4>
    314c:	e51b000c 	ldr	r0, [fp, #-12]
    3150:	eb000537 	bl	4634 <close>
    3154:	e3a01c02 	mov	r1, #512	@ 0x200
    3158:	e59f0070 	ldr	r0, [pc, #112]	@ 31d0 <iref+0x120>
    315c:	eb00054f 	bl	46a0 <open>
    3160:	e50b000c 	str	r0, [fp, #-12]
    3164:	e51b300c 	ldr	r3, [fp, #-12]
    3168:	e3530000 	cmp	r3, #0
    316c:	ba000001 	blt	3178 <iref+0xc8>
    3170:	e51b000c 	ldr	r0, [fp, #-12]
    3174:	eb00052e 	bl	4634 <close>
    3178:	e59f0050 	ldr	r0, [pc, #80]	@ 31d0 <iref+0x120>
    317c:	eb000559 	bl	46e8 <unlink>
    3180:	e51b3008 	ldr	r3, [fp, #-8]
    3184:	e2833001 	add	r3, r3, #1
    3188:	e50b3008 	str	r3, [fp, #-8]
    318c:	e51b3008 	ldr	r3, [fp, #-8]
    3190:	e3530032 	cmp	r3, #50	@ 0x32
    3194:	daffffce 	ble	30d4 <iref+0x24>
    3198:	e59f0034 	ldr	r0, [pc, #52]	@ 31d4 <iref+0x124>
    319c:	eb000575 	bl	4778 <chdir>
    31a0:	e59f1030 	ldr	r1, [pc, #48]	@ 31d8 <iref+0x128>
    31a4:	e3a00001 	mov	r0, #1
    31a8:	eb000631 	bl	4a74 <printf>
    31ac:	e1a00000 	nop			@ (mov r0, r0)
    31b0:	e24bd004 	sub	sp, fp, #4
    31b4:	e8bd8800 	pop	{fp, pc}
    31b8:	00006488 	.word	0x00006488
    31bc:	0000649c 	.word	0x0000649c
    31c0:	000064a4 	.word	0x000064a4
    31c4:	000064b8 	.word	0x000064b8
    31c8:	000064cc 	.word	0x000064cc
    31cc:	00006404 	.word	0x00006404
    31d0:	000064d0 	.word	0x000064d0
    31d4:	000062d4 	.word	0x000062d4
    31d8:	000064d4 	.word	0x000064d4

000031dc <forktest>:
    31dc:	e92d4800 	push	{fp, lr}
    31e0:	e28db004 	add	fp, sp, #4
    31e4:	e24dd008 	sub	sp, sp, #8
    31e8:	e59f10e0 	ldr	r1, [pc, #224]	@ 32d0 <forktest+0xf4>
    31ec:	e3a00001 	mov	r0, #1
    31f0:	eb00061f 	bl	4a74 <printf>
    31f4:	e3a03000 	mov	r3, #0
    31f8:	e50b3008 	str	r3, [fp, #-8]
    31fc:	ea00000b 	b	3230 <forktest+0x54>
    3200:	eb0004d5 	bl	455c <fork>
    3204:	e50b000c 	str	r0, [fp, #-12]
    3208:	e51b300c 	ldr	r3, [fp, #-12]
    320c:	e3530000 	cmp	r3, #0
    3210:	ba00000a 	blt	3240 <forktest+0x64>
    3214:	e51b300c 	ldr	r3, [fp, #-12]
    3218:	e3530000 	cmp	r3, #0
    321c:	1a000000 	bne	3224 <forktest+0x48>
    3220:	eb0004d6 	bl	4580 <exit>
    3224:	e51b3008 	ldr	r3, [fp, #-8]
    3228:	e2833001 	add	r3, r3, #1
    322c:	e50b3008 	str	r3, [fp, #-8]
    3230:	e51b3008 	ldr	r3, [fp, #-8]
    3234:	e3530ffa 	cmp	r3, #1000	@ 0x3e8
    3238:	bafffff0 	blt	3200 <forktest+0x24>
    323c:	ea000000 	b	3244 <forktest+0x68>
    3240:	e1a00000 	nop			@ (mov r0, r0)
    3244:	e51b3008 	ldr	r3, [fp, #-8]
    3248:	e3530ffa 	cmp	r3, #1000	@ 0x3e8
    324c:	1a00000e 	bne	328c <forktest+0xb0>
    3250:	e59f107c 	ldr	r1, [pc, #124]	@ 32d4 <forktest+0xf8>
    3254:	e3a00001 	mov	r0, #1
    3258:	eb000605 	bl	4a74 <printf>
    325c:	eb0004c7 	bl	4580 <exit>
    3260:	eb0004cf 	bl	45a4 <wait>
    3264:	e1a03000 	mov	r3, r0
    3268:	e3530000 	cmp	r3, #0
    326c:	aa000003 	bge	3280 <forktest+0xa4>
    3270:	e59f1060 	ldr	r1, [pc, #96]	@ 32d8 <forktest+0xfc>
    3274:	e3a00001 	mov	r0, #1
    3278:	eb0005fd 	bl	4a74 <printf>
    327c:	eb0004bf 	bl	4580 <exit>
    3280:	e51b3008 	ldr	r3, [fp, #-8]
    3284:	e2433001 	sub	r3, r3, #1
    3288:	e50b3008 	str	r3, [fp, #-8]
    328c:	e51b3008 	ldr	r3, [fp, #-8]
    3290:	e3530000 	cmp	r3, #0
    3294:	cafffff1 	bgt	3260 <forktest+0x84>
    3298:	eb0004c1 	bl	45a4 <wait>
    329c:	e1a03000 	mov	r3, r0
    32a0:	e3730001 	cmn	r3, #1
    32a4:	0a000003 	beq	32b8 <forktest+0xdc>
    32a8:	e59f102c 	ldr	r1, [pc, #44]	@ 32dc <forktest+0x100>
    32ac:	e3a00001 	mov	r0, #1
    32b0:	eb0005ef 	bl	4a74 <printf>
    32b4:	eb0004b1 	bl	4580 <exit>
    32b8:	e59f1020 	ldr	r1, [pc, #32]	@ 32e0 <forktest+0x104>
    32bc:	e3a00001 	mov	r0, #1
    32c0:	eb0005eb 	bl	4a74 <printf>
    32c4:	e1a00000 	nop			@ (mov r0, r0)
    32c8:	e24bd004 	sub	sp, fp, #4
    32cc:	e8bd8800 	pop	{fp, pc}
    32d0:	000064e8 	.word	0x000064e8
    32d4:	000064f4 	.word	0x000064f4
    32d8:	00006518 	.word	0x00006518
    32dc:	0000652c 	.word	0x0000652c
    32e0:	00006540 	.word	0x00006540

000032e4 <sbrktest>:
    32e4:	e92d4800 	push	{fp, lr}
    32e8:	e28db004 	add	fp, sp, #4
    32ec:	e24dd068 	sub	sp, sp, #104	@ 0x68
    32f0:	e59f3554 	ldr	r3, [pc, #1364]	@ 384c <sbrktest+0x568>
    32f4:	e5933000 	ldr	r3, [r3]
    32f8:	e59f1550 	ldr	r1, [pc, #1360]	@ 3850 <sbrktest+0x56c>
    32fc:	e1a00003 	mov	r0, r3
    3300:	eb0005db 	bl	4a74 <printf>
    3304:	e3a00000 	mov	r0, #0
    3308:	eb000535 	bl	47e4 <sbrk>
    330c:	e50b0010 	str	r0, [fp, #-16]
    3310:	e3a00000 	mov	r0, #0
    3314:	eb000532 	bl	47e4 <sbrk>
    3318:	e50b0008 	str	r0, [fp, #-8]
    331c:	e3a03000 	mov	r3, #0
    3320:	e50b300c 	str	r3, [fp, #-12]
    3324:	ea000018 	b	338c <sbrktest+0xa8>
    3328:	e3a00001 	mov	r0, #1
    332c:	eb00052c 	bl	47e4 <sbrk>
    3330:	e50b002c 	str	r0, [fp, #-44]	@ 0xffffffd4
    3334:	e51b202c 	ldr	r2, [fp, #-44]	@ 0xffffffd4
    3338:	e51b3008 	ldr	r3, [fp, #-8]
    333c:	e1520003 	cmp	r2, r3
    3340:	0a000008 	beq	3368 <sbrktest+0x84>
    3344:	e59f3500 	ldr	r3, [pc, #1280]	@ 384c <sbrktest+0x568>
    3348:	e5930000 	ldr	r0, [r3]
    334c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    3350:	e58d3000 	str	r3, [sp]
    3354:	e51b3008 	ldr	r3, [fp, #-8]
    3358:	e51b200c 	ldr	r2, [fp, #-12]
    335c:	e59f14f0 	ldr	r1, [pc, #1264]	@ 3854 <sbrktest+0x570>
    3360:	eb0005c3 	bl	4a74 <printf>
    3364:	eb000485 	bl	4580 <exit>
    3368:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    336c:	e3a02001 	mov	r2, #1
    3370:	e5c32000 	strb	r2, [r3]
    3374:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    3378:	e2833001 	add	r3, r3, #1
    337c:	e50b3008 	str	r3, [fp, #-8]
    3380:	e51b300c 	ldr	r3, [fp, #-12]
    3384:	e2833001 	add	r3, r3, #1
    3388:	e50b300c 	str	r3, [fp, #-12]
    338c:	e51b300c 	ldr	r3, [fp, #-12]
    3390:	e59f24c0 	ldr	r2, [pc, #1216]	@ 3858 <sbrktest+0x574>
    3394:	e1530002 	cmp	r3, r2
    3398:	daffffe2 	ble	3328 <sbrktest+0x44>
    339c:	eb00046e 	bl	455c <fork>
    33a0:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
    33a4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    33a8:	e3530000 	cmp	r3, #0
    33ac:	aa000005 	bge	33c8 <sbrktest+0xe4>
    33b0:	e59f3494 	ldr	r3, [pc, #1172]	@ 384c <sbrktest+0x568>
    33b4:	e5933000 	ldr	r3, [r3]
    33b8:	e59f149c 	ldr	r1, [pc, #1180]	@ 385c <sbrktest+0x578>
    33bc:	e1a00003 	mov	r0, r3
    33c0:	eb0005ab 	bl	4a74 <printf>
    33c4:	eb00046d 	bl	4580 <exit>
    33c8:	e3a00001 	mov	r0, #1
    33cc:	eb000504 	bl	47e4 <sbrk>
    33d0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    33d4:	e3a00001 	mov	r0, #1
    33d8:	eb000501 	bl	47e4 <sbrk>
    33dc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    33e0:	e51b3008 	ldr	r3, [fp, #-8]
    33e4:	e2833001 	add	r3, r3, #1
    33e8:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
    33ec:	e1520003 	cmp	r2, r3
    33f0:	0a000005 	beq	340c <sbrktest+0x128>
    33f4:	e59f3450 	ldr	r3, [pc, #1104]	@ 384c <sbrktest+0x568>
    33f8:	e5933000 	ldr	r3, [r3]
    33fc:	e59f145c 	ldr	r1, [pc, #1116]	@ 3860 <sbrktest+0x57c>
    3400:	e1a00003 	mov	r0, r3
    3404:	eb00059a 	bl	4a74 <printf>
    3408:	eb00045c 	bl	4580 <exit>
    340c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    3410:	e3530000 	cmp	r3, #0
    3414:	1a000000 	bne	341c <sbrktest+0x138>
    3418:	eb000458 	bl	4580 <exit>
    341c:	eb000460 	bl	45a4 <wait>
    3420:	e3a00000 	mov	r0, #0
    3424:	eb0004ee 	bl	47e4 <sbrk>
    3428:	e50b0008 	str	r0, [fp, #-8]
    342c:	e51b3008 	ldr	r3, [fp, #-8]
    3430:	e2633519 	rsb	r3, r3, #104857600	@ 0x6400000
    3434:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    3438:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    343c:	e1a00003 	mov	r0, r3
    3440:	eb0004e7 	bl	47e4 <sbrk>
    3444:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
    3448:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
    344c:	e51b3008 	ldr	r3, [fp, #-8]
    3450:	e1520003 	cmp	r2, r3
    3454:	0a000005 	beq	3470 <sbrktest+0x18c>
    3458:	e59f33ec 	ldr	r3, [pc, #1004]	@ 384c <sbrktest+0x568>
    345c:	e5933000 	ldr	r3, [r3]
    3460:	e59f13fc 	ldr	r1, [pc, #1020]	@ 3864 <sbrktest+0x580>
    3464:	e1a00003 	mov	r0, r3
    3468:	eb000581 	bl	4a74 <printf>
    346c:	eb000443 	bl	4580 <exit>
    3470:	e59f33f0 	ldr	r3, [pc, #1008]	@ 3868 <sbrktest+0x584>
    3474:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
    3478:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
    347c:	e3a02063 	mov	r2, #99	@ 0x63
    3480:	e5c32000 	strb	r2, [r3]
    3484:	e3a00000 	mov	r0, #0
    3488:	eb0004d5 	bl	47e4 <sbrk>
    348c:	e50b0008 	str	r0, [fp, #-8]
    3490:	e59f03d4 	ldr	r0, [pc, #980]	@ 386c <sbrktest+0x588>
    3494:	eb0004d2 	bl	47e4 <sbrk>
    3498:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    349c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    34a0:	e3730001 	cmn	r3, #1
    34a4:	1a000005 	bne	34c0 <sbrktest+0x1dc>
    34a8:	e59f339c 	ldr	r3, [pc, #924]	@ 384c <sbrktest+0x568>
    34ac:	e5933000 	ldr	r3, [r3]
    34b0:	e59f13b8 	ldr	r1, [pc, #952]	@ 3870 <sbrktest+0x58c>
    34b4:	e1a00003 	mov	r0, r3
    34b8:	eb00056d 	bl	4a74 <printf>
    34bc:	eb00042f 	bl	4580 <exit>
    34c0:	e3a00000 	mov	r0, #0
    34c4:	eb0004c6 	bl	47e4 <sbrk>
    34c8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    34cc:	e51b3008 	ldr	r3, [fp, #-8]
    34d0:	e2433a01 	sub	r3, r3, #4096	@ 0x1000
    34d4:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
    34d8:	e1520003 	cmp	r2, r3
    34dc:	0a000006 	beq	34fc <sbrktest+0x218>
    34e0:	e59f3364 	ldr	r3, [pc, #868]	@ 384c <sbrktest+0x568>
    34e4:	e5930000 	ldr	r0, [r3]
    34e8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    34ec:	e51b2008 	ldr	r2, [fp, #-8]
    34f0:	e59f137c 	ldr	r1, [pc, #892]	@ 3874 <sbrktest+0x590>
    34f4:	eb00055e 	bl	4a74 <printf>
    34f8:	eb000420 	bl	4580 <exit>
    34fc:	e3a00000 	mov	r0, #0
    3500:	eb0004b7 	bl	47e4 <sbrk>
    3504:	e50b0008 	str	r0, [fp, #-8]
    3508:	e3a00a01 	mov	r0, #4096	@ 0x1000
    350c:	eb0004b4 	bl	47e4 <sbrk>
    3510:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    3514:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
    3518:	e51b3008 	ldr	r3, [fp, #-8]
    351c:	e1520003 	cmp	r2, r3
    3520:	1a000006 	bne	3540 <sbrktest+0x25c>
    3524:	e3a00000 	mov	r0, #0
    3528:	eb0004ad 	bl	47e4 <sbrk>
    352c:	e1a02000 	mov	r2, r0
    3530:	e51b3008 	ldr	r3, [fp, #-8]
    3534:	e2833a01 	add	r3, r3, #4096	@ 0x1000
    3538:	e1520003 	cmp	r2, r3
    353c:	0a000006 	beq	355c <sbrktest+0x278>
    3540:	e59f3304 	ldr	r3, [pc, #772]	@ 384c <sbrktest+0x568>
    3544:	e5930000 	ldr	r0, [r3]
    3548:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    354c:	e51b2008 	ldr	r2, [fp, #-8]
    3550:	e59f1320 	ldr	r1, [pc, #800]	@ 3878 <sbrktest+0x594>
    3554:	eb000546 	bl	4a74 <printf>
    3558:	eb000408 	bl	4580 <exit>
    355c:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
    3560:	e5d33000 	ldrb	r3, [r3]
    3564:	e3530063 	cmp	r3, #99	@ 0x63
    3568:	1a000005 	bne	3584 <sbrktest+0x2a0>
    356c:	e59f32d8 	ldr	r3, [pc, #728]	@ 384c <sbrktest+0x568>
    3570:	e5933000 	ldr	r3, [r3]
    3574:	e59f1300 	ldr	r1, [pc, #768]	@ 387c <sbrktest+0x598>
    3578:	e1a00003 	mov	r0, r3
    357c:	eb00053c 	bl	4a74 <printf>
    3580:	eb0003fe 	bl	4580 <exit>
    3584:	e3a00000 	mov	r0, #0
    3588:	eb000495 	bl	47e4 <sbrk>
    358c:	e50b0008 	str	r0, [fp, #-8]
    3590:	e3a00000 	mov	r0, #0
    3594:	eb000492 	bl	47e4 <sbrk>
    3598:	e1a02000 	mov	r2, r0
    359c:	e51b3010 	ldr	r3, [fp, #-16]
    35a0:	e0433002 	sub	r3, r3, r2
    35a4:	e1a00003 	mov	r0, r3
    35a8:	eb00048d 	bl	47e4 <sbrk>
    35ac:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    35b0:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
    35b4:	e51b3008 	ldr	r3, [fp, #-8]
    35b8:	e1520003 	cmp	r2, r3
    35bc:	0a000006 	beq	35dc <sbrktest+0x2f8>
    35c0:	e59f3284 	ldr	r3, [pc, #644]	@ 384c <sbrktest+0x568>
    35c4:	e5930000 	ldr	r0, [r3]
    35c8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    35cc:	e51b2008 	ldr	r2, [fp, #-8]
    35d0:	e59f12a8 	ldr	r1, [pc, #680]	@ 3880 <sbrktest+0x59c>
    35d4:	eb000526 	bl	4a74 <printf>
    35d8:	eb0003e8 	bl	4580 <exit>
    35dc:	e3a03102 	mov	r3, #-2147483648	@ 0x80000000
    35e0:	e50b3008 	str	r3, [fp, #-8]
    35e4:	ea00001e 	b	3664 <sbrktest+0x380>
    35e8:	eb000474 	bl	47c0 <getpid>
    35ec:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    35f0:	eb0003d9 	bl	455c <fork>
    35f4:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
    35f8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    35fc:	e3530000 	cmp	r3, #0
    3600:	aa000005 	bge	361c <sbrktest+0x338>
    3604:	e59f3240 	ldr	r3, [pc, #576]	@ 384c <sbrktest+0x568>
    3608:	e5933000 	ldr	r3, [r3]
    360c:	e59f1270 	ldr	r1, [pc, #624]	@ 3884 <sbrktest+0x5a0>
    3610:	e1a00003 	mov	r0, r3
    3614:	eb000516 	bl	4a74 <printf>
    3618:	eb0003d8 	bl	4580 <exit>
    361c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    3620:	e3530000 	cmp	r3, #0
    3624:	1a000009 	bne	3650 <sbrktest+0x36c>
    3628:	e59f321c 	ldr	r3, [pc, #540]	@ 384c <sbrktest+0x568>
    362c:	e5930000 	ldr	r0, [r3]
    3630:	e51b3008 	ldr	r3, [fp, #-8]
    3634:	e5d33000 	ldrb	r3, [r3]
    3638:	e51b2008 	ldr	r2, [fp, #-8]
    363c:	e59f1244 	ldr	r1, [pc, #580]	@ 3888 <sbrktest+0x5a4>
    3640:	eb00050b 	bl	4a74 <printf>
    3644:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    3648:	eb000402 	bl	4658 <kill>
    364c:	eb0003cb 	bl	4580 <exit>
    3650:	eb0003d3 	bl	45a4 <wait>
    3654:	e51b3008 	ldr	r3, [fp, #-8]
    3658:	e2833cc3 	add	r3, r3, #49920	@ 0xc300
    365c:	e2833050 	add	r3, r3, #80	@ 0x50
    3660:	e50b3008 	str	r3, [fp, #-8]
    3664:	e51b3008 	ldr	r3, [fp, #-8]
    3668:	e59f221c 	ldr	r2, [pc, #540]	@ 388c <sbrktest+0x5a8>
    366c:	e1530002 	cmp	r3, r2
    3670:	9affffdc 	bls	35e8 <sbrktest+0x304>
    3674:	e24b3034 	sub	r3, fp, #52	@ 0x34
    3678:	e1a00003 	mov	r0, r3
    367c:	eb0003d1 	bl	45c8 <pipe>
    3680:	e1a03000 	mov	r3, r0
    3684:	e3530000 	cmp	r3, #0
    3688:	0a000003 	beq	369c <sbrktest+0x3b8>
    368c:	e59f11fc 	ldr	r1, [pc, #508]	@ 3890 <sbrktest+0x5ac>
    3690:	e3a00001 	mov	r0, #1
    3694:	eb0004f6 	bl	4a74 <printf>
    3698:	eb0003b8 	bl	4580 <exit>
    369c:	e3a03000 	mov	r3, #0
    36a0:	e50b300c 	str	r3, [fp, #-12]
    36a4:	ea00002a 	b	3754 <sbrktest+0x470>
    36a8:	eb0003ab 	bl	455c <fork>
    36ac:	e1a02000 	mov	r2, r0
    36b0:	e51b300c 	ldr	r3, [fp, #-12]
    36b4:	e1a03103 	lsl	r3, r3, #2
    36b8:	e2433004 	sub	r3, r3, #4
    36bc:	e083300b 	add	r3, r3, fp
    36c0:	e5032058 	str	r2, [r3, #-88]	@ 0xffffffa8
    36c4:	e51b300c 	ldr	r3, [fp, #-12]
    36c8:	e1a03103 	lsl	r3, r3, #2
    36cc:	e2433004 	sub	r3, r3, #4
    36d0:	e083300b 	add	r3, r3, fp
    36d4:	e5133058 	ldr	r3, [r3, #-88]	@ 0xffffffa8
    36d8:	e3530000 	cmp	r3, #0
    36dc:	1a00000d 	bne	3718 <sbrktest+0x434>
    36e0:	e3a00000 	mov	r0, #0
    36e4:	eb00043e 	bl	47e4 <sbrk>
    36e8:	e1a03000 	mov	r3, r0
    36ec:	e2633519 	rsb	r3, r3, #104857600	@ 0x6400000
    36f0:	e1a00003 	mov	r0, r3
    36f4:	eb00043a 	bl	47e4 <sbrk>
    36f8:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    36fc:	e3a02001 	mov	r2, #1
    3700:	e59f118c 	ldr	r1, [pc, #396]	@ 3894 <sbrktest+0x5b0>
    3704:	e1a00003 	mov	r0, r3
    3708:	eb0003c0 	bl	4610 <write>
    370c:	e3a00ffa 	mov	r0, #1000	@ 0x3e8
    3710:	eb00043c 	bl	4808 <sleep>
    3714:	eafffffc 	b	370c <sbrktest+0x428>
    3718:	e51b300c 	ldr	r3, [fp, #-12]
    371c:	e1a03103 	lsl	r3, r3, #2
    3720:	e2433004 	sub	r3, r3, #4
    3724:	e083300b 	add	r3, r3, fp
    3728:	e5133058 	ldr	r3, [r3, #-88]	@ 0xffffffa8
    372c:	e3730001 	cmn	r3, #1
    3730:	0a000004 	beq	3748 <sbrktest+0x464>
    3734:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    3738:	e24b105d 	sub	r1, fp, #93	@ 0x5d
    373c:	e3a02001 	mov	r2, #1
    3740:	e1a00003 	mov	r0, r3
    3744:	eb0003a8 	bl	45ec <read>
    3748:	e51b300c 	ldr	r3, [fp, #-12]
    374c:	e2833001 	add	r3, r3, #1
    3750:	e50b300c 	str	r3, [fp, #-12]
    3754:	e51b300c 	ldr	r3, [fp, #-12]
    3758:	e3530009 	cmp	r3, #9
    375c:	9affffd1 	bls	36a8 <sbrktest+0x3c4>
    3760:	e3a00a01 	mov	r0, #4096	@ 0x1000
    3764:	eb00041e 	bl	47e4 <sbrk>
    3768:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    376c:	e3a03000 	mov	r3, #0
    3770:	e50b300c 	str	r3, [fp, #-12]
    3774:	ea000013 	b	37c8 <sbrktest+0x4e4>
    3778:	e51b300c 	ldr	r3, [fp, #-12]
    377c:	e1a03103 	lsl	r3, r3, #2
    3780:	e2433004 	sub	r3, r3, #4
    3784:	e083300b 	add	r3, r3, fp
    3788:	e5133058 	ldr	r3, [r3, #-88]	@ 0xffffffa8
    378c:	e3730001 	cmn	r3, #1
    3790:	0a000008 	beq	37b8 <sbrktest+0x4d4>
    3794:	e51b300c 	ldr	r3, [fp, #-12]
    3798:	e1a03103 	lsl	r3, r3, #2
    379c:	e2433004 	sub	r3, r3, #4
    37a0:	e083300b 	add	r3, r3, fp
    37a4:	e5133058 	ldr	r3, [r3, #-88]	@ 0xffffffa8
    37a8:	e1a00003 	mov	r0, r3
    37ac:	eb0003a9 	bl	4658 <kill>
    37b0:	eb00037b 	bl	45a4 <wait>
    37b4:	ea000000 	b	37bc <sbrktest+0x4d8>
    37b8:	e1a00000 	nop			@ (mov r0, r0)
    37bc:	e51b300c 	ldr	r3, [fp, #-12]
    37c0:	e2833001 	add	r3, r3, #1
    37c4:	e50b300c 	str	r3, [fp, #-12]
    37c8:	e51b300c 	ldr	r3, [fp, #-12]
    37cc:	e3530009 	cmp	r3, #9
    37d0:	9affffe8 	bls	3778 <sbrktest+0x494>
    37d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    37d8:	e3730001 	cmn	r3, #1
    37dc:	1a000005 	bne	37f8 <sbrktest+0x514>
    37e0:	e59f3064 	ldr	r3, [pc, #100]	@ 384c <sbrktest+0x568>
    37e4:	e5933000 	ldr	r3, [r3]
    37e8:	e59f10a8 	ldr	r1, [pc, #168]	@ 3898 <sbrktest+0x5b4>
    37ec:	e1a00003 	mov	r0, r3
    37f0:	eb00049f 	bl	4a74 <printf>
    37f4:	eb000361 	bl	4580 <exit>
    37f8:	e3a00000 	mov	r0, #0
    37fc:	eb0003f8 	bl	47e4 <sbrk>
    3800:	e1a02000 	mov	r2, r0
    3804:	e51b3010 	ldr	r3, [fp, #-16]
    3808:	e1530002 	cmp	r3, r2
    380c:	2a000006 	bcs	382c <sbrktest+0x548>
    3810:	e3a00000 	mov	r0, #0
    3814:	eb0003f2 	bl	47e4 <sbrk>
    3818:	e1a02000 	mov	r2, r0
    381c:	e51b3010 	ldr	r3, [fp, #-16]
    3820:	e0433002 	sub	r3, r3, r2
    3824:	e1a00003 	mov	r0, r3
    3828:	eb0003ed 	bl	47e4 <sbrk>
    382c:	e59f3018 	ldr	r3, [pc, #24]	@ 384c <sbrktest+0x568>
    3830:	e5933000 	ldr	r3, [r3]
    3834:	e59f1060 	ldr	r1, [pc, #96]	@ 389c <sbrktest+0x5b8>
    3838:	e1a00003 	mov	r0, r3
    383c:	eb00048c 	bl	4a74 <printf>
    3840:	e1a00000 	nop			@ (mov r0, r0)
    3844:	e24bd004 	sub	sp, fp, #4
    3848:	e8bd8800 	pop	{fp, pc}
    384c:	0000697c 	.word	0x0000697c
    3850:	00006550 	.word	0x00006550
    3854:	0000655c 	.word	0x0000655c
    3858:	00001387 	.word	0x00001387
    385c:	00006578 	.word	0x00006578
    3860:	00006590 	.word	0x00006590
    3864:	000065ac 	.word	0x000065ac
    3868:	063fffff 	.word	0x063fffff
    386c:	fffff000 	.word	0xfffff000
    3870:	000065ec 	.word	0x000065ec
    3874:	00006608 	.word	0x00006608
    3878:	00006640 	.word	0x00006640
    387c:	00006668 	.word	0x00006668
    3880:	00006698 	.word	0x00006698
    3884:	00005568 	.word	0x00005568
    3888:	000066bc 	.word	0x000066bc
    388c:	801e847f 	.word	0x801e847f
    3890:	000054a8 	.word	0x000054a8
    3894:	00005518 	.word	0x00005518
    3898:	000066d8 	.word	0x000066d8
    389c:	000066f4 	.word	0x000066f4

000038a0 <validateint>:
    38a0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    38a4:	e28db000 	add	fp, sp, #0
    38a8:	e24dd00c 	sub	sp, sp, #12
    38ac:	e50b0008 	str	r0, [fp, #-8]
    38b0:	e1a00000 	nop			@ (mov r0, r0)
    38b4:	e28bd000 	add	sp, fp, #0
    38b8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    38bc:	e12fff1e 	bx	lr

000038c0 <validatetest>:
    38c0:	e92d4800 	push	{fp, lr}
    38c4:	e28db004 	add	fp, sp, #4
    38c8:	e24dd010 	sub	sp, sp, #16
    38cc:	e59f30d0 	ldr	r3, [pc, #208]	@ 39a4 <validatetest+0xe4>
    38d0:	e5933000 	ldr	r3, [r3]
    38d4:	e59f10cc 	ldr	r1, [pc, #204]	@ 39a8 <validatetest+0xe8>
    38d8:	e1a00003 	mov	r0, r3
    38dc:	eb000464 	bl	4a74 <printf>
    38e0:	e59f30c4 	ldr	r3, [pc, #196]	@ 39ac <validatetest+0xec>
    38e4:	e50b300c 	str	r3, [fp, #-12]
    38e8:	e3a03000 	mov	r3, #0
    38ec:	e50b3008 	str	r3, [fp, #-8]
    38f0:	ea00001f 	b	3974 <validatetest+0xb4>
    38f4:	eb000318 	bl	455c <fork>
    38f8:	e50b0010 	str	r0, [fp, #-16]
    38fc:	e51b3010 	ldr	r3, [fp, #-16]
    3900:	e3530000 	cmp	r3, #0
    3904:	1a000003 	bne	3918 <validatetest+0x58>
    3908:	e51b3008 	ldr	r3, [fp, #-8]
    390c:	e1a00003 	mov	r0, r3
    3910:	ebffffe2 	bl	38a0 <validateint>
    3914:	eb000319 	bl	4580 <exit>
    3918:	e3a00000 	mov	r0, #0
    391c:	eb0003b9 	bl	4808 <sleep>
    3920:	e3a00000 	mov	r0, #0
    3924:	eb0003b7 	bl	4808 <sleep>
    3928:	e51b0010 	ldr	r0, [fp, #-16]
    392c:	eb000349 	bl	4658 <kill>
    3930:	eb00031b 	bl	45a4 <wait>
    3934:	e51b3008 	ldr	r3, [fp, #-8]
    3938:	e1a01003 	mov	r1, r3
    393c:	e59f006c 	ldr	r0, [pc, #108]	@ 39b0 <validatetest+0xf0>
    3940:	eb00037a 	bl	4730 <link>
    3944:	e1a03000 	mov	r3, r0
    3948:	e3730001 	cmn	r3, #1
    394c:	0a000005 	beq	3968 <validatetest+0xa8>
    3950:	e59f304c 	ldr	r3, [pc, #76]	@ 39a4 <validatetest+0xe4>
    3954:	e5933000 	ldr	r3, [r3]
    3958:	e59f1054 	ldr	r1, [pc, #84]	@ 39b4 <validatetest+0xf4>
    395c:	e1a00003 	mov	r0, r3
    3960:	eb000443 	bl	4a74 <printf>
    3964:	eb000305 	bl	4580 <exit>
    3968:	e51b3008 	ldr	r3, [fp, #-8]
    396c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
    3970:	e50b3008 	str	r3, [fp, #-8]
    3974:	e51b300c 	ldr	r3, [fp, #-12]
    3978:	e51b2008 	ldr	r2, [fp, #-8]
    397c:	e1520003 	cmp	r2, r3
    3980:	9affffdb 	bls	38f4 <validatetest+0x34>
    3984:	e59f3018 	ldr	r3, [pc, #24]	@ 39a4 <validatetest+0xe4>
    3988:	e5933000 	ldr	r3, [r3]
    398c:	e59f1024 	ldr	r1, [pc, #36]	@ 39b8 <validatetest+0xf8>
    3990:	e1a00003 	mov	r0, r3
    3994:	eb000436 	bl	4a74 <printf>
    3998:	e1a00000 	nop			@ (mov r0, r0)
    399c:	e24bd004 	sub	sp, fp, #4
    39a0:	e8bd8800 	pop	{fp, pc}
    39a4:	0000697c 	.word	0x0000697c
    39a8:	00006704 	.word	0x00006704
    39ac:	00113000 	.word	0x00113000
    39b0:	00006714 	.word	0x00006714
    39b4:	00006720 	.word	0x00006720
    39b8:	0000673c 	.word	0x0000673c

000039bc <bsstest>:
    39bc:	e92d4800 	push	{fp, lr}
    39c0:	e28db004 	add	fp, sp, #4
    39c4:	e24dd008 	sub	sp, sp, #8
    39c8:	e59f3084 	ldr	r3, [pc, #132]	@ 3a54 <bsstest+0x98>
    39cc:	e5933000 	ldr	r3, [r3]
    39d0:	e59f1080 	ldr	r1, [pc, #128]	@ 3a58 <bsstest+0x9c>
    39d4:	e1a00003 	mov	r0, r3
    39d8:	eb000425 	bl	4a74 <printf>
    39dc:	e3a03000 	mov	r3, #0
    39e0:	e50b3008 	str	r3, [fp, #-8]
    39e4:	ea00000e 	b	3a24 <bsstest+0x68>
    39e8:	e59f206c 	ldr	r2, [pc, #108]	@ 3a5c <bsstest+0xa0>
    39ec:	e51b3008 	ldr	r3, [fp, #-8]
    39f0:	e0823003 	add	r3, r2, r3
    39f4:	e5d33000 	ldrb	r3, [r3]
    39f8:	e3530000 	cmp	r3, #0
    39fc:	0a000005 	beq	3a18 <bsstest+0x5c>
    3a00:	e59f304c 	ldr	r3, [pc, #76]	@ 3a54 <bsstest+0x98>
    3a04:	e5933000 	ldr	r3, [r3]
    3a08:	e59f1050 	ldr	r1, [pc, #80]	@ 3a60 <bsstest+0xa4>
    3a0c:	e1a00003 	mov	r0, r3
    3a10:	eb000417 	bl	4a74 <printf>
    3a14:	eb0002d9 	bl	4580 <exit>
    3a18:	e51b3008 	ldr	r3, [fp, #-8]
    3a1c:	e2833001 	add	r3, r3, #1
    3a20:	e50b3008 	str	r3, [fp, #-8]
    3a24:	e51b3008 	ldr	r3, [fp, #-8]
    3a28:	e59f2034 	ldr	r2, [pc, #52]	@ 3a64 <bsstest+0xa8>
    3a2c:	e1530002 	cmp	r3, r2
    3a30:	9affffec 	bls	39e8 <bsstest+0x2c>
    3a34:	e59f3018 	ldr	r3, [pc, #24]	@ 3a54 <bsstest+0x98>
    3a38:	e5933000 	ldr	r3, [r3]
    3a3c:	e59f1024 	ldr	r1, [pc, #36]	@ 3a68 <bsstest+0xac>
    3a40:	e1a00003 	mov	r0, r3
    3a44:	eb00040a 	bl	4a74 <printf>
    3a48:	e1a00000 	nop			@ (mov r0, r0)
    3a4c:	e24bd004 	sub	sp, fp, #4
    3a50:	e8bd8800 	pop	{fp, pc}
    3a54:	0000697c 	.word	0x0000697c
    3a58:	0000674c 	.word	0x0000674c
    3a5c:	0000899c 	.word	0x0000899c
    3a60:	00006758 	.word	0x00006758
    3a64:	0000270f 	.word	0x0000270f
    3a68:	0000676c 	.word	0x0000676c

00003a6c <bigargtest>:
    3a6c:	e92d4800 	push	{fp, lr}
    3a70:	e28db004 	add	fp, sp, #4
    3a74:	e24dd010 	sub	sp, sp, #16
    3a78:	e59f011c 	ldr	r0, [pc, #284]	@ 3b9c <bigargtest+0x130>
    3a7c:	eb000319 	bl	46e8 <unlink>
    3a80:	eb0002b5 	bl	455c <fork>
    3a84:	e50b000c 	str	r0, [fp, #-12]
    3a88:	e51b300c 	ldr	r3, [fp, #-12]
    3a8c:	e3530000 	cmp	r3, #0
    3a90:	1a000023 	bne	3b24 <bigargtest+0xb8>
    3a94:	e3a03000 	mov	r3, #0
    3a98:	e50b3008 	str	r3, [fp, #-8]
    3a9c:	ea000006 	b	3abc <bigargtest+0x50>
    3aa0:	e59f20f8 	ldr	r2, [pc, #248]	@ 3ba0 <bigargtest+0x134>
    3aa4:	e51b3008 	ldr	r3, [fp, #-8]
    3aa8:	e59f10f4 	ldr	r1, [pc, #244]	@ 3ba4 <bigargtest+0x138>
    3aac:	e7821103 	str	r1, [r2, r3, lsl #2]
    3ab0:	e51b3008 	ldr	r3, [fp, #-8]
    3ab4:	e2833001 	add	r3, r3, #1
    3ab8:	e50b3008 	str	r3, [fp, #-8]
    3abc:	e51b3008 	ldr	r3, [fp, #-8]
    3ac0:	e353001e 	cmp	r3, #30
    3ac4:	dafffff5 	ble	3aa0 <bigargtest+0x34>
    3ac8:	e59f30d0 	ldr	r3, [pc, #208]	@ 3ba0 <bigargtest+0x134>
    3acc:	e3a02000 	mov	r2, #0
    3ad0:	e583207c 	str	r2, [r3, #124]	@ 0x7c
    3ad4:	e59f30cc 	ldr	r3, [pc, #204]	@ 3ba8 <bigargtest+0x13c>
    3ad8:	e5933000 	ldr	r3, [r3]
    3adc:	e59f10c8 	ldr	r1, [pc, #200]	@ 3bac <bigargtest+0x140>
    3ae0:	e1a00003 	mov	r0, r3
    3ae4:	eb0003e2 	bl	4a74 <printf>
    3ae8:	e59f10b0 	ldr	r1, [pc, #176]	@ 3ba0 <bigargtest+0x134>
    3aec:	e59f00bc 	ldr	r0, [pc, #188]	@ 3bb0 <bigargtest+0x144>
    3af0:	eb0002e1 	bl	467c <exec>
    3af4:	e59f30ac 	ldr	r3, [pc, #172]	@ 3ba8 <bigargtest+0x13c>
    3af8:	e5933000 	ldr	r3, [r3]
    3afc:	e59f10b0 	ldr	r1, [pc, #176]	@ 3bb4 <bigargtest+0x148>
    3b00:	e1a00003 	mov	r0, r3
    3b04:	eb0003da 	bl	4a74 <printf>
    3b08:	e3a01c02 	mov	r1, #512	@ 0x200
    3b0c:	e59f0088 	ldr	r0, [pc, #136]	@ 3b9c <bigargtest+0x130>
    3b10:	eb0002e2 	bl	46a0 <open>
    3b14:	e50b0010 	str	r0, [fp, #-16]
    3b18:	e51b0010 	ldr	r0, [fp, #-16]
    3b1c:	eb0002c4 	bl	4634 <close>
    3b20:	eb000296 	bl	4580 <exit>
    3b24:	e51b300c 	ldr	r3, [fp, #-12]
    3b28:	e3530000 	cmp	r3, #0
    3b2c:	aa000005 	bge	3b48 <bigargtest+0xdc>
    3b30:	e59f3070 	ldr	r3, [pc, #112]	@ 3ba8 <bigargtest+0x13c>
    3b34:	e5933000 	ldr	r3, [r3]
    3b38:	e59f1078 	ldr	r1, [pc, #120]	@ 3bb8 <bigargtest+0x14c>
    3b3c:	e1a00003 	mov	r0, r3
    3b40:	eb0003cb 	bl	4a74 <printf>
    3b44:	eb00028d 	bl	4580 <exit>
    3b48:	eb000295 	bl	45a4 <wait>
    3b4c:	e3a01000 	mov	r1, #0
    3b50:	e59f0044 	ldr	r0, [pc, #68]	@ 3b9c <bigargtest+0x130>
    3b54:	eb0002d1 	bl	46a0 <open>
    3b58:	e50b0010 	str	r0, [fp, #-16]
    3b5c:	e51b3010 	ldr	r3, [fp, #-16]
    3b60:	e3530000 	cmp	r3, #0
    3b64:	aa000005 	bge	3b80 <bigargtest+0x114>
    3b68:	e59f3038 	ldr	r3, [pc, #56]	@ 3ba8 <bigargtest+0x13c>
    3b6c:	e5933000 	ldr	r3, [r3]
    3b70:	e59f1044 	ldr	r1, [pc, #68]	@ 3bbc <bigargtest+0x150>
    3b74:	e1a00003 	mov	r0, r3
    3b78:	eb0003bd 	bl	4a74 <printf>
    3b7c:	eb00027f 	bl	4580 <exit>
    3b80:	e51b0010 	ldr	r0, [fp, #-16]
    3b84:	eb0002aa 	bl	4634 <close>
    3b88:	e59f000c 	ldr	r0, [pc, #12]	@ 3b9c <bigargtest+0x130>
    3b8c:	eb0002d5 	bl	46e8 <unlink>
    3b90:	e1a00000 	nop			@ (mov r0, r0)
    3b94:	e24bd004 	sub	sp, fp, #4
    3b98:	e8bd8800 	pop	{fp, pc}
    3b9c:	0000677c 	.word	0x0000677c
    3ba0:	0000b0ac 	.word	0x0000b0ac
    3ba4:	00006788 	.word	0x00006788
    3ba8:	0000697c 	.word	0x0000697c
    3bac:	00006868 	.word	0x00006868
    3bb0:	00005130 	.word	0x00005130
    3bb4:	00006878 	.word	0x00006878
    3bb8:	00006888 	.word	0x00006888
    3bbc:	000068a4 	.word	0x000068a4

00003bc0 <fsfull>:
    3bc0:	e92d4800 	push	{fp, lr}
    3bc4:	e28db004 	add	fp, sp, #4
    3bc8:	e24dd050 	sub	sp, sp, #80	@ 0x50
    3bcc:	e59f1358 	ldr	r1, [pc, #856]	@ 3f2c <fsfull+0x36c>
    3bd0:	e3a00001 	mov	r0, #1
    3bd4:	eb0003a6 	bl	4a74 <printf>
    3bd8:	e3a03000 	mov	r3, #0
    3bdc:	e50b3008 	str	r3, [fp, #-8]
    3be0:	e3a03066 	mov	r3, #102	@ 0x66
    3be4:	e54b3054 	strb	r3, [fp, #-84]	@ 0xffffffac
    3be8:	e51b3008 	ldr	r3, [fp, #-8]
    3bec:	e59f233c 	ldr	r2, [pc, #828]	@ 3f30 <fsfull+0x370>
    3bf0:	e0c21392 	smull	r1, r2, r2, r3
    3bf4:	e1a02342 	asr	r2, r2, #6
    3bf8:	e1a03fc3 	asr	r3, r3, #31
    3bfc:	e0423003 	sub	r3, r2, r3
    3c00:	e6ef3073 	uxtb	r3, r3
    3c04:	e2833030 	add	r3, r3, #48	@ 0x30
    3c08:	e6ef3073 	uxtb	r3, r3
    3c0c:	e54b3053 	strb	r3, [fp, #-83]	@ 0xffffffad
    3c10:	e51b1008 	ldr	r1, [fp, #-8]
    3c14:	e59f3314 	ldr	r3, [pc, #788]	@ 3f30 <fsfull+0x370>
    3c18:	e0c32193 	smull	r2, r3, r3, r1
    3c1c:	e1a02343 	asr	r2, r3, #6
    3c20:	e1a03fc1 	asr	r3, r1, #31
    3c24:	e0422003 	sub	r2, r2, r3
    3c28:	e1a03002 	mov	r3, r2
    3c2c:	e1a03283 	lsl	r3, r3, #5
    3c30:	e0433002 	sub	r3, r3, r2
    3c34:	e1a03103 	lsl	r3, r3, #2
    3c38:	e0833002 	add	r3, r3, r2
    3c3c:	e1a03183 	lsl	r3, r3, #3
    3c40:	e0412003 	sub	r2, r1, r3
    3c44:	e59f32e8 	ldr	r3, [pc, #744]	@ 3f34 <fsfull+0x374>
    3c48:	e0c31293 	smull	r1, r3, r3, r2
    3c4c:	e1a012c3 	asr	r1, r3, #5
    3c50:	e1a03fc2 	asr	r3, r2, #31
    3c54:	e0413003 	sub	r3, r1, r3
    3c58:	e6ef3073 	uxtb	r3, r3
    3c5c:	e2833030 	add	r3, r3, #48	@ 0x30
    3c60:	e6ef3073 	uxtb	r3, r3
    3c64:	e54b3052 	strb	r3, [fp, #-82]	@ 0xffffffae
    3c68:	e51b1008 	ldr	r1, [fp, #-8]
    3c6c:	e59f32c0 	ldr	r3, [pc, #704]	@ 3f34 <fsfull+0x374>
    3c70:	e0c32193 	smull	r2, r3, r3, r1
    3c74:	e1a022c3 	asr	r2, r3, #5
    3c78:	e1a03fc1 	asr	r3, r1, #31
    3c7c:	e0422003 	sub	r2, r2, r3
    3c80:	e1a03002 	mov	r3, r2
    3c84:	e1a03103 	lsl	r3, r3, #2
    3c88:	e0833002 	add	r3, r3, r2
    3c8c:	e1a02103 	lsl	r2, r3, #2
    3c90:	e0833002 	add	r3, r3, r2
    3c94:	e1a03103 	lsl	r3, r3, #2
    3c98:	e0412003 	sub	r2, r1, r3
    3c9c:	e59f3294 	ldr	r3, [pc, #660]	@ 3f38 <fsfull+0x378>
    3ca0:	e0c31293 	smull	r1, r3, r3, r2
    3ca4:	e1a01143 	asr	r1, r3, #2
    3ca8:	e1a03fc2 	asr	r3, r2, #31
    3cac:	e0413003 	sub	r3, r1, r3
    3cb0:	e6ef3073 	uxtb	r3, r3
    3cb4:	e2833030 	add	r3, r3, #48	@ 0x30
    3cb8:	e6ef3073 	uxtb	r3, r3
    3cbc:	e54b3051 	strb	r3, [fp, #-81]	@ 0xffffffaf
    3cc0:	e51b2008 	ldr	r2, [fp, #-8]
    3cc4:	e59f326c 	ldr	r3, [pc, #620]	@ 3f38 <fsfull+0x378>
    3cc8:	e0c31293 	smull	r1, r3, r3, r2
    3ccc:	e1a01143 	asr	r1, r3, #2
    3cd0:	e1a03fc2 	asr	r3, r2, #31
    3cd4:	e0411003 	sub	r1, r1, r3
    3cd8:	e1a03001 	mov	r3, r1
    3cdc:	e1a03103 	lsl	r3, r3, #2
    3ce0:	e0833001 	add	r3, r3, r1
    3ce4:	e1a03083 	lsl	r3, r3, #1
    3ce8:	e0421003 	sub	r1, r2, r3
    3cec:	e6ef3071 	uxtb	r3, r1
    3cf0:	e2833030 	add	r3, r3, #48	@ 0x30
    3cf4:	e6ef3073 	uxtb	r3, r3
    3cf8:	e54b3050 	strb	r3, [fp, #-80]	@ 0xffffffb0
    3cfc:	e3a03000 	mov	r3, #0
    3d00:	e54b304f 	strb	r3, [fp, #-79]	@ 0xffffffb1
    3d04:	e24b3054 	sub	r3, fp, #84	@ 0x54
    3d08:	e1a02003 	mov	r2, r3
    3d0c:	e59f1228 	ldr	r1, [pc, #552]	@ 3f3c <fsfull+0x37c>
    3d10:	e3a00001 	mov	r0, #1
    3d14:	eb000356 	bl	4a74 <printf>
    3d18:	e24b3054 	sub	r3, fp, #84	@ 0x54
    3d1c:	e59f121c 	ldr	r1, [pc, #540]	@ 3f40 <fsfull+0x380>
    3d20:	e1a00003 	mov	r0, r3
    3d24:	eb00025d 	bl	46a0 <open>
    3d28:	e50b0010 	str	r0, [fp, #-16]
    3d2c:	e51b3010 	ldr	r3, [fp, #-16]
    3d30:	e3530000 	cmp	r3, #0
    3d34:	aa000005 	bge	3d50 <fsfull+0x190>
    3d38:	e24b3054 	sub	r3, fp, #84	@ 0x54
    3d3c:	e1a02003 	mov	r2, r3
    3d40:	e59f11fc 	ldr	r1, [pc, #508]	@ 3f44 <fsfull+0x384>
    3d44:	e3a00001 	mov	r0, #1
    3d48:	eb000349 	bl	4a74 <printf>
    3d4c:	ea00001d 	b	3dc8 <fsfull+0x208>
    3d50:	e3a03000 	mov	r3, #0
    3d54:	e50b300c 	str	r3, [fp, #-12]
    3d58:	e3a02c02 	mov	r2, #512	@ 0x200
    3d5c:	e59f11e4 	ldr	r1, [pc, #484]	@ 3f48 <fsfull+0x388>
    3d60:	e51b0010 	ldr	r0, [fp, #-16]
    3d64:	eb000229 	bl	4610 <write>
    3d68:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
    3d6c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    3d70:	e3530c02 	cmp	r3, #512	@ 0x200
    3d74:	ba000004 	blt	3d8c <fsfull+0x1cc>
    3d78:	e51b200c 	ldr	r2, [fp, #-12]
    3d7c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    3d80:	e0823003 	add	r3, r2, r3
    3d84:	e50b300c 	str	r3, [fp, #-12]
    3d88:	eafffff2 	b	3d58 <fsfull+0x198>
    3d8c:	e1a00000 	nop			@ (mov r0, r0)
    3d90:	e51b200c 	ldr	r2, [fp, #-12]
    3d94:	e59f11b0 	ldr	r1, [pc, #432]	@ 3f4c <fsfull+0x38c>
    3d98:	e3a00001 	mov	r0, #1
    3d9c:	eb000334 	bl	4a74 <printf>
    3da0:	e51b0010 	ldr	r0, [fp, #-16]
    3da4:	eb000222 	bl	4634 <close>
    3da8:	e51b300c 	ldr	r3, [fp, #-12]
    3dac:	e3530000 	cmp	r3, #0
    3db0:	0a000003 	beq	3dc4 <fsfull+0x204>
    3db4:	e51b3008 	ldr	r3, [fp, #-8]
    3db8:	e2833001 	add	r3, r3, #1
    3dbc:	e50b3008 	str	r3, [fp, #-8]
    3dc0:	eaffff86 	b	3be0 <fsfull+0x20>
    3dc4:	e1a00000 	nop			@ (mov r0, r0)
    3dc8:	ea00004e 	b	3f08 <fsfull+0x348>
    3dcc:	e3a03066 	mov	r3, #102	@ 0x66
    3dd0:	e54b3054 	strb	r3, [fp, #-84]	@ 0xffffffac
    3dd4:	e51b3008 	ldr	r3, [fp, #-8]
    3dd8:	e59f2150 	ldr	r2, [pc, #336]	@ 3f30 <fsfull+0x370>
    3ddc:	e0c21392 	smull	r1, r2, r2, r3
    3de0:	e1a02342 	asr	r2, r2, #6
    3de4:	e1a03fc3 	asr	r3, r3, #31
    3de8:	e0423003 	sub	r3, r2, r3
    3dec:	e6ef3073 	uxtb	r3, r3
    3df0:	e2833030 	add	r3, r3, #48	@ 0x30
    3df4:	e6ef3073 	uxtb	r3, r3
    3df8:	e54b3053 	strb	r3, [fp, #-83]	@ 0xffffffad
    3dfc:	e51b1008 	ldr	r1, [fp, #-8]
    3e00:	e59f3128 	ldr	r3, [pc, #296]	@ 3f30 <fsfull+0x370>
    3e04:	e0c32193 	smull	r2, r3, r3, r1
    3e08:	e1a02343 	asr	r2, r3, #6
    3e0c:	e1a03fc1 	asr	r3, r1, #31
    3e10:	e0422003 	sub	r2, r2, r3
    3e14:	e1a03002 	mov	r3, r2
    3e18:	e1a03283 	lsl	r3, r3, #5
    3e1c:	e0433002 	sub	r3, r3, r2
    3e20:	e1a03103 	lsl	r3, r3, #2
    3e24:	e0833002 	add	r3, r3, r2
    3e28:	e1a03183 	lsl	r3, r3, #3
    3e2c:	e0412003 	sub	r2, r1, r3
    3e30:	e59f30fc 	ldr	r3, [pc, #252]	@ 3f34 <fsfull+0x374>
    3e34:	e0c31293 	smull	r1, r3, r3, r2
    3e38:	e1a012c3 	asr	r1, r3, #5
    3e3c:	e1a03fc2 	asr	r3, r2, #31
    3e40:	e0413003 	sub	r3, r1, r3
    3e44:	e6ef3073 	uxtb	r3, r3
    3e48:	e2833030 	add	r3, r3, #48	@ 0x30
    3e4c:	e6ef3073 	uxtb	r3, r3
    3e50:	e54b3052 	strb	r3, [fp, #-82]	@ 0xffffffae
    3e54:	e51b1008 	ldr	r1, [fp, #-8]
    3e58:	e59f30d4 	ldr	r3, [pc, #212]	@ 3f34 <fsfull+0x374>
    3e5c:	e0c32193 	smull	r2, r3, r3, r1
    3e60:	e1a022c3 	asr	r2, r3, #5
    3e64:	e1a03fc1 	asr	r3, r1, #31
    3e68:	e0422003 	sub	r2, r2, r3
    3e6c:	e1a03002 	mov	r3, r2
    3e70:	e1a03103 	lsl	r3, r3, #2
    3e74:	e0833002 	add	r3, r3, r2
    3e78:	e1a02103 	lsl	r2, r3, #2
    3e7c:	e0833002 	add	r3, r3, r2
    3e80:	e1a03103 	lsl	r3, r3, #2
    3e84:	e0412003 	sub	r2, r1, r3
    3e88:	e59f30a8 	ldr	r3, [pc, #168]	@ 3f38 <fsfull+0x378>
    3e8c:	e0c31293 	smull	r1, r3, r3, r2
    3e90:	e1a01143 	asr	r1, r3, #2
    3e94:	e1a03fc2 	asr	r3, r2, #31
    3e98:	e0413003 	sub	r3, r1, r3
    3e9c:	e6ef3073 	uxtb	r3, r3
    3ea0:	e2833030 	add	r3, r3, #48	@ 0x30
    3ea4:	e6ef3073 	uxtb	r3, r3
    3ea8:	e54b3051 	strb	r3, [fp, #-81]	@ 0xffffffaf
    3eac:	e51b2008 	ldr	r2, [fp, #-8]
    3eb0:	e59f3080 	ldr	r3, [pc, #128]	@ 3f38 <fsfull+0x378>
    3eb4:	e0c31293 	smull	r1, r3, r3, r2
    3eb8:	e1a01143 	asr	r1, r3, #2
    3ebc:	e1a03fc2 	asr	r3, r2, #31
    3ec0:	e0411003 	sub	r1, r1, r3
    3ec4:	e1a03001 	mov	r3, r1
    3ec8:	e1a03103 	lsl	r3, r3, #2
    3ecc:	e0833001 	add	r3, r3, r1
    3ed0:	e1a03083 	lsl	r3, r3, #1
    3ed4:	e0421003 	sub	r1, r2, r3
    3ed8:	e6ef3071 	uxtb	r3, r1
    3edc:	e2833030 	add	r3, r3, #48	@ 0x30
    3ee0:	e6ef3073 	uxtb	r3, r3
    3ee4:	e54b3050 	strb	r3, [fp, #-80]	@ 0xffffffb0
    3ee8:	e3a03000 	mov	r3, #0
    3eec:	e54b304f 	strb	r3, [fp, #-79]	@ 0xffffffb1
    3ef0:	e24b3054 	sub	r3, fp, #84	@ 0x54
    3ef4:	e1a00003 	mov	r0, r3
    3ef8:	eb0001fa 	bl	46e8 <unlink>
    3efc:	e51b3008 	ldr	r3, [fp, #-8]
    3f00:	e2433001 	sub	r3, r3, #1
    3f04:	e50b3008 	str	r3, [fp, #-8]
    3f08:	e51b3008 	ldr	r3, [fp, #-8]
    3f0c:	e3530000 	cmp	r3, #0
    3f10:	aaffffad 	bge	3dcc <fsfull+0x20c>
    3f14:	e59f1034 	ldr	r1, [pc, #52]	@ 3f50 <fsfull+0x390>
    3f18:	e3a00001 	mov	r0, #1
    3f1c:	eb0002d4 	bl	4a74 <printf>
    3f20:	e1a00000 	nop			@ (mov r0, r0)
    3f24:	e24bd004 	sub	sp, fp, #4
    3f28:	e8bd8800 	pop	{fp, pc}
    3f2c:	000068bc 	.word	0x000068bc
    3f30:	10624dd3 	.word	0x10624dd3
    3f34:	51eb851f 	.word	0x51eb851f
    3f38:	66666667 	.word	0x66666667
    3f3c:	000068cc 	.word	0x000068cc
    3f40:	00000202 	.word	0x00000202
    3f44:	000068d8 	.word	0x000068d8
    3f48:	00006998 	.word	0x00006998
    3f4c:	000068e8 	.word	0x000068e8
    3f50:	000068f8 	.word	0x000068f8

00003f54 <rand>:
    3f54:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    3f58:	e28db000 	add	fp, sp, #0
    3f5c:	e59f3030 	ldr	r3, [pc, #48]	@ 3f94 <rand+0x40>
    3f60:	e5933000 	ldr	r3, [r3]
    3f64:	e59f202c 	ldr	r2, [pc, #44]	@ 3f98 <rand+0x44>
    3f68:	e0020392 	mul	r2, r2, r3
    3f6c:	e59f3028 	ldr	r3, [pc, #40]	@ 3f9c <rand+0x48>
    3f70:	e0823003 	add	r3, r2, r3
    3f74:	e59f2018 	ldr	r2, [pc, #24]	@ 3f94 <rand+0x40>
    3f78:	e5823000 	str	r3, [r2]
    3f7c:	e59f3010 	ldr	r3, [pc, #16]	@ 3f94 <rand+0x40>
    3f80:	e5933000 	ldr	r3, [r3]
    3f84:	e1a00003 	mov	r0, r3
    3f88:	e28bd000 	add	sp, fp, #0
    3f8c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    3f90:	e12fff1e 	bx	lr
    3f94:	00006980 	.word	0x00006980
    3f98:	0019660d 	.word	0x0019660d
    3f9c:	3c6ef35f 	.word	0x3c6ef35f

00003fa0 <main>:
    3fa0:	e92d4800 	push	{fp, lr}
    3fa4:	e28db004 	add	fp, sp, #4
    3fa8:	e24dd008 	sub	sp, sp, #8
    3fac:	e50b0008 	str	r0, [fp, #-8]
    3fb0:	e50b100c 	str	r1, [fp, #-12]
    3fb4:	e59f10bc 	ldr	r1, [pc, #188]	@ 4078 <main+0xd8>
    3fb8:	e3a00001 	mov	r0, #1
    3fbc:	eb0002ac 	bl	4a74 <printf>
    3fc0:	e3a01000 	mov	r1, #0
    3fc4:	e59f00b0 	ldr	r0, [pc, #176]	@ 407c <main+0xdc>
    3fc8:	eb0001b4 	bl	46a0 <open>
    3fcc:	e1a03000 	mov	r3, r0
    3fd0:	e3530000 	cmp	r3, #0
    3fd4:	ba000003 	blt	3fe8 <main+0x48>
    3fd8:	e59f10a0 	ldr	r1, [pc, #160]	@ 4080 <main+0xe0>
    3fdc:	e3a00001 	mov	r0, #1
    3fe0:	eb0002a3 	bl	4a74 <printf>
    3fe4:	eb000165 	bl	4580 <exit>
    3fe8:	e3a01c02 	mov	r1, #512	@ 0x200
    3fec:	e59f0088 	ldr	r0, [pc, #136]	@ 407c <main+0xdc>
    3ff0:	eb0001aa 	bl	46a0 <open>
    3ff4:	e1a03000 	mov	r3, r0
    3ff8:	e1a00003 	mov	r0, r3
    3ffc:	eb00018c 	bl	4634 <close>
    4000:	ebfffe99 	bl	3a6c <bigargtest>
    4004:	ebfffa0f 	bl	2848 <bigwrite>
    4008:	ebfffe97 	bl	3a6c <bigargtest>
    400c:	ebfffe6a 	bl	39bc <bsstest>
    4010:	ebfffcb3 	bl	32e4 <sbrktest>
    4014:	ebfffe29 	bl	38c0 <validatetest>
    4018:	ebffeff8 	bl	0 <opentest>
    401c:	ebfff02a 	bl	cc <writetest>
    4020:	ebfff0bd 	bl	31c <writetest1>
    4024:	ebfff14c 	bl	55c <createtest>
    4028:	ebfff310 	bl	c70 <mem>
    402c:	ebfff1ed 	bl	7e8 <pipe1>
    4030:	ebfff2e4 	bl	bc8 <exitwait>
    4034:	ebfffb32 	bl	2d04 <rmdot>
    4038:	ebfffad9 	bl	2ba4 <fourteen>
    403c:	ebfffa48 	bl	2964 <bigfile>
    4040:	ebfff842 	bl	2150 <subdir>
    4044:	ebfff654 	bl	199c <concreate>
    4048:	ebfff76c 	bl	1e00 <linkunlink>
    404c:	ebfff5cb 	bl	1780 <linktest>
    4050:	ebfff560 	bl	15d8 <unlinkread>
    4054:	ebfff480 	bl	125c <createdelete>
    4058:	ebfff3d4 	bl	fb0 <twofiles>
    405c:	ebfff343 	bl	d70 <sharedfd>
    4060:	ebfffb89 	bl	2e8c <dirfile>
    4064:	ebfffc11 	bl	30b0 <iref>
    4068:	ebfffc5b 	bl	31dc <forktest>
    406c:	ebfff7bf 	bl	1f70 <bigdir>
    4070:	ebfff1c2 	bl	780 <exectest>
    4074:	eb000141 	bl	4580 <exit>
    4078:	00006910 	.word	0x00006910
    407c:	00006924 	.word	0x00006924
    4080:	00006934 	.word	0x00006934

00004084 <strcpy>:
    4084:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    4088:	e28db000 	add	fp, sp, #0
    408c:	e24dd014 	sub	sp, sp, #20
    4090:	e50b0010 	str	r0, [fp, #-16]
    4094:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
    4098:	e51b3010 	ldr	r3, [fp, #-16]
    409c:	e50b3008 	str	r3, [fp, #-8]
    40a0:	e1a00000 	nop			@ (mov r0, r0)
    40a4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
    40a8:	e2823001 	add	r3, r2, #1
    40ac:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    40b0:	e51b3010 	ldr	r3, [fp, #-16]
    40b4:	e2831001 	add	r1, r3, #1
    40b8:	e50b1010 	str	r1, [fp, #-16]
    40bc:	e5d22000 	ldrb	r2, [r2]
    40c0:	e5c32000 	strb	r2, [r3]
    40c4:	e5d33000 	ldrb	r3, [r3]
    40c8:	e3530000 	cmp	r3, #0
    40cc:	1afffff4 	bne	40a4 <strcpy+0x20>
    40d0:	e51b3008 	ldr	r3, [fp, #-8]
    40d4:	e1a00003 	mov	r0, r3
    40d8:	e28bd000 	add	sp, fp, #0
    40dc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    40e0:	e12fff1e 	bx	lr

000040e4 <strcmp>:
    40e4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    40e8:	e28db000 	add	fp, sp, #0
    40ec:	e24dd00c 	sub	sp, sp, #12
    40f0:	e50b0008 	str	r0, [fp, #-8]
    40f4:	e50b100c 	str	r1, [fp, #-12]
    40f8:	ea000005 	b	4114 <strcmp+0x30>
    40fc:	e51b3008 	ldr	r3, [fp, #-8]
    4100:	e2833001 	add	r3, r3, #1
    4104:	e50b3008 	str	r3, [fp, #-8]
    4108:	e51b300c 	ldr	r3, [fp, #-12]
    410c:	e2833001 	add	r3, r3, #1
    4110:	e50b300c 	str	r3, [fp, #-12]
    4114:	e51b3008 	ldr	r3, [fp, #-8]
    4118:	e5d33000 	ldrb	r3, [r3]
    411c:	e3530000 	cmp	r3, #0
    4120:	0a000005 	beq	413c <strcmp+0x58>
    4124:	e51b3008 	ldr	r3, [fp, #-8]
    4128:	e5d32000 	ldrb	r2, [r3]
    412c:	e51b300c 	ldr	r3, [fp, #-12]
    4130:	e5d33000 	ldrb	r3, [r3]
    4134:	e1520003 	cmp	r2, r3
    4138:	0affffef 	beq	40fc <strcmp+0x18>
    413c:	e51b3008 	ldr	r3, [fp, #-8]
    4140:	e5d33000 	ldrb	r3, [r3]
    4144:	e1a02003 	mov	r2, r3
    4148:	e51b300c 	ldr	r3, [fp, #-12]
    414c:	e5d33000 	ldrb	r3, [r3]
    4150:	e0423003 	sub	r3, r2, r3
    4154:	e1a00003 	mov	r0, r3
    4158:	e28bd000 	add	sp, fp, #0
    415c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    4160:	e12fff1e 	bx	lr

00004164 <strlen>:
    4164:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    4168:	e28db000 	add	fp, sp, #0
    416c:	e24dd014 	sub	sp, sp, #20
    4170:	e50b0010 	str	r0, [fp, #-16]
    4174:	e3a03000 	mov	r3, #0
    4178:	e50b3008 	str	r3, [fp, #-8]
    417c:	ea000002 	b	418c <strlen+0x28>
    4180:	e51b3008 	ldr	r3, [fp, #-8]
    4184:	e2833001 	add	r3, r3, #1
    4188:	e50b3008 	str	r3, [fp, #-8]
    418c:	e51b3008 	ldr	r3, [fp, #-8]
    4190:	e51b2010 	ldr	r2, [fp, #-16]
    4194:	e0823003 	add	r3, r2, r3
    4198:	e5d33000 	ldrb	r3, [r3]
    419c:	e3530000 	cmp	r3, #0
    41a0:	1afffff6 	bne	4180 <strlen+0x1c>
    41a4:	e51b3008 	ldr	r3, [fp, #-8]
    41a8:	e1a00003 	mov	r0, r3
    41ac:	e28bd000 	add	sp, fp, #0
    41b0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    41b4:	e12fff1e 	bx	lr

000041b8 <memset>:
    41b8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    41bc:	e28db000 	add	fp, sp, #0
    41c0:	e24dd024 	sub	sp, sp, #36	@ 0x24
    41c4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    41c8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
    41cc:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
    41d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    41d4:	e50b3008 	str	r3, [fp, #-8]
    41d8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    41dc:	e54b300d 	strb	r3, [fp, #-13]
    41e0:	e55b200d 	ldrb	r2, [fp, #-13]
    41e4:	e1a03002 	mov	r3, r2
    41e8:	e1a03403 	lsl	r3, r3, #8
    41ec:	e0833002 	add	r3, r3, r2
    41f0:	e1a03803 	lsl	r3, r3, #16
    41f4:	e1a02003 	mov	r2, r3
    41f8:	e55b300d 	ldrb	r3, [fp, #-13]
    41fc:	e1a03403 	lsl	r3, r3, #8
    4200:	e1822003 	orr	r2, r2, r3
    4204:	e55b300d 	ldrb	r3, [fp, #-13]
    4208:	e1823003 	orr	r3, r2, r3
    420c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    4210:	ea000008 	b	4238 <memset+0x80>
    4214:	e51b3008 	ldr	r3, [fp, #-8]
    4218:	e55b200d 	ldrb	r2, [fp, #-13]
    421c:	e5c32000 	strb	r2, [r3]
    4220:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    4224:	e2433001 	sub	r3, r3, #1
    4228:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
    422c:	e51b3008 	ldr	r3, [fp, #-8]
    4230:	e2833001 	add	r3, r3, #1
    4234:	e50b3008 	str	r3, [fp, #-8]
    4238:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    423c:	e3530000 	cmp	r3, #0
    4240:	0a000003 	beq	4254 <memset+0x9c>
    4244:	e51b3008 	ldr	r3, [fp, #-8]
    4248:	e2033003 	and	r3, r3, #3
    424c:	e3530000 	cmp	r3, #0
    4250:	1affffef 	bne	4214 <memset+0x5c>
    4254:	e51b3008 	ldr	r3, [fp, #-8]
    4258:	e50b300c 	str	r3, [fp, #-12]
    425c:	ea000008 	b	4284 <memset+0xcc>
    4260:	e51b300c 	ldr	r3, [fp, #-12]
    4264:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
    4268:	e5832000 	str	r2, [r3]
    426c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    4270:	e2433004 	sub	r3, r3, #4
    4274:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
    4278:	e51b300c 	ldr	r3, [fp, #-12]
    427c:	e2833004 	add	r3, r3, #4
    4280:	e50b300c 	str	r3, [fp, #-12]
    4284:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    4288:	e3530003 	cmp	r3, #3
    428c:	8afffff3 	bhi	4260 <memset+0xa8>
    4290:	e51b300c 	ldr	r3, [fp, #-12]
    4294:	e50b3008 	str	r3, [fp, #-8]
    4298:	ea000008 	b	42c0 <memset+0x108>
    429c:	e51b3008 	ldr	r3, [fp, #-8]
    42a0:	e55b200d 	ldrb	r2, [fp, #-13]
    42a4:	e5c32000 	strb	r2, [r3]
    42a8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    42ac:	e2433001 	sub	r3, r3, #1
    42b0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
    42b4:	e51b3008 	ldr	r3, [fp, #-8]
    42b8:	e2833001 	add	r3, r3, #1
    42bc:	e50b3008 	str	r3, [fp, #-8]
    42c0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    42c4:	e3530000 	cmp	r3, #0
    42c8:	1afffff3 	bne	429c <memset+0xe4>
    42cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    42d0:	e1a00003 	mov	r0, r3
    42d4:	e28bd000 	add	sp, fp, #0
    42d8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    42dc:	e12fff1e 	bx	lr

000042e0 <strchr>:
    42e0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    42e4:	e28db000 	add	fp, sp, #0
    42e8:	e24dd00c 	sub	sp, sp, #12
    42ec:	e50b0008 	str	r0, [fp, #-8]
    42f0:	e1a03001 	mov	r3, r1
    42f4:	e54b3009 	strb	r3, [fp, #-9]
    42f8:	ea000009 	b	4324 <strchr+0x44>
    42fc:	e51b3008 	ldr	r3, [fp, #-8]
    4300:	e5d33000 	ldrb	r3, [r3]
    4304:	e55b2009 	ldrb	r2, [fp, #-9]
    4308:	e1520003 	cmp	r2, r3
    430c:	1a000001 	bne	4318 <strchr+0x38>
    4310:	e51b3008 	ldr	r3, [fp, #-8]
    4314:	ea000007 	b	4338 <strchr+0x58>
    4318:	e51b3008 	ldr	r3, [fp, #-8]
    431c:	e2833001 	add	r3, r3, #1
    4320:	e50b3008 	str	r3, [fp, #-8]
    4324:	e51b3008 	ldr	r3, [fp, #-8]
    4328:	e5d33000 	ldrb	r3, [r3]
    432c:	e3530000 	cmp	r3, #0
    4330:	1afffff1 	bne	42fc <strchr+0x1c>
    4334:	e3a03000 	mov	r3, #0
    4338:	e1a00003 	mov	r0, r3
    433c:	e28bd000 	add	sp, fp, #0
    4340:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    4344:	e12fff1e 	bx	lr

00004348 <gets>:
    4348:	e92d4800 	push	{fp, lr}
    434c:	e28db004 	add	fp, sp, #4
    4350:	e24dd018 	sub	sp, sp, #24
    4354:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    4358:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
    435c:	e3a03000 	mov	r3, #0
    4360:	e50b3008 	str	r3, [fp, #-8]
    4364:	ea000016 	b	43c4 <gets+0x7c>
    4368:	e24b300d 	sub	r3, fp, #13
    436c:	e3a02001 	mov	r2, #1
    4370:	e1a01003 	mov	r1, r3
    4374:	e3a00000 	mov	r0, #0
    4378:	eb00009b 	bl	45ec <read>
    437c:	e50b000c 	str	r0, [fp, #-12]
    4380:	e51b300c 	ldr	r3, [fp, #-12]
    4384:	e3530000 	cmp	r3, #0
    4388:	da000013 	ble	43dc <gets+0x94>
    438c:	e51b3008 	ldr	r3, [fp, #-8]
    4390:	e2832001 	add	r2, r3, #1
    4394:	e50b2008 	str	r2, [fp, #-8]
    4398:	e1a02003 	mov	r2, r3
    439c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    43a0:	e0833002 	add	r3, r3, r2
    43a4:	e55b200d 	ldrb	r2, [fp, #-13]
    43a8:	e5c32000 	strb	r2, [r3]
    43ac:	e55b300d 	ldrb	r3, [fp, #-13]
    43b0:	e353000a 	cmp	r3, #10
    43b4:	0a000009 	beq	43e0 <gets+0x98>
    43b8:	e55b300d 	ldrb	r3, [fp, #-13]
    43bc:	e353000d 	cmp	r3, #13
    43c0:	0a000006 	beq	43e0 <gets+0x98>
    43c4:	e51b3008 	ldr	r3, [fp, #-8]
    43c8:	e2833001 	add	r3, r3, #1
    43cc:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
    43d0:	e1520003 	cmp	r2, r3
    43d4:	caffffe3 	bgt	4368 <gets+0x20>
    43d8:	ea000000 	b	43e0 <gets+0x98>
    43dc:	e1a00000 	nop			@ (mov r0, r0)
    43e0:	e51b3008 	ldr	r3, [fp, #-8]
    43e4:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
    43e8:	e0823003 	add	r3, r2, r3
    43ec:	e3a02000 	mov	r2, #0
    43f0:	e5c32000 	strb	r2, [r3]
    43f4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    43f8:	e1a00003 	mov	r0, r3
    43fc:	e24bd004 	sub	sp, fp, #4
    4400:	e8bd8800 	pop	{fp, pc}

00004404 <stat>:
    4404:	e92d4800 	push	{fp, lr}
    4408:	e28db004 	add	fp, sp, #4
    440c:	e24dd010 	sub	sp, sp, #16
    4410:	e50b0010 	str	r0, [fp, #-16]
    4414:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
    4418:	e3a01000 	mov	r1, #0
    441c:	e51b0010 	ldr	r0, [fp, #-16]
    4420:	eb00009e 	bl	46a0 <open>
    4424:	e50b0008 	str	r0, [fp, #-8]
    4428:	e51b3008 	ldr	r3, [fp, #-8]
    442c:	e3530000 	cmp	r3, #0
    4430:	aa000001 	bge	443c <stat+0x38>
    4434:	e3e03000 	mvn	r3, #0
    4438:	ea000006 	b	4458 <stat+0x54>
    443c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
    4440:	e51b0008 	ldr	r0, [fp, #-8]
    4444:	eb0000b0 	bl	470c <fstat>
    4448:	e50b000c 	str	r0, [fp, #-12]
    444c:	e51b0008 	ldr	r0, [fp, #-8]
    4450:	eb000077 	bl	4634 <close>
    4454:	e51b300c 	ldr	r3, [fp, #-12]
    4458:	e1a00003 	mov	r0, r3
    445c:	e24bd004 	sub	sp, fp, #4
    4460:	e8bd8800 	pop	{fp, pc}

00004464 <atoi>:
    4464:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    4468:	e28db000 	add	fp, sp, #0
    446c:	e24dd014 	sub	sp, sp, #20
    4470:	e50b0010 	str	r0, [fp, #-16]
    4474:	e3a03000 	mov	r3, #0
    4478:	e50b3008 	str	r3, [fp, #-8]
    447c:	ea00000c 	b	44b4 <atoi+0x50>
    4480:	e51b2008 	ldr	r2, [fp, #-8]
    4484:	e1a03002 	mov	r3, r2
    4488:	e1a03103 	lsl	r3, r3, #2
    448c:	e0833002 	add	r3, r3, r2
    4490:	e1a03083 	lsl	r3, r3, #1
    4494:	e1a01003 	mov	r1, r3
    4498:	e51b3010 	ldr	r3, [fp, #-16]
    449c:	e2832001 	add	r2, r3, #1
    44a0:	e50b2010 	str	r2, [fp, #-16]
    44a4:	e5d33000 	ldrb	r3, [r3]
    44a8:	e0813003 	add	r3, r1, r3
    44ac:	e2433030 	sub	r3, r3, #48	@ 0x30
    44b0:	e50b3008 	str	r3, [fp, #-8]
    44b4:	e51b3010 	ldr	r3, [fp, #-16]
    44b8:	e5d33000 	ldrb	r3, [r3]
    44bc:	e353002f 	cmp	r3, #47	@ 0x2f
    44c0:	9a000003 	bls	44d4 <atoi+0x70>
    44c4:	e51b3010 	ldr	r3, [fp, #-16]
    44c8:	e5d33000 	ldrb	r3, [r3]
    44cc:	e3530039 	cmp	r3, #57	@ 0x39
    44d0:	9affffea 	bls	4480 <atoi+0x1c>
    44d4:	e51b3008 	ldr	r3, [fp, #-8]
    44d8:	e1a00003 	mov	r0, r3
    44dc:	e28bd000 	add	sp, fp, #0
    44e0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    44e4:	e12fff1e 	bx	lr

000044e8 <memmove>:
    44e8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    44ec:	e28db000 	add	fp, sp, #0
    44f0:	e24dd01c 	sub	sp, sp, #28
    44f4:	e50b0010 	str	r0, [fp, #-16]
    44f8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
    44fc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
    4500:	e51b3010 	ldr	r3, [fp, #-16]
    4504:	e50b3008 	str	r3, [fp, #-8]
    4508:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    450c:	e50b300c 	str	r3, [fp, #-12]
    4510:	ea000007 	b	4534 <memmove+0x4c>
    4514:	e51b200c 	ldr	r2, [fp, #-12]
    4518:	e2823001 	add	r3, r2, #1
    451c:	e50b300c 	str	r3, [fp, #-12]
    4520:	e51b3008 	ldr	r3, [fp, #-8]
    4524:	e2831001 	add	r1, r3, #1
    4528:	e50b1008 	str	r1, [fp, #-8]
    452c:	e5d22000 	ldrb	r2, [r2]
    4530:	e5c32000 	strb	r2, [r3]
    4534:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    4538:	e2432001 	sub	r2, r3, #1
    453c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
    4540:	e3530000 	cmp	r3, #0
    4544:	cafffff2 	bgt	4514 <memmove+0x2c>
    4548:	e51b3010 	ldr	r3, [fp, #-16]
    454c:	e1a00003 	mov	r0, r3
    4550:	e28bd000 	add	sp, fp, #0
    4554:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    4558:	e12fff1e 	bx	lr

0000455c <fork>:
    455c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4560:	e1a04003 	mov	r4, r3
    4564:	e1a03002 	mov	r3, r2
    4568:	e1a02001 	mov	r2, r1
    456c:	e1a01000 	mov	r1, r0
    4570:	e3a00001 	mov	r0, #1
    4574:	ef000000 	svc	0x00000000
    4578:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    457c:	e12fff1e 	bx	lr

00004580 <exit>:
    4580:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4584:	e1a04003 	mov	r4, r3
    4588:	e1a03002 	mov	r3, r2
    458c:	e1a02001 	mov	r2, r1
    4590:	e1a01000 	mov	r1, r0
    4594:	e3a00002 	mov	r0, #2
    4598:	ef000000 	svc	0x00000000
    459c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    45a0:	e12fff1e 	bx	lr

000045a4 <wait>:
    45a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    45a8:	e1a04003 	mov	r4, r3
    45ac:	e1a03002 	mov	r3, r2
    45b0:	e1a02001 	mov	r2, r1
    45b4:	e1a01000 	mov	r1, r0
    45b8:	e3a00003 	mov	r0, #3
    45bc:	ef000000 	svc	0x00000000
    45c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    45c4:	e12fff1e 	bx	lr

000045c8 <pipe>:
    45c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    45cc:	e1a04003 	mov	r4, r3
    45d0:	e1a03002 	mov	r3, r2
    45d4:	e1a02001 	mov	r2, r1
    45d8:	e1a01000 	mov	r1, r0
    45dc:	e3a00004 	mov	r0, #4
    45e0:	ef000000 	svc	0x00000000
    45e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    45e8:	e12fff1e 	bx	lr

000045ec <read>:
    45ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    45f0:	e1a04003 	mov	r4, r3
    45f4:	e1a03002 	mov	r3, r2
    45f8:	e1a02001 	mov	r2, r1
    45fc:	e1a01000 	mov	r1, r0
    4600:	e3a00005 	mov	r0, #5
    4604:	ef000000 	svc	0x00000000
    4608:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    460c:	e12fff1e 	bx	lr

00004610 <write>:
    4610:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4614:	e1a04003 	mov	r4, r3
    4618:	e1a03002 	mov	r3, r2
    461c:	e1a02001 	mov	r2, r1
    4620:	e1a01000 	mov	r1, r0
    4624:	e3a00010 	mov	r0, #16
    4628:	ef000000 	svc	0x00000000
    462c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4630:	e12fff1e 	bx	lr

00004634 <close>:
    4634:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4638:	e1a04003 	mov	r4, r3
    463c:	e1a03002 	mov	r3, r2
    4640:	e1a02001 	mov	r2, r1
    4644:	e1a01000 	mov	r1, r0
    4648:	e3a00015 	mov	r0, #21
    464c:	ef000000 	svc	0x00000000
    4650:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4654:	e12fff1e 	bx	lr

00004658 <kill>:
    4658:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    465c:	e1a04003 	mov	r4, r3
    4660:	e1a03002 	mov	r3, r2
    4664:	e1a02001 	mov	r2, r1
    4668:	e1a01000 	mov	r1, r0
    466c:	e3a00006 	mov	r0, #6
    4670:	ef000000 	svc	0x00000000
    4674:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4678:	e12fff1e 	bx	lr

0000467c <exec>:
    467c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4680:	e1a04003 	mov	r4, r3
    4684:	e1a03002 	mov	r3, r2
    4688:	e1a02001 	mov	r2, r1
    468c:	e1a01000 	mov	r1, r0
    4690:	e3a00007 	mov	r0, #7
    4694:	ef000000 	svc	0x00000000
    4698:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    469c:	e12fff1e 	bx	lr

000046a0 <open>:
    46a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    46a4:	e1a04003 	mov	r4, r3
    46a8:	e1a03002 	mov	r3, r2
    46ac:	e1a02001 	mov	r2, r1
    46b0:	e1a01000 	mov	r1, r0
    46b4:	e3a0000f 	mov	r0, #15
    46b8:	ef000000 	svc	0x00000000
    46bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    46c0:	e12fff1e 	bx	lr

000046c4 <mknod>:
    46c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    46c8:	e1a04003 	mov	r4, r3
    46cc:	e1a03002 	mov	r3, r2
    46d0:	e1a02001 	mov	r2, r1
    46d4:	e1a01000 	mov	r1, r0
    46d8:	e3a00011 	mov	r0, #17
    46dc:	ef000000 	svc	0x00000000
    46e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    46e4:	e12fff1e 	bx	lr

000046e8 <unlink>:
    46e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    46ec:	e1a04003 	mov	r4, r3
    46f0:	e1a03002 	mov	r3, r2
    46f4:	e1a02001 	mov	r2, r1
    46f8:	e1a01000 	mov	r1, r0
    46fc:	e3a00012 	mov	r0, #18
    4700:	ef000000 	svc	0x00000000
    4704:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4708:	e12fff1e 	bx	lr

0000470c <fstat>:
    470c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4710:	e1a04003 	mov	r4, r3
    4714:	e1a03002 	mov	r3, r2
    4718:	e1a02001 	mov	r2, r1
    471c:	e1a01000 	mov	r1, r0
    4720:	e3a00008 	mov	r0, #8
    4724:	ef000000 	svc	0x00000000
    4728:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    472c:	e12fff1e 	bx	lr

00004730 <link>:
    4730:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4734:	e1a04003 	mov	r4, r3
    4738:	e1a03002 	mov	r3, r2
    473c:	e1a02001 	mov	r2, r1
    4740:	e1a01000 	mov	r1, r0
    4744:	e3a00013 	mov	r0, #19
    4748:	ef000000 	svc	0x00000000
    474c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4750:	e12fff1e 	bx	lr

00004754 <mkdir>:
    4754:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4758:	e1a04003 	mov	r4, r3
    475c:	e1a03002 	mov	r3, r2
    4760:	e1a02001 	mov	r2, r1
    4764:	e1a01000 	mov	r1, r0
    4768:	e3a00014 	mov	r0, #20
    476c:	ef000000 	svc	0x00000000
    4770:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4774:	e12fff1e 	bx	lr

00004778 <chdir>:
    4778:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    477c:	e1a04003 	mov	r4, r3
    4780:	e1a03002 	mov	r3, r2
    4784:	e1a02001 	mov	r2, r1
    4788:	e1a01000 	mov	r1, r0
    478c:	e3a00009 	mov	r0, #9
    4790:	ef000000 	svc	0x00000000
    4794:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4798:	e12fff1e 	bx	lr

0000479c <dup>:
    479c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    47a0:	e1a04003 	mov	r4, r3
    47a4:	e1a03002 	mov	r3, r2
    47a8:	e1a02001 	mov	r2, r1
    47ac:	e1a01000 	mov	r1, r0
    47b0:	e3a0000a 	mov	r0, #10
    47b4:	ef000000 	svc	0x00000000
    47b8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    47bc:	e12fff1e 	bx	lr

000047c0 <getpid>:
    47c0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    47c4:	e1a04003 	mov	r4, r3
    47c8:	e1a03002 	mov	r3, r2
    47cc:	e1a02001 	mov	r2, r1
    47d0:	e1a01000 	mov	r1, r0
    47d4:	e3a0000b 	mov	r0, #11
    47d8:	ef000000 	svc	0x00000000
    47dc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    47e0:	e12fff1e 	bx	lr

000047e4 <sbrk>:
    47e4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    47e8:	e1a04003 	mov	r4, r3
    47ec:	e1a03002 	mov	r3, r2
    47f0:	e1a02001 	mov	r2, r1
    47f4:	e1a01000 	mov	r1, r0
    47f8:	e3a0000c 	mov	r0, #12
    47fc:	ef000000 	svc	0x00000000
    4800:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4804:	e12fff1e 	bx	lr

00004808 <sleep>:
    4808:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    480c:	e1a04003 	mov	r4, r3
    4810:	e1a03002 	mov	r3, r2
    4814:	e1a02001 	mov	r2, r1
    4818:	e1a01000 	mov	r1, r0
    481c:	e3a0000d 	mov	r0, #13
    4820:	ef000000 	svc	0x00000000
    4824:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4828:	e12fff1e 	bx	lr

0000482c <uptime>:
    482c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4830:	e1a04003 	mov	r4, r3
    4834:	e1a03002 	mov	r3, r2
    4838:	e1a02001 	mov	r2, r1
    483c:	e1a01000 	mov	r1, r0
    4840:	e3a0000e 	mov	r0, #14
    4844:	ef000000 	svc	0x00000000
    4848:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    484c:	e12fff1e 	bx	lr

00004850 <getprocs>:
    4850:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4854:	e1a04003 	mov	r4, r3
    4858:	e1a03002 	mov	r3, r2
    485c:	e1a02001 	mov	r2, r1
    4860:	e1a01000 	mov	r1, r0
    4864:	e3a00016 	mov	r0, #22
    4868:	ef000000 	svc	0x00000000
    486c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4870:	e12fff1e 	bx	lr

00004874 <getpinfo>:
    4874:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4878:	e1a04003 	mov	r4, r3
    487c:	e1a03002 	mov	r3, r2
    4880:	e1a02001 	mov	r2, r1
    4884:	e1a01000 	mov	r1, r0
    4888:	e3a00018 	mov	r0, #24
    488c:	ef000000 	svc	0x00000000
    4890:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4894:	e12fff1e 	bx	lr

00004898 <settickets>:
    4898:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    489c:	e1a04003 	mov	r4, r3
    48a0:	e1a03002 	mov	r3, r2
    48a4:	e1a02001 	mov	r2, r1
    48a8:	e1a01000 	mov	r1, r0
    48ac:	e3a00017 	mov	r0, #23
    48b0:	ef000000 	svc	0x00000000
    48b4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    48b8:	e12fff1e 	bx	lr

000048bc <srand>:
    48bc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    48c0:	e1a04003 	mov	r4, r3
    48c4:	e1a03002 	mov	r3, r2
    48c8:	e1a02001 	mov	r2, r1
    48cc:	e1a01000 	mov	r1, r0
    48d0:	e3a00019 	mov	r0, #25
    48d4:	ef000000 	svc	0x00000000
    48d8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    48dc:	e12fff1e 	bx	lr

000048e0 <test>:
    48e0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    48e4:	e1a04003 	mov	r4, r3
    48e8:	e1a03002 	mov	r3, r2
    48ec:	e1a02001 	mov	r2, r1
    48f0:	e1a01000 	mov	r1, r0
    48f4:	e3a0001a 	mov	r0, #26
    48f8:	ef000000 	svc	0x00000000
    48fc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4900:	e12fff1e 	bx	lr

00004904 <putc>:
    4904:	e92d4800 	push	{fp, lr}
    4908:	e28db004 	add	fp, sp, #4
    490c:	e24dd008 	sub	sp, sp, #8
    4910:	e50b0008 	str	r0, [fp, #-8]
    4914:	e1a03001 	mov	r3, r1
    4918:	e54b3009 	strb	r3, [fp, #-9]
    491c:	e24b3009 	sub	r3, fp, #9
    4920:	e3a02001 	mov	r2, #1
    4924:	e1a01003 	mov	r1, r3
    4928:	e51b0008 	ldr	r0, [fp, #-8]
    492c:	ebffff37 	bl	4610 <write>
    4930:	e1a00000 	nop			@ (mov r0, r0)
    4934:	e24bd004 	sub	sp, fp, #4
    4938:	e8bd8800 	pop	{fp, pc}

0000493c <printint>:
    493c:	e92d4800 	push	{fp, lr}
    4940:	e28db004 	add	fp, sp, #4
    4944:	e24dd030 	sub	sp, sp, #48	@ 0x30
    4948:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    494c:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    4950:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    4954:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    4958:	e3a03000 	mov	r3, #0
    495c:	e50b300c 	str	r3, [fp, #-12]
    4960:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    4964:	e3530000 	cmp	r3, #0
    4968:	0a000008 	beq	4990 <printint+0x54>
    496c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    4970:	e3530000 	cmp	r3, #0
    4974:	aa000005 	bge	4990 <printint+0x54>
    4978:	e3a03001 	mov	r3, #1
    497c:	e50b300c 	str	r3, [fp, #-12]
    4980:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    4984:	e2633000 	rsb	r3, r3, #0
    4988:	e50b3010 	str	r3, [fp, #-16]
    498c:	ea000001 	b	4998 <printint+0x5c>
    4990:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    4994:	e50b3010 	str	r3, [fp, #-16]
    4998:	e3a03000 	mov	r3, #0
    499c:	e50b3008 	str	r3, [fp, #-8]
    49a0:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    49a4:	e51b3010 	ldr	r3, [fp, #-16]
    49a8:	e1a01002 	mov	r1, r2
    49ac:	e1a00003 	mov	r0, r3
    49b0:	eb0001d5 	bl	510c <__aeabi_uidivmod>
    49b4:	e1a03001 	mov	r3, r1
    49b8:	e1a01003 	mov	r1, r3
    49bc:	e51b3008 	ldr	r3, [fp, #-8]
    49c0:	e2832001 	add	r2, r3, #1
    49c4:	e50b2008 	str	r2, [fp, #-8]
    49c8:	e59f20a0 	ldr	r2, [pc, #160]	@ 4a70 <printint+0x134>
    49cc:	e7d22001 	ldrb	r2, [r2, r1]
    49d0:	e2433004 	sub	r3, r3, #4
    49d4:	e083300b 	add	r3, r3, fp
    49d8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    49dc:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    49e0:	e1a01003 	mov	r1, r3
    49e4:	e51b0010 	ldr	r0, [fp, #-16]
    49e8:	eb00018a 	bl	5018 <__udivsi3>
    49ec:	e1a03000 	mov	r3, r0
    49f0:	e50b3010 	str	r3, [fp, #-16]
    49f4:	e51b3010 	ldr	r3, [fp, #-16]
    49f8:	e3530000 	cmp	r3, #0
    49fc:	1affffe7 	bne	49a0 <printint+0x64>
    4a00:	e51b300c 	ldr	r3, [fp, #-12]
    4a04:	e3530000 	cmp	r3, #0
    4a08:	0a00000e 	beq	4a48 <printint+0x10c>
    4a0c:	e51b3008 	ldr	r3, [fp, #-8]
    4a10:	e2832001 	add	r2, r3, #1
    4a14:	e50b2008 	str	r2, [fp, #-8]
    4a18:	e2433004 	sub	r3, r3, #4
    4a1c:	e083300b 	add	r3, r3, fp
    4a20:	e3a0202d 	mov	r2, #45	@ 0x2d
    4a24:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    4a28:	ea000006 	b	4a48 <printint+0x10c>
    4a2c:	e24b2020 	sub	r2, fp, #32
    4a30:	e51b3008 	ldr	r3, [fp, #-8]
    4a34:	e0823003 	add	r3, r2, r3
    4a38:	e5d33000 	ldrb	r3, [r3]
    4a3c:	e1a01003 	mov	r1, r3
    4a40:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    4a44:	ebffffae 	bl	4904 <putc>
    4a48:	e51b3008 	ldr	r3, [fp, #-8]
    4a4c:	e2433001 	sub	r3, r3, #1
    4a50:	e50b3008 	str	r3, [fp, #-8]
    4a54:	e51b3008 	ldr	r3, [fp, #-8]
    4a58:	e3530000 	cmp	r3, #0
    4a5c:	aafffff2 	bge	4a2c <printint+0xf0>
    4a60:	e1a00000 	nop			@ (mov r0, r0)
    4a64:	e1a00000 	nop			@ (mov r0, r0)
    4a68:	e24bd004 	sub	sp, fp, #4
    4a6c:	e8bd8800 	pop	{fp, pc}
    4a70:	00006984 	.word	0x00006984

00004a74 <printf>:
    4a74:	e92d000e 	push	{r1, r2, r3}
    4a78:	e92d4800 	push	{fp, lr}
    4a7c:	e28db004 	add	fp, sp, #4
    4a80:	e24dd024 	sub	sp, sp, #36	@ 0x24
    4a84:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    4a88:	e3a03000 	mov	r3, #0
    4a8c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    4a90:	e28b3008 	add	r3, fp, #8
    4a94:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    4a98:	e3a03000 	mov	r3, #0
    4a9c:	e50b3010 	str	r3, [fp, #-16]
    4aa0:	ea000074 	b	4c78 <printf+0x204>
    4aa4:	e59b2004 	ldr	r2, [fp, #4]
    4aa8:	e51b3010 	ldr	r3, [fp, #-16]
    4aac:	e0823003 	add	r3, r2, r3
    4ab0:	e5d33000 	ldrb	r3, [r3]
    4ab4:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    4ab8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    4abc:	e3530000 	cmp	r3, #0
    4ac0:	1a00000b 	bne	4af4 <printf+0x80>
    4ac4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    4ac8:	e3530025 	cmp	r3, #37	@ 0x25
    4acc:	1a000002 	bne	4adc <printf+0x68>
    4ad0:	e3a03025 	mov	r3, #37	@ 0x25
    4ad4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    4ad8:	ea000063 	b	4c6c <printf+0x1f8>
    4adc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    4ae0:	e6ef3073 	uxtb	r3, r3
    4ae4:	e1a01003 	mov	r1, r3
    4ae8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    4aec:	ebffff84 	bl	4904 <putc>
    4af0:	ea00005d 	b	4c6c <printf+0x1f8>
    4af4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    4af8:	e3530025 	cmp	r3, #37	@ 0x25
    4afc:	1a00005a 	bne	4c6c <printf+0x1f8>
    4b00:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    4b04:	e3530064 	cmp	r3, #100	@ 0x64
    4b08:	1a00000a 	bne	4b38 <printf+0xc4>
    4b0c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    4b10:	e5933000 	ldr	r3, [r3]
    4b14:	e1a01003 	mov	r1, r3
    4b18:	e3a03001 	mov	r3, #1
    4b1c:	e3a0200a 	mov	r2, #10
    4b20:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    4b24:	ebffff84 	bl	493c <printint>
    4b28:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    4b2c:	e2833004 	add	r3, r3, #4
    4b30:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    4b34:	ea00004a 	b	4c64 <printf+0x1f0>
    4b38:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    4b3c:	e3530078 	cmp	r3, #120	@ 0x78
    4b40:	0a000002 	beq	4b50 <printf+0xdc>
    4b44:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    4b48:	e3530070 	cmp	r3, #112	@ 0x70
    4b4c:	1a00000a 	bne	4b7c <printf+0x108>
    4b50:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    4b54:	e5933000 	ldr	r3, [r3]
    4b58:	e1a01003 	mov	r1, r3
    4b5c:	e3a03000 	mov	r3, #0
    4b60:	e3a02010 	mov	r2, #16
    4b64:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    4b68:	ebffff73 	bl	493c <printint>
    4b6c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    4b70:	e2833004 	add	r3, r3, #4
    4b74:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    4b78:	ea000039 	b	4c64 <printf+0x1f0>
    4b7c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    4b80:	e3530073 	cmp	r3, #115	@ 0x73
    4b84:	1a000018 	bne	4bec <printf+0x178>
    4b88:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    4b8c:	e5933000 	ldr	r3, [r3]
    4b90:	e50b300c 	str	r3, [fp, #-12]
    4b94:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    4b98:	e2833004 	add	r3, r3, #4
    4b9c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    4ba0:	e51b300c 	ldr	r3, [fp, #-12]
    4ba4:	e3530000 	cmp	r3, #0
    4ba8:	1a00000a 	bne	4bd8 <printf+0x164>
    4bac:	e59f30f4 	ldr	r3, [pc, #244]	@ 4ca8 <printf+0x234>
    4bb0:	e50b300c 	str	r3, [fp, #-12]
    4bb4:	ea000007 	b	4bd8 <printf+0x164>
    4bb8:	e51b300c 	ldr	r3, [fp, #-12]
    4bbc:	e5d33000 	ldrb	r3, [r3]
    4bc0:	e1a01003 	mov	r1, r3
    4bc4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    4bc8:	ebffff4d 	bl	4904 <putc>
    4bcc:	e51b300c 	ldr	r3, [fp, #-12]
    4bd0:	e2833001 	add	r3, r3, #1
    4bd4:	e50b300c 	str	r3, [fp, #-12]
    4bd8:	e51b300c 	ldr	r3, [fp, #-12]
    4bdc:	e5d33000 	ldrb	r3, [r3]
    4be0:	e3530000 	cmp	r3, #0
    4be4:	1afffff3 	bne	4bb8 <printf+0x144>
    4be8:	ea00001d 	b	4c64 <printf+0x1f0>
    4bec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    4bf0:	e3530063 	cmp	r3, #99	@ 0x63
    4bf4:	1a000009 	bne	4c20 <printf+0x1ac>
    4bf8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    4bfc:	e5933000 	ldr	r3, [r3]
    4c00:	e6ef3073 	uxtb	r3, r3
    4c04:	e1a01003 	mov	r1, r3
    4c08:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    4c0c:	ebffff3c 	bl	4904 <putc>
    4c10:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    4c14:	e2833004 	add	r3, r3, #4
    4c18:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    4c1c:	ea000010 	b	4c64 <printf+0x1f0>
    4c20:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    4c24:	e3530025 	cmp	r3, #37	@ 0x25
    4c28:	1a000005 	bne	4c44 <printf+0x1d0>
    4c2c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    4c30:	e6ef3073 	uxtb	r3, r3
    4c34:	e1a01003 	mov	r1, r3
    4c38:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    4c3c:	ebffff30 	bl	4904 <putc>
    4c40:	ea000007 	b	4c64 <printf+0x1f0>
    4c44:	e3a01025 	mov	r1, #37	@ 0x25
    4c48:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    4c4c:	ebffff2c 	bl	4904 <putc>
    4c50:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    4c54:	e6ef3073 	uxtb	r3, r3
    4c58:	e1a01003 	mov	r1, r3
    4c5c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    4c60:	ebffff27 	bl	4904 <putc>
    4c64:	e3a03000 	mov	r3, #0
    4c68:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    4c6c:	e51b3010 	ldr	r3, [fp, #-16]
    4c70:	e2833001 	add	r3, r3, #1
    4c74:	e50b3010 	str	r3, [fp, #-16]
    4c78:	e59b2004 	ldr	r2, [fp, #4]
    4c7c:	e51b3010 	ldr	r3, [fp, #-16]
    4c80:	e0823003 	add	r3, r2, r3
    4c84:	e5d33000 	ldrb	r3, [r3]
    4c88:	e3530000 	cmp	r3, #0
    4c8c:	1affff84 	bne	4aa4 <printf+0x30>
    4c90:	e1a00000 	nop			@ (mov r0, r0)
    4c94:	e1a00000 	nop			@ (mov r0, r0)
    4c98:	e24bd004 	sub	sp, fp, #4
    4c9c:	e8bd4800 	pop	{fp, lr}
    4ca0:	e28dd00c 	add	sp, sp, #12
    4ca4:	e12fff1e 	bx	lr
    4ca8:	00006960 	.word	0x00006960

00004cac <free>:
    4cac:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    4cb0:	e28db000 	add	fp, sp, #0
    4cb4:	e24dd014 	sub	sp, sp, #20
    4cb8:	e50b0010 	str	r0, [fp, #-16]
    4cbc:	e51b3010 	ldr	r3, [fp, #-16]
    4cc0:	e2433008 	sub	r3, r3, #8
    4cc4:	e50b300c 	str	r3, [fp, #-12]
    4cc8:	e59f3154 	ldr	r3, [pc, #340]	@ 4e24 <free+0x178>
    4ccc:	e5933000 	ldr	r3, [r3]
    4cd0:	e50b3008 	str	r3, [fp, #-8]
    4cd4:	ea000010 	b	4d1c <free+0x70>
    4cd8:	e51b3008 	ldr	r3, [fp, #-8]
    4cdc:	e5933000 	ldr	r3, [r3]
    4ce0:	e51b2008 	ldr	r2, [fp, #-8]
    4ce4:	e1520003 	cmp	r2, r3
    4ce8:	3a000008 	bcc	4d10 <free+0x64>
    4cec:	e51b200c 	ldr	r2, [fp, #-12]
    4cf0:	e51b3008 	ldr	r3, [fp, #-8]
    4cf4:	e1520003 	cmp	r2, r3
    4cf8:	8a000010 	bhi	4d40 <free+0x94>
    4cfc:	e51b3008 	ldr	r3, [fp, #-8]
    4d00:	e5933000 	ldr	r3, [r3]
    4d04:	e51b200c 	ldr	r2, [fp, #-12]
    4d08:	e1520003 	cmp	r2, r3
    4d0c:	3a00000b 	bcc	4d40 <free+0x94>
    4d10:	e51b3008 	ldr	r3, [fp, #-8]
    4d14:	e5933000 	ldr	r3, [r3]
    4d18:	e50b3008 	str	r3, [fp, #-8]
    4d1c:	e51b200c 	ldr	r2, [fp, #-12]
    4d20:	e51b3008 	ldr	r3, [fp, #-8]
    4d24:	e1520003 	cmp	r2, r3
    4d28:	9affffea 	bls	4cd8 <free+0x2c>
    4d2c:	e51b3008 	ldr	r3, [fp, #-8]
    4d30:	e5933000 	ldr	r3, [r3]
    4d34:	e51b200c 	ldr	r2, [fp, #-12]
    4d38:	e1520003 	cmp	r2, r3
    4d3c:	2affffe5 	bcs	4cd8 <free+0x2c>
    4d40:	e51b300c 	ldr	r3, [fp, #-12]
    4d44:	e5933004 	ldr	r3, [r3, #4]
    4d48:	e1a03183 	lsl	r3, r3, #3
    4d4c:	e51b200c 	ldr	r2, [fp, #-12]
    4d50:	e0822003 	add	r2, r2, r3
    4d54:	e51b3008 	ldr	r3, [fp, #-8]
    4d58:	e5933000 	ldr	r3, [r3]
    4d5c:	e1520003 	cmp	r2, r3
    4d60:	1a00000d 	bne	4d9c <free+0xf0>
    4d64:	e51b300c 	ldr	r3, [fp, #-12]
    4d68:	e5932004 	ldr	r2, [r3, #4]
    4d6c:	e51b3008 	ldr	r3, [fp, #-8]
    4d70:	e5933000 	ldr	r3, [r3]
    4d74:	e5933004 	ldr	r3, [r3, #4]
    4d78:	e0822003 	add	r2, r2, r3
    4d7c:	e51b300c 	ldr	r3, [fp, #-12]
    4d80:	e5832004 	str	r2, [r3, #4]
    4d84:	e51b3008 	ldr	r3, [fp, #-8]
    4d88:	e5933000 	ldr	r3, [r3]
    4d8c:	e5932000 	ldr	r2, [r3]
    4d90:	e51b300c 	ldr	r3, [fp, #-12]
    4d94:	e5832000 	str	r2, [r3]
    4d98:	ea000003 	b	4dac <free+0x100>
    4d9c:	e51b3008 	ldr	r3, [fp, #-8]
    4da0:	e5932000 	ldr	r2, [r3]
    4da4:	e51b300c 	ldr	r3, [fp, #-12]
    4da8:	e5832000 	str	r2, [r3]
    4dac:	e51b3008 	ldr	r3, [fp, #-8]
    4db0:	e5933004 	ldr	r3, [r3, #4]
    4db4:	e1a03183 	lsl	r3, r3, #3
    4db8:	e51b2008 	ldr	r2, [fp, #-8]
    4dbc:	e0823003 	add	r3, r2, r3
    4dc0:	e51b200c 	ldr	r2, [fp, #-12]
    4dc4:	e1520003 	cmp	r2, r3
    4dc8:	1a00000b 	bne	4dfc <free+0x150>
    4dcc:	e51b3008 	ldr	r3, [fp, #-8]
    4dd0:	e5932004 	ldr	r2, [r3, #4]
    4dd4:	e51b300c 	ldr	r3, [fp, #-12]
    4dd8:	e5933004 	ldr	r3, [r3, #4]
    4ddc:	e0822003 	add	r2, r2, r3
    4de0:	e51b3008 	ldr	r3, [fp, #-8]
    4de4:	e5832004 	str	r2, [r3, #4]
    4de8:	e51b300c 	ldr	r3, [fp, #-12]
    4dec:	e5932000 	ldr	r2, [r3]
    4df0:	e51b3008 	ldr	r3, [fp, #-8]
    4df4:	e5832000 	str	r2, [r3]
    4df8:	ea000002 	b	4e08 <free+0x15c>
    4dfc:	e51b3008 	ldr	r3, [fp, #-8]
    4e00:	e51b200c 	ldr	r2, [fp, #-12]
    4e04:	e5832000 	str	r2, [r3]
    4e08:	e59f2014 	ldr	r2, [pc, #20]	@ 4e24 <free+0x178>
    4e0c:	e51b3008 	ldr	r3, [fp, #-8]
    4e10:	e5823000 	str	r3, [r2]
    4e14:	e1a00000 	nop			@ (mov r0, r0)
    4e18:	e28bd000 	add	sp, fp, #0
    4e1c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    4e20:	e12fff1e 	bx	lr
    4e24:	0000b134 	.word	0x0000b134

00004e28 <morecore>:
    4e28:	e92d4800 	push	{fp, lr}
    4e2c:	e28db004 	add	fp, sp, #4
    4e30:	e24dd010 	sub	sp, sp, #16
    4e34:	e50b0010 	str	r0, [fp, #-16]
    4e38:	e51b3010 	ldr	r3, [fp, #-16]
    4e3c:	e3530a01 	cmp	r3, #4096	@ 0x1000
    4e40:	2a000001 	bcs	4e4c <morecore+0x24>
    4e44:	e3a03a01 	mov	r3, #4096	@ 0x1000
    4e48:	e50b3010 	str	r3, [fp, #-16]
    4e4c:	e51b3010 	ldr	r3, [fp, #-16]
    4e50:	e1a03183 	lsl	r3, r3, #3
    4e54:	e1a00003 	mov	r0, r3
    4e58:	ebfffe61 	bl	47e4 <sbrk>
    4e5c:	e50b0008 	str	r0, [fp, #-8]
    4e60:	e51b3008 	ldr	r3, [fp, #-8]
    4e64:	e3730001 	cmn	r3, #1
    4e68:	1a000001 	bne	4e74 <morecore+0x4c>
    4e6c:	e3a03000 	mov	r3, #0
    4e70:	ea00000a 	b	4ea0 <morecore+0x78>
    4e74:	e51b3008 	ldr	r3, [fp, #-8]
    4e78:	e50b300c 	str	r3, [fp, #-12]
    4e7c:	e51b300c 	ldr	r3, [fp, #-12]
    4e80:	e51b2010 	ldr	r2, [fp, #-16]
    4e84:	e5832004 	str	r2, [r3, #4]
    4e88:	e51b300c 	ldr	r3, [fp, #-12]
    4e8c:	e2833008 	add	r3, r3, #8
    4e90:	e1a00003 	mov	r0, r3
    4e94:	ebffff84 	bl	4cac <free>
    4e98:	e59f300c 	ldr	r3, [pc, #12]	@ 4eac <morecore+0x84>
    4e9c:	e5933000 	ldr	r3, [r3]
    4ea0:	e1a00003 	mov	r0, r3
    4ea4:	e24bd004 	sub	sp, fp, #4
    4ea8:	e8bd8800 	pop	{fp, pc}
    4eac:	0000b134 	.word	0x0000b134

00004eb0 <malloc>:
    4eb0:	e92d4800 	push	{fp, lr}
    4eb4:	e28db004 	add	fp, sp, #4
    4eb8:	e24dd018 	sub	sp, sp, #24
    4ebc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    4ec0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    4ec4:	e2833007 	add	r3, r3, #7
    4ec8:	e1a031a3 	lsr	r3, r3, #3
    4ecc:	e2833001 	add	r3, r3, #1
    4ed0:	e50b3010 	str	r3, [fp, #-16]
    4ed4:	e59f3134 	ldr	r3, [pc, #308]	@ 5010 <malloc+0x160>
    4ed8:	e5933000 	ldr	r3, [r3]
    4edc:	e50b300c 	str	r3, [fp, #-12]
    4ee0:	e51b300c 	ldr	r3, [fp, #-12]
    4ee4:	e3530000 	cmp	r3, #0
    4ee8:	1a00000b 	bne	4f1c <malloc+0x6c>
    4eec:	e59f3120 	ldr	r3, [pc, #288]	@ 5014 <malloc+0x164>
    4ef0:	e50b300c 	str	r3, [fp, #-12]
    4ef4:	e59f2114 	ldr	r2, [pc, #276]	@ 5010 <malloc+0x160>
    4ef8:	e51b300c 	ldr	r3, [fp, #-12]
    4efc:	e5823000 	str	r3, [r2]
    4f00:	e59f3108 	ldr	r3, [pc, #264]	@ 5010 <malloc+0x160>
    4f04:	e5933000 	ldr	r3, [r3]
    4f08:	e59f2104 	ldr	r2, [pc, #260]	@ 5014 <malloc+0x164>
    4f0c:	e5823000 	str	r3, [r2]
    4f10:	e59f30fc 	ldr	r3, [pc, #252]	@ 5014 <malloc+0x164>
    4f14:	e3a02000 	mov	r2, #0
    4f18:	e5832004 	str	r2, [r3, #4]
    4f1c:	e51b300c 	ldr	r3, [fp, #-12]
    4f20:	e5933000 	ldr	r3, [r3]
    4f24:	e50b3008 	str	r3, [fp, #-8]
    4f28:	e51b3008 	ldr	r3, [fp, #-8]
    4f2c:	e5933004 	ldr	r3, [r3, #4]
    4f30:	e51b2010 	ldr	r2, [fp, #-16]
    4f34:	e1520003 	cmp	r2, r3
    4f38:	8a00001e 	bhi	4fb8 <malloc+0x108>
    4f3c:	e51b3008 	ldr	r3, [fp, #-8]
    4f40:	e5933004 	ldr	r3, [r3, #4]
    4f44:	e51b2010 	ldr	r2, [fp, #-16]
    4f48:	e1520003 	cmp	r2, r3
    4f4c:	1a000004 	bne	4f64 <malloc+0xb4>
    4f50:	e51b3008 	ldr	r3, [fp, #-8]
    4f54:	e5932000 	ldr	r2, [r3]
    4f58:	e51b300c 	ldr	r3, [fp, #-12]
    4f5c:	e5832000 	str	r2, [r3]
    4f60:	ea00000e 	b	4fa0 <malloc+0xf0>
    4f64:	e51b3008 	ldr	r3, [fp, #-8]
    4f68:	e5932004 	ldr	r2, [r3, #4]
    4f6c:	e51b3010 	ldr	r3, [fp, #-16]
    4f70:	e0422003 	sub	r2, r2, r3
    4f74:	e51b3008 	ldr	r3, [fp, #-8]
    4f78:	e5832004 	str	r2, [r3, #4]
    4f7c:	e51b3008 	ldr	r3, [fp, #-8]
    4f80:	e5933004 	ldr	r3, [r3, #4]
    4f84:	e1a03183 	lsl	r3, r3, #3
    4f88:	e51b2008 	ldr	r2, [fp, #-8]
    4f8c:	e0823003 	add	r3, r2, r3
    4f90:	e50b3008 	str	r3, [fp, #-8]
    4f94:	e51b3008 	ldr	r3, [fp, #-8]
    4f98:	e51b2010 	ldr	r2, [fp, #-16]
    4f9c:	e5832004 	str	r2, [r3, #4]
    4fa0:	e59f2068 	ldr	r2, [pc, #104]	@ 5010 <malloc+0x160>
    4fa4:	e51b300c 	ldr	r3, [fp, #-12]
    4fa8:	e5823000 	str	r3, [r2]
    4fac:	e51b3008 	ldr	r3, [fp, #-8]
    4fb0:	e2833008 	add	r3, r3, #8
    4fb4:	ea000012 	b	5004 <malloc+0x154>
    4fb8:	e59f3050 	ldr	r3, [pc, #80]	@ 5010 <malloc+0x160>
    4fbc:	e5933000 	ldr	r3, [r3]
    4fc0:	e51b2008 	ldr	r2, [fp, #-8]
    4fc4:	e1520003 	cmp	r2, r3
    4fc8:	1a000007 	bne	4fec <malloc+0x13c>
    4fcc:	e51b0010 	ldr	r0, [fp, #-16]
    4fd0:	ebffff94 	bl	4e28 <morecore>
    4fd4:	e50b0008 	str	r0, [fp, #-8]
    4fd8:	e51b3008 	ldr	r3, [fp, #-8]
    4fdc:	e3530000 	cmp	r3, #0
    4fe0:	1a000001 	bne	4fec <malloc+0x13c>
    4fe4:	e3a03000 	mov	r3, #0
    4fe8:	ea000005 	b	5004 <malloc+0x154>
    4fec:	e51b3008 	ldr	r3, [fp, #-8]
    4ff0:	e50b300c 	str	r3, [fp, #-12]
    4ff4:	e51b3008 	ldr	r3, [fp, #-8]
    4ff8:	e5933000 	ldr	r3, [r3]
    4ffc:	e50b3008 	str	r3, [fp, #-8]
    5000:	eaffffc8 	b	4f28 <malloc+0x78>
    5004:	e1a00003 	mov	r0, r3
    5008:	e24bd004 	sub	sp, fp, #4
    500c:	e8bd8800 	pop	{fp, pc}
    5010:	0000b134 	.word	0x0000b134
    5014:	0000b12c 	.word	0x0000b12c

00005018 <__udivsi3>:
    5018:	e2512001 	subs	r2, r1, #1
    501c:	012fff1e 	bxeq	lr
    5020:	3a000036 	bcc	5100 <__udivsi3+0xe8>
    5024:	e1500001 	cmp	r0, r1
    5028:	9a000022 	bls	50b8 <__udivsi3+0xa0>
    502c:	e1110002 	tst	r1, r2
    5030:	0a000023 	beq	50c4 <__udivsi3+0xac>
    5034:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    5038:	01a01181 	lsleq	r1, r1, #3
    503c:	03a03008 	moveq	r3, #8
    5040:	13a03001 	movne	r3, #1
    5044:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    5048:	31510000 	cmpcc	r1, r0
    504c:	31a01201 	lslcc	r1, r1, #4
    5050:	31a03203 	lslcc	r3, r3, #4
    5054:	3afffffa 	bcc	5044 <__udivsi3+0x2c>
    5058:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    505c:	31510000 	cmpcc	r1, r0
    5060:	31a01081 	lslcc	r1, r1, #1
    5064:	31a03083 	lslcc	r3, r3, #1
    5068:	3afffffa 	bcc	5058 <__udivsi3+0x40>
    506c:	e3a02000 	mov	r2, #0
    5070:	e1500001 	cmp	r0, r1
    5074:	20400001 	subcs	r0, r0, r1
    5078:	21822003 	orrcs	r2, r2, r3
    507c:	e15000a1 	cmp	r0, r1, lsr #1
    5080:	204000a1 	subcs	r0, r0, r1, lsr #1
    5084:	218220a3 	orrcs	r2, r2, r3, lsr #1
    5088:	e1500121 	cmp	r0, r1, lsr #2
    508c:	20400121 	subcs	r0, r0, r1, lsr #2
    5090:	21822123 	orrcs	r2, r2, r3, lsr #2
    5094:	e15001a1 	cmp	r0, r1, lsr #3
    5098:	204001a1 	subcs	r0, r0, r1, lsr #3
    509c:	218221a3 	orrcs	r2, r2, r3, lsr #3
    50a0:	e3500000 	cmp	r0, #0
    50a4:	11b03223 	lsrsne	r3, r3, #4
    50a8:	11a01221 	lsrne	r1, r1, #4
    50ac:	1affffef 	bne	5070 <__udivsi3+0x58>
    50b0:	e1a00002 	mov	r0, r2
    50b4:	e12fff1e 	bx	lr
    50b8:	03a00001 	moveq	r0, #1
    50bc:	13a00000 	movne	r0, #0
    50c0:	e12fff1e 	bx	lr
    50c4:	e3510801 	cmp	r1, #65536	@ 0x10000
    50c8:	21a01821 	lsrcs	r1, r1, #16
    50cc:	23a02010 	movcs	r2, #16
    50d0:	33a02000 	movcc	r2, #0
    50d4:	e3510c01 	cmp	r1, #256	@ 0x100
    50d8:	21a01421 	lsrcs	r1, r1, #8
    50dc:	22822008 	addcs	r2, r2, #8
    50e0:	e3510010 	cmp	r1, #16
    50e4:	21a01221 	lsrcs	r1, r1, #4
    50e8:	22822004 	addcs	r2, r2, #4
    50ec:	e3510004 	cmp	r1, #4
    50f0:	82822003 	addhi	r2, r2, #3
    50f4:	908220a1 	addls	r2, r2, r1, lsr #1
    50f8:	e1a00230 	lsr	r0, r0, r2
    50fc:	e12fff1e 	bx	lr
    5100:	e3500000 	cmp	r0, #0
    5104:	13e00000 	mvnne	r0, #0
    5108:	ea000007 	b	512c <__aeabi_idiv0>

0000510c <__aeabi_uidivmod>:
    510c:	e3510000 	cmp	r1, #0
    5110:	0afffffa 	beq	5100 <__udivsi3+0xe8>
    5114:	e92d4003 	push	{r0, r1, lr}
    5118:	ebffffbe 	bl	5018 <__udivsi3>
    511c:	e8bd4006 	pop	{r1, r2, lr}
    5120:	e0030092 	mul	r3, r2, r0
    5124:	e0411003 	sub	r1, r1, r3
    5128:	e12fff1e 	bx	lr

0000512c <__aeabi_idiv0>:
    512c:	e12fff1e 	bx	lr
