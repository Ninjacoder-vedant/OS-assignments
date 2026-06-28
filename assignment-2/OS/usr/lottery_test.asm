
_lottery_test:     file format elf32-littlearm


Disassembly of section .text:

00000000 <spin_forever>:
       0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
       4:	e28db000 	add	fp, sp, #0
       8:	e24dd00c 	sub	sp, sp, #12
       c:	e3a03000 	mov	r3, #0
      10:	e50b3008 	str	r3, [fp, #-8]
      14:	e51b3008 	ldr	r3, [fp, #-8]
      18:	e2833001 	add	r3, r3, #1
      1c:	e50b3008 	str	r3, [fp, #-8]
      20:	eafffffb 	b	14 <spin_forever+0x14>

00000024 <runticks_for>:
      24:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      28:	e28db000 	add	fp, sp, #0
      2c:	e24dd014 	sub	sp, sp, #20
      30:	e50b0010 	str	r0, [fp, #-16]
      34:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      38:	e3a03000 	mov	r3, #0
      3c:	e50b3008 	str	r3, [fp, #-8]
      40:	ea000013 	b	94 <runticks_for+0x70>
      44:	e51b3010 	ldr	r3, [fp, #-16]
      48:	e51b2008 	ldr	r2, [fp, #-8]
      4c:	e7933102 	ldr	r3, [r3, r2, lsl #2]
      50:	e3530000 	cmp	r3, #0
      54:	0a00000b 	beq	88 <runticks_for+0x64>
      58:	e51b3010 	ldr	r3, [fp, #-16]
      5c:	e51b2008 	ldr	r2, [fp, #-8]
      60:	e2822040 	add	r2, r2, #64	@ 0x40
      64:	e7933102 	ldr	r3, [r3, r2, lsl #2]
      68:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      6c:	e1520003 	cmp	r2, r3
      70:	1a000004 	bne	88 <runticks_for+0x64>
      74:	e51b3010 	ldr	r3, [fp, #-16]
      78:	e51b2008 	ldr	r2, [fp, #-8]
      7c:	e28220c0 	add	r2, r2, #192	@ 0xc0
      80:	e7933102 	ldr	r3, [r3, r2, lsl #2]
      84:	ea000006 	b	a4 <runticks_for+0x80>
      88:	e51b3008 	ldr	r3, [fp, #-8]
      8c:	e2833001 	add	r3, r3, #1
      90:	e50b3008 	str	r3, [fp, #-8]
      94:	e51b3008 	ldr	r3, [fp, #-8]
      98:	e353003f 	cmp	r3, #63	@ 0x3f
      9c:	daffffe8 	ble	44 <runticks_for+0x20>
      a0:	e3e03000 	mvn	r3, #0
      a4:	e1a00003 	mov	r0, r3
      a8:	e28bd000 	add	sp, fp, #0
      ac:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      b0:	e12fff1e 	bx	lr

000000b4 <main>:
      b4:	e92d4800 	push	{fp, lr}
      b8:	e28db004 	add	fp, sp, #4
      bc:	e24dde52 	sub	sp, sp, #1312	@ 0x520
      c0:	e24dd008 	sub	sp, sp, #8
      c4:	e3a03003 	mov	r3, #3
      c8:	e58d3000 	str	r3, [sp]
      cc:	e3a0300a 	mov	r3, #10
      d0:	e3a0201e 	mov	r2, #30
      d4:	e59f123c 	ldr	r1, [pc, #572]	@ 318 <main+0x264>
      d8:	e3a00001 	mov	r0, #1
      dc:	eb000312 	bl	d2c <printf>
      e0:	eb000264 	bl	a78 <getpid>
      e4:	e1a03000 	mov	r3, r0
      e8:	e59f122c 	ldr	r1, [pc, #556]	@ 31c <main+0x268>
      ec:	e1a00003 	mov	r0, r3
      f0:	eb000296 	bl	b50 <settickets>
      f4:	eb0001c6 	bl	814 <fork>
      f8:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
      fc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     100:	e3530000 	cmp	r3, #0
     104:	aa000003 	bge	118 <main+0x64>
     108:	e59f1210 	ldr	r1, [pc, #528]	@ 320 <main+0x26c>
     10c:	e3a00001 	mov	r0, #1
     110:	eb000305 	bl	d2c <printf>
     114:	eb0001c7 	bl	838 <exit>
     118:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     11c:	e3530000 	cmp	r3, #0
     120:	1a000005 	bne	13c <main+0x88>
     124:	eb000253 	bl	a78 <getpid>
     128:	e1a03000 	mov	r3, r0
     12c:	e3a0101e 	mov	r1, #30
     130:	e1a00003 	mov	r0, r3
     134:	eb000285 	bl	b50 <settickets>
     138:	ebffffb0 	bl	0 <spin_forever>
     13c:	eb0001b4 	bl	814 <fork>
     140:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     144:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     148:	e3530000 	cmp	r3, #0
     14c:	aa000006 	bge	16c <main+0xb8>
     150:	e59f11c8 	ldr	r1, [pc, #456]	@ 320 <main+0x26c>
     154:	e3a00001 	mov	r0, #1
     158:	eb0002f3 	bl	d2c <printf>
     15c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
     160:	eb0001ea 	bl	910 <kill>
     164:	eb0001bc 	bl	85c <wait>
     168:	eb0001b2 	bl	838 <exit>
     16c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     170:	e3530000 	cmp	r3, #0
     174:	1a000005 	bne	190 <main+0xdc>
     178:	eb00023e 	bl	a78 <getpid>
     17c:	e1a03000 	mov	r3, r0
     180:	e3a0100a 	mov	r1, #10
     184:	e1a00003 	mov	r0, r3
     188:	eb000270 	bl	b50 <settickets>
     18c:	ebffff9b 	bl	0 <spin_forever>
     190:	e3a0001e 	mov	r0, #30
     194:	eb000249 	bl	ac0 <sleep>
     198:	e24b3e51 	sub	r3, fp, #1296	@ 0x510
     19c:	e2433004 	sub	r3, r3, #4
     1a0:	e243300c 	sub	r3, r3, #12
     1a4:	e1a00003 	mov	r0, r3
     1a8:	eb00025f 	bl	b2c <getpinfo>
     1ac:	e1a03000 	mov	r3, r0
     1b0:	e3530000 	cmp	r3, #0
     1b4:	aa000009 	bge	1e0 <main+0x12c>
     1b8:	e59f1164 	ldr	r1, [pc, #356]	@ 324 <main+0x270>
     1bc:	e3a00001 	mov	r0, #1
     1c0:	eb0002d9 	bl	d2c <printf>
     1c4:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
     1c8:	eb0001d0 	bl	910 <kill>
     1cc:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
     1d0:	eb0001ce 	bl	910 <kill>
     1d4:	eb0001a0 	bl	85c <wait>
     1d8:	eb00019f 	bl	85c <wait>
     1dc:	eb000195 	bl	838 <exit>
     1e0:	e24b3e51 	sub	r3, fp, #1296	@ 0x510
     1e4:	e2433004 	sub	r3, r3, #4
     1e8:	e243300c 	sub	r3, r3, #12
     1ec:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     1f0:	e1a00003 	mov	r0, r3
     1f4:	ebffff8a 	bl	24 <runticks_for>
     1f8:	e50b0008 	str	r0, [fp, #-8]
     1fc:	e24b3e51 	sub	r3, fp, #1296	@ 0x510
     200:	e2433004 	sub	r3, r3, #4
     204:	e243300c 	sub	r3, r3, #12
     208:	e51b1018 	ldr	r1, [fp, #-24]	@ 0xffffffe8
     20c:	e1a00003 	mov	r0, r3
     210:	ebffff83 	bl	24 <runticks_for>
     214:	e50b000c 	str	r0, [fp, #-12]
     218:	e51b3008 	ldr	r3, [fp, #-8]
     21c:	e3530000 	cmp	r3, #0
     220:	aa000001 	bge	22c <main+0x178>
     224:	e3a03000 	mov	r3, #0
     228:	e50b3008 	str	r3, [fp, #-8]
     22c:	e51b300c 	ldr	r3, [fp, #-12]
     230:	e3530000 	cmp	r3, #0
     234:	aa000001 	bge	240 <main+0x18c>
     238:	e3a03000 	mov	r3, #0
     23c:	e50b300c 	str	r3, [fp, #-12]
     240:	e51b2008 	ldr	r2, [fp, #-8]
     244:	e51b300c 	ldr	r3, [fp, #-12]
     248:	e0823003 	add	r3, r2, r3
     24c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     250:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     254:	e3530000 	cmp	r3, #0
     258:	0a00000c 	beq	290 <main+0x1dc>
     25c:	e51b2008 	ldr	r2, [fp, #-8]
     260:	e1a03002 	mov	r3, r2
     264:	e1a03103 	lsl	r3, r3, #2
     268:	e0833002 	add	r3, r3, r2
     26c:	e1a02103 	lsl	r2, r3, #2
     270:	e0833002 	add	r3, r3, r2
     274:	e1a03103 	lsl	r3, r3, #2
     278:	e51b101c 	ldr	r1, [fp, #-28]	@ 0xffffffe4
     27c:	e1a00003 	mov	r0, r3
     280:	eb000457 	bl	13e4 <__divsi3>
     284:	e1a03000 	mov	r3, r0
     288:	e50b3010 	str	r3, [fp, #-16]
     28c:	ea000001 	b	298 <main+0x1e4>
     290:	e3a03000 	mov	r3, #0
     294:	e50b3010 	str	r3, [fp, #-16]
     298:	e3a0304b 	mov	r3, #75	@ 0x4b
     29c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2a0:	e3a0201e 	mov	r2, #30
     2a4:	e59f107c 	ldr	r1, [pc, #124]	@ 328 <main+0x274>
     2a8:	e3a00001 	mov	r0, #1
     2ac:	eb00029e 	bl	d2c <printf>
     2b0:	e51b3008 	ldr	r3, [fp, #-8]
     2b4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     2b8:	e59f106c 	ldr	r1, [pc, #108]	@ 32c <main+0x278>
     2bc:	e3a00001 	mov	r0, #1
     2c0:	eb000299 	bl	d2c <printf>
     2c4:	e51b300c 	ldr	r3, [fp, #-12]
     2c8:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     2cc:	e59f105c 	ldr	r1, [pc, #92]	@ 330 <main+0x27c>
     2d0:	e3a00001 	mov	r0, #1
     2d4:	eb000294 	bl	d2c <printf>
     2d8:	e51b3010 	ldr	r3, [fp, #-16]
     2dc:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
     2e0:	e59f104c 	ldr	r1, [pc, #76]	@ 334 <main+0x280>
     2e4:	e3a00001 	mov	r0, #1
     2e8:	eb00028f 	bl	d2c <printf>
     2ec:	e3a02003 	mov	r2, #3
     2f0:	e59f1040 	ldr	r1, [pc, #64]	@ 338 <main+0x284>
     2f4:	e3a00001 	mov	r0, #1
     2f8:	eb00028b 	bl	d2c <printf>
     2fc:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
     300:	eb000182 	bl	910 <kill>
     304:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
     308:	eb000180 	bl	910 <kill>
     30c:	eb000152 	bl	85c <wait>
     310:	eb000151 	bl	85c <wait>
     314:	eb000147 	bl	838 <exit>
     318:	00001530 	.word	0x00001530
     31c:	000186a0 	.word	0x000186a0
     320:	00001574 	.word	0x00001574
     324:	00001584 	.word	0x00001584
     328:	00001598 	.word	0x00001598
     32c:	000015c4 	.word	0x000015c4
     330:	000015e0 	.word	0x000015e0
     334:	000015fc 	.word	0x000015fc
     338:	00001630 	.word	0x00001630

0000033c <strcpy>:
     33c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     340:	e28db000 	add	fp, sp, #0
     344:	e24dd014 	sub	sp, sp, #20
     348:	e50b0010 	str	r0, [fp, #-16]
     34c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     350:	e51b3010 	ldr	r3, [fp, #-16]
     354:	e50b3008 	str	r3, [fp, #-8]
     358:	e1a00000 	nop			@ (mov r0, r0)
     35c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     360:	e2823001 	add	r3, r2, #1
     364:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     368:	e51b3010 	ldr	r3, [fp, #-16]
     36c:	e2831001 	add	r1, r3, #1
     370:	e50b1010 	str	r1, [fp, #-16]
     374:	e5d22000 	ldrb	r2, [r2]
     378:	e5c32000 	strb	r2, [r3]
     37c:	e5d33000 	ldrb	r3, [r3]
     380:	e3530000 	cmp	r3, #0
     384:	1afffff4 	bne	35c <strcpy+0x20>
     388:	e51b3008 	ldr	r3, [fp, #-8]
     38c:	e1a00003 	mov	r0, r3
     390:	e28bd000 	add	sp, fp, #0
     394:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     398:	e12fff1e 	bx	lr

0000039c <strcmp>:
     39c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     3a0:	e28db000 	add	fp, sp, #0
     3a4:	e24dd00c 	sub	sp, sp, #12
     3a8:	e50b0008 	str	r0, [fp, #-8]
     3ac:	e50b100c 	str	r1, [fp, #-12]
     3b0:	ea000005 	b	3cc <strcmp+0x30>
     3b4:	e51b3008 	ldr	r3, [fp, #-8]
     3b8:	e2833001 	add	r3, r3, #1
     3bc:	e50b3008 	str	r3, [fp, #-8]
     3c0:	e51b300c 	ldr	r3, [fp, #-12]
     3c4:	e2833001 	add	r3, r3, #1
     3c8:	e50b300c 	str	r3, [fp, #-12]
     3cc:	e51b3008 	ldr	r3, [fp, #-8]
     3d0:	e5d33000 	ldrb	r3, [r3]
     3d4:	e3530000 	cmp	r3, #0
     3d8:	0a000005 	beq	3f4 <strcmp+0x58>
     3dc:	e51b3008 	ldr	r3, [fp, #-8]
     3e0:	e5d32000 	ldrb	r2, [r3]
     3e4:	e51b300c 	ldr	r3, [fp, #-12]
     3e8:	e5d33000 	ldrb	r3, [r3]
     3ec:	e1520003 	cmp	r2, r3
     3f0:	0affffef 	beq	3b4 <strcmp+0x18>
     3f4:	e51b3008 	ldr	r3, [fp, #-8]
     3f8:	e5d33000 	ldrb	r3, [r3]
     3fc:	e1a02003 	mov	r2, r3
     400:	e51b300c 	ldr	r3, [fp, #-12]
     404:	e5d33000 	ldrb	r3, [r3]
     408:	e0423003 	sub	r3, r2, r3
     40c:	e1a00003 	mov	r0, r3
     410:	e28bd000 	add	sp, fp, #0
     414:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     418:	e12fff1e 	bx	lr

0000041c <strlen>:
     41c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     420:	e28db000 	add	fp, sp, #0
     424:	e24dd014 	sub	sp, sp, #20
     428:	e50b0010 	str	r0, [fp, #-16]
     42c:	e3a03000 	mov	r3, #0
     430:	e50b3008 	str	r3, [fp, #-8]
     434:	ea000002 	b	444 <strlen+0x28>
     438:	e51b3008 	ldr	r3, [fp, #-8]
     43c:	e2833001 	add	r3, r3, #1
     440:	e50b3008 	str	r3, [fp, #-8]
     444:	e51b3008 	ldr	r3, [fp, #-8]
     448:	e51b2010 	ldr	r2, [fp, #-16]
     44c:	e0823003 	add	r3, r2, r3
     450:	e5d33000 	ldrb	r3, [r3]
     454:	e3530000 	cmp	r3, #0
     458:	1afffff6 	bne	438 <strlen+0x1c>
     45c:	e51b3008 	ldr	r3, [fp, #-8]
     460:	e1a00003 	mov	r0, r3
     464:	e28bd000 	add	sp, fp, #0
     468:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     46c:	e12fff1e 	bx	lr

00000470 <memset>:
     470:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     474:	e28db000 	add	fp, sp, #0
     478:	e24dd024 	sub	sp, sp, #36	@ 0x24
     47c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     480:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     484:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     488:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     48c:	e50b3008 	str	r3, [fp, #-8]
     490:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     494:	e54b300d 	strb	r3, [fp, #-13]
     498:	e55b200d 	ldrb	r2, [fp, #-13]
     49c:	e1a03002 	mov	r3, r2
     4a0:	e1a03403 	lsl	r3, r3, #8
     4a4:	e0833002 	add	r3, r3, r2
     4a8:	e1a03803 	lsl	r3, r3, #16
     4ac:	e1a02003 	mov	r2, r3
     4b0:	e55b300d 	ldrb	r3, [fp, #-13]
     4b4:	e1a03403 	lsl	r3, r3, #8
     4b8:	e1822003 	orr	r2, r2, r3
     4bc:	e55b300d 	ldrb	r3, [fp, #-13]
     4c0:	e1823003 	orr	r3, r2, r3
     4c4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     4c8:	ea000008 	b	4f0 <memset+0x80>
     4cc:	e51b3008 	ldr	r3, [fp, #-8]
     4d0:	e55b200d 	ldrb	r2, [fp, #-13]
     4d4:	e5c32000 	strb	r2, [r3]
     4d8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     4dc:	e2433001 	sub	r3, r3, #1
     4e0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     4e4:	e51b3008 	ldr	r3, [fp, #-8]
     4e8:	e2833001 	add	r3, r3, #1
     4ec:	e50b3008 	str	r3, [fp, #-8]
     4f0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     4f4:	e3530000 	cmp	r3, #0
     4f8:	0a000003 	beq	50c <memset+0x9c>
     4fc:	e51b3008 	ldr	r3, [fp, #-8]
     500:	e2033003 	and	r3, r3, #3
     504:	e3530000 	cmp	r3, #0
     508:	1affffef 	bne	4cc <memset+0x5c>
     50c:	e51b3008 	ldr	r3, [fp, #-8]
     510:	e50b300c 	str	r3, [fp, #-12]
     514:	ea000008 	b	53c <memset+0xcc>
     518:	e51b300c 	ldr	r3, [fp, #-12]
     51c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     520:	e5832000 	str	r2, [r3]
     524:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     528:	e2433004 	sub	r3, r3, #4
     52c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     530:	e51b300c 	ldr	r3, [fp, #-12]
     534:	e2833004 	add	r3, r3, #4
     538:	e50b300c 	str	r3, [fp, #-12]
     53c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     540:	e3530003 	cmp	r3, #3
     544:	8afffff3 	bhi	518 <memset+0xa8>
     548:	e51b300c 	ldr	r3, [fp, #-12]
     54c:	e50b3008 	str	r3, [fp, #-8]
     550:	ea000008 	b	578 <memset+0x108>
     554:	e51b3008 	ldr	r3, [fp, #-8]
     558:	e55b200d 	ldrb	r2, [fp, #-13]
     55c:	e5c32000 	strb	r2, [r3]
     560:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     564:	e2433001 	sub	r3, r3, #1
     568:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     56c:	e51b3008 	ldr	r3, [fp, #-8]
     570:	e2833001 	add	r3, r3, #1
     574:	e50b3008 	str	r3, [fp, #-8]
     578:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     57c:	e3530000 	cmp	r3, #0
     580:	1afffff3 	bne	554 <memset+0xe4>
     584:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     588:	e1a00003 	mov	r0, r3
     58c:	e28bd000 	add	sp, fp, #0
     590:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     594:	e12fff1e 	bx	lr

00000598 <strchr>:
     598:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     59c:	e28db000 	add	fp, sp, #0
     5a0:	e24dd00c 	sub	sp, sp, #12
     5a4:	e50b0008 	str	r0, [fp, #-8]
     5a8:	e1a03001 	mov	r3, r1
     5ac:	e54b3009 	strb	r3, [fp, #-9]
     5b0:	ea000009 	b	5dc <strchr+0x44>
     5b4:	e51b3008 	ldr	r3, [fp, #-8]
     5b8:	e5d33000 	ldrb	r3, [r3]
     5bc:	e55b2009 	ldrb	r2, [fp, #-9]
     5c0:	e1520003 	cmp	r2, r3
     5c4:	1a000001 	bne	5d0 <strchr+0x38>
     5c8:	e51b3008 	ldr	r3, [fp, #-8]
     5cc:	ea000007 	b	5f0 <strchr+0x58>
     5d0:	e51b3008 	ldr	r3, [fp, #-8]
     5d4:	e2833001 	add	r3, r3, #1
     5d8:	e50b3008 	str	r3, [fp, #-8]
     5dc:	e51b3008 	ldr	r3, [fp, #-8]
     5e0:	e5d33000 	ldrb	r3, [r3]
     5e4:	e3530000 	cmp	r3, #0
     5e8:	1afffff1 	bne	5b4 <strchr+0x1c>
     5ec:	e3a03000 	mov	r3, #0
     5f0:	e1a00003 	mov	r0, r3
     5f4:	e28bd000 	add	sp, fp, #0
     5f8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5fc:	e12fff1e 	bx	lr

00000600 <gets>:
     600:	e92d4800 	push	{fp, lr}
     604:	e28db004 	add	fp, sp, #4
     608:	e24dd018 	sub	sp, sp, #24
     60c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     610:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     614:	e3a03000 	mov	r3, #0
     618:	e50b3008 	str	r3, [fp, #-8]
     61c:	ea000016 	b	67c <gets+0x7c>
     620:	e24b300d 	sub	r3, fp, #13
     624:	e3a02001 	mov	r2, #1
     628:	e1a01003 	mov	r1, r3
     62c:	e3a00000 	mov	r0, #0
     630:	eb00009b 	bl	8a4 <read>
     634:	e50b000c 	str	r0, [fp, #-12]
     638:	e51b300c 	ldr	r3, [fp, #-12]
     63c:	e3530000 	cmp	r3, #0
     640:	da000013 	ble	694 <gets+0x94>
     644:	e51b3008 	ldr	r3, [fp, #-8]
     648:	e2832001 	add	r2, r3, #1
     64c:	e50b2008 	str	r2, [fp, #-8]
     650:	e1a02003 	mov	r2, r3
     654:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     658:	e0833002 	add	r3, r3, r2
     65c:	e55b200d 	ldrb	r2, [fp, #-13]
     660:	e5c32000 	strb	r2, [r3]
     664:	e55b300d 	ldrb	r3, [fp, #-13]
     668:	e353000a 	cmp	r3, #10
     66c:	0a000009 	beq	698 <gets+0x98>
     670:	e55b300d 	ldrb	r3, [fp, #-13]
     674:	e353000d 	cmp	r3, #13
     678:	0a000006 	beq	698 <gets+0x98>
     67c:	e51b3008 	ldr	r3, [fp, #-8]
     680:	e2833001 	add	r3, r3, #1
     684:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     688:	e1520003 	cmp	r2, r3
     68c:	caffffe3 	bgt	620 <gets+0x20>
     690:	ea000000 	b	698 <gets+0x98>
     694:	e1a00000 	nop			@ (mov r0, r0)
     698:	e51b3008 	ldr	r3, [fp, #-8]
     69c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     6a0:	e0823003 	add	r3, r2, r3
     6a4:	e3a02000 	mov	r2, #0
     6a8:	e5c32000 	strb	r2, [r3]
     6ac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6b0:	e1a00003 	mov	r0, r3
     6b4:	e24bd004 	sub	sp, fp, #4
     6b8:	e8bd8800 	pop	{fp, pc}

000006bc <stat>:
     6bc:	e92d4800 	push	{fp, lr}
     6c0:	e28db004 	add	fp, sp, #4
     6c4:	e24dd010 	sub	sp, sp, #16
     6c8:	e50b0010 	str	r0, [fp, #-16]
     6cc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     6d0:	e3a01000 	mov	r1, #0
     6d4:	e51b0010 	ldr	r0, [fp, #-16]
     6d8:	eb00009e 	bl	958 <open>
     6dc:	e50b0008 	str	r0, [fp, #-8]
     6e0:	e51b3008 	ldr	r3, [fp, #-8]
     6e4:	e3530000 	cmp	r3, #0
     6e8:	aa000001 	bge	6f4 <stat+0x38>
     6ec:	e3e03000 	mvn	r3, #0
     6f0:	ea000006 	b	710 <stat+0x54>
     6f4:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     6f8:	e51b0008 	ldr	r0, [fp, #-8]
     6fc:	eb0000b0 	bl	9c4 <fstat>
     700:	e50b000c 	str	r0, [fp, #-12]
     704:	e51b0008 	ldr	r0, [fp, #-8]
     708:	eb000077 	bl	8ec <close>
     70c:	e51b300c 	ldr	r3, [fp, #-12]
     710:	e1a00003 	mov	r0, r3
     714:	e24bd004 	sub	sp, fp, #4
     718:	e8bd8800 	pop	{fp, pc}

0000071c <atoi>:
     71c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     720:	e28db000 	add	fp, sp, #0
     724:	e24dd014 	sub	sp, sp, #20
     728:	e50b0010 	str	r0, [fp, #-16]
     72c:	e3a03000 	mov	r3, #0
     730:	e50b3008 	str	r3, [fp, #-8]
     734:	ea00000c 	b	76c <atoi+0x50>
     738:	e51b2008 	ldr	r2, [fp, #-8]
     73c:	e1a03002 	mov	r3, r2
     740:	e1a03103 	lsl	r3, r3, #2
     744:	e0833002 	add	r3, r3, r2
     748:	e1a03083 	lsl	r3, r3, #1
     74c:	e1a01003 	mov	r1, r3
     750:	e51b3010 	ldr	r3, [fp, #-16]
     754:	e2832001 	add	r2, r3, #1
     758:	e50b2010 	str	r2, [fp, #-16]
     75c:	e5d33000 	ldrb	r3, [r3]
     760:	e0813003 	add	r3, r1, r3
     764:	e2433030 	sub	r3, r3, #48	@ 0x30
     768:	e50b3008 	str	r3, [fp, #-8]
     76c:	e51b3010 	ldr	r3, [fp, #-16]
     770:	e5d33000 	ldrb	r3, [r3]
     774:	e353002f 	cmp	r3, #47	@ 0x2f
     778:	9a000003 	bls	78c <atoi+0x70>
     77c:	e51b3010 	ldr	r3, [fp, #-16]
     780:	e5d33000 	ldrb	r3, [r3]
     784:	e3530039 	cmp	r3, #57	@ 0x39
     788:	9affffea 	bls	738 <atoi+0x1c>
     78c:	e51b3008 	ldr	r3, [fp, #-8]
     790:	e1a00003 	mov	r0, r3
     794:	e28bd000 	add	sp, fp, #0
     798:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     79c:	e12fff1e 	bx	lr

000007a0 <memmove>:
     7a0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     7a4:	e28db000 	add	fp, sp, #0
     7a8:	e24dd01c 	sub	sp, sp, #28
     7ac:	e50b0010 	str	r0, [fp, #-16]
     7b0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     7b4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     7b8:	e51b3010 	ldr	r3, [fp, #-16]
     7bc:	e50b3008 	str	r3, [fp, #-8]
     7c0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     7c4:	e50b300c 	str	r3, [fp, #-12]
     7c8:	ea000007 	b	7ec <memmove+0x4c>
     7cc:	e51b200c 	ldr	r2, [fp, #-12]
     7d0:	e2823001 	add	r3, r2, #1
     7d4:	e50b300c 	str	r3, [fp, #-12]
     7d8:	e51b3008 	ldr	r3, [fp, #-8]
     7dc:	e2831001 	add	r1, r3, #1
     7e0:	e50b1008 	str	r1, [fp, #-8]
     7e4:	e5d22000 	ldrb	r2, [r2]
     7e8:	e5c32000 	strb	r2, [r3]
     7ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     7f0:	e2432001 	sub	r2, r3, #1
     7f4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     7f8:	e3530000 	cmp	r3, #0
     7fc:	cafffff2 	bgt	7cc <memmove+0x2c>
     800:	e51b3010 	ldr	r3, [fp, #-16]
     804:	e1a00003 	mov	r0, r3
     808:	e28bd000 	add	sp, fp, #0
     80c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     810:	e12fff1e 	bx	lr

00000814 <fork>:
     814:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     818:	e1a04003 	mov	r4, r3
     81c:	e1a03002 	mov	r3, r2
     820:	e1a02001 	mov	r2, r1
     824:	e1a01000 	mov	r1, r0
     828:	e3a00001 	mov	r0, #1
     82c:	ef000000 	svc	0x00000000
     830:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     834:	e12fff1e 	bx	lr

00000838 <exit>:
     838:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     83c:	e1a04003 	mov	r4, r3
     840:	e1a03002 	mov	r3, r2
     844:	e1a02001 	mov	r2, r1
     848:	e1a01000 	mov	r1, r0
     84c:	e3a00002 	mov	r0, #2
     850:	ef000000 	svc	0x00000000
     854:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     858:	e12fff1e 	bx	lr

0000085c <wait>:
     85c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     860:	e1a04003 	mov	r4, r3
     864:	e1a03002 	mov	r3, r2
     868:	e1a02001 	mov	r2, r1
     86c:	e1a01000 	mov	r1, r0
     870:	e3a00003 	mov	r0, #3
     874:	ef000000 	svc	0x00000000
     878:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     87c:	e12fff1e 	bx	lr

00000880 <pipe>:
     880:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     884:	e1a04003 	mov	r4, r3
     888:	e1a03002 	mov	r3, r2
     88c:	e1a02001 	mov	r2, r1
     890:	e1a01000 	mov	r1, r0
     894:	e3a00004 	mov	r0, #4
     898:	ef000000 	svc	0x00000000
     89c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8a0:	e12fff1e 	bx	lr

000008a4 <read>:
     8a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8a8:	e1a04003 	mov	r4, r3
     8ac:	e1a03002 	mov	r3, r2
     8b0:	e1a02001 	mov	r2, r1
     8b4:	e1a01000 	mov	r1, r0
     8b8:	e3a00005 	mov	r0, #5
     8bc:	ef000000 	svc	0x00000000
     8c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8c4:	e12fff1e 	bx	lr

000008c8 <write>:
     8c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8cc:	e1a04003 	mov	r4, r3
     8d0:	e1a03002 	mov	r3, r2
     8d4:	e1a02001 	mov	r2, r1
     8d8:	e1a01000 	mov	r1, r0
     8dc:	e3a00010 	mov	r0, #16
     8e0:	ef000000 	svc	0x00000000
     8e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8e8:	e12fff1e 	bx	lr

000008ec <close>:
     8ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8f0:	e1a04003 	mov	r4, r3
     8f4:	e1a03002 	mov	r3, r2
     8f8:	e1a02001 	mov	r2, r1
     8fc:	e1a01000 	mov	r1, r0
     900:	e3a00015 	mov	r0, #21
     904:	ef000000 	svc	0x00000000
     908:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     90c:	e12fff1e 	bx	lr

00000910 <kill>:
     910:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     914:	e1a04003 	mov	r4, r3
     918:	e1a03002 	mov	r3, r2
     91c:	e1a02001 	mov	r2, r1
     920:	e1a01000 	mov	r1, r0
     924:	e3a00006 	mov	r0, #6
     928:	ef000000 	svc	0x00000000
     92c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     930:	e12fff1e 	bx	lr

00000934 <exec>:
     934:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     938:	e1a04003 	mov	r4, r3
     93c:	e1a03002 	mov	r3, r2
     940:	e1a02001 	mov	r2, r1
     944:	e1a01000 	mov	r1, r0
     948:	e3a00007 	mov	r0, #7
     94c:	ef000000 	svc	0x00000000
     950:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     954:	e12fff1e 	bx	lr

00000958 <open>:
     958:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     95c:	e1a04003 	mov	r4, r3
     960:	e1a03002 	mov	r3, r2
     964:	e1a02001 	mov	r2, r1
     968:	e1a01000 	mov	r1, r0
     96c:	e3a0000f 	mov	r0, #15
     970:	ef000000 	svc	0x00000000
     974:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     978:	e12fff1e 	bx	lr

0000097c <mknod>:
     97c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     980:	e1a04003 	mov	r4, r3
     984:	e1a03002 	mov	r3, r2
     988:	e1a02001 	mov	r2, r1
     98c:	e1a01000 	mov	r1, r0
     990:	e3a00011 	mov	r0, #17
     994:	ef000000 	svc	0x00000000
     998:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     99c:	e12fff1e 	bx	lr

000009a0 <unlink>:
     9a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9a4:	e1a04003 	mov	r4, r3
     9a8:	e1a03002 	mov	r3, r2
     9ac:	e1a02001 	mov	r2, r1
     9b0:	e1a01000 	mov	r1, r0
     9b4:	e3a00012 	mov	r0, #18
     9b8:	ef000000 	svc	0x00000000
     9bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9c0:	e12fff1e 	bx	lr

000009c4 <fstat>:
     9c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9c8:	e1a04003 	mov	r4, r3
     9cc:	e1a03002 	mov	r3, r2
     9d0:	e1a02001 	mov	r2, r1
     9d4:	e1a01000 	mov	r1, r0
     9d8:	e3a00008 	mov	r0, #8
     9dc:	ef000000 	svc	0x00000000
     9e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9e4:	e12fff1e 	bx	lr

000009e8 <link>:
     9e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9ec:	e1a04003 	mov	r4, r3
     9f0:	e1a03002 	mov	r3, r2
     9f4:	e1a02001 	mov	r2, r1
     9f8:	e1a01000 	mov	r1, r0
     9fc:	e3a00013 	mov	r0, #19
     a00:	ef000000 	svc	0x00000000
     a04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a08:	e12fff1e 	bx	lr

00000a0c <mkdir>:
     a0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a10:	e1a04003 	mov	r4, r3
     a14:	e1a03002 	mov	r3, r2
     a18:	e1a02001 	mov	r2, r1
     a1c:	e1a01000 	mov	r1, r0
     a20:	e3a00014 	mov	r0, #20
     a24:	ef000000 	svc	0x00000000
     a28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a2c:	e12fff1e 	bx	lr

00000a30 <chdir>:
     a30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a34:	e1a04003 	mov	r4, r3
     a38:	e1a03002 	mov	r3, r2
     a3c:	e1a02001 	mov	r2, r1
     a40:	e1a01000 	mov	r1, r0
     a44:	e3a00009 	mov	r0, #9
     a48:	ef000000 	svc	0x00000000
     a4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a50:	e12fff1e 	bx	lr

00000a54 <dup>:
     a54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a58:	e1a04003 	mov	r4, r3
     a5c:	e1a03002 	mov	r3, r2
     a60:	e1a02001 	mov	r2, r1
     a64:	e1a01000 	mov	r1, r0
     a68:	e3a0000a 	mov	r0, #10
     a6c:	ef000000 	svc	0x00000000
     a70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a74:	e12fff1e 	bx	lr

00000a78 <getpid>:
     a78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a7c:	e1a04003 	mov	r4, r3
     a80:	e1a03002 	mov	r3, r2
     a84:	e1a02001 	mov	r2, r1
     a88:	e1a01000 	mov	r1, r0
     a8c:	e3a0000b 	mov	r0, #11
     a90:	ef000000 	svc	0x00000000
     a94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a98:	e12fff1e 	bx	lr

00000a9c <sbrk>:
     a9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aa0:	e1a04003 	mov	r4, r3
     aa4:	e1a03002 	mov	r3, r2
     aa8:	e1a02001 	mov	r2, r1
     aac:	e1a01000 	mov	r1, r0
     ab0:	e3a0000c 	mov	r0, #12
     ab4:	ef000000 	svc	0x00000000
     ab8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     abc:	e12fff1e 	bx	lr

00000ac0 <sleep>:
     ac0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ac4:	e1a04003 	mov	r4, r3
     ac8:	e1a03002 	mov	r3, r2
     acc:	e1a02001 	mov	r2, r1
     ad0:	e1a01000 	mov	r1, r0
     ad4:	e3a0000d 	mov	r0, #13
     ad8:	ef000000 	svc	0x00000000
     adc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ae0:	e12fff1e 	bx	lr

00000ae4 <uptime>:
     ae4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ae8:	e1a04003 	mov	r4, r3
     aec:	e1a03002 	mov	r3, r2
     af0:	e1a02001 	mov	r2, r1
     af4:	e1a01000 	mov	r1, r0
     af8:	e3a0000e 	mov	r0, #14
     afc:	ef000000 	svc	0x00000000
     b00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b04:	e12fff1e 	bx	lr

00000b08 <getprocs>:
     b08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b0c:	e1a04003 	mov	r4, r3
     b10:	e1a03002 	mov	r3, r2
     b14:	e1a02001 	mov	r2, r1
     b18:	e1a01000 	mov	r1, r0
     b1c:	e3a00016 	mov	r0, #22
     b20:	ef000000 	svc	0x00000000
     b24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b28:	e12fff1e 	bx	lr

00000b2c <getpinfo>:
     b2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b30:	e1a04003 	mov	r4, r3
     b34:	e1a03002 	mov	r3, r2
     b38:	e1a02001 	mov	r2, r1
     b3c:	e1a01000 	mov	r1, r0
     b40:	e3a00018 	mov	r0, #24
     b44:	ef000000 	svc	0x00000000
     b48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b4c:	e12fff1e 	bx	lr

00000b50 <settickets>:
     b50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b54:	e1a04003 	mov	r4, r3
     b58:	e1a03002 	mov	r3, r2
     b5c:	e1a02001 	mov	r2, r1
     b60:	e1a01000 	mov	r1, r0
     b64:	e3a00017 	mov	r0, #23
     b68:	ef000000 	svc	0x00000000
     b6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b70:	e12fff1e 	bx	lr

00000b74 <srand>:
     b74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b78:	e1a04003 	mov	r4, r3
     b7c:	e1a03002 	mov	r3, r2
     b80:	e1a02001 	mov	r2, r1
     b84:	e1a01000 	mov	r1, r0
     b88:	e3a00019 	mov	r0, #25
     b8c:	ef000000 	svc	0x00000000
     b90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b94:	e12fff1e 	bx	lr

00000b98 <test>:
     b98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b9c:	e1a04003 	mov	r4, r3
     ba0:	e1a03002 	mov	r3, r2
     ba4:	e1a02001 	mov	r2, r1
     ba8:	e1a01000 	mov	r1, r0
     bac:	e3a0001a 	mov	r0, #26
     bb0:	ef000000 	svc	0x00000000
     bb4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bb8:	e12fff1e 	bx	lr

00000bbc <putc>:
     bbc:	e92d4800 	push	{fp, lr}
     bc0:	e28db004 	add	fp, sp, #4
     bc4:	e24dd008 	sub	sp, sp, #8
     bc8:	e50b0008 	str	r0, [fp, #-8]
     bcc:	e1a03001 	mov	r3, r1
     bd0:	e54b3009 	strb	r3, [fp, #-9]
     bd4:	e24b3009 	sub	r3, fp, #9
     bd8:	e3a02001 	mov	r2, #1
     bdc:	e1a01003 	mov	r1, r3
     be0:	e51b0008 	ldr	r0, [fp, #-8]
     be4:	ebffff37 	bl	8c8 <write>
     be8:	e1a00000 	nop			@ (mov r0, r0)
     bec:	e24bd004 	sub	sp, fp, #4
     bf0:	e8bd8800 	pop	{fp, pc}

00000bf4 <printint>:
     bf4:	e92d4800 	push	{fp, lr}
     bf8:	e28db004 	add	fp, sp, #4
     bfc:	e24dd030 	sub	sp, sp, #48	@ 0x30
     c00:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     c04:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     c08:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     c0c:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     c10:	e3a03000 	mov	r3, #0
     c14:	e50b300c 	str	r3, [fp, #-12]
     c18:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     c1c:	e3530000 	cmp	r3, #0
     c20:	0a000008 	beq	c48 <printint+0x54>
     c24:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     c28:	e3530000 	cmp	r3, #0
     c2c:	aa000005 	bge	c48 <printint+0x54>
     c30:	e3a03001 	mov	r3, #1
     c34:	e50b300c 	str	r3, [fp, #-12]
     c38:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     c3c:	e2633000 	rsb	r3, r3, #0
     c40:	e50b3010 	str	r3, [fp, #-16]
     c44:	ea000001 	b	c50 <printint+0x5c>
     c48:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     c4c:	e50b3010 	str	r3, [fp, #-16]
     c50:	e3a03000 	mov	r3, #0
     c54:	e50b3008 	str	r3, [fp, #-8]
     c58:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     c5c:	e51b3010 	ldr	r3, [fp, #-16]
     c60:	e1a01002 	mov	r1, r2
     c64:	e1a00003 	mov	r0, r3
     c68:	eb0001d5 	bl	13c4 <__aeabi_uidivmod>
     c6c:	e1a03001 	mov	r3, r1
     c70:	e1a01003 	mov	r1, r3
     c74:	e51b3008 	ldr	r3, [fp, #-8]
     c78:	e2832001 	add	r2, r3, #1
     c7c:	e50b2008 	str	r2, [fp, #-8]
     c80:	e59f20a0 	ldr	r2, [pc, #160]	@ d28 <printint+0x134>
     c84:	e7d22001 	ldrb	r2, [r2, r1]
     c88:	e2433004 	sub	r3, r3, #4
     c8c:	e083300b 	add	r3, r3, fp
     c90:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     c94:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     c98:	e1a01003 	mov	r1, r3
     c9c:	e51b0010 	ldr	r0, [fp, #-16]
     ca0:	eb00018a 	bl	12d0 <__udivsi3>
     ca4:	e1a03000 	mov	r3, r0
     ca8:	e50b3010 	str	r3, [fp, #-16]
     cac:	e51b3010 	ldr	r3, [fp, #-16]
     cb0:	e3530000 	cmp	r3, #0
     cb4:	1affffe7 	bne	c58 <printint+0x64>
     cb8:	e51b300c 	ldr	r3, [fp, #-12]
     cbc:	e3530000 	cmp	r3, #0
     cc0:	0a00000e 	beq	d00 <printint+0x10c>
     cc4:	e51b3008 	ldr	r3, [fp, #-8]
     cc8:	e2832001 	add	r2, r3, #1
     ccc:	e50b2008 	str	r2, [fp, #-8]
     cd0:	e2433004 	sub	r3, r3, #4
     cd4:	e083300b 	add	r3, r3, fp
     cd8:	e3a0202d 	mov	r2, #45	@ 0x2d
     cdc:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     ce0:	ea000006 	b	d00 <printint+0x10c>
     ce4:	e24b2020 	sub	r2, fp, #32
     ce8:	e51b3008 	ldr	r3, [fp, #-8]
     cec:	e0823003 	add	r3, r2, r3
     cf0:	e5d33000 	ldrb	r3, [r3]
     cf4:	e1a01003 	mov	r1, r3
     cf8:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     cfc:	ebffffae 	bl	bbc <putc>
     d00:	e51b3008 	ldr	r3, [fp, #-8]
     d04:	e2433001 	sub	r3, r3, #1
     d08:	e50b3008 	str	r3, [fp, #-8]
     d0c:	e51b3008 	ldr	r3, [fp, #-8]
     d10:	e3530000 	cmp	r3, #0
     d14:	aafffff2 	bge	ce4 <printint+0xf0>
     d18:	e1a00000 	nop			@ (mov r0, r0)
     d1c:	e1a00000 	nop			@ (mov r0, r0)
     d20:	e24bd004 	sub	sp, fp, #4
     d24:	e8bd8800 	pop	{fp, pc}
     d28:	00001668 	.word	0x00001668

00000d2c <printf>:
     d2c:	e92d000e 	push	{r1, r2, r3}
     d30:	e92d4800 	push	{fp, lr}
     d34:	e28db004 	add	fp, sp, #4
     d38:	e24dd024 	sub	sp, sp, #36	@ 0x24
     d3c:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     d40:	e3a03000 	mov	r3, #0
     d44:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     d48:	e28b3008 	add	r3, fp, #8
     d4c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d50:	e3a03000 	mov	r3, #0
     d54:	e50b3010 	str	r3, [fp, #-16]
     d58:	ea000074 	b	f30 <printf+0x204>
     d5c:	e59b2004 	ldr	r2, [fp, #4]
     d60:	e51b3010 	ldr	r3, [fp, #-16]
     d64:	e0823003 	add	r3, r2, r3
     d68:	e5d33000 	ldrb	r3, [r3]
     d6c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     d70:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     d74:	e3530000 	cmp	r3, #0
     d78:	1a00000b 	bne	dac <printf+0x80>
     d7c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d80:	e3530025 	cmp	r3, #37	@ 0x25
     d84:	1a000002 	bne	d94 <printf+0x68>
     d88:	e3a03025 	mov	r3, #37	@ 0x25
     d8c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     d90:	ea000063 	b	f24 <printf+0x1f8>
     d94:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d98:	e6ef3073 	uxtb	r3, r3
     d9c:	e1a01003 	mov	r1, r3
     da0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     da4:	ebffff84 	bl	bbc <putc>
     da8:	ea00005d 	b	f24 <printf+0x1f8>
     dac:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     db0:	e3530025 	cmp	r3, #37	@ 0x25
     db4:	1a00005a 	bne	f24 <printf+0x1f8>
     db8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     dbc:	e3530064 	cmp	r3, #100	@ 0x64
     dc0:	1a00000a 	bne	df0 <printf+0xc4>
     dc4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     dc8:	e5933000 	ldr	r3, [r3]
     dcc:	e1a01003 	mov	r1, r3
     dd0:	e3a03001 	mov	r3, #1
     dd4:	e3a0200a 	mov	r2, #10
     dd8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ddc:	ebffff84 	bl	bf4 <printint>
     de0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     de4:	e2833004 	add	r3, r3, #4
     de8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     dec:	ea00004a 	b	f1c <printf+0x1f0>
     df0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     df4:	e3530078 	cmp	r3, #120	@ 0x78
     df8:	0a000002 	beq	e08 <printf+0xdc>
     dfc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e00:	e3530070 	cmp	r3, #112	@ 0x70
     e04:	1a00000a 	bne	e34 <printf+0x108>
     e08:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e0c:	e5933000 	ldr	r3, [r3]
     e10:	e1a01003 	mov	r1, r3
     e14:	e3a03000 	mov	r3, #0
     e18:	e3a02010 	mov	r2, #16
     e1c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e20:	ebffff73 	bl	bf4 <printint>
     e24:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e28:	e2833004 	add	r3, r3, #4
     e2c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e30:	ea000039 	b	f1c <printf+0x1f0>
     e34:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e38:	e3530073 	cmp	r3, #115	@ 0x73
     e3c:	1a000018 	bne	ea4 <printf+0x178>
     e40:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e44:	e5933000 	ldr	r3, [r3]
     e48:	e50b300c 	str	r3, [fp, #-12]
     e4c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e50:	e2833004 	add	r3, r3, #4
     e54:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e58:	e51b300c 	ldr	r3, [fp, #-12]
     e5c:	e3530000 	cmp	r3, #0
     e60:	1a00000a 	bne	e90 <printf+0x164>
     e64:	e59f30f4 	ldr	r3, [pc, #244]	@ f60 <printf+0x234>
     e68:	e50b300c 	str	r3, [fp, #-12]
     e6c:	ea000007 	b	e90 <printf+0x164>
     e70:	e51b300c 	ldr	r3, [fp, #-12]
     e74:	e5d33000 	ldrb	r3, [r3]
     e78:	e1a01003 	mov	r1, r3
     e7c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e80:	ebffff4d 	bl	bbc <putc>
     e84:	e51b300c 	ldr	r3, [fp, #-12]
     e88:	e2833001 	add	r3, r3, #1
     e8c:	e50b300c 	str	r3, [fp, #-12]
     e90:	e51b300c 	ldr	r3, [fp, #-12]
     e94:	e5d33000 	ldrb	r3, [r3]
     e98:	e3530000 	cmp	r3, #0
     e9c:	1afffff3 	bne	e70 <printf+0x144>
     ea0:	ea00001d 	b	f1c <printf+0x1f0>
     ea4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ea8:	e3530063 	cmp	r3, #99	@ 0x63
     eac:	1a000009 	bne	ed8 <printf+0x1ac>
     eb0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     eb4:	e5933000 	ldr	r3, [r3]
     eb8:	e6ef3073 	uxtb	r3, r3
     ebc:	e1a01003 	mov	r1, r3
     ec0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ec4:	ebffff3c 	bl	bbc <putc>
     ec8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ecc:	e2833004 	add	r3, r3, #4
     ed0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ed4:	ea000010 	b	f1c <printf+0x1f0>
     ed8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     edc:	e3530025 	cmp	r3, #37	@ 0x25
     ee0:	1a000005 	bne	efc <printf+0x1d0>
     ee4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ee8:	e6ef3073 	uxtb	r3, r3
     eec:	e1a01003 	mov	r1, r3
     ef0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ef4:	ebffff30 	bl	bbc <putc>
     ef8:	ea000007 	b	f1c <printf+0x1f0>
     efc:	e3a01025 	mov	r1, #37	@ 0x25
     f00:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f04:	ebffff2c 	bl	bbc <putc>
     f08:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f0c:	e6ef3073 	uxtb	r3, r3
     f10:	e1a01003 	mov	r1, r3
     f14:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f18:	ebffff27 	bl	bbc <putc>
     f1c:	e3a03000 	mov	r3, #0
     f20:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     f24:	e51b3010 	ldr	r3, [fp, #-16]
     f28:	e2833001 	add	r3, r3, #1
     f2c:	e50b3010 	str	r3, [fp, #-16]
     f30:	e59b2004 	ldr	r2, [fp, #4]
     f34:	e51b3010 	ldr	r3, [fp, #-16]
     f38:	e0823003 	add	r3, r2, r3
     f3c:	e5d33000 	ldrb	r3, [r3]
     f40:	e3530000 	cmp	r3, #0
     f44:	1affff84 	bne	d5c <printf+0x30>
     f48:	e1a00000 	nop			@ (mov r0, r0)
     f4c:	e1a00000 	nop			@ (mov r0, r0)
     f50:	e24bd004 	sub	sp, fp, #4
     f54:	e8bd4800 	pop	{fp, lr}
     f58:	e28dd00c 	add	sp, sp, #12
     f5c:	e12fff1e 	bx	lr
     f60:	00001660 	.word	0x00001660

00000f64 <free>:
     f64:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     f68:	e28db000 	add	fp, sp, #0
     f6c:	e24dd014 	sub	sp, sp, #20
     f70:	e50b0010 	str	r0, [fp, #-16]
     f74:	e51b3010 	ldr	r3, [fp, #-16]
     f78:	e2433008 	sub	r3, r3, #8
     f7c:	e50b300c 	str	r3, [fp, #-12]
     f80:	e59f3154 	ldr	r3, [pc, #340]	@ 10dc <free+0x178>
     f84:	e5933000 	ldr	r3, [r3]
     f88:	e50b3008 	str	r3, [fp, #-8]
     f8c:	ea000010 	b	fd4 <free+0x70>
     f90:	e51b3008 	ldr	r3, [fp, #-8]
     f94:	e5933000 	ldr	r3, [r3]
     f98:	e51b2008 	ldr	r2, [fp, #-8]
     f9c:	e1520003 	cmp	r2, r3
     fa0:	3a000008 	bcc	fc8 <free+0x64>
     fa4:	e51b200c 	ldr	r2, [fp, #-12]
     fa8:	e51b3008 	ldr	r3, [fp, #-8]
     fac:	e1520003 	cmp	r2, r3
     fb0:	8a000010 	bhi	ff8 <free+0x94>
     fb4:	e51b3008 	ldr	r3, [fp, #-8]
     fb8:	e5933000 	ldr	r3, [r3]
     fbc:	e51b200c 	ldr	r2, [fp, #-12]
     fc0:	e1520003 	cmp	r2, r3
     fc4:	3a00000b 	bcc	ff8 <free+0x94>
     fc8:	e51b3008 	ldr	r3, [fp, #-8]
     fcc:	e5933000 	ldr	r3, [r3]
     fd0:	e50b3008 	str	r3, [fp, #-8]
     fd4:	e51b200c 	ldr	r2, [fp, #-12]
     fd8:	e51b3008 	ldr	r3, [fp, #-8]
     fdc:	e1520003 	cmp	r2, r3
     fe0:	9affffea 	bls	f90 <free+0x2c>
     fe4:	e51b3008 	ldr	r3, [fp, #-8]
     fe8:	e5933000 	ldr	r3, [r3]
     fec:	e51b200c 	ldr	r2, [fp, #-12]
     ff0:	e1520003 	cmp	r2, r3
     ff4:	2affffe5 	bcs	f90 <free+0x2c>
     ff8:	e51b300c 	ldr	r3, [fp, #-12]
     ffc:	e5933004 	ldr	r3, [r3, #4]
    1000:	e1a03183 	lsl	r3, r3, #3
    1004:	e51b200c 	ldr	r2, [fp, #-12]
    1008:	e0822003 	add	r2, r2, r3
    100c:	e51b3008 	ldr	r3, [fp, #-8]
    1010:	e5933000 	ldr	r3, [r3]
    1014:	e1520003 	cmp	r2, r3
    1018:	1a00000d 	bne	1054 <free+0xf0>
    101c:	e51b300c 	ldr	r3, [fp, #-12]
    1020:	e5932004 	ldr	r2, [r3, #4]
    1024:	e51b3008 	ldr	r3, [fp, #-8]
    1028:	e5933000 	ldr	r3, [r3]
    102c:	e5933004 	ldr	r3, [r3, #4]
    1030:	e0822003 	add	r2, r2, r3
    1034:	e51b300c 	ldr	r3, [fp, #-12]
    1038:	e5832004 	str	r2, [r3, #4]
    103c:	e51b3008 	ldr	r3, [fp, #-8]
    1040:	e5933000 	ldr	r3, [r3]
    1044:	e5932000 	ldr	r2, [r3]
    1048:	e51b300c 	ldr	r3, [fp, #-12]
    104c:	e5832000 	str	r2, [r3]
    1050:	ea000003 	b	1064 <free+0x100>
    1054:	e51b3008 	ldr	r3, [fp, #-8]
    1058:	e5932000 	ldr	r2, [r3]
    105c:	e51b300c 	ldr	r3, [fp, #-12]
    1060:	e5832000 	str	r2, [r3]
    1064:	e51b3008 	ldr	r3, [fp, #-8]
    1068:	e5933004 	ldr	r3, [r3, #4]
    106c:	e1a03183 	lsl	r3, r3, #3
    1070:	e51b2008 	ldr	r2, [fp, #-8]
    1074:	e0823003 	add	r3, r2, r3
    1078:	e51b200c 	ldr	r2, [fp, #-12]
    107c:	e1520003 	cmp	r2, r3
    1080:	1a00000b 	bne	10b4 <free+0x150>
    1084:	e51b3008 	ldr	r3, [fp, #-8]
    1088:	e5932004 	ldr	r2, [r3, #4]
    108c:	e51b300c 	ldr	r3, [fp, #-12]
    1090:	e5933004 	ldr	r3, [r3, #4]
    1094:	e0822003 	add	r2, r2, r3
    1098:	e51b3008 	ldr	r3, [fp, #-8]
    109c:	e5832004 	str	r2, [r3, #4]
    10a0:	e51b300c 	ldr	r3, [fp, #-12]
    10a4:	e5932000 	ldr	r2, [r3]
    10a8:	e51b3008 	ldr	r3, [fp, #-8]
    10ac:	e5832000 	str	r2, [r3]
    10b0:	ea000002 	b	10c0 <free+0x15c>
    10b4:	e51b3008 	ldr	r3, [fp, #-8]
    10b8:	e51b200c 	ldr	r2, [fp, #-12]
    10bc:	e5832000 	str	r2, [r3]
    10c0:	e59f2014 	ldr	r2, [pc, #20]	@ 10dc <free+0x178>
    10c4:	e51b3008 	ldr	r3, [fp, #-8]
    10c8:	e5823000 	str	r3, [r2]
    10cc:	e1a00000 	nop			@ (mov r0, r0)
    10d0:	e28bd000 	add	sp, fp, #0
    10d4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    10d8:	e12fff1e 	bx	lr
    10dc:	00001684 	.word	0x00001684

000010e0 <morecore>:
    10e0:	e92d4800 	push	{fp, lr}
    10e4:	e28db004 	add	fp, sp, #4
    10e8:	e24dd010 	sub	sp, sp, #16
    10ec:	e50b0010 	str	r0, [fp, #-16]
    10f0:	e51b3010 	ldr	r3, [fp, #-16]
    10f4:	e3530a01 	cmp	r3, #4096	@ 0x1000
    10f8:	2a000001 	bcs	1104 <morecore+0x24>
    10fc:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1100:	e50b3010 	str	r3, [fp, #-16]
    1104:	e51b3010 	ldr	r3, [fp, #-16]
    1108:	e1a03183 	lsl	r3, r3, #3
    110c:	e1a00003 	mov	r0, r3
    1110:	ebfffe61 	bl	a9c <sbrk>
    1114:	e50b0008 	str	r0, [fp, #-8]
    1118:	e51b3008 	ldr	r3, [fp, #-8]
    111c:	e3730001 	cmn	r3, #1
    1120:	1a000001 	bne	112c <morecore+0x4c>
    1124:	e3a03000 	mov	r3, #0
    1128:	ea00000a 	b	1158 <morecore+0x78>
    112c:	e51b3008 	ldr	r3, [fp, #-8]
    1130:	e50b300c 	str	r3, [fp, #-12]
    1134:	e51b300c 	ldr	r3, [fp, #-12]
    1138:	e51b2010 	ldr	r2, [fp, #-16]
    113c:	e5832004 	str	r2, [r3, #4]
    1140:	e51b300c 	ldr	r3, [fp, #-12]
    1144:	e2833008 	add	r3, r3, #8
    1148:	e1a00003 	mov	r0, r3
    114c:	ebffff84 	bl	f64 <free>
    1150:	e59f300c 	ldr	r3, [pc, #12]	@ 1164 <morecore+0x84>
    1154:	e5933000 	ldr	r3, [r3]
    1158:	e1a00003 	mov	r0, r3
    115c:	e24bd004 	sub	sp, fp, #4
    1160:	e8bd8800 	pop	{fp, pc}
    1164:	00001684 	.word	0x00001684

00001168 <malloc>:
    1168:	e92d4800 	push	{fp, lr}
    116c:	e28db004 	add	fp, sp, #4
    1170:	e24dd018 	sub	sp, sp, #24
    1174:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1178:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    117c:	e2833007 	add	r3, r3, #7
    1180:	e1a031a3 	lsr	r3, r3, #3
    1184:	e2833001 	add	r3, r3, #1
    1188:	e50b3010 	str	r3, [fp, #-16]
    118c:	e59f3134 	ldr	r3, [pc, #308]	@ 12c8 <malloc+0x160>
    1190:	e5933000 	ldr	r3, [r3]
    1194:	e50b300c 	str	r3, [fp, #-12]
    1198:	e51b300c 	ldr	r3, [fp, #-12]
    119c:	e3530000 	cmp	r3, #0
    11a0:	1a00000b 	bne	11d4 <malloc+0x6c>
    11a4:	e59f3120 	ldr	r3, [pc, #288]	@ 12cc <malloc+0x164>
    11a8:	e50b300c 	str	r3, [fp, #-12]
    11ac:	e59f2114 	ldr	r2, [pc, #276]	@ 12c8 <malloc+0x160>
    11b0:	e51b300c 	ldr	r3, [fp, #-12]
    11b4:	e5823000 	str	r3, [r2]
    11b8:	e59f3108 	ldr	r3, [pc, #264]	@ 12c8 <malloc+0x160>
    11bc:	e5933000 	ldr	r3, [r3]
    11c0:	e59f2104 	ldr	r2, [pc, #260]	@ 12cc <malloc+0x164>
    11c4:	e5823000 	str	r3, [r2]
    11c8:	e59f30fc 	ldr	r3, [pc, #252]	@ 12cc <malloc+0x164>
    11cc:	e3a02000 	mov	r2, #0
    11d0:	e5832004 	str	r2, [r3, #4]
    11d4:	e51b300c 	ldr	r3, [fp, #-12]
    11d8:	e5933000 	ldr	r3, [r3]
    11dc:	e50b3008 	str	r3, [fp, #-8]
    11e0:	e51b3008 	ldr	r3, [fp, #-8]
    11e4:	e5933004 	ldr	r3, [r3, #4]
    11e8:	e51b2010 	ldr	r2, [fp, #-16]
    11ec:	e1520003 	cmp	r2, r3
    11f0:	8a00001e 	bhi	1270 <malloc+0x108>
    11f4:	e51b3008 	ldr	r3, [fp, #-8]
    11f8:	e5933004 	ldr	r3, [r3, #4]
    11fc:	e51b2010 	ldr	r2, [fp, #-16]
    1200:	e1520003 	cmp	r2, r3
    1204:	1a000004 	bne	121c <malloc+0xb4>
    1208:	e51b3008 	ldr	r3, [fp, #-8]
    120c:	e5932000 	ldr	r2, [r3]
    1210:	e51b300c 	ldr	r3, [fp, #-12]
    1214:	e5832000 	str	r2, [r3]
    1218:	ea00000e 	b	1258 <malloc+0xf0>
    121c:	e51b3008 	ldr	r3, [fp, #-8]
    1220:	e5932004 	ldr	r2, [r3, #4]
    1224:	e51b3010 	ldr	r3, [fp, #-16]
    1228:	e0422003 	sub	r2, r2, r3
    122c:	e51b3008 	ldr	r3, [fp, #-8]
    1230:	e5832004 	str	r2, [r3, #4]
    1234:	e51b3008 	ldr	r3, [fp, #-8]
    1238:	e5933004 	ldr	r3, [r3, #4]
    123c:	e1a03183 	lsl	r3, r3, #3
    1240:	e51b2008 	ldr	r2, [fp, #-8]
    1244:	e0823003 	add	r3, r2, r3
    1248:	e50b3008 	str	r3, [fp, #-8]
    124c:	e51b3008 	ldr	r3, [fp, #-8]
    1250:	e51b2010 	ldr	r2, [fp, #-16]
    1254:	e5832004 	str	r2, [r3, #4]
    1258:	e59f2068 	ldr	r2, [pc, #104]	@ 12c8 <malloc+0x160>
    125c:	e51b300c 	ldr	r3, [fp, #-12]
    1260:	e5823000 	str	r3, [r2]
    1264:	e51b3008 	ldr	r3, [fp, #-8]
    1268:	e2833008 	add	r3, r3, #8
    126c:	ea000012 	b	12bc <malloc+0x154>
    1270:	e59f3050 	ldr	r3, [pc, #80]	@ 12c8 <malloc+0x160>
    1274:	e5933000 	ldr	r3, [r3]
    1278:	e51b2008 	ldr	r2, [fp, #-8]
    127c:	e1520003 	cmp	r2, r3
    1280:	1a000007 	bne	12a4 <malloc+0x13c>
    1284:	e51b0010 	ldr	r0, [fp, #-16]
    1288:	ebffff94 	bl	10e0 <morecore>
    128c:	e50b0008 	str	r0, [fp, #-8]
    1290:	e51b3008 	ldr	r3, [fp, #-8]
    1294:	e3530000 	cmp	r3, #0
    1298:	1a000001 	bne	12a4 <malloc+0x13c>
    129c:	e3a03000 	mov	r3, #0
    12a0:	ea000005 	b	12bc <malloc+0x154>
    12a4:	e51b3008 	ldr	r3, [fp, #-8]
    12a8:	e50b300c 	str	r3, [fp, #-12]
    12ac:	e51b3008 	ldr	r3, [fp, #-8]
    12b0:	e5933000 	ldr	r3, [r3]
    12b4:	e50b3008 	str	r3, [fp, #-8]
    12b8:	eaffffc8 	b	11e0 <malloc+0x78>
    12bc:	e1a00003 	mov	r0, r3
    12c0:	e24bd004 	sub	sp, fp, #4
    12c4:	e8bd8800 	pop	{fp, pc}
    12c8:	00001684 	.word	0x00001684
    12cc:	0000167c 	.word	0x0000167c

000012d0 <__udivsi3>:
    12d0:	e2512001 	subs	r2, r1, #1
    12d4:	012fff1e 	bxeq	lr
    12d8:	3a000036 	bcc	13b8 <__udivsi3+0xe8>
    12dc:	e1500001 	cmp	r0, r1
    12e0:	9a000022 	bls	1370 <__udivsi3+0xa0>
    12e4:	e1110002 	tst	r1, r2
    12e8:	0a000023 	beq	137c <__udivsi3+0xac>
    12ec:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    12f0:	01a01181 	lsleq	r1, r1, #3
    12f4:	03a03008 	moveq	r3, #8
    12f8:	13a03001 	movne	r3, #1
    12fc:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1300:	31510000 	cmpcc	r1, r0
    1304:	31a01201 	lslcc	r1, r1, #4
    1308:	31a03203 	lslcc	r3, r3, #4
    130c:	3afffffa 	bcc	12fc <__udivsi3+0x2c>
    1310:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1314:	31510000 	cmpcc	r1, r0
    1318:	31a01081 	lslcc	r1, r1, #1
    131c:	31a03083 	lslcc	r3, r3, #1
    1320:	3afffffa 	bcc	1310 <__udivsi3+0x40>
    1324:	e3a02000 	mov	r2, #0
    1328:	e1500001 	cmp	r0, r1
    132c:	20400001 	subcs	r0, r0, r1
    1330:	21822003 	orrcs	r2, r2, r3
    1334:	e15000a1 	cmp	r0, r1, lsr #1
    1338:	204000a1 	subcs	r0, r0, r1, lsr #1
    133c:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1340:	e1500121 	cmp	r0, r1, lsr #2
    1344:	20400121 	subcs	r0, r0, r1, lsr #2
    1348:	21822123 	orrcs	r2, r2, r3, lsr #2
    134c:	e15001a1 	cmp	r0, r1, lsr #3
    1350:	204001a1 	subcs	r0, r0, r1, lsr #3
    1354:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1358:	e3500000 	cmp	r0, #0
    135c:	11b03223 	lsrsne	r3, r3, #4
    1360:	11a01221 	lsrne	r1, r1, #4
    1364:	1affffef 	bne	1328 <__udivsi3+0x58>
    1368:	e1a00002 	mov	r0, r2
    136c:	e12fff1e 	bx	lr
    1370:	03a00001 	moveq	r0, #1
    1374:	13a00000 	movne	r0, #0
    1378:	e12fff1e 	bx	lr
    137c:	e3510801 	cmp	r1, #65536	@ 0x10000
    1380:	21a01821 	lsrcs	r1, r1, #16
    1384:	23a02010 	movcs	r2, #16
    1388:	33a02000 	movcc	r2, #0
    138c:	e3510c01 	cmp	r1, #256	@ 0x100
    1390:	21a01421 	lsrcs	r1, r1, #8
    1394:	22822008 	addcs	r2, r2, #8
    1398:	e3510010 	cmp	r1, #16
    139c:	21a01221 	lsrcs	r1, r1, #4
    13a0:	22822004 	addcs	r2, r2, #4
    13a4:	e3510004 	cmp	r1, #4
    13a8:	82822003 	addhi	r2, r2, #3
    13ac:	908220a1 	addls	r2, r2, r1, lsr #1
    13b0:	e1a00230 	lsr	r0, r0, r2
    13b4:	e12fff1e 	bx	lr
    13b8:	e3500000 	cmp	r0, #0
    13bc:	13e00000 	mvnne	r0, #0
    13c0:	ea000059 	b	152c <__aeabi_idiv0>

000013c4 <__aeabi_uidivmod>:
    13c4:	e3510000 	cmp	r1, #0
    13c8:	0afffffa 	beq	13b8 <__udivsi3+0xe8>
    13cc:	e92d4003 	push	{r0, r1, lr}
    13d0:	ebffffbe 	bl	12d0 <__udivsi3>
    13d4:	e8bd4006 	pop	{r1, r2, lr}
    13d8:	e0030092 	mul	r3, r2, r0
    13dc:	e0411003 	sub	r1, r1, r3
    13e0:	e12fff1e 	bx	lr

000013e4 <__divsi3>:
    13e4:	e3510000 	cmp	r1, #0
    13e8:	0a000043 	beq	14fc <.divsi3_skip_div0_test+0x110>

000013ec <.divsi3_skip_div0_test>:
    13ec:	e020c001 	eor	ip, r0, r1
    13f0:	42611000 	rsbmi	r1, r1, #0
    13f4:	e2512001 	subs	r2, r1, #1
    13f8:	0a000027 	beq	149c <.divsi3_skip_div0_test+0xb0>
    13fc:	e1b03000 	movs	r3, r0
    1400:	42603000 	rsbmi	r3, r0, #0
    1404:	e1530001 	cmp	r3, r1
    1408:	9a000026 	bls	14a8 <.divsi3_skip_div0_test+0xbc>
    140c:	e1110002 	tst	r1, r2
    1410:	0a000028 	beq	14b8 <.divsi3_skip_div0_test+0xcc>
    1414:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1418:	01a01181 	lsleq	r1, r1, #3
    141c:	03a02008 	moveq	r2, #8
    1420:	13a02001 	movne	r2, #1
    1424:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1428:	31510003 	cmpcc	r1, r3
    142c:	31a01201 	lslcc	r1, r1, #4
    1430:	31a02202 	lslcc	r2, r2, #4
    1434:	3afffffa 	bcc	1424 <.divsi3_skip_div0_test+0x38>
    1438:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    143c:	31510003 	cmpcc	r1, r3
    1440:	31a01081 	lslcc	r1, r1, #1
    1444:	31a02082 	lslcc	r2, r2, #1
    1448:	3afffffa 	bcc	1438 <.divsi3_skip_div0_test+0x4c>
    144c:	e3a00000 	mov	r0, #0
    1450:	e1530001 	cmp	r3, r1
    1454:	20433001 	subcs	r3, r3, r1
    1458:	21800002 	orrcs	r0, r0, r2
    145c:	e15300a1 	cmp	r3, r1, lsr #1
    1460:	204330a1 	subcs	r3, r3, r1, lsr #1
    1464:	218000a2 	orrcs	r0, r0, r2, lsr #1
    1468:	e1530121 	cmp	r3, r1, lsr #2
    146c:	20433121 	subcs	r3, r3, r1, lsr #2
    1470:	21800122 	orrcs	r0, r0, r2, lsr #2
    1474:	e15301a1 	cmp	r3, r1, lsr #3
    1478:	204331a1 	subcs	r3, r3, r1, lsr #3
    147c:	218001a2 	orrcs	r0, r0, r2, lsr #3
    1480:	e3530000 	cmp	r3, #0
    1484:	11b02222 	lsrsne	r2, r2, #4
    1488:	11a01221 	lsrne	r1, r1, #4
    148c:	1affffef 	bne	1450 <.divsi3_skip_div0_test+0x64>
    1490:	e35c0000 	cmp	ip, #0
    1494:	42600000 	rsbmi	r0, r0, #0
    1498:	e12fff1e 	bx	lr
    149c:	e13c0000 	teq	ip, r0
    14a0:	42600000 	rsbmi	r0, r0, #0
    14a4:	e12fff1e 	bx	lr
    14a8:	33a00000 	movcc	r0, #0
    14ac:	01a00fcc 	asreq	r0, ip, #31
    14b0:	03800001 	orreq	r0, r0, #1
    14b4:	e12fff1e 	bx	lr
    14b8:	e3510801 	cmp	r1, #65536	@ 0x10000
    14bc:	21a01821 	lsrcs	r1, r1, #16
    14c0:	23a02010 	movcs	r2, #16
    14c4:	33a02000 	movcc	r2, #0
    14c8:	e3510c01 	cmp	r1, #256	@ 0x100
    14cc:	21a01421 	lsrcs	r1, r1, #8
    14d0:	22822008 	addcs	r2, r2, #8
    14d4:	e3510010 	cmp	r1, #16
    14d8:	21a01221 	lsrcs	r1, r1, #4
    14dc:	22822004 	addcs	r2, r2, #4
    14e0:	e3510004 	cmp	r1, #4
    14e4:	82822003 	addhi	r2, r2, #3
    14e8:	908220a1 	addls	r2, r2, r1, lsr #1
    14ec:	e35c0000 	cmp	ip, #0
    14f0:	e1a00233 	lsr	r0, r3, r2
    14f4:	42600000 	rsbmi	r0, r0, #0
    14f8:	e12fff1e 	bx	lr
    14fc:	e3500000 	cmp	r0, #0
    1500:	c3e00102 	mvngt	r0, #-2147483648	@ 0x80000000
    1504:	b3a00102 	movlt	r0, #-2147483648	@ 0x80000000
    1508:	ea000007 	b	152c <__aeabi_idiv0>

0000150c <__aeabi_idivmod>:
    150c:	e3510000 	cmp	r1, #0
    1510:	0afffff9 	beq	14fc <.divsi3_skip_div0_test+0x110>
    1514:	e92d4003 	push	{r0, r1, lr}
    1518:	ebffffb3 	bl	13ec <.divsi3_skip_div0_test>
    151c:	e8bd4006 	pop	{r1, r2, lr}
    1520:	e0030092 	mul	r3, r2, r0
    1524:	e0411003 	sub	r1, r1, r3
    1528:	e12fff1e 	bx	lr

0000152c <__aeabi_idiv0>:
    152c:	e12fff1e 	bx	lr
