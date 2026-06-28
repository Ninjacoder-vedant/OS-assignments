
_grep:     file format elf32-littlearm


Disassembly of section .text:

00000000 <grep>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd018 	sub	sp, sp, #24
       c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
      10:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
      14:	e3a03000 	mov	r3, #0
      18:	e50b3008 	str	r3, [fp, #-8]
      1c:	ea000037 	b	100 <grep+0x100>
      20:	e51b2008 	ldr	r2, [fp, #-8]
      24:	e51b3010 	ldr	r3, [fp, #-16]
      28:	e0823003 	add	r3, r2, r3
      2c:	e50b3008 	str	r3, [fp, #-8]
      30:	e59f3108 	ldr	r3, [pc, #264]	@ 140 <grep+0x140>
      34:	e50b300c 	str	r3, [fp, #-12]
      38:	ea000016 	b	98 <grep+0x98>
      3c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      40:	e3a02000 	mov	r2, #0
      44:	e5c32000 	strb	r2, [r3]
      48:	e51b100c 	ldr	r1, [fp, #-12]
      4c:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
      50:	eb000079 	bl	23c <match>
      54:	e1a03000 	mov	r3, r0
      58:	e3530000 	cmp	r3, #0
      5c:	0a00000a 	beq	8c <grep+0x8c>
      60:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      64:	e3a0200a 	mov	r2, #10
      68:	e5c32000 	strb	r2, [r3]
      6c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      70:	e2832001 	add	r2, r3, #1
      74:	e51b300c 	ldr	r3, [fp, #-12]
      78:	e0423003 	sub	r3, r2, r3
      7c:	e1a02003 	mov	r2, r3
      80:	e51b100c 	ldr	r1, [fp, #-12]
      84:	e3a00001 	mov	r0, #1
      88:	eb000256 	bl	9e8 <write>
      8c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      90:	e2833001 	add	r3, r3, #1
      94:	e50b300c 	str	r3, [fp, #-12]
      98:	e3a0100a 	mov	r1, #10
      9c:	e51b000c 	ldr	r0, [fp, #-12]
      a0:	eb000184 	bl	6b8 <strchr>
      a4:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
      a8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      ac:	e3530000 	cmp	r3, #0
      b0:	1affffe1 	bne	3c <grep+0x3c>
      b4:	e51b300c 	ldr	r3, [fp, #-12]
      b8:	e59f2080 	ldr	r2, [pc, #128]	@ 140 <grep+0x140>
      bc:	e1530002 	cmp	r3, r2
      c0:	1a000001 	bne	cc <grep+0xcc>
      c4:	e3a03000 	mov	r3, #0
      c8:	e50b3008 	str	r3, [fp, #-8]
      cc:	e51b3008 	ldr	r3, [fp, #-8]
      d0:	e3530000 	cmp	r3, #0
      d4:	da000009 	ble	100 <grep+0x100>
      d8:	e51b300c 	ldr	r3, [fp, #-12]
      dc:	e59f205c 	ldr	r2, [pc, #92]	@ 140 <grep+0x140>
      e0:	e0433002 	sub	r3, r3, r2
      e4:	e51b2008 	ldr	r2, [fp, #-8]
      e8:	e0423003 	sub	r3, r2, r3
      ec:	e50b3008 	str	r3, [fp, #-8]
      f0:	e51b2008 	ldr	r2, [fp, #-8]
      f4:	e51b100c 	ldr	r1, [fp, #-12]
      f8:	e59f0040 	ldr	r0, [pc, #64]	@ 140 <grep+0x140>
      fc:	eb0001ef 	bl	8c0 <memmove>
     100:	e51b3008 	ldr	r3, [fp, #-8]
     104:	e59f2034 	ldr	r2, [pc, #52]	@ 140 <grep+0x140>
     108:	e0831002 	add	r1, r3, r2
     10c:	e51b3008 	ldr	r3, [fp, #-8]
     110:	e2633b01 	rsb	r3, r3, #1024	@ 0x400
     114:	e1a02003 	mov	r2, r3
     118:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
     11c:	eb000228 	bl	9c4 <read>
     120:	e50b0010 	str	r0, [fp, #-16]
     124:	e51b3010 	ldr	r3, [fp, #-16]
     128:	e3530000 	cmp	r3, #0
     12c:	caffffbb 	bgt	20 <grep+0x20>
     130:	e1a00000 	nop			@ (mov r0, r0)
     134:	e1a00000 	nop			@ (mov r0, r0)
     138:	e24bd004 	sub	sp, fp, #4
     13c:	e8bd8800 	pop	{fp, pc}
     140:	0000155c 	.word	0x0000155c

00000144 <main>:
     144:	e92d4800 	push	{fp, lr}
     148:	e28db004 	add	fp, sp, #4
     14c:	e24dd018 	sub	sp, sp, #24
     150:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     154:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     158:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     15c:	e3530001 	cmp	r3, #1
     160:	ca000003 	bgt	174 <main+0x30>
     164:	e59f10c8 	ldr	r1, [pc, #200]	@ 234 <main+0xf0>
     168:	e3a00002 	mov	r0, #2
     16c:	eb000336 	bl	e4c <printf>
     170:	eb0001f8 	bl	958 <exit>
     174:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     178:	e5933004 	ldr	r3, [r3, #4]
     17c:	e50b300c 	str	r3, [fp, #-12]
     180:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     184:	e3530002 	cmp	r3, #2
     188:	ca000003 	bgt	19c <main+0x58>
     18c:	e3a01000 	mov	r1, #0
     190:	e51b000c 	ldr	r0, [fp, #-12]
     194:	ebffff99 	bl	0 <grep>
     198:	eb0001ee 	bl	958 <exit>
     19c:	e3a03002 	mov	r3, #2
     1a0:	e50b3008 	str	r3, [fp, #-8]
     1a4:	ea00001d 	b	220 <main+0xdc>
     1a8:	e51b3008 	ldr	r3, [fp, #-8]
     1ac:	e1a03103 	lsl	r3, r3, #2
     1b0:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     1b4:	e0823003 	add	r3, r2, r3
     1b8:	e5933000 	ldr	r3, [r3]
     1bc:	e3a01000 	mov	r1, #0
     1c0:	e1a00003 	mov	r0, r3
     1c4:	eb00022b 	bl	a78 <open>
     1c8:	e50b0010 	str	r0, [fp, #-16]
     1cc:	e51b3010 	ldr	r3, [fp, #-16]
     1d0:	e3530000 	cmp	r3, #0
     1d4:	aa000009 	bge	200 <main+0xbc>
     1d8:	e51b3008 	ldr	r3, [fp, #-8]
     1dc:	e1a03103 	lsl	r3, r3, #2
     1e0:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     1e4:	e0823003 	add	r3, r2, r3
     1e8:	e5933000 	ldr	r3, [r3]
     1ec:	e1a02003 	mov	r2, r3
     1f0:	e59f1040 	ldr	r1, [pc, #64]	@ 238 <main+0xf4>
     1f4:	e3a00001 	mov	r0, #1
     1f8:	eb000313 	bl	e4c <printf>
     1fc:	eb0001d5 	bl	958 <exit>
     200:	e51b1010 	ldr	r1, [fp, #-16]
     204:	e51b000c 	ldr	r0, [fp, #-12]
     208:	ebffff7c 	bl	0 <grep>
     20c:	e51b0010 	ldr	r0, [fp, #-16]
     210:	eb0001fd 	bl	a0c <close>
     214:	e51b3008 	ldr	r3, [fp, #-8]
     218:	e2833001 	add	r3, r3, #1
     21c:	e50b3008 	str	r3, [fp, #-8]
     220:	e51b2008 	ldr	r2, [fp, #-8]
     224:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     228:	e1520003 	cmp	r2, r3
     22c:	baffffdd 	blt	1a8 <main+0x64>
     230:	eb0001c8 	bl	958 <exit>
     234:	00001508 	.word	0x00001508
     238:	00001528 	.word	0x00001528

0000023c <match>:
     23c:	e92d4800 	push	{fp, lr}
     240:	e28db004 	add	fp, sp, #4
     244:	e24dd008 	sub	sp, sp, #8
     248:	e50b0008 	str	r0, [fp, #-8]
     24c:	e50b100c 	str	r1, [fp, #-12]
     250:	e51b3008 	ldr	r3, [fp, #-8]
     254:	e5d33000 	ldrb	r3, [r3]
     258:	e353005e 	cmp	r3, #94	@ 0x5e
     25c:	1a000006 	bne	27c <match+0x40>
     260:	e51b3008 	ldr	r3, [fp, #-8]
     264:	e2833001 	add	r3, r3, #1
     268:	e51b100c 	ldr	r1, [fp, #-12]
     26c:	e1a00003 	mov	r0, r3
     270:	eb000013 	bl	2c4 <matchhere>
     274:	e1a03000 	mov	r3, r0
     278:	ea00000e 	b	2b8 <match+0x7c>
     27c:	e51b100c 	ldr	r1, [fp, #-12]
     280:	e51b0008 	ldr	r0, [fp, #-8]
     284:	eb00000e 	bl	2c4 <matchhere>
     288:	e1a03000 	mov	r3, r0
     28c:	e3530000 	cmp	r3, #0
     290:	0a000001 	beq	29c <match+0x60>
     294:	e3a03001 	mov	r3, #1
     298:	ea000006 	b	2b8 <match+0x7c>
     29c:	e51b300c 	ldr	r3, [fp, #-12]
     2a0:	e2832001 	add	r2, r3, #1
     2a4:	e50b200c 	str	r2, [fp, #-12]
     2a8:	e5d33000 	ldrb	r3, [r3]
     2ac:	e3530000 	cmp	r3, #0
     2b0:	1afffff1 	bne	27c <match+0x40>
     2b4:	e3a03000 	mov	r3, #0
     2b8:	e1a00003 	mov	r0, r3
     2bc:	e24bd004 	sub	sp, fp, #4
     2c0:	e8bd8800 	pop	{fp, pc}

000002c4 <matchhere>:
     2c4:	e92d4800 	push	{fp, lr}
     2c8:	e28db004 	add	fp, sp, #4
     2cc:	e24dd008 	sub	sp, sp, #8
     2d0:	e50b0008 	str	r0, [fp, #-8]
     2d4:	e50b100c 	str	r1, [fp, #-12]
     2d8:	e51b3008 	ldr	r3, [fp, #-8]
     2dc:	e5d33000 	ldrb	r3, [r3]
     2e0:	e3530000 	cmp	r3, #0
     2e4:	1a000001 	bne	2f0 <matchhere+0x2c>
     2e8:	e3a03001 	mov	r3, #1
     2ec:	ea000036 	b	3cc <matchhere+0x108>
     2f0:	e51b3008 	ldr	r3, [fp, #-8]
     2f4:	e2833001 	add	r3, r3, #1
     2f8:	e5d33000 	ldrb	r3, [r3]
     2fc:	e353002a 	cmp	r3, #42	@ 0x2a
     300:	1a000009 	bne	32c <matchhere+0x68>
     304:	e51b3008 	ldr	r3, [fp, #-8]
     308:	e5d33000 	ldrb	r3, [r3]
     30c:	e1a00003 	mov	r0, r3
     310:	e51b3008 	ldr	r3, [fp, #-8]
     314:	e2833002 	add	r3, r3, #2
     318:	e51b200c 	ldr	r2, [fp, #-12]
     31c:	e1a01003 	mov	r1, r3
     320:	eb00002c 	bl	3d8 <matchstar>
     324:	e1a03000 	mov	r3, r0
     328:	ea000027 	b	3cc <matchhere+0x108>
     32c:	e51b3008 	ldr	r3, [fp, #-8]
     330:	e5d33000 	ldrb	r3, [r3]
     334:	e3530024 	cmp	r3, #36	@ 0x24
     338:	1a00000b 	bne	36c <matchhere+0xa8>
     33c:	e51b3008 	ldr	r3, [fp, #-8]
     340:	e2833001 	add	r3, r3, #1
     344:	e5d33000 	ldrb	r3, [r3]
     348:	e3530000 	cmp	r3, #0
     34c:	1a000006 	bne	36c <matchhere+0xa8>
     350:	e51b300c 	ldr	r3, [fp, #-12]
     354:	e5d33000 	ldrb	r3, [r3]
     358:	e3530000 	cmp	r3, #0
     35c:	03a03001 	moveq	r3, #1
     360:	13a03000 	movne	r3, #0
     364:	e6ef3073 	uxtb	r3, r3
     368:	ea000017 	b	3cc <matchhere+0x108>
     36c:	e51b300c 	ldr	r3, [fp, #-12]
     370:	e5d33000 	ldrb	r3, [r3]
     374:	e3530000 	cmp	r3, #0
     378:	0a000012 	beq	3c8 <matchhere+0x104>
     37c:	e51b3008 	ldr	r3, [fp, #-8]
     380:	e5d33000 	ldrb	r3, [r3]
     384:	e353002e 	cmp	r3, #46	@ 0x2e
     388:	0a000005 	beq	3a4 <matchhere+0xe0>
     38c:	e51b3008 	ldr	r3, [fp, #-8]
     390:	e5d32000 	ldrb	r2, [r3]
     394:	e51b300c 	ldr	r3, [fp, #-12]
     398:	e5d33000 	ldrb	r3, [r3]
     39c:	e1520003 	cmp	r2, r3
     3a0:	1a000008 	bne	3c8 <matchhere+0x104>
     3a4:	e51b3008 	ldr	r3, [fp, #-8]
     3a8:	e2832001 	add	r2, r3, #1
     3ac:	e51b300c 	ldr	r3, [fp, #-12]
     3b0:	e2833001 	add	r3, r3, #1
     3b4:	e1a01003 	mov	r1, r3
     3b8:	e1a00002 	mov	r0, r2
     3bc:	ebffffc0 	bl	2c4 <matchhere>
     3c0:	e1a03000 	mov	r3, r0
     3c4:	ea000000 	b	3cc <matchhere+0x108>
     3c8:	e3a03000 	mov	r3, #0
     3cc:	e1a00003 	mov	r0, r3
     3d0:	e24bd004 	sub	sp, fp, #4
     3d4:	e8bd8800 	pop	{fp, pc}

000003d8 <matchstar>:
     3d8:	e92d4800 	push	{fp, lr}
     3dc:	e28db004 	add	fp, sp, #4
     3e0:	e24dd010 	sub	sp, sp, #16
     3e4:	e50b0008 	str	r0, [fp, #-8]
     3e8:	e50b100c 	str	r1, [fp, #-12]
     3ec:	e50b2010 	str	r2, [fp, #-16]
     3f0:	e51b1010 	ldr	r1, [fp, #-16]
     3f4:	e51b000c 	ldr	r0, [fp, #-12]
     3f8:	ebffffb1 	bl	2c4 <matchhere>
     3fc:	e1a03000 	mov	r3, r0
     400:	e3530000 	cmp	r3, #0
     404:	0a000001 	beq	410 <matchstar+0x38>
     408:	e3a03001 	mov	r3, #1
     40c:	ea00000f 	b	450 <matchstar+0x78>
     410:	e51b3010 	ldr	r3, [fp, #-16]
     414:	e5d33000 	ldrb	r3, [r3]
     418:	e3530000 	cmp	r3, #0
     41c:	0a00000a 	beq	44c <matchstar+0x74>
     420:	e51b3010 	ldr	r3, [fp, #-16]
     424:	e2832001 	add	r2, r3, #1
     428:	e50b2010 	str	r2, [fp, #-16]
     42c:	e5d33000 	ldrb	r3, [r3]
     430:	e1a02003 	mov	r2, r3
     434:	e51b3008 	ldr	r3, [fp, #-8]
     438:	e1530002 	cmp	r3, r2
     43c:	0affffeb 	beq	3f0 <matchstar+0x18>
     440:	e51b3008 	ldr	r3, [fp, #-8]
     444:	e353002e 	cmp	r3, #46	@ 0x2e
     448:	0affffe8 	beq	3f0 <matchstar+0x18>
     44c:	e3a03000 	mov	r3, #0
     450:	e1a00003 	mov	r0, r3
     454:	e24bd004 	sub	sp, fp, #4
     458:	e8bd8800 	pop	{fp, pc}

0000045c <strcpy>:
     45c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     460:	e28db000 	add	fp, sp, #0
     464:	e24dd014 	sub	sp, sp, #20
     468:	e50b0010 	str	r0, [fp, #-16]
     46c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     470:	e51b3010 	ldr	r3, [fp, #-16]
     474:	e50b3008 	str	r3, [fp, #-8]
     478:	e1a00000 	nop			@ (mov r0, r0)
     47c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     480:	e2823001 	add	r3, r2, #1
     484:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     488:	e51b3010 	ldr	r3, [fp, #-16]
     48c:	e2831001 	add	r1, r3, #1
     490:	e50b1010 	str	r1, [fp, #-16]
     494:	e5d22000 	ldrb	r2, [r2]
     498:	e5c32000 	strb	r2, [r3]
     49c:	e5d33000 	ldrb	r3, [r3]
     4a0:	e3530000 	cmp	r3, #0
     4a4:	1afffff4 	bne	47c <strcpy+0x20>
     4a8:	e51b3008 	ldr	r3, [fp, #-8]
     4ac:	e1a00003 	mov	r0, r3
     4b0:	e28bd000 	add	sp, fp, #0
     4b4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4b8:	e12fff1e 	bx	lr

000004bc <strcmp>:
     4bc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4c0:	e28db000 	add	fp, sp, #0
     4c4:	e24dd00c 	sub	sp, sp, #12
     4c8:	e50b0008 	str	r0, [fp, #-8]
     4cc:	e50b100c 	str	r1, [fp, #-12]
     4d0:	ea000005 	b	4ec <strcmp+0x30>
     4d4:	e51b3008 	ldr	r3, [fp, #-8]
     4d8:	e2833001 	add	r3, r3, #1
     4dc:	e50b3008 	str	r3, [fp, #-8]
     4e0:	e51b300c 	ldr	r3, [fp, #-12]
     4e4:	e2833001 	add	r3, r3, #1
     4e8:	e50b300c 	str	r3, [fp, #-12]
     4ec:	e51b3008 	ldr	r3, [fp, #-8]
     4f0:	e5d33000 	ldrb	r3, [r3]
     4f4:	e3530000 	cmp	r3, #0
     4f8:	0a000005 	beq	514 <strcmp+0x58>
     4fc:	e51b3008 	ldr	r3, [fp, #-8]
     500:	e5d32000 	ldrb	r2, [r3]
     504:	e51b300c 	ldr	r3, [fp, #-12]
     508:	e5d33000 	ldrb	r3, [r3]
     50c:	e1520003 	cmp	r2, r3
     510:	0affffef 	beq	4d4 <strcmp+0x18>
     514:	e51b3008 	ldr	r3, [fp, #-8]
     518:	e5d33000 	ldrb	r3, [r3]
     51c:	e1a02003 	mov	r2, r3
     520:	e51b300c 	ldr	r3, [fp, #-12]
     524:	e5d33000 	ldrb	r3, [r3]
     528:	e0423003 	sub	r3, r2, r3
     52c:	e1a00003 	mov	r0, r3
     530:	e28bd000 	add	sp, fp, #0
     534:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     538:	e12fff1e 	bx	lr

0000053c <strlen>:
     53c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     540:	e28db000 	add	fp, sp, #0
     544:	e24dd014 	sub	sp, sp, #20
     548:	e50b0010 	str	r0, [fp, #-16]
     54c:	e3a03000 	mov	r3, #0
     550:	e50b3008 	str	r3, [fp, #-8]
     554:	ea000002 	b	564 <strlen+0x28>
     558:	e51b3008 	ldr	r3, [fp, #-8]
     55c:	e2833001 	add	r3, r3, #1
     560:	e50b3008 	str	r3, [fp, #-8]
     564:	e51b3008 	ldr	r3, [fp, #-8]
     568:	e51b2010 	ldr	r2, [fp, #-16]
     56c:	e0823003 	add	r3, r2, r3
     570:	e5d33000 	ldrb	r3, [r3]
     574:	e3530000 	cmp	r3, #0
     578:	1afffff6 	bne	558 <strlen+0x1c>
     57c:	e51b3008 	ldr	r3, [fp, #-8]
     580:	e1a00003 	mov	r0, r3
     584:	e28bd000 	add	sp, fp, #0
     588:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     58c:	e12fff1e 	bx	lr

00000590 <memset>:
     590:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     594:	e28db000 	add	fp, sp, #0
     598:	e24dd024 	sub	sp, sp, #36	@ 0x24
     59c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     5a0:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     5a4:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     5a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     5ac:	e50b3008 	str	r3, [fp, #-8]
     5b0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     5b4:	e54b300d 	strb	r3, [fp, #-13]
     5b8:	e55b200d 	ldrb	r2, [fp, #-13]
     5bc:	e1a03002 	mov	r3, r2
     5c0:	e1a03403 	lsl	r3, r3, #8
     5c4:	e0833002 	add	r3, r3, r2
     5c8:	e1a03803 	lsl	r3, r3, #16
     5cc:	e1a02003 	mov	r2, r3
     5d0:	e55b300d 	ldrb	r3, [fp, #-13]
     5d4:	e1a03403 	lsl	r3, r3, #8
     5d8:	e1822003 	orr	r2, r2, r3
     5dc:	e55b300d 	ldrb	r3, [fp, #-13]
     5e0:	e1823003 	orr	r3, r2, r3
     5e4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     5e8:	ea000008 	b	610 <memset+0x80>
     5ec:	e51b3008 	ldr	r3, [fp, #-8]
     5f0:	e55b200d 	ldrb	r2, [fp, #-13]
     5f4:	e5c32000 	strb	r2, [r3]
     5f8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     5fc:	e2433001 	sub	r3, r3, #1
     600:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     604:	e51b3008 	ldr	r3, [fp, #-8]
     608:	e2833001 	add	r3, r3, #1
     60c:	e50b3008 	str	r3, [fp, #-8]
     610:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     614:	e3530000 	cmp	r3, #0
     618:	0a000003 	beq	62c <memset+0x9c>
     61c:	e51b3008 	ldr	r3, [fp, #-8]
     620:	e2033003 	and	r3, r3, #3
     624:	e3530000 	cmp	r3, #0
     628:	1affffef 	bne	5ec <memset+0x5c>
     62c:	e51b3008 	ldr	r3, [fp, #-8]
     630:	e50b300c 	str	r3, [fp, #-12]
     634:	ea000008 	b	65c <memset+0xcc>
     638:	e51b300c 	ldr	r3, [fp, #-12]
     63c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     640:	e5832000 	str	r2, [r3]
     644:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     648:	e2433004 	sub	r3, r3, #4
     64c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     650:	e51b300c 	ldr	r3, [fp, #-12]
     654:	e2833004 	add	r3, r3, #4
     658:	e50b300c 	str	r3, [fp, #-12]
     65c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     660:	e3530003 	cmp	r3, #3
     664:	8afffff3 	bhi	638 <memset+0xa8>
     668:	e51b300c 	ldr	r3, [fp, #-12]
     66c:	e50b3008 	str	r3, [fp, #-8]
     670:	ea000008 	b	698 <memset+0x108>
     674:	e51b3008 	ldr	r3, [fp, #-8]
     678:	e55b200d 	ldrb	r2, [fp, #-13]
     67c:	e5c32000 	strb	r2, [r3]
     680:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     684:	e2433001 	sub	r3, r3, #1
     688:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     68c:	e51b3008 	ldr	r3, [fp, #-8]
     690:	e2833001 	add	r3, r3, #1
     694:	e50b3008 	str	r3, [fp, #-8]
     698:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     69c:	e3530000 	cmp	r3, #0
     6a0:	1afffff3 	bne	674 <memset+0xe4>
     6a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6a8:	e1a00003 	mov	r0, r3
     6ac:	e28bd000 	add	sp, fp, #0
     6b0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6b4:	e12fff1e 	bx	lr

000006b8 <strchr>:
     6b8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6bc:	e28db000 	add	fp, sp, #0
     6c0:	e24dd00c 	sub	sp, sp, #12
     6c4:	e50b0008 	str	r0, [fp, #-8]
     6c8:	e1a03001 	mov	r3, r1
     6cc:	e54b3009 	strb	r3, [fp, #-9]
     6d0:	ea000009 	b	6fc <strchr+0x44>
     6d4:	e51b3008 	ldr	r3, [fp, #-8]
     6d8:	e5d33000 	ldrb	r3, [r3]
     6dc:	e55b2009 	ldrb	r2, [fp, #-9]
     6e0:	e1520003 	cmp	r2, r3
     6e4:	1a000001 	bne	6f0 <strchr+0x38>
     6e8:	e51b3008 	ldr	r3, [fp, #-8]
     6ec:	ea000007 	b	710 <strchr+0x58>
     6f0:	e51b3008 	ldr	r3, [fp, #-8]
     6f4:	e2833001 	add	r3, r3, #1
     6f8:	e50b3008 	str	r3, [fp, #-8]
     6fc:	e51b3008 	ldr	r3, [fp, #-8]
     700:	e5d33000 	ldrb	r3, [r3]
     704:	e3530000 	cmp	r3, #0
     708:	1afffff1 	bne	6d4 <strchr+0x1c>
     70c:	e3a03000 	mov	r3, #0
     710:	e1a00003 	mov	r0, r3
     714:	e28bd000 	add	sp, fp, #0
     718:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     71c:	e12fff1e 	bx	lr

00000720 <gets>:
     720:	e92d4800 	push	{fp, lr}
     724:	e28db004 	add	fp, sp, #4
     728:	e24dd018 	sub	sp, sp, #24
     72c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     730:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     734:	e3a03000 	mov	r3, #0
     738:	e50b3008 	str	r3, [fp, #-8]
     73c:	ea000016 	b	79c <gets+0x7c>
     740:	e24b300d 	sub	r3, fp, #13
     744:	e3a02001 	mov	r2, #1
     748:	e1a01003 	mov	r1, r3
     74c:	e3a00000 	mov	r0, #0
     750:	eb00009b 	bl	9c4 <read>
     754:	e50b000c 	str	r0, [fp, #-12]
     758:	e51b300c 	ldr	r3, [fp, #-12]
     75c:	e3530000 	cmp	r3, #0
     760:	da000013 	ble	7b4 <gets+0x94>
     764:	e51b3008 	ldr	r3, [fp, #-8]
     768:	e2832001 	add	r2, r3, #1
     76c:	e50b2008 	str	r2, [fp, #-8]
     770:	e1a02003 	mov	r2, r3
     774:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     778:	e0833002 	add	r3, r3, r2
     77c:	e55b200d 	ldrb	r2, [fp, #-13]
     780:	e5c32000 	strb	r2, [r3]
     784:	e55b300d 	ldrb	r3, [fp, #-13]
     788:	e353000a 	cmp	r3, #10
     78c:	0a000009 	beq	7b8 <gets+0x98>
     790:	e55b300d 	ldrb	r3, [fp, #-13]
     794:	e353000d 	cmp	r3, #13
     798:	0a000006 	beq	7b8 <gets+0x98>
     79c:	e51b3008 	ldr	r3, [fp, #-8]
     7a0:	e2833001 	add	r3, r3, #1
     7a4:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     7a8:	e1520003 	cmp	r2, r3
     7ac:	caffffe3 	bgt	740 <gets+0x20>
     7b0:	ea000000 	b	7b8 <gets+0x98>
     7b4:	e1a00000 	nop			@ (mov r0, r0)
     7b8:	e51b3008 	ldr	r3, [fp, #-8]
     7bc:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     7c0:	e0823003 	add	r3, r2, r3
     7c4:	e3a02000 	mov	r2, #0
     7c8:	e5c32000 	strb	r2, [r3]
     7cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     7d0:	e1a00003 	mov	r0, r3
     7d4:	e24bd004 	sub	sp, fp, #4
     7d8:	e8bd8800 	pop	{fp, pc}

000007dc <stat>:
     7dc:	e92d4800 	push	{fp, lr}
     7e0:	e28db004 	add	fp, sp, #4
     7e4:	e24dd010 	sub	sp, sp, #16
     7e8:	e50b0010 	str	r0, [fp, #-16]
     7ec:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     7f0:	e3a01000 	mov	r1, #0
     7f4:	e51b0010 	ldr	r0, [fp, #-16]
     7f8:	eb00009e 	bl	a78 <open>
     7fc:	e50b0008 	str	r0, [fp, #-8]
     800:	e51b3008 	ldr	r3, [fp, #-8]
     804:	e3530000 	cmp	r3, #0
     808:	aa000001 	bge	814 <stat+0x38>
     80c:	e3e03000 	mvn	r3, #0
     810:	ea000006 	b	830 <stat+0x54>
     814:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     818:	e51b0008 	ldr	r0, [fp, #-8]
     81c:	eb0000b0 	bl	ae4 <fstat>
     820:	e50b000c 	str	r0, [fp, #-12]
     824:	e51b0008 	ldr	r0, [fp, #-8]
     828:	eb000077 	bl	a0c <close>
     82c:	e51b300c 	ldr	r3, [fp, #-12]
     830:	e1a00003 	mov	r0, r3
     834:	e24bd004 	sub	sp, fp, #4
     838:	e8bd8800 	pop	{fp, pc}

0000083c <atoi>:
     83c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     840:	e28db000 	add	fp, sp, #0
     844:	e24dd014 	sub	sp, sp, #20
     848:	e50b0010 	str	r0, [fp, #-16]
     84c:	e3a03000 	mov	r3, #0
     850:	e50b3008 	str	r3, [fp, #-8]
     854:	ea00000c 	b	88c <atoi+0x50>
     858:	e51b2008 	ldr	r2, [fp, #-8]
     85c:	e1a03002 	mov	r3, r2
     860:	e1a03103 	lsl	r3, r3, #2
     864:	e0833002 	add	r3, r3, r2
     868:	e1a03083 	lsl	r3, r3, #1
     86c:	e1a01003 	mov	r1, r3
     870:	e51b3010 	ldr	r3, [fp, #-16]
     874:	e2832001 	add	r2, r3, #1
     878:	e50b2010 	str	r2, [fp, #-16]
     87c:	e5d33000 	ldrb	r3, [r3]
     880:	e0813003 	add	r3, r1, r3
     884:	e2433030 	sub	r3, r3, #48	@ 0x30
     888:	e50b3008 	str	r3, [fp, #-8]
     88c:	e51b3010 	ldr	r3, [fp, #-16]
     890:	e5d33000 	ldrb	r3, [r3]
     894:	e353002f 	cmp	r3, #47	@ 0x2f
     898:	9a000003 	bls	8ac <atoi+0x70>
     89c:	e51b3010 	ldr	r3, [fp, #-16]
     8a0:	e5d33000 	ldrb	r3, [r3]
     8a4:	e3530039 	cmp	r3, #57	@ 0x39
     8a8:	9affffea 	bls	858 <atoi+0x1c>
     8ac:	e51b3008 	ldr	r3, [fp, #-8]
     8b0:	e1a00003 	mov	r0, r3
     8b4:	e28bd000 	add	sp, fp, #0
     8b8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     8bc:	e12fff1e 	bx	lr

000008c0 <memmove>:
     8c0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     8c4:	e28db000 	add	fp, sp, #0
     8c8:	e24dd01c 	sub	sp, sp, #28
     8cc:	e50b0010 	str	r0, [fp, #-16]
     8d0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     8d4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     8d8:	e51b3010 	ldr	r3, [fp, #-16]
     8dc:	e50b3008 	str	r3, [fp, #-8]
     8e0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     8e4:	e50b300c 	str	r3, [fp, #-12]
     8e8:	ea000007 	b	90c <memmove+0x4c>
     8ec:	e51b200c 	ldr	r2, [fp, #-12]
     8f0:	e2823001 	add	r3, r2, #1
     8f4:	e50b300c 	str	r3, [fp, #-12]
     8f8:	e51b3008 	ldr	r3, [fp, #-8]
     8fc:	e2831001 	add	r1, r3, #1
     900:	e50b1008 	str	r1, [fp, #-8]
     904:	e5d22000 	ldrb	r2, [r2]
     908:	e5c32000 	strb	r2, [r3]
     90c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     910:	e2432001 	sub	r2, r3, #1
     914:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     918:	e3530000 	cmp	r3, #0
     91c:	cafffff2 	bgt	8ec <memmove+0x2c>
     920:	e51b3010 	ldr	r3, [fp, #-16]
     924:	e1a00003 	mov	r0, r3
     928:	e28bd000 	add	sp, fp, #0
     92c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     930:	e12fff1e 	bx	lr

00000934 <fork>:
     934:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     938:	e1a04003 	mov	r4, r3
     93c:	e1a03002 	mov	r3, r2
     940:	e1a02001 	mov	r2, r1
     944:	e1a01000 	mov	r1, r0
     948:	e3a00001 	mov	r0, #1
     94c:	ef000000 	svc	0x00000000
     950:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     954:	e12fff1e 	bx	lr

00000958 <exit>:
     958:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     95c:	e1a04003 	mov	r4, r3
     960:	e1a03002 	mov	r3, r2
     964:	e1a02001 	mov	r2, r1
     968:	e1a01000 	mov	r1, r0
     96c:	e3a00002 	mov	r0, #2
     970:	ef000000 	svc	0x00000000
     974:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     978:	e12fff1e 	bx	lr

0000097c <wait>:
     97c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     980:	e1a04003 	mov	r4, r3
     984:	e1a03002 	mov	r3, r2
     988:	e1a02001 	mov	r2, r1
     98c:	e1a01000 	mov	r1, r0
     990:	e3a00003 	mov	r0, #3
     994:	ef000000 	svc	0x00000000
     998:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     99c:	e12fff1e 	bx	lr

000009a0 <pipe>:
     9a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9a4:	e1a04003 	mov	r4, r3
     9a8:	e1a03002 	mov	r3, r2
     9ac:	e1a02001 	mov	r2, r1
     9b0:	e1a01000 	mov	r1, r0
     9b4:	e3a00004 	mov	r0, #4
     9b8:	ef000000 	svc	0x00000000
     9bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9c0:	e12fff1e 	bx	lr

000009c4 <read>:
     9c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9c8:	e1a04003 	mov	r4, r3
     9cc:	e1a03002 	mov	r3, r2
     9d0:	e1a02001 	mov	r2, r1
     9d4:	e1a01000 	mov	r1, r0
     9d8:	e3a00005 	mov	r0, #5
     9dc:	ef000000 	svc	0x00000000
     9e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9e4:	e12fff1e 	bx	lr

000009e8 <write>:
     9e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9ec:	e1a04003 	mov	r4, r3
     9f0:	e1a03002 	mov	r3, r2
     9f4:	e1a02001 	mov	r2, r1
     9f8:	e1a01000 	mov	r1, r0
     9fc:	e3a00010 	mov	r0, #16
     a00:	ef000000 	svc	0x00000000
     a04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a08:	e12fff1e 	bx	lr

00000a0c <close>:
     a0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a10:	e1a04003 	mov	r4, r3
     a14:	e1a03002 	mov	r3, r2
     a18:	e1a02001 	mov	r2, r1
     a1c:	e1a01000 	mov	r1, r0
     a20:	e3a00015 	mov	r0, #21
     a24:	ef000000 	svc	0x00000000
     a28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a2c:	e12fff1e 	bx	lr

00000a30 <kill>:
     a30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a34:	e1a04003 	mov	r4, r3
     a38:	e1a03002 	mov	r3, r2
     a3c:	e1a02001 	mov	r2, r1
     a40:	e1a01000 	mov	r1, r0
     a44:	e3a00006 	mov	r0, #6
     a48:	ef000000 	svc	0x00000000
     a4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a50:	e12fff1e 	bx	lr

00000a54 <exec>:
     a54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a58:	e1a04003 	mov	r4, r3
     a5c:	e1a03002 	mov	r3, r2
     a60:	e1a02001 	mov	r2, r1
     a64:	e1a01000 	mov	r1, r0
     a68:	e3a00007 	mov	r0, #7
     a6c:	ef000000 	svc	0x00000000
     a70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a74:	e12fff1e 	bx	lr

00000a78 <open>:
     a78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a7c:	e1a04003 	mov	r4, r3
     a80:	e1a03002 	mov	r3, r2
     a84:	e1a02001 	mov	r2, r1
     a88:	e1a01000 	mov	r1, r0
     a8c:	e3a0000f 	mov	r0, #15
     a90:	ef000000 	svc	0x00000000
     a94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a98:	e12fff1e 	bx	lr

00000a9c <mknod>:
     a9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aa0:	e1a04003 	mov	r4, r3
     aa4:	e1a03002 	mov	r3, r2
     aa8:	e1a02001 	mov	r2, r1
     aac:	e1a01000 	mov	r1, r0
     ab0:	e3a00011 	mov	r0, #17
     ab4:	ef000000 	svc	0x00000000
     ab8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     abc:	e12fff1e 	bx	lr

00000ac0 <unlink>:
     ac0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ac4:	e1a04003 	mov	r4, r3
     ac8:	e1a03002 	mov	r3, r2
     acc:	e1a02001 	mov	r2, r1
     ad0:	e1a01000 	mov	r1, r0
     ad4:	e3a00012 	mov	r0, #18
     ad8:	ef000000 	svc	0x00000000
     adc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ae0:	e12fff1e 	bx	lr

00000ae4 <fstat>:
     ae4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ae8:	e1a04003 	mov	r4, r3
     aec:	e1a03002 	mov	r3, r2
     af0:	e1a02001 	mov	r2, r1
     af4:	e1a01000 	mov	r1, r0
     af8:	e3a00008 	mov	r0, #8
     afc:	ef000000 	svc	0x00000000
     b00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b04:	e12fff1e 	bx	lr

00000b08 <link>:
     b08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b0c:	e1a04003 	mov	r4, r3
     b10:	e1a03002 	mov	r3, r2
     b14:	e1a02001 	mov	r2, r1
     b18:	e1a01000 	mov	r1, r0
     b1c:	e3a00013 	mov	r0, #19
     b20:	ef000000 	svc	0x00000000
     b24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b28:	e12fff1e 	bx	lr

00000b2c <mkdir>:
     b2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b30:	e1a04003 	mov	r4, r3
     b34:	e1a03002 	mov	r3, r2
     b38:	e1a02001 	mov	r2, r1
     b3c:	e1a01000 	mov	r1, r0
     b40:	e3a00014 	mov	r0, #20
     b44:	ef000000 	svc	0x00000000
     b48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b4c:	e12fff1e 	bx	lr

00000b50 <chdir>:
     b50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b54:	e1a04003 	mov	r4, r3
     b58:	e1a03002 	mov	r3, r2
     b5c:	e1a02001 	mov	r2, r1
     b60:	e1a01000 	mov	r1, r0
     b64:	e3a00009 	mov	r0, #9
     b68:	ef000000 	svc	0x00000000
     b6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b70:	e12fff1e 	bx	lr

00000b74 <dup>:
     b74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b78:	e1a04003 	mov	r4, r3
     b7c:	e1a03002 	mov	r3, r2
     b80:	e1a02001 	mov	r2, r1
     b84:	e1a01000 	mov	r1, r0
     b88:	e3a0000a 	mov	r0, #10
     b8c:	ef000000 	svc	0x00000000
     b90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b94:	e12fff1e 	bx	lr

00000b98 <getpid>:
     b98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b9c:	e1a04003 	mov	r4, r3
     ba0:	e1a03002 	mov	r3, r2
     ba4:	e1a02001 	mov	r2, r1
     ba8:	e1a01000 	mov	r1, r0
     bac:	e3a0000b 	mov	r0, #11
     bb0:	ef000000 	svc	0x00000000
     bb4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bb8:	e12fff1e 	bx	lr

00000bbc <sbrk>:
     bbc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bc0:	e1a04003 	mov	r4, r3
     bc4:	e1a03002 	mov	r3, r2
     bc8:	e1a02001 	mov	r2, r1
     bcc:	e1a01000 	mov	r1, r0
     bd0:	e3a0000c 	mov	r0, #12
     bd4:	ef000000 	svc	0x00000000
     bd8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bdc:	e12fff1e 	bx	lr

00000be0 <sleep>:
     be0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     be4:	e1a04003 	mov	r4, r3
     be8:	e1a03002 	mov	r3, r2
     bec:	e1a02001 	mov	r2, r1
     bf0:	e1a01000 	mov	r1, r0
     bf4:	e3a0000d 	mov	r0, #13
     bf8:	ef000000 	svc	0x00000000
     bfc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c00:	e12fff1e 	bx	lr

00000c04 <uptime>:
     c04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c08:	e1a04003 	mov	r4, r3
     c0c:	e1a03002 	mov	r3, r2
     c10:	e1a02001 	mov	r2, r1
     c14:	e1a01000 	mov	r1, r0
     c18:	e3a0000e 	mov	r0, #14
     c1c:	ef000000 	svc	0x00000000
     c20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c24:	e12fff1e 	bx	lr

00000c28 <getprocs>:
     c28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c2c:	e1a04003 	mov	r4, r3
     c30:	e1a03002 	mov	r3, r2
     c34:	e1a02001 	mov	r2, r1
     c38:	e1a01000 	mov	r1, r0
     c3c:	e3a00016 	mov	r0, #22
     c40:	ef000000 	svc	0x00000000
     c44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c48:	e12fff1e 	bx	lr

00000c4c <getpinfo>:
     c4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c50:	e1a04003 	mov	r4, r3
     c54:	e1a03002 	mov	r3, r2
     c58:	e1a02001 	mov	r2, r1
     c5c:	e1a01000 	mov	r1, r0
     c60:	e3a00018 	mov	r0, #24
     c64:	ef000000 	svc	0x00000000
     c68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c6c:	e12fff1e 	bx	lr

00000c70 <settickets>:
     c70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c74:	e1a04003 	mov	r4, r3
     c78:	e1a03002 	mov	r3, r2
     c7c:	e1a02001 	mov	r2, r1
     c80:	e1a01000 	mov	r1, r0
     c84:	e3a00017 	mov	r0, #23
     c88:	ef000000 	svc	0x00000000
     c8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c90:	e12fff1e 	bx	lr

00000c94 <srand>:
     c94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c98:	e1a04003 	mov	r4, r3
     c9c:	e1a03002 	mov	r3, r2
     ca0:	e1a02001 	mov	r2, r1
     ca4:	e1a01000 	mov	r1, r0
     ca8:	e3a00019 	mov	r0, #25
     cac:	ef000000 	svc	0x00000000
     cb0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cb4:	e12fff1e 	bx	lr

00000cb8 <test>:
     cb8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cbc:	e1a04003 	mov	r4, r3
     cc0:	e1a03002 	mov	r3, r2
     cc4:	e1a02001 	mov	r2, r1
     cc8:	e1a01000 	mov	r1, r0
     ccc:	e3a0001a 	mov	r0, #26
     cd0:	ef000000 	svc	0x00000000
     cd4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cd8:	e12fff1e 	bx	lr

00000cdc <putc>:
     cdc:	e92d4800 	push	{fp, lr}
     ce0:	e28db004 	add	fp, sp, #4
     ce4:	e24dd008 	sub	sp, sp, #8
     ce8:	e50b0008 	str	r0, [fp, #-8]
     cec:	e1a03001 	mov	r3, r1
     cf0:	e54b3009 	strb	r3, [fp, #-9]
     cf4:	e24b3009 	sub	r3, fp, #9
     cf8:	e3a02001 	mov	r2, #1
     cfc:	e1a01003 	mov	r1, r3
     d00:	e51b0008 	ldr	r0, [fp, #-8]
     d04:	ebffff37 	bl	9e8 <write>
     d08:	e1a00000 	nop			@ (mov r0, r0)
     d0c:	e24bd004 	sub	sp, fp, #4
     d10:	e8bd8800 	pop	{fp, pc}

00000d14 <printint>:
     d14:	e92d4800 	push	{fp, lr}
     d18:	e28db004 	add	fp, sp, #4
     d1c:	e24dd030 	sub	sp, sp, #48	@ 0x30
     d20:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     d24:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     d28:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     d2c:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     d30:	e3a03000 	mov	r3, #0
     d34:	e50b300c 	str	r3, [fp, #-12]
     d38:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     d3c:	e3530000 	cmp	r3, #0
     d40:	0a000008 	beq	d68 <printint+0x54>
     d44:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     d48:	e3530000 	cmp	r3, #0
     d4c:	aa000005 	bge	d68 <printint+0x54>
     d50:	e3a03001 	mov	r3, #1
     d54:	e50b300c 	str	r3, [fp, #-12]
     d58:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     d5c:	e2633000 	rsb	r3, r3, #0
     d60:	e50b3010 	str	r3, [fp, #-16]
     d64:	ea000001 	b	d70 <printint+0x5c>
     d68:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     d6c:	e50b3010 	str	r3, [fp, #-16]
     d70:	e3a03000 	mov	r3, #0
     d74:	e50b3008 	str	r3, [fp, #-8]
     d78:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     d7c:	e51b3010 	ldr	r3, [fp, #-16]
     d80:	e1a01002 	mov	r1, r2
     d84:	e1a00003 	mov	r0, r3
     d88:	eb0001d5 	bl	14e4 <__aeabi_uidivmod>
     d8c:	e1a03001 	mov	r3, r1
     d90:	e1a01003 	mov	r1, r3
     d94:	e51b3008 	ldr	r3, [fp, #-8]
     d98:	e2832001 	add	r2, r3, #1
     d9c:	e50b2008 	str	r2, [fp, #-8]
     da0:	e59f20a0 	ldr	r2, [pc, #160]	@ e48 <printint+0x134>
     da4:	e7d22001 	ldrb	r2, [r2, r1]
     da8:	e2433004 	sub	r3, r3, #4
     dac:	e083300b 	add	r3, r3, fp
     db0:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     db4:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     db8:	e1a01003 	mov	r1, r3
     dbc:	e51b0010 	ldr	r0, [fp, #-16]
     dc0:	eb00018a 	bl	13f0 <__udivsi3>
     dc4:	e1a03000 	mov	r3, r0
     dc8:	e50b3010 	str	r3, [fp, #-16]
     dcc:	e51b3010 	ldr	r3, [fp, #-16]
     dd0:	e3530000 	cmp	r3, #0
     dd4:	1affffe7 	bne	d78 <printint+0x64>
     dd8:	e51b300c 	ldr	r3, [fp, #-12]
     ddc:	e3530000 	cmp	r3, #0
     de0:	0a00000e 	beq	e20 <printint+0x10c>
     de4:	e51b3008 	ldr	r3, [fp, #-8]
     de8:	e2832001 	add	r2, r3, #1
     dec:	e50b2008 	str	r2, [fp, #-8]
     df0:	e2433004 	sub	r3, r3, #4
     df4:	e083300b 	add	r3, r3, fp
     df8:	e3a0202d 	mov	r2, #45	@ 0x2d
     dfc:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     e00:	ea000006 	b	e20 <printint+0x10c>
     e04:	e24b2020 	sub	r2, fp, #32
     e08:	e51b3008 	ldr	r3, [fp, #-8]
     e0c:	e0823003 	add	r3, r2, r3
     e10:	e5d33000 	ldrb	r3, [r3]
     e14:	e1a01003 	mov	r1, r3
     e18:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     e1c:	ebffffae 	bl	cdc <putc>
     e20:	e51b3008 	ldr	r3, [fp, #-8]
     e24:	e2433001 	sub	r3, r3, #1
     e28:	e50b3008 	str	r3, [fp, #-8]
     e2c:	e51b3008 	ldr	r3, [fp, #-8]
     e30:	e3530000 	cmp	r3, #0
     e34:	aafffff2 	bge	e04 <printint+0xf0>
     e38:	e1a00000 	nop			@ (mov r0, r0)
     e3c:	e1a00000 	nop			@ (mov r0, r0)
     e40:	e24bd004 	sub	sp, fp, #4
     e44:	e8bd8800 	pop	{fp, pc}
     e48:	00001548 	.word	0x00001548

00000e4c <printf>:
     e4c:	e92d000e 	push	{r1, r2, r3}
     e50:	e92d4800 	push	{fp, lr}
     e54:	e28db004 	add	fp, sp, #4
     e58:	e24dd024 	sub	sp, sp, #36	@ 0x24
     e5c:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     e60:	e3a03000 	mov	r3, #0
     e64:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     e68:	e28b3008 	add	r3, fp, #8
     e6c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e70:	e3a03000 	mov	r3, #0
     e74:	e50b3010 	str	r3, [fp, #-16]
     e78:	ea000074 	b	1050 <printf+0x204>
     e7c:	e59b2004 	ldr	r2, [fp, #4]
     e80:	e51b3010 	ldr	r3, [fp, #-16]
     e84:	e0823003 	add	r3, r2, r3
     e88:	e5d33000 	ldrb	r3, [r3]
     e8c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     e90:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     e94:	e3530000 	cmp	r3, #0
     e98:	1a00000b 	bne	ecc <printf+0x80>
     e9c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ea0:	e3530025 	cmp	r3, #37	@ 0x25
     ea4:	1a000002 	bne	eb4 <printf+0x68>
     ea8:	e3a03025 	mov	r3, #37	@ 0x25
     eac:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     eb0:	ea000063 	b	1044 <printf+0x1f8>
     eb4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     eb8:	e6ef3073 	uxtb	r3, r3
     ebc:	e1a01003 	mov	r1, r3
     ec0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ec4:	ebffff84 	bl	cdc <putc>
     ec8:	ea00005d 	b	1044 <printf+0x1f8>
     ecc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     ed0:	e3530025 	cmp	r3, #37	@ 0x25
     ed4:	1a00005a 	bne	1044 <printf+0x1f8>
     ed8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     edc:	e3530064 	cmp	r3, #100	@ 0x64
     ee0:	1a00000a 	bne	f10 <printf+0xc4>
     ee4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ee8:	e5933000 	ldr	r3, [r3]
     eec:	e1a01003 	mov	r1, r3
     ef0:	e3a03001 	mov	r3, #1
     ef4:	e3a0200a 	mov	r2, #10
     ef8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     efc:	ebffff84 	bl	d14 <printint>
     f00:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f04:	e2833004 	add	r3, r3, #4
     f08:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f0c:	ea00004a 	b	103c <printf+0x1f0>
     f10:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f14:	e3530078 	cmp	r3, #120	@ 0x78
     f18:	0a000002 	beq	f28 <printf+0xdc>
     f1c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f20:	e3530070 	cmp	r3, #112	@ 0x70
     f24:	1a00000a 	bne	f54 <printf+0x108>
     f28:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f2c:	e5933000 	ldr	r3, [r3]
     f30:	e1a01003 	mov	r1, r3
     f34:	e3a03000 	mov	r3, #0
     f38:	e3a02010 	mov	r2, #16
     f3c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f40:	ebffff73 	bl	d14 <printint>
     f44:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f48:	e2833004 	add	r3, r3, #4
     f4c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f50:	ea000039 	b	103c <printf+0x1f0>
     f54:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f58:	e3530073 	cmp	r3, #115	@ 0x73
     f5c:	1a000018 	bne	fc4 <printf+0x178>
     f60:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f64:	e5933000 	ldr	r3, [r3]
     f68:	e50b300c 	str	r3, [fp, #-12]
     f6c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f70:	e2833004 	add	r3, r3, #4
     f74:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f78:	e51b300c 	ldr	r3, [fp, #-12]
     f7c:	e3530000 	cmp	r3, #0
     f80:	1a00000a 	bne	fb0 <printf+0x164>
     f84:	e59f30f4 	ldr	r3, [pc, #244]	@ 1080 <printf+0x234>
     f88:	e50b300c 	str	r3, [fp, #-12]
     f8c:	ea000007 	b	fb0 <printf+0x164>
     f90:	e51b300c 	ldr	r3, [fp, #-12]
     f94:	e5d33000 	ldrb	r3, [r3]
     f98:	e1a01003 	mov	r1, r3
     f9c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     fa0:	ebffff4d 	bl	cdc <putc>
     fa4:	e51b300c 	ldr	r3, [fp, #-12]
     fa8:	e2833001 	add	r3, r3, #1
     fac:	e50b300c 	str	r3, [fp, #-12]
     fb0:	e51b300c 	ldr	r3, [fp, #-12]
     fb4:	e5d33000 	ldrb	r3, [r3]
     fb8:	e3530000 	cmp	r3, #0
     fbc:	1afffff3 	bne	f90 <printf+0x144>
     fc0:	ea00001d 	b	103c <printf+0x1f0>
     fc4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fc8:	e3530063 	cmp	r3, #99	@ 0x63
     fcc:	1a000009 	bne	ff8 <printf+0x1ac>
     fd0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fd4:	e5933000 	ldr	r3, [r3]
     fd8:	e6ef3073 	uxtb	r3, r3
     fdc:	e1a01003 	mov	r1, r3
     fe0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     fe4:	ebffff3c 	bl	cdc <putc>
     fe8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fec:	e2833004 	add	r3, r3, #4
     ff0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ff4:	ea000010 	b	103c <printf+0x1f0>
     ff8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ffc:	e3530025 	cmp	r3, #37	@ 0x25
    1000:	1a000005 	bne	101c <printf+0x1d0>
    1004:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1008:	e6ef3073 	uxtb	r3, r3
    100c:	e1a01003 	mov	r1, r3
    1010:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1014:	ebffff30 	bl	cdc <putc>
    1018:	ea000007 	b	103c <printf+0x1f0>
    101c:	e3a01025 	mov	r1, #37	@ 0x25
    1020:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1024:	ebffff2c 	bl	cdc <putc>
    1028:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    102c:	e6ef3073 	uxtb	r3, r3
    1030:	e1a01003 	mov	r1, r3
    1034:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1038:	ebffff27 	bl	cdc <putc>
    103c:	e3a03000 	mov	r3, #0
    1040:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1044:	e51b3010 	ldr	r3, [fp, #-16]
    1048:	e2833001 	add	r3, r3, #1
    104c:	e50b3010 	str	r3, [fp, #-16]
    1050:	e59b2004 	ldr	r2, [fp, #4]
    1054:	e51b3010 	ldr	r3, [fp, #-16]
    1058:	e0823003 	add	r3, r2, r3
    105c:	e5d33000 	ldrb	r3, [r3]
    1060:	e3530000 	cmp	r3, #0
    1064:	1affff84 	bne	e7c <printf+0x30>
    1068:	e1a00000 	nop			@ (mov r0, r0)
    106c:	e1a00000 	nop			@ (mov r0, r0)
    1070:	e24bd004 	sub	sp, fp, #4
    1074:	e8bd4800 	pop	{fp, lr}
    1078:	e28dd00c 	add	sp, sp, #12
    107c:	e12fff1e 	bx	lr
    1080:	00001540 	.word	0x00001540

00001084 <free>:
    1084:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1088:	e28db000 	add	fp, sp, #0
    108c:	e24dd014 	sub	sp, sp, #20
    1090:	e50b0010 	str	r0, [fp, #-16]
    1094:	e51b3010 	ldr	r3, [fp, #-16]
    1098:	e2433008 	sub	r3, r3, #8
    109c:	e50b300c 	str	r3, [fp, #-12]
    10a0:	e59f3154 	ldr	r3, [pc, #340]	@ 11fc <free+0x178>
    10a4:	e5933000 	ldr	r3, [r3]
    10a8:	e50b3008 	str	r3, [fp, #-8]
    10ac:	ea000010 	b	10f4 <free+0x70>
    10b0:	e51b3008 	ldr	r3, [fp, #-8]
    10b4:	e5933000 	ldr	r3, [r3]
    10b8:	e51b2008 	ldr	r2, [fp, #-8]
    10bc:	e1520003 	cmp	r2, r3
    10c0:	3a000008 	bcc	10e8 <free+0x64>
    10c4:	e51b200c 	ldr	r2, [fp, #-12]
    10c8:	e51b3008 	ldr	r3, [fp, #-8]
    10cc:	e1520003 	cmp	r2, r3
    10d0:	8a000010 	bhi	1118 <free+0x94>
    10d4:	e51b3008 	ldr	r3, [fp, #-8]
    10d8:	e5933000 	ldr	r3, [r3]
    10dc:	e51b200c 	ldr	r2, [fp, #-12]
    10e0:	e1520003 	cmp	r2, r3
    10e4:	3a00000b 	bcc	1118 <free+0x94>
    10e8:	e51b3008 	ldr	r3, [fp, #-8]
    10ec:	e5933000 	ldr	r3, [r3]
    10f0:	e50b3008 	str	r3, [fp, #-8]
    10f4:	e51b200c 	ldr	r2, [fp, #-12]
    10f8:	e51b3008 	ldr	r3, [fp, #-8]
    10fc:	e1520003 	cmp	r2, r3
    1100:	9affffea 	bls	10b0 <free+0x2c>
    1104:	e51b3008 	ldr	r3, [fp, #-8]
    1108:	e5933000 	ldr	r3, [r3]
    110c:	e51b200c 	ldr	r2, [fp, #-12]
    1110:	e1520003 	cmp	r2, r3
    1114:	2affffe5 	bcs	10b0 <free+0x2c>
    1118:	e51b300c 	ldr	r3, [fp, #-12]
    111c:	e5933004 	ldr	r3, [r3, #4]
    1120:	e1a03183 	lsl	r3, r3, #3
    1124:	e51b200c 	ldr	r2, [fp, #-12]
    1128:	e0822003 	add	r2, r2, r3
    112c:	e51b3008 	ldr	r3, [fp, #-8]
    1130:	e5933000 	ldr	r3, [r3]
    1134:	e1520003 	cmp	r2, r3
    1138:	1a00000d 	bne	1174 <free+0xf0>
    113c:	e51b300c 	ldr	r3, [fp, #-12]
    1140:	e5932004 	ldr	r2, [r3, #4]
    1144:	e51b3008 	ldr	r3, [fp, #-8]
    1148:	e5933000 	ldr	r3, [r3]
    114c:	e5933004 	ldr	r3, [r3, #4]
    1150:	e0822003 	add	r2, r2, r3
    1154:	e51b300c 	ldr	r3, [fp, #-12]
    1158:	e5832004 	str	r2, [r3, #4]
    115c:	e51b3008 	ldr	r3, [fp, #-8]
    1160:	e5933000 	ldr	r3, [r3]
    1164:	e5932000 	ldr	r2, [r3]
    1168:	e51b300c 	ldr	r3, [fp, #-12]
    116c:	e5832000 	str	r2, [r3]
    1170:	ea000003 	b	1184 <free+0x100>
    1174:	e51b3008 	ldr	r3, [fp, #-8]
    1178:	e5932000 	ldr	r2, [r3]
    117c:	e51b300c 	ldr	r3, [fp, #-12]
    1180:	e5832000 	str	r2, [r3]
    1184:	e51b3008 	ldr	r3, [fp, #-8]
    1188:	e5933004 	ldr	r3, [r3, #4]
    118c:	e1a03183 	lsl	r3, r3, #3
    1190:	e51b2008 	ldr	r2, [fp, #-8]
    1194:	e0823003 	add	r3, r2, r3
    1198:	e51b200c 	ldr	r2, [fp, #-12]
    119c:	e1520003 	cmp	r2, r3
    11a0:	1a00000b 	bne	11d4 <free+0x150>
    11a4:	e51b3008 	ldr	r3, [fp, #-8]
    11a8:	e5932004 	ldr	r2, [r3, #4]
    11ac:	e51b300c 	ldr	r3, [fp, #-12]
    11b0:	e5933004 	ldr	r3, [r3, #4]
    11b4:	e0822003 	add	r2, r2, r3
    11b8:	e51b3008 	ldr	r3, [fp, #-8]
    11bc:	e5832004 	str	r2, [r3, #4]
    11c0:	e51b300c 	ldr	r3, [fp, #-12]
    11c4:	e5932000 	ldr	r2, [r3]
    11c8:	e51b3008 	ldr	r3, [fp, #-8]
    11cc:	e5832000 	str	r2, [r3]
    11d0:	ea000002 	b	11e0 <free+0x15c>
    11d4:	e51b3008 	ldr	r3, [fp, #-8]
    11d8:	e51b200c 	ldr	r2, [fp, #-12]
    11dc:	e5832000 	str	r2, [r3]
    11e0:	e59f2014 	ldr	r2, [pc, #20]	@ 11fc <free+0x178>
    11e4:	e51b3008 	ldr	r3, [fp, #-8]
    11e8:	e5823000 	str	r3, [r2]
    11ec:	e1a00000 	nop			@ (mov r0, r0)
    11f0:	e28bd000 	add	sp, fp, #0
    11f4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    11f8:	e12fff1e 	bx	lr
    11fc:	00001964 	.word	0x00001964

00001200 <morecore>:
    1200:	e92d4800 	push	{fp, lr}
    1204:	e28db004 	add	fp, sp, #4
    1208:	e24dd010 	sub	sp, sp, #16
    120c:	e50b0010 	str	r0, [fp, #-16]
    1210:	e51b3010 	ldr	r3, [fp, #-16]
    1214:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1218:	2a000001 	bcs	1224 <morecore+0x24>
    121c:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1220:	e50b3010 	str	r3, [fp, #-16]
    1224:	e51b3010 	ldr	r3, [fp, #-16]
    1228:	e1a03183 	lsl	r3, r3, #3
    122c:	e1a00003 	mov	r0, r3
    1230:	ebfffe61 	bl	bbc <sbrk>
    1234:	e50b0008 	str	r0, [fp, #-8]
    1238:	e51b3008 	ldr	r3, [fp, #-8]
    123c:	e3730001 	cmn	r3, #1
    1240:	1a000001 	bne	124c <morecore+0x4c>
    1244:	e3a03000 	mov	r3, #0
    1248:	ea00000a 	b	1278 <morecore+0x78>
    124c:	e51b3008 	ldr	r3, [fp, #-8]
    1250:	e50b300c 	str	r3, [fp, #-12]
    1254:	e51b300c 	ldr	r3, [fp, #-12]
    1258:	e51b2010 	ldr	r2, [fp, #-16]
    125c:	e5832004 	str	r2, [r3, #4]
    1260:	e51b300c 	ldr	r3, [fp, #-12]
    1264:	e2833008 	add	r3, r3, #8
    1268:	e1a00003 	mov	r0, r3
    126c:	ebffff84 	bl	1084 <free>
    1270:	e59f300c 	ldr	r3, [pc, #12]	@ 1284 <morecore+0x84>
    1274:	e5933000 	ldr	r3, [r3]
    1278:	e1a00003 	mov	r0, r3
    127c:	e24bd004 	sub	sp, fp, #4
    1280:	e8bd8800 	pop	{fp, pc}
    1284:	00001964 	.word	0x00001964

00001288 <malloc>:
    1288:	e92d4800 	push	{fp, lr}
    128c:	e28db004 	add	fp, sp, #4
    1290:	e24dd018 	sub	sp, sp, #24
    1294:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1298:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    129c:	e2833007 	add	r3, r3, #7
    12a0:	e1a031a3 	lsr	r3, r3, #3
    12a4:	e2833001 	add	r3, r3, #1
    12a8:	e50b3010 	str	r3, [fp, #-16]
    12ac:	e59f3134 	ldr	r3, [pc, #308]	@ 13e8 <malloc+0x160>
    12b0:	e5933000 	ldr	r3, [r3]
    12b4:	e50b300c 	str	r3, [fp, #-12]
    12b8:	e51b300c 	ldr	r3, [fp, #-12]
    12bc:	e3530000 	cmp	r3, #0
    12c0:	1a00000b 	bne	12f4 <malloc+0x6c>
    12c4:	e59f3120 	ldr	r3, [pc, #288]	@ 13ec <malloc+0x164>
    12c8:	e50b300c 	str	r3, [fp, #-12]
    12cc:	e59f2114 	ldr	r2, [pc, #276]	@ 13e8 <malloc+0x160>
    12d0:	e51b300c 	ldr	r3, [fp, #-12]
    12d4:	e5823000 	str	r3, [r2]
    12d8:	e59f3108 	ldr	r3, [pc, #264]	@ 13e8 <malloc+0x160>
    12dc:	e5933000 	ldr	r3, [r3]
    12e0:	e59f2104 	ldr	r2, [pc, #260]	@ 13ec <malloc+0x164>
    12e4:	e5823000 	str	r3, [r2]
    12e8:	e59f30fc 	ldr	r3, [pc, #252]	@ 13ec <malloc+0x164>
    12ec:	e3a02000 	mov	r2, #0
    12f0:	e5832004 	str	r2, [r3, #4]
    12f4:	e51b300c 	ldr	r3, [fp, #-12]
    12f8:	e5933000 	ldr	r3, [r3]
    12fc:	e50b3008 	str	r3, [fp, #-8]
    1300:	e51b3008 	ldr	r3, [fp, #-8]
    1304:	e5933004 	ldr	r3, [r3, #4]
    1308:	e51b2010 	ldr	r2, [fp, #-16]
    130c:	e1520003 	cmp	r2, r3
    1310:	8a00001e 	bhi	1390 <malloc+0x108>
    1314:	e51b3008 	ldr	r3, [fp, #-8]
    1318:	e5933004 	ldr	r3, [r3, #4]
    131c:	e51b2010 	ldr	r2, [fp, #-16]
    1320:	e1520003 	cmp	r2, r3
    1324:	1a000004 	bne	133c <malloc+0xb4>
    1328:	e51b3008 	ldr	r3, [fp, #-8]
    132c:	e5932000 	ldr	r2, [r3]
    1330:	e51b300c 	ldr	r3, [fp, #-12]
    1334:	e5832000 	str	r2, [r3]
    1338:	ea00000e 	b	1378 <malloc+0xf0>
    133c:	e51b3008 	ldr	r3, [fp, #-8]
    1340:	e5932004 	ldr	r2, [r3, #4]
    1344:	e51b3010 	ldr	r3, [fp, #-16]
    1348:	e0422003 	sub	r2, r2, r3
    134c:	e51b3008 	ldr	r3, [fp, #-8]
    1350:	e5832004 	str	r2, [r3, #4]
    1354:	e51b3008 	ldr	r3, [fp, #-8]
    1358:	e5933004 	ldr	r3, [r3, #4]
    135c:	e1a03183 	lsl	r3, r3, #3
    1360:	e51b2008 	ldr	r2, [fp, #-8]
    1364:	e0823003 	add	r3, r2, r3
    1368:	e50b3008 	str	r3, [fp, #-8]
    136c:	e51b3008 	ldr	r3, [fp, #-8]
    1370:	e51b2010 	ldr	r2, [fp, #-16]
    1374:	e5832004 	str	r2, [r3, #4]
    1378:	e59f2068 	ldr	r2, [pc, #104]	@ 13e8 <malloc+0x160>
    137c:	e51b300c 	ldr	r3, [fp, #-12]
    1380:	e5823000 	str	r3, [r2]
    1384:	e51b3008 	ldr	r3, [fp, #-8]
    1388:	e2833008 	add	r3, r3, #8
    138c:	ea000012 	b	13dc <malloc+0x154>
    1390:	e59f3050 	ldr	r3, [pc, #80]	@ 13e8 <malloc+0x160>
    1394:	e5933000 	ldr	r3, [r3]
    1398:	e51b2008 	ldr	r2, [fp, #-8]
    139c:	e1520003 	cmp	r2, r3
    13a0:	1a000007 	bne	13c4 <malloc+0x13c>
    13a4:	e51b0010 	ldr	r0, [fp, #-16]
    13a8:	ebffff94 	bl	1200 <morecore>
    13ac:	e50b0008 	str	r0, [fp, #-8]
    13b0:	e51b3008 	ldr	r3, [fp, #-8]
    13b4:	e3530000 	cmp	r3, #0
    13b8:	1a000001 	bne	13c4 <malloc+0x13c>
    13bc:	e3a03000 	mov	r3, #0
    13c0:	ea000005 	b	13dc <malloc+0x154>
    13c4:	e51b3008 	ldr	r3, [fp, #-8]
    13c8:	e50b300c 	str	r3, [fp, #-12]
    13cc:	e51b3008 	ldr	r3, [fp, #-8]
    13d0:	e5933000 	ldr	r3, [r3]
    13d4:	e50b3008 	str	r3, [fp, #-8]
    13d8:	eaffffc8 	b	1300 <malloc+0x78>
    13dc:	e1a00003 	mov	r0, r3
    13e0:	e24bd004 	sub	sp, fp, #4
    13e4:	e8bd8800 	pop	{fp, pc}
    13e8:	00001964 	.word	0x00001964
    13ec:	0000195c 	.word	0x0000195c

000013f0 <__udivsi3>:
    13f0:	e2512001 	subs	r2, r1, #1
    13f4:	012fff1e 	bxeq	lr
    13f8:	3a000036 	bcc	14d8 <__udivsi3+0xe8>
    13fc:	e1500001 	cmp	r0, r1
    1400:	9a000022 	bls	1490 <__udivsi3+0xa0>
    1404:	e1110002 	tst	r1, r2
    1408:	0a000023 	beq	149c <__udivsi3+0xac>
    140c:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1410:	01a01181 	lsleq	r1, r1, #3
    1414:	03a03008 	moveq	r3, #8
    1418:	13a03001 	movne	r3, #1
    141c:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1420:	31510000 	cmpcc	r1, r0
    1424:	31a01201 	lslcc	r1, r1, #4
    1428:	31a03203 	lslcc	r3, r3, #4
    142c:	3afffffa 	bcc	141c <__udivsi3+0x2c>
    1430:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1434:	31510000 	cmpcc	r1, r0
    1438:	31a01081 	lslcc	r1, r1, #1
    143c:	31a03083 	lslcc	r3, r3, #1
    1440:	3afffffa 	bcc	1430 <__udivsi3+0x40>
    1444:	e3a02000 	mov	r2, #0
    1448:	e1500001 	cmp	r0, r1
    144c:	20400001 	subcs	r0, r0, r1
    1450:	21822003 	orrcs	r2, r2, r3
    1454:	e15000a1 	cmp	r0, r1, lsr #1
    1458:	204000a1 	subcs	r0, r0, r1, lsr #1
    145c:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1460:	e1500121 	cmp	r0, r1, lsr #2
    1464:	20400121 	subcs	r0, r0, r1, lsr #2
    1468:	21822123 	orrcs	r2, r2, r3, lsr #2
    146c:	e15001a1 	cmp	r0, r1, lsr #3
    1470:	204001a1 	subcs	r0, r0, r1, lsr #3
    1474:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1478:	e3500000 	cmp	r0, #0
    147c:	11b03223 	lsrsne	r3, r3, #4
    1480:	11a01221 	lsrne	r1, r1, #4
    1484:	1affffef 	bne	1448 <__udivsi3+0x58>
    1488:	e1a00002 	mov	r0, r2
    148c:	e12fff1e 	bx	lr
    1490:	03a00001 	moveq	r0, #1
    1494:	13a00000 	movne	r0, #0
    1498:	e12fff1e 	bx	lr
    149c:	e3510801 	cmp	r1, #65536	@ 0x10000
    14a0:	21a01821 	lsrcs	r1, r1, #16
    14a4:	23a02010 	movcs	r2, #16
    14a8:	33a02000 	movcc	r2, #0
    14ac:	e3510c01 	cmp	r1, #256	@ 0x100
    14b0:	21a01421 	lsrcs	r1, r1, #8
    14b4:	22822008 	addcs	r2, r2, #8
    14b8:	e3510010 	cmp	r1, #16
    14bc:	21a01221 	lsrcs	r1, r1, #4
    14c0:	22822004 	addcs	r2, r2, #4
    14c4:	e3510004 	cmp	r1, #4
    14c8:	82822003 	addhi	r2, r2, #3
    14cc:	908220a1 	addls	r2, r2, r1, lsr #1
    14d0:	e1a00230 	lsr	r0, r0, r2
    14d4:	e12fff1e 	bx	lr
    14d8:	e3500000 	cmp	r0, #0
    14dc:	13e00000 	mvnne	r0, #0
    14e0:	ea000007 	b	1504 <__aeabi_idiv0>

000014e4 <__aeabi_uidivmod>:
    14e4:	e3510000 	cmp	r1, #0
    14e8:	0afffffa 	beq	14d8 <__udivsi3+0xe8>
    14ec:	e92d4003 	push	{r0, r1, lr}
    14f0:	ebffffbe 	bl	13f0 <__udivsi3>
    14f4:	e8bd4006 	pop	{r1, r2, lr}
    14f8:	e0030092 	mul	r3, r2, r0
    14fc:	e0411003 	sub	r1, r1, r3
    1500:	e12fff1e 	bx	lr

00001504 <__aeabi_idiv0>:
    1504:	e12fff1e 	bx	lr
