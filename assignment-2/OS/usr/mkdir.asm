
_mkdir:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      14:	e51b3010 	ldr	r3, [fp, #-16]
      18:	e3530001 	cmp	r3, #1
      1c:	ca000003 	bgt	30 <main+0x30>
      20:	e59f1084 	ldr	r1, [pc, #132]	@ ac <main+0xac>
      24:	e3a00002 	mov	r0, #2
      28:	eb00029d 	bl	aa4 <printf>
      2c:	eb00015f 	bl	5b0 <exit>
      30:	e3a03001 	mov	r3, #1
      34:	e50b3008 	str	r3, [fp, #-8]
      38:	ea000016 	b	98 <main+0x98>
      3c:	e51b3008 	ldr	r3, [fp, #-8]
      40:	e1a03103 	lsl	r3, r3, #2
      44:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      48:	e0823003 	add	r3, r2, r3
      4c:	e5933000 	ldr	r3, [r3]
      50:	e1a00003 	mov	r0, r3
      54:	eb0001ca 	bl	784 <mkdir>
      58:	e1a03000 	mov	r3, r0
      5c:	e3530000 	cmp	r3, #0
      60:	aa000009 	bge	8c <main+0x8c>
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e1a03103 	lsl	r3, r3, #2
      6c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      70:	e0823003 	add	r3, r2, r3
      74:	e5933000 	ldr	r3, [r3]
      78:	e1a02003 	mov	r2, r3
      7c:	e59f102c 	ldr	r1, [pc, #44]	@ b0 <main+0xb0>
      80:	e3a00002 	mov	r0, #2
      84:	eb000286 	bl	aa4 <printf>
      88:	ea000006 	b	a8 <main+0xa8>
      8c:	e51b3008 	ldr	r3, [fp, #-8]
      90:	e2833001 	add	r3, r3, #1
      94:	e50b3008 	str	r3, [fp, #-8]
      98:	e51b2008 	ldr	r2, [fp, #-8]
      9c:	e51b3010 	ldr	r3, [fp, #-16]
      a0:	e1520003 	cmp	r2, r3
      a4:	baffffe4 	blt	3c <main+0x3c>
      a8:	eb000140 	bl	5b0 <exit>
      ac:	00001160 	.word	0x00001160
      b0:	00001178 	.word	0x00001178

000000b4 <strcpy>:
      b4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      b8:	e28db000 	add	fp, sp, #0
      bc:	e24dd014 	sub	sp, sp, #20
      c0:	e50b0010 	str	r0, [fp, #-16]
      c4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      c8:	e51b3010 	ldr	r3, [fp, #-16]
      cc:	e50b3008 	str	r3, [fp, #-8]
      d0:	e1a00000 	nop			@ (mov r0, r0)
      d4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      d8:	e2823001 	add	r3, r2, #1
      dc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      e0:	e51b3010 	ldr	r3, [fp, #-16]
      e4:	e2831001 	add	r1, r3, #1
      e8:	e50b1010 	str	r1, [fp, #-16]
      ec:	e5d22000 	ldrb	r2, [r2]
      f0:	e5c32000 	strb	r2, [r3]
      f4:	e5d33000 	ldrb	r3, [r3]
      f8:	e3530000 	cmp	r3, #0
      fc:	1afffff4 	bne	d4 <strcpy+0x20>
     100:	e51b3008 	ldr	r3, [fp, #-8]
     104:	e1a00003 	mov	r0, r3
     108:	e28bd000 	add	sp, fp, #0
     10c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     110:	e12fff1e 	bx	lr

00000114 <strcmp>:
     114:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     118:	e28db000 	add	fp, sp, #0
     11c:	e24dd00c 	sub	sp, sp, #12
     120:	e50b0008 	str	r0, [fp, #-8]
     124:	e50b100c 	str	r1, [fp, #-12]
     128:	ea000005 	b	144 <strcmp+0x30>
     12c:	e51b3008 	ldr	r3, [fp, #-8]
     130:	e2833001 	add	r3, r3, #1
     134:	e50b3008 	str	r3, [fp, #-8]
     138:	e51b300c 	ldr	r3, [fp, #-12]
     13c:	e2833001 	add	r3, r3, #1
     140:	e50b300c 	str	r3, [fp, #-12]
     144:	e51b3008 	ldr	r3, [fp, #-8]
     148:	e5d33000 	ldrb	r3, [r3]
     14c:	e3530000 	cmp	r3, #0
     150:	0a000005 	beq	16c <strcmp+0x58>
     154:	e51b3008 	ldr	r3, [fp, #-8]
     158:	e5d32000 	ldrb	r2, [r3]
     15c:	e51b300c 	ldr	r3, [fp, #-12]
     160:	e5d33000 	ldrb	r3, [r3]
     164:	e1520003 	cmp	r2, r3
     168:	0affffef 	beq	12c <strcmp+0x18>
     16c:	e51b3008 	ldr	r3, [fp, #-8]
     170:	e5d33000 	ldrb	r3, [r3]
     174:	e1a02003 	mov	r2, r3
     178:	e51b300c 	ldr	r3, [fp, #-12]
     17c:	e5d33000 	ldrb	r3, [r3]
     180:	e0423003 	sub	r3, r2, r3
     184:	e1a00003 	mov	r0, r3
     188:	e28bd000 	add	sp, fp, #0
     18c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     190:	e12fff1e 	bx	lr

00000194 <strlen>:
     194:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     198:	e28db000 	add	fp, sp, #0
     19c:	e24dd014 	sub	sp, sp, #20
     1a0:	e50b0010 	str	r0, [fp, #-16]
     1a4:	e3a03000 	mov	r3, #0
     1a8:	e50b3008 	str	r3, [fp, #-8]
     1ac:	ea000002 	b	1bc <strlen+0x28>
     1b0:	e51b3008 	ldr	r3, [fp, #-8]
     1b4:	e2833001 	add	r3, r3, #1
     1b8:	e50b3008 	str	r3, [fp, #-8]
     1bc:	e51b3008 	ldr	r3, [fp, #-8]
     1c0:	e51b2010 	ldr	r2, [fp, #-16]
     1c4:	e0823003 	add	r3, r2, r3
     1c8:	e5d33000 	ldrb	r3, [r3]
     1cc:	e3530000 	cmp	r3, #0
     1d0:	1afffff6 	bne	1b0 <strlen+0x1c>
     1d4:	e51b3008 	ldr	r3, [fp, #-8]
     1d8:	e1a00003 	mov	r0, r3
     1dc:	e28bd000 	add	sp, fp, #0
     1e0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1e4:	e12fff1e 	bx	lr

000001e8 <memset>:
     1e8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1ec:	e28db000 	add	fp, sp, #0
     1f0:	e24dd024 	sub	sp, sp, #36	@ 0x24
     1f4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     1f8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     1fc:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     200:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     204:	e50b3008 	str	r3, [fp, #-8]
     208:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     20c:	e54b300d 	strb	r3, [fp, #-13]
     210:	e55b200d 	ldrb	r2, [fp, #-13]
     214:	e1a03002 	mov	r3, r2
     218:	e1a03403 	lsl	r3, r3, #8
     21c:	e0833002 	add	r3, r3, r2
     220:	e1a03803 	lsl	r3, r3, #16
     224:	e1a02003 	mov	r2, r3
     228:	e55b300d 	ldrb	r3, [fp, #-13]
     22c:	e1a03403 	lsl	r3, r3, #8
     230:	e1822003 	orr	r2, r2, r3
     234:	e55b300d 	ldrb	r3, [fp, #-13]
     238:	e1823003 	orr	r3, r2, r3
     23c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     240:	ea000008 	b	268 <memset+0x80>
     244:	e51b3008 	ldr	r3, [fp, #-8]
     248:	e55b200d 	ldrb	r2, [fp, #-13]
     24c:	e5c32000 	strb	r2, [r3]
     250:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     254:	e2433001 	sub	r3, r3, #1
     258:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     25c:	e51b3008 	ldr	r3, [fp, #-8]
     260:	e2833001 	add	r3, r3, #1
     264:	e50b3008 	str	r3, [fp, #-8]
     268:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     26c:	e3530000 	cmp	r3, #0
     270:	0a000003 	beq	284 <memset+0x9c>
     274:	e51b3008 	ldr	r3, [fp, #-8]
     278:	e2033003 	and	r3, r3, #3
     27c:	e3530000 	cmp	r3, #0
     280:	1affffef 	bne	244 <memset+0x5c>
     284:	e51b3008 	ldr	r3, [fp, #-8]
     288:	e50b300c 	str	r3, [fp, #-12]
     28c:	ea000008 	b	2b4 <memset+0xcc>
     290:	e51b300c 	ldr	r3, [fp, #-12]
     294:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     298:	e5832000 	str	r2, [r3]
     29c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2a0:	e2433004 	sub	r3, r3, #4
     2a4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2a8:	e51b300c 	ldr	r3, [fp, #-12]
     2ac:	e2833004 	add	r3, r3, #4
     2b0:	e50b300c 	str	r3, [fp, #-12]
     2b4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2b8:	e3530003 	cmp	r3, #3
     2bc:	8afffff3 	bhi	290 <memset+0xa8>
     2c0:	e51b300c 	ldr	r3, [fp, #-12]
     2c4:	e50b3008 	str	r3, [fp, #-8]
     2c8:	ea000008 	b	2f0 <memset+0x108>
     2cc:	e51b3008 	ldr	r3, [fp, #-8]
     2d0:	e55b200d 	ldrb	r2, [fp, #-13]
     2d4:	e5c32000 	strb	r2, [r3]
     2d8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2dc:	e2433001 	sub	r3, r3, #1
     2e0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2e4:	e51b3008 	ldr	r3, [fp, #-8]
     2e8:	e2833001 	add	r3, r3, #1
     2ec:	e50b3008 	str	r3, [fp, #-8]
     2f0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2f4:	e3530000 	cmp	r3, #0
     2f8:	1afffff3 	bne	2cc <memset+0xe4>
     2fc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     300:	e1a00003 	mov	r0, r3
     304:	e28bd000 	add	sp, fp, #0
     308:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     30c:	e12fff1e 	bx	lr

00000310 <strchr>:
     310:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     314:	e28db000 	add	fp, sp, #0
     318:	e24dd00c 	sub	sp, sp, #12
     31c:	e50b0008 	str	r0, [fp, #-8]
     320:	e1a03001 	mov	r3, r1
     324:	e54b3009 	strb	r3, [fp, #-9]
     328:	ea000009 	b	354 <strchr+0x44>
     32c:	e51b3008 	ldr	r3, [fp, #-8]
     330:	e5d33000 	ldrb	r3, [r3]
     334:	e55b2009 	ldrb	r2, [fp, #-9]
     338:	e1520003 	cmp	r2, r3
     33c:	1a000001 	bne	348 <strchr+0x38>
     340:	e51b3008 	ldr	r3, [fp, #-8]
     344:	ea000007 	b	368 <strchr+0x58>
     348:	e51b3008 	ldr	r3, [fp, #-8]
     34c:	e2833001 	add	r3, r3, #1
     350:	e50b3008 	str	r3, [fp, #-8]
     354:	e51b3008 	ldr	r3, [fp, #-8]
     358:	e5d33000 	ldrb	r3, [r3]
     35c:	e3530000 	cmp	r3, #0
     360:	1afffff1 	bne	32c <strchr+0x1c>
     364:	e3a03000 	mov	r3, #0
     368:	e1a00003 	mov	r0, r3
     36c:	e28bd000 	add	sp, fp, #0
     370:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     374:	e12fff1e 	bx	lr

00000378 <gets>:
     378:	e92d4800 	push	{fp, lr}
     37c:	e28db004 	add	fp, sp, #4
     380:	e24dd018 	sub	sp, sp, #24
     384:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     388:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     38c:	e3a03000 	mov	r3, #0
     390:	e50b3008 	str	r3, [fp, #-8]
     394:	ea000016 	b	3f4 <gets+0x7c>
     398:	e24b300d 	sub	r3, fp, #13
     39c:	e3a02001 	mov	r2, #1
     3a0:	e1a01003 	mov	r1, r3
     3a4:	e3a00000 	mov	r0, #0
     3a8:	eb00009b 	bl	61c <read>
     3ac:	e50b000c 	str	r0, [fp, #-12]
     3b0:	e51b300c 	ldr	r3, [fp, #-12]
     3b4:	e3530000 	cmp	r3, #0
     3b8:	da000013 	ble	40c <gets+0x94>
     3bc:	e51b3008 	ldr	r3, [fp, #-8]
     3c0:	e2832001 	add	r2, r3, #1
     3c4:	e50b2008 	str	r2, [fp, #-8]
     3c8:	e1a02003 	mov	r2, r3
     3cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3d0:	e0833002 	add	r3, r3, r2
     3d4:	e55b200d 	ldrb	r2, [fp, #-13]
     3d8:	e5c32000 	strb	r2, [r3]
     3dc:	e55b300d 	ldrb	r3, [fp, #-13]
     3e0:	e353000a 	cmp	r3, #10
     3e4:	0a000009 	beq	410 <gets+0x98>
     3e8:	e55b300d 	ldrb	r3, [fp, #-13]
     3ec:	e353000d 	cmp	r3, #13
     3f0:	0a000006 	beq	410 <gets+0x98>
     3f4:	e51b3008 	ldr	r3, [fp, #-8]
     3f8:	e2833001 	add	r3, r3, #1
     3fc:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     400:	e1520003 	cmp	r2, r3
     404:	caffffe3 	bgt	398 <gets+0x20>
     408:	ea000000 	b	410 <gets+0x98>
     40c:	e1a00000 	nop			@ (mov r0, r0)
     410:	e51b3008 	ldr	r3, [fp, #-8]
     414:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     418:	e0823003 	add	r3, r2, r3
     41c:	e3a02000 	mov	r2, #0
     420:	e5c32000 	strb	r2, [r3]
     424:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     428:	e1a00003 	mov	r0, r3
     42c:	e24bd004 	sub	sp, fp, #4
     430:	e8bd8800 	pop	{fp, pc}

00000434 <stat>:
     434:	e92d4800 	push	{fp, lr}
     438:	e28db004 	add	fp, sp, #4
     43c:	e24dd010 	sub	sp, sp, #16
     440:	e50b0010 	str	r0, [fp, #-16]
     444:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     448:	e3a01000 	mov	r1, #0
     44c:	e51b0010 	ldr	r0, [fp, #-16]
     450:	eb00009e 	bl	6d0 <open>
     454:	e50b0008 	str	r0, [fp, #-8]
     458:	e51b3008 	ldr	r3, [fp, #-8]
     45c:	e3530000 	cmp	r3, #0
     460:	aa000001 	bge	46c <stat+0x38>
     464:	e3e03000 	mvn	r3, #0
     468:	ea000006 	b	488 <stat+0x54>
     46c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     470:	e51b0008 	ldr	r0, [fp, #-8]
     474:	eb0000b0 	bl	73c <fstat>
     478:	e50b000c 	str	r0, [fp, #-12]
     47c:	e51b0008 	ldr	r0, [fp, #-8]
     480:	eb000077 	bl	664 <close>
     484:	e51b300c 	ldr	r3, [fp, #-12]
     488:	e1a00003 	mov	r0, r3
     48c:	e24bd004 	sub	sp, fp, #4
     490:	e8bd8800 	pop	{fp, pc}

00000494 <atoi>:
     494:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     498:	e28db000 	add	fp, sp, #0
     49c:	e24dd014 	sub	sp, sp, #20
     4a0:	e50b0010 	str	r0, [fp, #-16]
     4a4:	e3a03000 	mov	r3, #0
     4a8:	e50b3008 	str	r3, [fp, #-8]
     4ac:	ea00000c 	b	4e4 <atoi+0x50>
     4b0:	e51b2008 	ldr	r2, [fp, #-8]
     4b4:	e1a03002 	mov	r3, r2
     4b8:	e1a03103 	lsl	r3, r3, #2
     4bc:	e0833002 	add	r3, r3, r2
     4c0:	e1a03083 	lsl	r3, r3, #1
     4c4:	e1a01003 	mov	r1, r3
     4c8:	e51b3010 	ldr	r3, [fp, #-16]
     4cc:	e2832001 	add	r2, r3, #1
     4d0:	e50b2010 	str	r2, [fp, #-16]
     4d4:	e5d33000 	ldrb	r3, [r3]
     4d8:	e0813003 	add	r3, r1, r3
     4dc:	e2433030 	sub	r3, r3, #48	@ 0x30
     4e0:	e50b3008 	str	r3, [fp, #-8]
     4e4:	e51b3010 	ldr	r3, [fp, #-16]
     4e8:	e5d33000 	ldrb	r3, [r3]
     4ec:	e353002f 	cmp	r3, #47	@ 0x2f
     4f0:	9a000003 	bls	504 <atoi+0x70>
     4f4:	e51b3010 	ldr	r3, [fp, #-16]
     4f8:	e5d33000 	ldrb	r3, [r3]
     4fc:	e3530039 	cmp	r3, #57	@ 0x39
     500:	9affffea 	bls	4b0 <atoi+0x1c>
     504:	e51b3008 	ldr	r3, [fp, #-8]
     508:	e1a00003 	mov	r0, r3
     50c:	e28bd000 	add	sp, fp, #0
     510:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     514:	e12fff1e 	bx	lr

00000518 <memmove>:
     518:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     51c:	e28db000 	add	fp, sp, #0
     520:	e24dd01c 	sub	sp, sp, #28
     524:	e50b0010 	str	r0, [fp, #-16]
     528:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     52c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     530:	e51b3010 	ldr	r3, [fp, #-16]
     534:	e50b3008 	str	r3, [fp, #-8]
     538:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     53c:	e50b300c 	str	r3, [fp, #-12]
     540:	ea000007 	b	564 <memmove+0x4c>
     544:	e51b200c 	ldr	r2, [fp, #-12]
     548:	e2823001 	add	r3, r2, #1
     54c:	e50b300c 	str	r3, [fp, #-12]
     550:	e51b3008 	ldr	r3, [fp, #-8]
     554:	e2831001 	add	r1, r3, #1
     558:	e50b1008 	str	r1, [fp, #-8]
     55c:	e5d22000 	ldrb	r2, [r2]
     560:	e5c32000 	strb	r2, [r3]
     564:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     568:	e2432001 	sub	r2, r3, #1
     56c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     570:	e3530000 	cmp	r3, #0
     574:	cafffff2 	bgt	544 <memmove+0x2c>
     578:	e51b3010 	ldr	r3, [fp, #-16]
     57c:	e1a00003 	mov	r0, r3
     580:	e28bd000 	add	sp, fp, #0
     584:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     588:	e12fff1e 	bx	lr

0000058c <fork>:
     58c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     590:	e1a04003 	mov	r4, r3
     594:	e1a03002 	mov	r3, r2
     598:	e1a02001 	mov	r2, r1
     59c:	e1a01000 	mov	r1, r0
     5a0:	e3a00001 	mov	r0, #1
     5a4:	ef000000 	svc	0x00000000
     5a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5ac:	e12fff1e 	bx	lr

000005b0 <exit>:
     5b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5b4:	e1a04003 	mov	r4, r3
     5b8:	e1a03002 	mov	r3, r2
     5bc:	e1a02001 	mov	r2, r1
     5c0:	e1a01000 	mov	r1, r0
     5c4:	e3a00002 	mov	r0, #2
     5c8:	ef000000 	svc	0x00000000
     5cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5d0:	e12fff1e 	bx	lr

000005d4 <wait>:
     5d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5d8:	e1a04003 	mov	r4, r3
     5dc:	e1a03002 	mov	r3, r2
     5e0:	e1a02001 	mov	r2, r1
     5e4:	e1a01000 	mov	r1, r0
     5e8:	e3a00003 	mov	r0, #3
     5ec:	ef000000 	svc	0x00000000
     5f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5f4:	e12fff1e 	bx	lr

000005f8 <pipe>:
     5f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5fc:	e1a04003 	mov	r4, r3
     600:	e1a03002 	mov	r3, r2
     604:	e1a02001 	mov	r2, r1
     608:	e1a01000 	mov	r1, r0
     60c:	e3a00004 	mov	r0, #4
     610:	ef000000 	svc	0x00000000
     614:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     618:	e12fff1e 	bx	lr

0000061c <read>:
     61c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     620:	e1a04003 	mov	r4, r3
     624:	e1a03002 	mov	r3, r2
     628:	e1a02001 	mov	r2, r1
     62c:	e1a01000 	mov	r1, r0
     630:	e3a00005 	mov	r0, #5
     634:	ef000000 	svc	0x00000000
     638:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     63c:	e12fff1e 	bx	lr

00000640 <write>:
     640:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     644:	e1a04003 	mov	r4, r3
     648:	e1a03002 	mov	r3, r2
     64c:	e1a02001 	mov	r2, r1
     650:	e1a01000 	mov	r1, r0
     654:	e3a00010 	mov	r0, #16
     658:	ef000000 	svc	0x00000000
     65c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     660:	e12fff1e 	bx	lr

00000664 <close>:
     664:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     668:	e1a04003 	mov	r4, r3
     66c:	e1a03002 	mov	r3, r2
     670:	e1a02001 	mov	r2, r1
     674:	e1a01000 	mov	r1, r0
     678:	e3a00015 	mov	r0, #21
     67c:	ef000000 	svc	0x00000000
     680:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     684:	e12fff1e 	bx	lr

00000688 <kill>:
     688:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     68c:	e1a04003 	mov	r4, r3
     690:	e1a03002 	mov	r3, r2
     694:	e1a02001 	mov	r2, r1
     698:	e1a01000 	mov	r1, r0
     69c:	e3a00006 	mov	r0, #6
     6a0:	ef000000 	svc	0x00000000
     6a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6a8:	e12fff1e 	bx	lr

000006ac <exec>:
     6ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6b0:	e1a04003 	mov	r4, r3
     6b4:	e1a03002 	mov	r3, r2
     6b8:	e1a02001 	mov	r2, r1
     6bc:	e1a01000 	mov	r1, r0
     6c0:	e3a00007 	mov	r0, #7
     6c4:	ef000000 	svc	0x00000000
     6c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6cc:	e12fff1e 	bx	lr

000006d0 <open>:
     6d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6d4:	e1a04003 	mov	r4, r3
     6d8:	e1a03002 	mov	r3, r2
     6dc:	e1a02001 	mov	r2, r1
     6e0:	e1a01000 	mov	r1, r0
     6e4:	e3a0000f 	mov	r0, #15
     6e8:	ef000000 	svc	0x00000000
     6ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6f0:	e12fff1e 	bx	lr

000006f4 <mknod>:
     6f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6f8:	e1a04003 	mov	r4, r3
     6fc:	e1a03002 	mov	r3, r2
     700:	e1a02001 	mov	r2, r1
     704:	e1a01000 	mov	r1, r0
     708:	e3a00011 	mov	r0, #17
     70c:	ef000000 	svc	0x00000000
     710:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     714:	e12fff1e 	bx	lr

00000718 <unlink>:
     718:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     71c:	e1a04003 	mov	r4, r3
     720:	e1a03002 	mov	r3, r2
     724:	e1a02001 	mov	r2, r1
     728:	e1a01000 	mov	r1, r0
     72c:	e3a00012 	mov	r0, #18
     730:	ef000000 	svc	0x00000000
     734:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     738:	e12fff1e 	bx	lr

0000073c <fstat>:
     73c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     740:	e1a04003 	mov	r4, r3
     744:	e1a03002 	mov	r3, r2
     748:	e1a02001 	mov	r2, r1
     74c:	e1a01000 	mov	r1, r0
     750:	e3a00008 	mov	r0, #8
     754:	ef000000 	svc	0x00000000
     758:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     75c:	e12fff1e 	bx	lr

00000760 <link>:
     760:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     764:	e1a04003 	mov	r4, r3
     768:	e1a03002 	mov	r3, r2
     76c:	e1a02001 	mov	r2, r1
     770:	e1a01000 	mov	r1, r0
     774:	e3a00013 	mov	r0, #19
     778:	ef000000 	svc	0x00000000
     77c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     780:	e12fff1e 	bx	lr

00000784 <mkdir>:
     784:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     788:	e1a04003 	mov	r4, r3
     78c:	e1a03002 	mov	r3, r2
     790:	e1a02001 	mov	r2, r1
     794:	e1a01000 	mov	r1, r0
     798:	e3a00014 	mov	r0, #20
     79c:	ef000000 	svc	0x00000000
     7a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7a4:	e12fff1e 	bx	lr

000007a8 <chdir>:
     7a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7ac:	e1a04003 	mov	r4, r3
     7b0:	e1a03002 	mov	r3, r2
     7b4:	e1a02001 	mov	r2, r1
     7b8:	e1a01000 	mov	r1, r0
     7bc:	e3a00009 	mov	r0, #9
     7c0:	ef000000 	svc	0x00000000
     7c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7c8:	e12fff1e 	bx	lr

000007cc <dup>:
     7cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7d0:	e1a04003 	mov	r4, r3
     7d4:	e1a03002 	mov	r3, r2
     7d8:	e1a02001 	mov	r2, r1
     7dc:	e1a01000 	mov	r1, r0
     7e0:	e3a0000a 	mov	r0, #10
     7e4:	ef000000 	svc	0x00000000
     7e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7ec:	e12fff1e 	bx	lr

000007f0 <getpid>:
     7f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7f4:	e1a04003 	mov	r4, r3
     7f8:	e1a03002 	mov	r3, r2
     7fc:	e1a02001 	mov	r2, r1
     800:	e1a01000 	mov	r1, r0
     804:	e3a0000b 	mov	r0, #11
     808:	ef000000 	svc	0x00000000
     80c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     810:	e12fff1e 	bx	lr

00000814 <sbrk>:
     814:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     818:	e1a04003 	mov	r4, r3
     81c:	e1a03002 	mov	r3, r2
     820:	e1a02001 	mov	r2, r1
     824:	e1a01000 	mov	r1, r0
     828:	e3a0000c 	mov	r0, #12
     82c:	ef000000 	svc	0x00000000
     830:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     834:	e12fff1e 	bx	lr

00000838 <sleep>:
     838:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     83c:	e1a04003 	mov	r4, r3
     840:	e1a03002 	mov	r3, r2
     844:	e1a02001 	mov	r2, r1
     848:	e1a01000 	mov	r1, r0
     84c:	e3a0000d 	mov	r0, #13
     850:	ef000000 	svc	0x00000000
     854:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     858:	e12fff1e 	bx	lr

0000085c <uptime>:
     85c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     860:	e1a04003 	mov	r4, r3
     864:	e1a03002 	mov	r3, r2
     868:	e1a02001 	mov	r2, r1
     86c:	e1a01000 	mov	r1, r0
     870:	e3a0000e 	mov	r0, #14
     874:	ef000000 	svc	0x00000000
     878:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     87c:	e12fff1e 	bx	lr

00000880 <getprocs>:
     880:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     884:	e1a04003 	mov	r4, r3
     888:	e1a03002 	mov	r3, r2
     88c:	e1a02001 	mov	r2, r1
     890:	e1a01000 	mov	r1, r0
     894:	e3a00016 	mov	r0, #22
     898:	ef000000 	svc	0x00000000
     89c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8a0:	e12fff1e 	bx	lr

000008a4 <getpinfo>:
     8a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8a8:	e1a04003 	mov	r4, r3
     8ac:	e1a03002 	mov	r3, r2
     8b0:	e1a02001 	mov	r2, r1
     8b4:	e1a01000 	mov	r1, r0
     8b8:	e3a00018 	mov	r0, #24
     8bc:	ef000000 	svc	0x00000000
     8c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8c4:	e12fff1e 	bx	lr

000008c8 <settickets>:
     8c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8cc:	e1a04003 	mov	r4, r3
     8d0:	e1a03002 	mov	r3, r2
     8d4:	e1a02001 	mov	r2, r1
     8d8:	e1a01000 	mov	r1, r0
     8dc:	e3a00017 	mov	r0, #23
     8e0:	ef000000 	svc	0x00000000
     8e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8e8:	e12fff1e 	bx	lr

000008ec <srand>:
     8ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8f0:	e1a04003 	mov	r4, r3
     8f4:	e1a03002 	mov	r3, r2
     8f8:	e1a02001 	mov	r2, r1
     8fc:	e1a01000 	mov	r1, r0
     900:	e3a00019 	mov	r0, #25
     904:	ef000000 	svc	0x00000000
     908:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     90c:	e12fff1e 	bx	lr

00000910 <test>:
     910:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     914:	e1a04003 	mov	r4, r3
     918:	e1a03002 	mov	r3, r2
     91c:	e1a02001 	mov	r2, r1
     920:	e1a01000 	mov	r1, r0
     924:	e3a0001a 	mov	r0, #26
     928:	ef000000 	svc	0x00000000
     92c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     930:	e12fff1e 	bx	lr

00000934 <putc>:
     934:	e92d4800 	push	{fp, lr}
     938:	e28db004 	add	fp, sp, #4
     93c:	e24dd008 	sub	sp, sp, #8
     940:	e50b0008 	str	r0, [fp, #-8]
     944:	e1a03001 	mov	r3, r1
     948:	e54b3009 	strb	r3, [fp, #-9]
     94c:	e24b3009 	sub	r3, fp, #9
     950:	e3a02001 	mov	r2, #1
     954:	e1a01003 	mov	r1, r3
     958:	e51b0008 	ldr	r0, [fp, #-8]
     95c:	ebffff37 	bl	640 <write>
     960:	e1a00000 	nop			@ (mov r0, r0)
     964:	e24bd004 	sub	sp, fp, #4
     968:	e8bd8800 	pop	{fp, pc}

0000096c <printint>:
     96c:	e92d4800 	push	{fp, lr}
     970:	e28db004 	add	fp, sp, #4
     974:	e24dd030 	sub	sp, sp, #48	@ 0x30
     978:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     97c:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     980:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     984:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     988:	e3a03000 	mov	r3, #0
     98c:	e50b300c 	str	r3, [fp, #-12]
     990:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     994:	e3530000 	cmp	r3, #0
     998:	0a000008 	beq	9c0 <printint+0x54>
     99c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     9a0:	e3530000 	cmp	r3, #0
     9a4:	aa000005 	bge	9c0 <printint+0x54>
     9a8:	e3a03001 	mov	r3, #1
     9ac:	e50b300c 	str	r3, [fp, #-12]
     9b0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     9b4:	e2633000 	rsb	r3, r3, #0
     9b8:	e50b3010 	str	r3, [fp, #-16]
     9bc:	ea000001 	b	9c8 <printint+0x5c>
     9c0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     9c4:	e50b3010 	str	r3, [fp, #-16]
     9c8:	e3a03000 	mov	r3, #0
     9cc:	e50b3008 	str	r3, [fp, #-8]
     9d0:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     9d4:	e51b3010 	ldr	r3, [fp, #-16]
     9d8:	e1a01002 	mov	r1, r2
     9dc:	e1a00003 	mov	r0, r3
     9e0:	eb0001d5 	bl	113c <__aeabi_uidivmod>
     9e4:	e1a03001 	mov	r3, r1
     9e8:	e1a01003 	mov	r1, r3
     9ec:	e51b3008 	ldr	r3, [fp, #-8]
     9f0:	e2832001 	add	r2, r3, #1
     9f4:	e50b2008 	str	r2, [fp, #-8]
     9f8:	e59f20a0 	ldr	r2, [pc, #160]	@ aa0 <printint+0x134>
     9fc:	e7d22001 	ldrb	r2, [r2, r1]
     a00:	e2433004 	sub	r3, r3, #4
     a04:	e083300b 	add	r3, r3, fp
     a08:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     a0c:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     a10:	e1a01003 	mov	r1, r3
     a14:	e51b0010 	ldr	r0, [fp, #-16]
     a18:	eb00018a 	bl	1048 <__udivsi3>
     a1c:	e1a03000 	mov	r3, r0
     a20:	e50b3010 	str	r3, [fp, #-16]
     a24:	e51b3010 	ldr	r3, [fp, #-16]
     a28:	e3530000 	cmp	r3, #0
     a2c:	1affffe7 	bne	9d0 <printint+0x64>
     a30:	e51b300c 	ldr	r3, [fp, #-12]
     a34:	e3530000 	cmp	r3, #0
     a38:	0a00000e 	beq	a78 <printint+0x10c>
     a3c:	e51b3008 	ldr	r3, [fp, #-8]
     a40:	e2832001 	add	r2, r3, #1
     a44:	e50b2008 	str	r2, [fp, #-8]
     a48:	e2433004 	sub	r3, r3, #4
     a4c:	e083300b 	add	r3, r3, fp
     a50:	e3a0202d 	mov	r2, #45	@ 0x2d
     a54:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     a58:	ea000006 	b	a78 <printint+0x10c>
     a5c:	e24b2020 	sub	r2, fp, #32
     a60:	e51b3008 	ldr	r3, [fp, #-8]
     a64:	e0823003 	add	r3, r2, r3
     a68:	e5d33000 	ldrb	r3, [r3]
     a6c:	e1a01003 	mov	r1, r3
     a70:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     a74:	ebffffae 	bl	934 <putc>
     a78:	e51b3008 	ldr	r3, [fp, #-8]
     a7c:	e2433001 	sub	r3, r3, #1
     a80:	e50b3008 	str	r3, [fp, #-8]
     a84:	e51b3008 	ldr	r3, [fp, #-8]
     a88:	e3530000 	cmp	r3, #0
     a8c:	aafffff2 	bge	a5c <printint+0xf0>
     a90:	e1a00000 	nop			@ (mov r0, r0)
     a94:	e1a00000 	nop			@ (mov r0, r0)
     a98:	e24bd004 	sub	sp, fp, #4
     a9c:	e8bd8800 	pop	{fp, pc}
     aa0:	0000119c 	.word	0x0000119c

00000aa4 <printf>:
     aa4:	e92d000e 	push	{r1, r2, r3}
     aa8:	e92d4800 	push	{fp, lr}
     aac:	e28db004 	add	fp, sp, #4
     ab0:	e24dd024 	sub	sp, sp, #36	@ 0x24
     ab4:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     ab8:	e3a03000 	mov	r3, #0
     abc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     ac0:	e28b3008 	add	r3, fp, #8
     ac4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ac8:	e3a03000 	mov	r3, #0
     acc:	e50b3010 	str	r3, [fp, #-16]
     ad0:	ea000074 	b	ca8 <printf+0x204>
     ad4:	e59b2004 	ldr	r2, [fp, #4]
     ad8:	e51b3010 	ldr	r3, [fp, #-16]
     adc:	e0823003 	add	r3, r2, r3
     ae0:	e5d33000 	ldrb	r3, [r3]
     ae4:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     ae8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     aec:	e3530000 	cmp	r3, #0
     af0:	1a00000b 	bne	b24 <printf+0x80>
     af4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     af8:	e3530025 	cmp	r3, #37	@ 0x25
     afc:	1a000002 	bne	b0c <printf+0x68>
     b00:	e3a03025 	mov	r3, #37	@ 0x25
     b04:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b08:	ea000063 	b	c9c <printf+0x1f8>
     b0c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b10:	e6ef3073 	uxtb	r3, r3
     b14:	e1a01003 	mov	r1, r3
     b18:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b1c:	ebffff84 	bl	934 <putc>
     b20:	ea00005d 	b	c9c <printf+0x1f8>
     b24:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b28:	e3530025 	cmp	r3, #37	@ 0x25
     b2c:	1a00005a 	bne	c9c <printf+0x1f8>
     b30:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b34:	e3530064 	cmp	r3, #100	@ 0x64
     b38:	1a00000a 	bne	b68 <printf+0xc4>
     b3c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b40:	e5933000 	ldr	r3, [r3]
     b44:	e1a01003 	mov	r1, r3
     b48:	e3a03001 	mov	r3, #1
     b4c:	e3a0200a 	mov	r2, #10
     b50:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b54:	ebffff84 	bl	96c <printint>
     b58:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b5c:	e2833004 	add	r3, r3, #4
     b60:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b64:	ea00004a 	b	c94 <printf+0x1f0>
     b68:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b6c:	e3530078 	cmp	r3, #120	@ 0x78
     b70:	0a000002 	beq	b80 <printf+0xdc>
     b74:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b78:	e3530070 	cmp	r3, #112	@ 0x70
     b7c:	1a00000a 	bne	bac <printf+0x108>
     b80:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b84:	e5933000 	ldr	r3, [r3]
     b88:	e1a01003 	mov	r1, r3
     b8c:	e3a03000 	mov	r3, #0
     b90:	e3a02010 	mov	r2, #16
     b94:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b98:	ebffff73 	bl	96c <printint>
     b9c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ba0:	e2833004 	add	r3, r3, #4
     ba4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ba8:	ea000039 	b	c94 <printf+0x1f0>
     bac:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bb0:	e3530073 	cmp	r3, #115	@ 0x73
     bb4:	1a000018 	bne	c1c <printf+0x178>
     bb8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bbc:	e5933000 	ldr	r3, [r3]
     bc0:	e50b300c 	str	r3, [fp, #-12]
     bc4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bc8:	e2833004 	add	r3, r3, #4
     bcc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     bd0:	e51b300c 	ldr	r3, [fp, #-12]
     bd4:	e3530000 	cmp	r3, #0
     bd8:	1a00000a 	bne	c08 <printf+0x164>
     bdc:	e59f30f4 	ldr	r3, [pc, #244]	@ cd8 <printf+0x234>
     be0:	e50b300c 	str	r3, [fp, #-12]
     be4:	ea000007 	b	c08 <printf+0x164>
     be8:	e51b300c 	ldr	r3, [fp, #-12]
     bec:	e5d33000 	ldrb	r3, [r3]
     bf0:	e1a01003 	mov	r1, r3
     bf4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bf8:	ebffff4d 	bl	934 <putc>
     bfc:	e51b300c 	ldr	r3, [fp, #-12]
     c00:	e2833001 	add	r3, r3, #1
     c04:	e50b300c 	str	r3, [fp, #-12]
     c08:	e51b300c 	ldr	r3, [fp, #-12]
     c0c:	e5d33000 	ldrb	r3, [r3]
     c10:	e3530000 	cmp	r3, #0
     c14:	1afffff3 	bne	be8 <printf+0x144>
     c18:	ea00001d 	b	c94 <printf+0x1f0>
     c1c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c20:	e3530063 	cmp	r3, #99	@ 0x63
     c24:	1a000009 	bne	c50 <printf+0x1ac>
     c28:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c2c:	e5933000 	ldr	r3, [r3]
     c30:	e6ef3073 	uxtb	r3, r3
     c34:	e1a01003 	mov	r1, r3
     c38:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c3c:	ebffff3c 	bl	934 <putc>
     c40:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c44:	e2833004 	add	r3, r3, #4
     c48:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c4c:	ea000010 	b	c94 <printf+0x1f0>
     c50:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c54:	e3530025 	cmp	r3, #37	@ 0x25
     c58:	1a000005 	bne	c74 <printf+0x1d0>
     c5c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c60:	e6ef3073 	uxtb	r3, r3
     c64:	e1a01003 	mov	r1, r3
     c68:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c6c:	ebffff30 	bl	934 <putc>
     c70:	ea000007 	b	c94 <printf+0x1f0>
     c74:	e3a01025 	mov	r1, #37	@ 0x25
     c78:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c7c:	ebffff2c 	bl	934 <putc>
     c80:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c84:	e6ef3073 	uxtb	r3, r3
     c88:	e1a01003 	mov	r1, r3
     c8c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c90:	ebffff27 	bl	934 <putc>
     c94:	e3a03000 	mov	r3, #0
     c98:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c9c:	e51b3010 	ldr	r3, [fp, #-16]
     ca0:	e2833001 	add	r3, r3, #1
     ca4:	e50b3010 	str	r3, [fp, #-16]
     ca8:	e59b2004 	ldr	r2, [fp, #4]
     cac:	e51b3010 	ldr	r3, [fp, #-16]
     cb0:	e0823003 	add	r3, r2, r3
     cb4:	e5d33000 	ldrb	r3, [r3]
     cb8:	e3530000 	cmp	r3, #0
     cbc:	1affff84 	bne	ad4 <printf+0x30>
     cc0:	e1a00000 	nop			@ (mov r0, r0)
     cc4:	e1a00000 	nop			@ (mov r0, r0)
     cc8:	e24bd004 	sub	sp, fp, #4
     ccc:	e8bd4800 	pop	{fp, lr}
     cd0:	e28dd00c 	add	sp, sp, #12
     cd4:	e12fff1e 	bx	lr
     cd8:	00001194 	.word	0x00001194

00000cdc <free>:
     cdc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     ce0:	e28db000 	add	fp, sp, #0
     ce4:	e24dd014 	sub	sp, sp, #20
     ce8:	e50b0010 	str	r0, [fp, #-16]
     cec:	e51b3010 	ldr	r3, [fp, #-16]
     cf0:	e2433008 	sub	r3, r3, #8
     cf4:	e50b300c 	str	r3, [fp, #-12]
     cf8:	e59f3154 	ldr	r3, [pc, #340]	@ e54 <free+0x178>
     cfc:	e5933000 	ldr	r3, [r3]
     d00:	e50b3008 	str	r3, [fp, #-8]
     d04:	ea000010 	b	d4c <free+0x70>
     d08:	e51b3008 	ldr	r3, [fp, #-8]
     d0c:	e5933000 	ldr	r3, [r3]
     d10:	e51b2008 	ldr	r2, [fp, #-8]
     d14:	e1520003 	cmp	r2, r3
     d18:	3a000008 	bcc	d40 <free+0x64>
     d1c:	e51b200c 	ldr	r2, [fp, #-12]
     d20:	e51b3008 	ldr	r3, [fp, #-8]
     d24:	e1520003 	cmp	r2, r3
     d28:	8a000010 	bhi	d70 <free+0x94>
     d2c:	e51b3008 	ldr	r3, [fp, #-8]
     d30:	e5933000 	ldr	r3, [r3]
     d34:	e51b200c 	ldr	r2, [fp, #-12]
     d38:	e1520003 	cmp	r2, r3
     d3c:	3a00000b 	bcc	d70 <free+0x94>
     d40:	e51b3008 	ldr	r3, [fp, #-8]
     d44:	e5933000 	ldr	r3, [r3]
     d48:	e50b3008 	str	r3, [fp, #-8]
     d4c:	e51b200c 	ldr	r2, [fp, #-12]
     d50:	e51b3008 	ldr	r3, [fp, #-8]
     d54:	e1520003 	cmp	r2, r3
     d58:	9affffea 	bls	d08 <free+0x2c>
     d5c:	e51b3008 	ldr	r3, [fp, #-8]
     d60:	e5933000 	ldr	r3, [r3]
     d64:	e51b200c 	ldr	r2, [fp, #-12]
     d68:	e1520003 	cmp	r2, r3
     d6c:	2affffe5 	bcs	d08 <free+0x2c>
     d70:	e51b300c 	ldr	r3, [fp, #-12]
     d74:	e5933004 	ldr	r3, [r3, #4]
     d78:	e1a03183 	lsl	r3, r3, #3
     d7c:	e51b200c 	ldr	r2, [fp, #-12]
     d80:	e0822003 	add	r2, r2, r3
     d84:	e51b3008 	ldr	r3, [fp, #-8]
     d88:	e5933000 	ldr	r3, [r3]
     d8c:	e1520003 	cmp	r2, r3
     d90:	1a00000d 	bne	dcc <free+0xf0>
     d94:	e51b300c 	ldr	r3, [fp, #-12]
     d98:	e5932004 	ldr	r2, [r3, #4]
     d9c:	e51b3008 	ldr	r3, [fp, #-8]
     da0:	e5933000 	ldr	r3, [r3]
     da4:	e5933004 	ldr	r3, [r3, #4]
     da8:	e0822003 	add	r2, r2, r3
     dac:	e51b300c 	ldr	r3, [fp, #-12]
     db0:	e5832004 	str	r2, [r3, #4]
     db4:	e51b3008 	ldr	r3, [fp, #-8]
     db8:	e5933000 	ldr	r3, [r3]
     dbc:	e5932000 	ldr	r2, [r3]
     dc0:	e51b300c 	ldr	r3, [fp, #-12]
     dc4:	e5832000 	str	r2, [r3]
     dc8:	ea000003 	b	ddc <free+0x100>
     dcc:	e51b3008 	ldr	r3, [fp, #-8]
     dd0:	e5932000 	ldr	r2, [r3]
     dd4:	e51b300c 	ldr	r3, [fp, #-12]
     dd8:	e5832000 	str	r2, [r3]
     ddc:	e51b3008 	ldr	r3, [fp, #-8]
     de0:	e5933004 	ldr	r3, [r3, #4]
     de4:	e1a03183 	lsl	r3, r3, #3
     de8:	e51b2008 	ldr	r2, [fp, #-8]
     dec:	e0823003 	add	r3, r2, r3
     df0:	e51b200c 	ldr	r2, [fp, #-12]
     df4:	e1520003 	cmp	r2, r3
     df8:	1a00000b 	bne	e2c <free+0x150>
     dfc:	e51b3008 	ldr	r3, [fp, #-8]
     e00:	e5932004 	ldr	r2, [r3, #4]
     e04:	e51b300c 	ldr	r3, [fp, #-12]
     e08:	e5933004 	ldr	r3, [r3, #4]
     e0c:	e0822003 	add	r2, r2, r3
     e10:	e51b3008 	ldr	r3, [fp, #-8]
     e14:	e5832004 	str	r2, [r3, #4]
     e18:	e51b300c 	ldr	r3, [fp, #-12]
     e1c:	e5932000 	ldr	r2, [r3]
     e20:	e51b3008 	ldr	r3, [fp, #-8]
     e24:	e5832000 	str	r2, [r3]
     e28:	ea000002 	b	e38 <free+0x15c>
     e2c:	e51b3008 	ldr	r3, [fp, #-8]
     e30:	e51b200c 	ldr	r2, [fp, #-12]
     e34:	e5832000 	str	r2, [r3]
     e38:	e59f2014 	ldr	r2, [pc, #20]	@ e54 <free+0x178>
     e3c:	e51b3008 	ldr	r3, [fp, #-8]
     e40:	e5823000 	str	r3, [r2]
     e44:	e1a00000 	nop			@ (mov r0, r0)
     e48:	e28bd000 	add	sp, fp, #0
     e4c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     e50:	e12fff1e 	bx	lr
     e54:	000011b8 	.word	0x000011b8

00000e58 <morecore>:
     e58:	e92d4800 	push	{fp, lr}
     e5c:	e28db004 	add	fp, sp, #4
     e60:	e24dd010 	sub	sp, sp, #16
     e64:	e50b0010 	str	r0, [fp, #-16]
     e68:	e51b3010 	ldr	r3, [fp, #-16]
     e6c:	e3530a01 	cmp	r3, #4096	@ 0x1000
     e70:	2a000001 	bcs	e7c <morecore+0x24>
     e74:	e3a03a01 	mov	r3, #4096	@ 0x1000
     e78:	e50b3010 	str	r3, [fp, #-16]
     e7c:	e51b3010 	ldr	r3, [fp, #-16]
     e80:	e1a03183 	lsl	r3, r3, #3
     e84:	e1a00003 	mov	r0, r3
     e88:	ebfffe61 	bl	814 <sbrk>
     e8c:	e50b0008 	str	r0, [fp, #-8]
     e90:	e51b3008 	ldr	r3, [fp, #-8]
     e94:	e3730001 	cmn	r3, #1
     e98:	1a000001 	bne	ea4 <morecore+0x4c>
     e9c:	e3a03000 	mov	r3, #0
     ea0:	ea00000a 	b	ed0 <morecore+0x78>
     ea4:	e51b3008 	ldr	r3, [fp, #-8]
     ea8:	e50b300c 	str	r3, [fp, #-12]
     eac:	e51b300c 	ldr	r3, [fp, #-12]
     eb0:	e51b2010 	ldr	r2, [fp, #-16]
     eb4:	e5832004 	str	r2, [r3, #4]
     eb8:	e51b300c 	ldr	r3, [fp, #-12]
     ebc:	e2833008 	add	r3, r3, #8
     ec0:	e1a00003 	mov	r0, r3
     ec4:	ebffff84 	bl	cdc <free>
     ec8:	e59f300c 	ldr	r3, [pc, #12]	@ edc <morecore+0x84>
     ecc:	e5933000 	ldr	r3, [r3]
     ed0:	e1a00003 	mov	r0, r3
     ed4:	e24bd004 	sub	sp, fp, #4
     ed8:	e8bd8800 	pop	{fp, pc}
     edc:	000011b8 	.word	0x000011b8

00000ee0 <malloc>:
     ee0:	e92d4800 	push	{fp, lr}
     ee4:	e28db004 	add	fp, sp, #4
     ee8:	e24dd018 	sub	sp, sp, #24
     eec:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     ef0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ef4:	e2833007 	add	r3, r3, #7
     ef8:	e1a031a3 	lsr	r3, r3, #3
     efc:	e2833001 	add	r3, r3, #1
     f00:	e50b3010 	str	r3, [fp, #-16]
     f04:	e59f3134 	ldr	r3, [pc, #308]	@ 1040 <malloc+0x160>
     f08:	e5933000 	ldr	r3, [r3]
     f0c:	e50b300c 	str	r3, [fp, #-12]
     f10:	e51b300c 	ldr	r3, [fp, #-12]
     f14:	e3530000 	cmp	r3, #0
     f18:	1a00000b 	bne	f4c <malloc+0x6c>
     f1c:	e59f3120 	ldr	r3, [pc, #288]	@ 1044 <malloc+0x164>
     f20:	e50b300c 	str	r3, [fp, #-12]
     f24:	e59f2114 	ldr	r2, [pc, #276]	@ 1040 <malloc+0x160>
     f28:	e51b300c 	ldr	r3, [fp, #-12]
     f2c:	e5823000 	str	r3, [r2]
     f30:	e59f3108 	ldr	r3, [pc, #264]	@ 1040 <malloc+0x160>
     f34:	e5933000 	ldr	r3, [r3]
     f38:	e59f2104 	ldr	r2, [pc, #260]	@ 1044 <malloc+0x164>
     f3c:	e5823000 	str	r3, [r2]
     f40:	e59f30fc 	ldr	r3, [pc, #252]	@ 1044 <malloc+0x164>
     f44:	e3a02000 	mov	r2, #0
     f48:	e5832004 	str	r2, [r3, #4]
     f4c:	e51b300c 	ldr	r3, [fp, #-12]
     f50:	e5933000 	ldr	r3, [r3]
     f54:	e50b3008 	str	r3, [fp, #-8]
     f58:	e51b3008 	ldr	r3, [fp, #-8]
     f5c:	e5933004 	ldr	r3, [r3, #4]
     f60:	e51b2010 	ldr	r2, [fp, #-16]
     f64:	e1520003 	cmp	r2, r3
     f68:	8a00001e 	bhi	fe8 <malloc+0x108>
     f6c:	e51b3008 	ldr	r3, [fp, #-8]
     f70:	e5933004 	ldr	r3, [r3, #4]
     f74:	e51b2010 	ldr	r2, [fp, #-16]
     f78:	e1520003 	cmp	r2, r3
     f7c:	1a000004 	bne	f94 <malloc+0xb4>
     f80:	e51b3008 	ldr	r3, [fp, #-8]
     f84:	e5932000 	ldr	r2, [r3]
     f88:	e51b300c 	ldr	r3, [fp, #-12]
     f8c:	e5832000 	str	r2, [r3]
     f90:	ea00000e 	b	fd0 <malloc+0xf0>
     f94:	e51b3008 	ldr	r3, [fp, #-8]
     f98:	e5932004 	ldr	r2, [r3, #4]
     f9c:	e51b3010 	ldr	r3, [fp, #-16]
     fa0:	e0422003 	sub	r2, r2, r3
     fa4:	e51b3008 	ldr	r3, [fp, #-8]
     fa8:	e5832004 	str	r2, [r3, #4]
     fac:	e51b3008 	ldr	r3, [fp, #-8]
     fb0:	e5933004 	ldr	r3, [r3, #4]
     fb4:	e1a03183 	lsl	r3, r3, #3
     fb8:	e51b2008 	ldr	r2, [fp, #-8]
     fbc:	e0823003 	add	r3, r2, r3
     fc0:	e50b3008 	str	r3, [fp, #-8]
     fc4:	e51b3008 	ldr	r3, [fp, #-8]
     fc8:	e51b2010 	ldr	r2, [fp, #-16]
     fcc:	e5832004 	str	r2, [r3, #4]
     fd0:	e59f2068 	ldr	r2, [pc, #104]	@ 1040 <malloc+0x160>
     fd4:	e51b300c 	ldr	r3, [fp, #-12]
     fd8:	e5823000 	str	r3, [r2]
     fdc:	e51b3008 	ldr	r3, [fp, #-8]
     fe0:	e2833008 	add	r3, r3, #8
     fe4:	ea000012 	b	1034 <malloc+0x154>
     fe8:	e59f3050 	ldr	r3, [pc, #80]	@ 1040 <malloc+0x160>
     fec:	e5933000 	ldr	r3, [r3]
     ff0:	e51b2008 	ldr	r2, [fp, #-8]
     ff4:	e1520003 	cmp	r2, r3
     ff8:	1a000007 	bne	101c <malloc+0x13c>
     ffc:	e51b0010 	ldr	r0, [fp, #-16]
    1000:	ebffff94 	bl	e58 <morecore>
    1004:	e50b0008 	str	r0, [fp, #-8]
    1008:	e51b3008 	ldr	r3, [fp, #-8]
    100c:	e3530000 	cmp	r3, #0
    1010:	1a000001 	bne	101c <malloc+0x13c>
    1014:	e3a03000 	mov	r3, #0
    1018:	ea000005 	b	1034 <malloc+0x154>
    101c:	e51b3008 	ldr	r3, [fp, #-8]
    1020:	e50b300c 	str	r3, [fp, #-12]
    1024:	e51b3008 	ldr	r3, [fp, #-8]
    1028:	e5933000 	ldr	r3, [r3]
    102c:	e50b3008 	str	r3, [fp, #-8]
    1030:	eaffffc8 	b	f58 <malloc+0x78>
    1034:	e1a00003 	mov	r0, r3
    1038:	e24bd004 	sub	sp, fp, #4
    103c:	e8bd8800 	pop	{fp, pc}
    1040:	000011b8 	.word	0x000011b8
    1044:	000011b0 	.word	0x000011b0

00001048 <__udivsi3>:
    1048:	e2512001 	subs	r2, r1, #1
    104c:	012fff1e 	bxeq	lr
    1050:	3a000036 	bcc	1130 <__udivsi3+0xe8>
    1054:	e1500001 	cmp	r0, r1
    1058:	9a000022 	bls	10e8 <__udivsi3+0xa0>
    105c:	e1110002 	tst	r1, r2
    1060:	0a000023 	beq	10f4 <__udivsi3+0xac>
    1064:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1068:	01a01181 	lsleq	r1, r1, #3
    106c:	03a03008 	moveq	r3, #8
    1070:	13a03001 	movne	r3, #1
    1074:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1078:	31510000 	cmpcc	r1, r0
    107c:	31a01201 	lslcc	r1, r1, #4
    1080:	31a03203 	lslcc	r3, r3, #4
    1084:	3afffffa 	bcc	1074 <__udivsi3+0x2c>
    1088:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    108c:	31510000 	cmpcc	r1, r0
    1090:	31a01081 	lslcc	r1, r1, #1
    1094:	31a03083 	lslcc	r3, r3, #1
    1098:	3afffffa 	bcc	1088 <__udivsi3+0x40>
    109c:	e3a02000 	mov	r2, #0
    10a0:	e1500001 	cmp	r0, r1
    10a4:	20400001 	subcs	r0, r0, r1
    10a8:	21822003 	orrcs	r2, r2, r3
    10ac:	e15000a1 	cmp	r0, r1, lsr #1
    10b0:	204000a1 	subcs	r0, r0, r1, lsr #1
    10b4:	218220a3 	orrcs	r2, r2, r3, lsr #1
    10b8:	e1500121 	cmp	r0, r1, lsr #2
    10bc:	20400121 	subcs	r0, r0, r1, lsr #2
    10c0:	21822123 	orrcs	r2, r2, r3, lsr #2
    10c4:	e15001a1 	cmp	r0, r1, lsr #3
    10c8:	204001a1 	subcs	r0, r0, r1, lsr #3
    10cc:	218221a3 	orrcs	r2, r2, r3, lsr #3
    10d0:	e3500000 	cmp	r0, #0
    10d4:	11b03223 	lsrsne	r3, r3, #4
    10d8:	11a01221 	lsrne	r1, r1, #4
    10dc:	1affffef 	bne	10a0 <__udivsi3+0x58>
    10e0:	e1a00002 	mov	r0, r2
    10e4:	e12fff1e 	bx	lr
    10e8:	03a00001 	moveq	r0, #1
    10ec:	13a00000 	movne	r0, #0
    10f0:	e12fff1e 	bx	lr
    10f4:	e3510801 	cmp	r1, #65536	@ 0x10000
    10f8:	21a01821 	lsrcs	r1, r1, #16
    10fc:	23a02010 	movcs	r2, #16
    1100:	33a02000 	movcc	r2, #0
    1104:	e3510c01 	cmp	r1, #256	@ 0x100
    1108:	21a01421 	lsrcs	r1, r1, #8
    110c:	22822008 	addcs	r2, r2, #8
    1110:	e3510010 	cmp	r1, #16
    1114:	21a01221 	lsrcs	r1, r1, #4
    1118:	22822004 	addcs	r2, r2, #4
    111c:	e3510004 	cmp	r1, #4
    1120:	82822003 	addhi	r2, r2, #3
    1124:	908220a1 	addls	r2, r2, r1, lsr #1
    1128:	e1a00230 	lsr	r0, r0, r2
    112c:	e12fff1e 	bx	lr
    1130:	e3500000 	cmp	r0, #0
    1134:	13e00000 	mvnne	r0, #0
    1138:	ea000007 	b	115c <__aeabi_idiv0>

0000113c <__aeabi_uidivmod>:
    113c:	e3510000 	cmp	r1, #0
    1140:	0afffffa 	beq	1130 <__udivsi3+0xe8>
    1144:	e92d4003 	push	{r0, r1, lr}
    1148:	ebffffbe 	bl	1048 <__udivsi3>
    114c:	e8bd4006 	pop	{r1, r2, lr}
    1150:	e0030092 	mul	r3, r2, r0
    1154:	e0411003 	sub	r1, r1, r3
    1158:	e12fff1e 	bx	lr

0000115c <__aeabi_idiv0>:
    115c:	e12fff1e 	bx	lr
