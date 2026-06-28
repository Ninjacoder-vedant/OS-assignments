
_uptime:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd008 	sub	sp, sp, #8
       c:	eb0001f0 	bl	7d4 <uptime>
      10:	e50b0008 	str	r0, [fp, #-8]
      14:	e51b2008 	ldr	r2, [fp, #-8]
      18:	e59f1008 	ldr	r1, [pc, #8]	@ 28 <main+0x28>
      1c:	e3a00001 	mov	r0, #1
      20:	eb00027d 	bl	a1c <printf>
      24:	eb00013f 	bl	528 <exit>
      28:	000010d8 	.word	0x000010d8

0000002c <strcpy>:
      2c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      30:	e28db000 	add	fp, sp, #0
      34:	e24dd014 	sub	sp, sp, #20
      38:	e50b0010 	str	r0, [fp, #-16]
      3c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      40:	e51b3010 	ldr	r3, [fp, #-16]
      44:	e50b3008 	str	r3, [fp, #-8]
      48:	e1a00000 	nop			@ (mov r0, r0)
      4c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      50:	e2823001 	add	r3, r2, #1
      54:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      58:	e51b3010 	ldr	r3, [fp, #-16]
      5c:	e2831001 	add	r1, r3, #1
      60:	e50b1010 	str	r1, [fp, #-16]
      64:	e5d22000 	ldrb	r2, [r2]
      68:	e5c32000 	strb	r2, [r3]
      6c:	e5d33000 	ldrb	r3, [r3]
      70:	e3530000 	cmp	r3, #0
      74:	1afffff4 	bne	4c <strcpy+0x20>
      78:	e51b3008 	ldr	r3, [fp, #-8]
      7c:	e1a00003 	mov	r0, r3
      80:	e28bd000 	add	sp, fp, #0
      84:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      88:	e12fff1e 	bx	lr

0000008c <strcmp>:
      8c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      90:	e28db000 	add	fp, sp, #0
      94:	e24dd00c 	sub	sp, sp, #12
      98:	e50b0008 	str	r0, [fp, #-8]
      9c:	e50b100c 	str	r1, [fp, #-12]
      a0:	ea000005 	b	bc <strcmp+0x30>
      a4:	e51b3008 	ldr	r3, [fp, #-8]
      a8:	e2833001 	add	r3, r3, #1
      ac:	e50b3008 	str	r3, [fp, #-8]
      b0:	e51b300c 	ldr	r3, [fp, #-12]
      b4:	e2833001 	add	r3, r3, #1
      b8:	e50b300c 	str	r3, [fp, #-12]
      bc:	e51b3008 	ldr	r3, [fp, #-8]
      c0:	e5d33000 	ldrb	r3, [r3]
      c4:	e3530000 	cmp	r3, #0
      c8:	0a000005 	beq	e4 <strcmp+0x58>
      cc:	e51b3008 	ldr	r3, [fp, #-8]
      d0:	e5d32000 	ldrb	r2, [r3]
      d4:	e51b300c 	ldr	r3, [fp, #-12]
      d8:	e5d33000 	ldrb	r3, [r3]
      dc:	e1520003 	cmp	r2, r3
      e0:	0affffef 	beq	a4 <strcmp+0x18>
      e4:	e51b3008 	ldr	r3, [fp, #-8]
      e8:	e5d33000 	ldrb	r3, [r3]
      ec:	e1a02003 	mov	r2, r3
      f0:	e51b300c 	ldr	r3, [fp, #-12]
      f4:	e5d33000 	ldrb	r3, [r3]
      f8:	e0423003 	sub	r3, r2, r3
      fc:	e1a00003 	mov	r0, r3
     100:	e28bd000 	add	sp, fp, #0
     104:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     108:	e12fff1e 	bx	lr

0000010c <strlen>:
     10c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     110:	e28db000 	add	fp, sp, #0
     114:	e24dd014 	sub	sp, sp, #20
     118:	e50b0010 	str	r0, [fp, #-16]
     11c:	e3a03000 	mov	r3, #0
     120:	e50b3008 	str	r3, [fp, #-8]
     124:	ea000002 	b	134 <strlen+0x28>
     128:	e51b3008 	ldr	r3, [fp, #-8]
     12c:	e2833001 	add	r3, r3, #1
     130:	e50b3008 	str	r3, [fp, #-8]
     134:	e51b3008 	ldr	r3, [fp, #-8]
     138:	e51b2010 	ldr	r2, [fp, #-16]
     13c:	e0823003 	add	r3, r2, r3
     140:	e5d33000 	ldrb	r3, [r3]
     144:	e3530000 	cmp	r3, #0
     148:	1afffff6 	bne	128 <strlen+0x1c>
     14c:	e51b3008 	ldr	r3, [fp, #-8]
     150:	e1a00003 	mov	r0, r3
     154:	e28bd000 	add	sp, fp, #0
     158:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     15c:	e12fff1e 	bx	lr

00000160 <memset>:
     160:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     164:	e28db000 	add	fp, sp, #0
     168:	e24dd024 	sub	sp, sp, #36	@ 0x24
     16c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     170:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     174:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     178:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     17c:	e50b3008 	str	r3, [fp, #-8]
     180:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     184:	e54b300d 	strb	r3, [fp, #-13]
     188:	e55b200d 	ldrb	r2, [fp, #-13]
     18c:	e1a03002 	mov	r3, r2
     190:	e1a03403 	lsl	r3, r3, #8
     194:	e0833002 	add	r3, r3, r2
     198:	e1a03803 	lsl	r3, r3, #16
     19c:	e1a02003 	mov	r2, r3
     1a0:	e55b300d 	ldrb	r3, [fp, #-13]
     1a4:	e1a03403 	lsl	r3, r3, #8
     1a8:	e1822003 	orr	r2, r2, r3
     1ac:	e55b300d 	ldrb	r3, [fp, #-13]
     1b0:	e1823003 	orr	r3, r2, r3
     1b4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     1b8:	ea000008 	b	1e0 <memset+0x80>
     1bc:	e51b3008 	ldr	r3, [fp, #-8]
     1c0:	e55b200d 	ldrb	r2, [fp, #-13]
     1c4:	e5c32000 	strb	r2, [r3]
     1c8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     1cc:	e2433001 	sub	r3, r3, #1
     1d0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     1d4:	e51b3008 	ldr	r3, [fp, #-8]
     1d8:	e2833001 	add	r3, r3, #1
     1dc:	e50b3008 	str	r3, [fp, #-8]
     1e0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     1e4:	e3530000 	cmp	r3, #0
     1e8:	0a000003 	beq	1fc <memset+0x9c>
     1ec:	e51b3008 	ldr	r3, [fp, #-8]
     1f0:	e2033003 	and	r3, r3, #3
     1f4:	e3530000 	cmp	r3, #0
     1f8:	1affffef 	bne	1bc <memset+0x5c>
     1fc:	e51b3008 	ldr	r3, [fp, #-8]
     200:	e50b300c 	str	r3, [fp, #-12]
     204:	ea000008 	b	22c <memset+0xcc>
     208:	e51b300c 	ldr	r3, [fp, #-12]
     20c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     210:	e5832000 	str	r2, [r3]
     214:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     218:	e2433004 	sub	r3, r3, #4
     21c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     220:	e51b300c 	ldr	r3, [fp, #-12]
     224:	e2833004 	add	r3, r3, #4
     228:	e50b300c 	str	r3, [fp, #-12]
     22c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     230:	e3530003 	cmp	r3, #3
     234:	8afffff3 	bhi	208 <memset+0xa8>
     238:	e51b300c 	ldr	r3, [fp, #-12]
     23c:	e50b3008 	str	r3, [fp, #-8]
     240:	ea000008 	b	268 <memset+0x108>
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
     270:	1afffff3 	bne	244 <memset+0xe4>
     274:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     278:	e1a00003 	mov	r0, r3
     27c:	e28bd000 	add	sp, fp, #0
     280:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     284:	e12fff1e 	bx	lr

00000288 <strchr>:
     288:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     28c:	e28db000 	add	fp, sp, #0
     290:	e24dd00c 	sub	sp, sp, #12
     294:	e50b0008 	str	r0, [fp, #-8]
     298:	e1a03001 	mov	r3, r1
     29c:	e54b3009 	strb	r3, [fp, #-9]
     2a0:	ea000009 	b	2cc <strchr+0x44>
     2a4:	e51b3008 	ldr	r3, [fp, #-8]
     2a8:	e5d33000 	ldrb	r3, [r3]
     2ac:	e55b2009 	ldrb	r2, [fp, #-9]
     2b0:	e1520003 	cmp	r2, r3
     2b4:	1a000001 	bne	2c0 <strchr+0x38>
     2b8:	e51b3008 	ldr	r3, [fp, #-8]
     2bc:	ea000007 	b	2e0 <strchr+0x58>
     2c0:	e51b3008 	ldr	r3, [fp, #-8]
     2c4:	e2833001 	add	r3, r3, #1
     2c8:	e50b3008 	str	r3, [fp, #-8]
     2cc:	e51b3008 	ldr	r3, [fp, #-8]
     2d0:	e5d33000 	ldrb	r3, [r3]
     2d4:	e3530000 	cmp	r3, #0
     2d8:	1afffff1 	bne	2a4 <strchr+0x1c>
     2dc:	e3a03000 	mov	r3, #0
     2e0:	e1a00003 	mov	r0, r3
     2e4:	e28bd000 	add	sp, fp, #0
     2e8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2ec:	e12fff1e 	bx	lr

000002f0 <gets>:
     2f0:	e92d4800 	push	{fp, lr}
     2f4:	e28db004 	add	fp, sp, #4
     2f8:	e24dd018 	sub	sp, sp, #24
     2fc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     300:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     304:	e3a03000 	mov	r3, #0
     308:	e50b3008 	str	r3, [fp, #-8]
     30c:	ea000016 	b	36c <gets+0x7c>
     310:	e24b300d 	sub	r3, fp, #13
     314:	e3a02001 	mov	r2, #1
     318:	e1a01003 	mov	r1, r3
     31c:	e3a00000 	mov	r0, #0
     320:	eb00009b 	bl	594 <read>
     324:	e50b000c 	str	r0, [fp, #-12]
     328:	e51b300c 	ldr	r3, [fp, #-12]
     32c:	e3530000 	cmp	r3, #0
     330:	da000013 	ble	384 <gets+0x94>
     334:	e51b3008 	ldr	r3, [fp, #-8]
     338:	e2832001 	add	r2, r3, #1
     33c:	e50b2008 	str	r2, [fp, #-8]
     340:	e1a02003 	mov	r2, r3
     344:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     348:	e0833002 	add	r3, r3, r2
     34c:	e55b200d 	ldrb	r2, [fp, #-13]
     350:	e5c32000 	strb	r2, [r3]
     354:	e55b300d 	ldrb	r3, [fp, #-13]
     358:	e353000a 	cmp	r3, #10
     35c:	0a000009 	beq	388 <gets+0x98>
     360:	e55b300d 	ldrb	r3, [fp, #-13]
     364:	e353000d 	cmp	r3, #13
     368:	0a000006 	beq	388 <gets+0x98>
     36c:	e51b3008 	ldr	r3, [fp, #-8]
     370:	e2833001 	add	r3, r3, #1
     374:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     378:	e1520003 	cmp	r2, r3
     37c:	caffffe3 	bgt	310 <gets+0x20>
     380:	ea000000 	b	388 <gets+0x98>
     384:	e1a00000 	nop			@ (mov r0, r0)
     388:	e51b3008 	ldr	r3, [fp, #-8]
     38c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     390:	e0823003 	add	r3, r2, r3
     394:	e3a02000 	mov	r2, #0
     398:	e5c32000 	strb	r2, [r3]
     39c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3a0:	e1a00003 	mov	r0, r3
     3a4:	e24bd004 	sub	sp, fp, #4
     3a8:	e8bd8800 	pop	{fp, pc}

000003ac <stat>:
     3ac:	e92d4800 	push	{fp, lr}
     3b0:	e28db004 	add	fp, sp, #4
     3b4:	e24dd010 	sub	sp, sp, #16
     3b8:	e50b0010 	str	r0, [fp, #-16]
     3bc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     3c0:	e3a01000 	mov	r1, #0
     3c4:	e51b0010 	ldr	r0, [fp, #-16]
     3c8:	eb00009e 	bl	648 <open>
     3cc:	e50b0008 	str	r0, [fp, #-8]
     3d0:	e51b3008 	ldr	r3, [fp, #-8]
     3d4:	e3530000 	cmp	r3, #0
     3d8:	aa000001 	bge	3e4 <stat+0x38>
     3dc:	e3e03000 	mvn	r3, #0
     3e0:	ea000006 	b	400 <stat+0x54>
     3e4:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     3e8:	e51b0008 	ldr	r0, [fp, #-8]
     3ec:	eb0000b0 	bl	6b4 <fstat>
     3f0:	e50b000c 	str	r0, [fp, #-12]
     3f4:	e51b0008 	ldr	r0, [fp, #-8]
     3f8:	eb000077 	bl	5dc <close>
     3fc:	e51b300c 	ldr	r3, [fp, #-12]
     400:	e1a00003 	mov	r0, r3
     404:	e24bd004 	sub	sp, fp, #4
     408:	e8bd8800 	pop	{fp, pc}

0000040c <atoi>:
     40c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     410:	e28db000 	add	fp, sp, #0
     414:	e24dd014 	sub	sp, sp, #20
     418:	e50b0010 	str	r0, [fp, #-16]
     41c:	e3a03000 	mov	r3, #0
     420:	e50b3008 	str	r3, [fp, #-8]
     424:	ea00000c 	b	45c <atoi+0x50>
     428:	e51b2008 	ldr	r2, [fp, #-8]
     42c:	e1a03002 	mov	r3, r2
     430:	e1a03103 	lsl	r3, r3, #2
     434:	e0833002 	add	r3, r3, r2
     438:	e1a03083 	lsl	r3, r3, #1
     43c:	e1a01003 	mov	r1, r3
     440:	e51b3010 	ldr	r3, [fp, #-16]
     444:	e2832001 	add	r2, r3, #1
     448:	e50b2010 	str	r2, [fp, #-16]
     44c:	e5d33000 	ldrb	r3, [r3]
     450:	e0813003 	add	r3, r1, r3
     454:	e2433030 	sub	r3, r3, #48	@ 0x30
     458:	e50b3008 	str	r3, [fp, #-8]
     45c:	e51b3010 	ldr	r3, [fp, #-16]
     460:	e5d33000 	ldrb	r3, [r3]
     464:	e353002f 	cmp	r3, #47	@ 0x2f
     468:	9a000003 	bls	47c <atoi+0x70>
     46c:	e51b3010 	ldr	r3, [fp, #-16]
     470:	e5d33000 	ldrb	r3, [r3]
     474:	e3530039 	cmp	r3, #57	@ 0x39
     478:	9affffea 	bls	428 <atoi+0x1c>
     47c:	e51b3008 	ldr	r3, [fp, #-8]
     480:	e1a00003 	mov	r0, r3
     484:	e28bd000 	add	sp, fp, #0
     488:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     48c:	e12fff1e 	bx	lr

00000490 <memmove>:
     490:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     494:	e28db000 	add	fp, sp, #0
     498:	e24dd01c 	sub	sp, sp, #28
     49c:	e50b0010 	str	r0, [fp, #-16]
     4a0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     4a4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     4a8:	e51b3010 	ldr	r3, [fp, #-16]
     4ac:	e50b3008 	str	r3, [fp, #-8]
     4b0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     4b4:	e50b300c 	str	r3, [fp, #-12]
     4b8:	ea000007 	b	4dc <memmove+0x4c>
     4bc:	e51b200c 	ldr	r2, [fp, #-12]
     4c0:	e2823001 	add	r3, r2, #1
     4c4:	e50b300c 	str	r3, [fp, #-12]
     4c8:	e51b3008 	ldr	r3, [fp, #-8]
     4cc:	e2831001 	add	r1, r3, #1
     4d0:	e50b1008 	str	r1, [fp, #-8]
     4d4:	e5d22000 	ldrb	r2, [r2]
     4d8:	e5c32000 	strb	r2, [r3]
     4dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4e0:	e2432001 	sub	r2, r3, #1
     4e4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     4e8:	e3530000 	cmp	r3, #0
     4ec:	cafffff2 	bgt	4bc <memmove+0x2c>
     4f0:	e51b3010 	ldr	r3, [fp, #-16]
     4f4:	e1a00003 	mov	r0, r3
     4f8:	e28bd000 	add	sp, fp, #0
     4fc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     500:	e12fff1e 	bx	lr

00000504 <fork>:
     504:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     508:	e1a04003 	mov	r4, r3
     50c:	e1a03002 	mov	r3, r2
     510:	e1a02001 	mov	r2, r1
     514:	e1a01000 	mov	r1, r0
     518:	e3a00001 	mov	r0, #1
     51c:	ef000000 	svc	0x00000000
     520:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     524:	e12fff1e 	bx	lr

00000528 <exit>:
     528:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     52c:	e1a04003 	mov	r4, r3
     530:	e1a03002 	mov	r3, r2
     534:	e1a02001 	mov	r2, r1
     538:	e1a01000 	mov	r1, r0
     53c:	e3a00002 	mov	r0, #2
     540:	ef000000 	svc	0x00000000
     544:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     548:	e12fff1e 	bx	lr

0000054c <wait>:
     54c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     550:	e1a04003 	mov	r4, r3
     554:	e1a03002 	mov	r3, r2
     558:	e1a02001 	mov	r2, r1
     55c:	e1a01000 	mov	r1, r0
     560:	e3a00003 	mov	r0, #3
     564:	ef000000 	svc	0x00000000
     568:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     56c:	e12fff1e 	bx	lr

00000570 <pipe>:
     570:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     574:	e1a04003 	mov	r4, r3
     578:	e1a03002 	mov	r3, r2
     57c:	e1a02001 	mov	r2, r1
     580:	e1a01000 	mov	r1, r0
     584:	e3a00004 	mov	r0, #4
     588:	ef000000 	svc	0x00000000
     58c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     590:	e12fff1e 	bx	lr

00000594 <read>:
     594:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     598:	e1a04003 	mov	r4, r3
     59c:	e1a03002 	mov	r3, r2
     5a0:	e1a02001 	mov	r2, r1
     5a4:	e1a01000 	mov	r1, r0
     5a8:	e3a00005 	mov	r0, #5
     5ac:	ef000000 	svc	0x00000000
     5b0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5b4:	e12fff1e 	bx	lr

000005b8 <write>:
     5b8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5bc:	e1a04003 	mov	r4, r3
     5c0:	e1a03002 	mov	r3, r2
     5c4:	e1a02001 	mov	r2, r1
     5c8:	e1a01000 	mov	r1, r0
     5cc:	e3a00010 	mov	r0, #16
     5d0:	ef000000 	svc	0x00000000
     5d4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5d8:	e12fff1e 	bx	lr

000005dc <close>:
     5dc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5e0:	e1a04003 	mov	r4, r3
     5e4:	e1a03002 	mov	r3, r2
     5e8:	e1a02001 	mov	r2, r1
     5ec:	e1a01000 	mov	r1, r0
     5f0:	e3a00015 	mov	r0, #21
     5f4:	ef000000 	svc	0x00000000
     5f8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5fc:	e12fff1e 	bx	lr

00000600 <kill>:
     600:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     604:	e1a04003 	mov	r4, r3
     608:	e1a03002 	mov	r3, r2
     60c:	e1a02001 	mov	r2, r1
     610:	e1a01000 	mov	r1, r0
     614:	e3a00006 	mov	r0, #6
     618:	ef000000 	svc	0x00000000
     61c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     620:	e12fff1e 	bx	lr

00000624 <exec>:
     624:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     628:	e1a04003 	mov	r4, r3
     62c:	e1a03002 	mov	r3, r2
     630:	e1a02001 	mov	r2, r1
     634:	e1a01000 	mov	r1, r0
     638:	e3a00007 	mov	r0, #7
     63c:	ef000000 	svc	0x00000000
     640:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     644:	e12fff1e 	bx	lr

00000648 <open>:
     648:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     64c:	e1a04003 	mov	r4, r3
     650:	e1a03002 	mov	r3, r2
     654:	e1a02001 	mov	r2, r1
     658:	e1a01000 	mov	r1, r0
     65c:	e3a0000f 	mov	r0, #15
     660:	ef000000 	svc	0x00000000
     664:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     668:	e12fff1e 	bx	lr

0000066c <mknod>:
     66c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     670:	e1a04003 	mov	r4, r3
     674:	e1a03002 	mov	r3, r2
     678:	e1a02001 	mov	r2, r1
     67c:	e1a01000 	mov	r1, r0
     680:	e3a00011 	mov	r0, #17
     684:	ef000000 	svc	0x00000000
     688:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     68c:	e12fff1e 	bx	lr

00000690 <unlink>:
     690:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     694:	e1a04003 	mov	r4, r3
     698:	e1a03002 	mov	r3, r2
     69c:	e1a02001 	mov	r2, r1
     6a0:	e1a01000 	mov	r1, r0
     6a4:	e3a00012 	mov	r0, #18
     6a8:	ef000000 	svc	0x00000000
     6ac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6b0:	e12fff1e 	bx	lr

000006b4 <fstat>:
     6b4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6b8:	e1a04003 	mov	r4, r3
     6bc:	e1a03002 	mov	r3, r2
     6c0:	e1a02001 	mov	r2, r1
     6c4:	e1a01000 	mov	r1, r0
     6c8:	e3a00008 	mov	r0, #8
     6cc:	ef000000 	svc	0x00000000
     6d0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6d4:	e12fff1e 	bx	lr

000006d8 <link>:
     6d8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6dc:	e1a04003 	mov	r4, r3
     6e0:	e1a03002 	mov	r3, r2
     6e4:	e1a02001 	mov	r2, r1
     6e8:	e1a01000 	mov	r1, r0
     6ec:	e3a00013 	mov	r0, #19
     6f0:	ef000000 	svc	0x00000000
     6f4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6f8:	e12fff1e 	bx	lr

000006fc <mkdir>:
     6fc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     700:	e1a04003 	mov	r4, r3
     704:	e1a03002 	mov	r3, r2
     708:	e1a02001 	mov	r2, r1
     70c:	e1a01000 	mov	r1, r0
     710:	e3a00014 	mov	r0, #20
     714:	ef000000 	svc	0x00000000
     718:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     71c:	e12fff1e 	bx	lr

00000720 <chdir>:
     720:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     724:	e1a04003 	mov	r4, r3
     728:	e1a03002 	mov	r3, r2
     72c:	e1a02001 	mov	r2, r1
     730:	e1a01000 	mov	r1, r0
     734:	e3a00009 	mov	r0, #9
     738:	ef000000 	svc	0x00000000
     73c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     740:	e12fff1e 	bx	lr

00000744 <dup>:
     744:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     748:	e1a04003 	mov	r4, r3
     74c:	e1a03002 	mov	r3, r2
     750:	e1a02001 	mov	r2, r1
     754:	e1a01000 	mov	r1, r0
     758:	e3a0000a 	mov	r0, #10
     75c:	ef000000 	svc	0x00000000
     760:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     764:	e12fff1e 	bx	lr

00000768 <getpid>:
     768:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     76c:	e1a04003 	mov	r4, r3
     770:	e1a03002 	mov	r3, r2
     774:	e1a02001 	mov	r2, r1
     778:	e1a01000 	mov	r1, r0
     77c:	e3a0000b 	mov	r0, #11
     780:	ef000000 	svc	0x00000000
     784:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     788:	e12fff1e 	bx	lr

0000078c <sbrk>:
     78c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     790:	e1a04003 	mov	r4, r3
     794:	e1a03002 	mov	r3, r2
     798:	e1a02001 	mov	r2, r1
     79c:	e1a01000 	mov	r1, r0
     7a0:	e3a0000c 	mov	r0, #12
     7a4:	ef000000 	svc	0x00000000
     7a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7ac:	e12fff1e 	bx	lr

000007b0 <sleep>:
     7b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7b4:	e1a04003 	mov	r4, r3
     7b8:	e1a03002 	mov	r3, r2
     7bc:	e1a02001 	mov	r2, r1
     7c0:	e1a01000 	mov	r1, r0
     7c4:	e3a0000d 	mov	r0, #13
     7c8:	ef000000 	svc	0x00000000
     7cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7d0:	e12fff1e 	bx	lr

000007d4 <uptime>:
     7d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7d8:	e1a04003 	mov	r4, r3
     7dc:	e1a03002 	mov	r3, r2
     7e0:	e1a02001 	mov	r2, r1
     7e4:	e1a01000 	mov	r1, r0
     7e8:	e3a0000e 	mov	r0, #14
     7ec:	ef000000 	svc	0x00000000
     7f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7f4:	e12fff1e 	bx	lr

000007f8 <getprocs>:
     7f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7fc:	e1a04003 	mov	r4, r3
     800:	e1a03002 	mov	r3, r2
     804:	e1a02001 	mov	r2, r1
     808:	e1a01000 	mov	r1, r0
     80c:	e3a00016 	mov	r0, #22
     810:	ef000000 	svc	0x00000000
     814:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     818:	e12fff1e 	bx	lr

0000081c <getpinfo>:
     81c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     820:	e1a04003 	mov	r4, r3
     824:	e1a03002 	mov	r3, r2
     828:	e1a02001 	mov	r2, r1
     82c:	e1a01000 	mov	r1, r0
     830:	e3a00018 	mov	r0, #24
     834:	ef000000 	svc	0x00000000
     838:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     83c:	e12fff1e 	bx	lr

00000840 <settickets>:
     840:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     844:	e1a04003 	mov	r4, r3
     848:	e1a03002 	mov	r3, r2
     84c:	e1a02001 	mov	r2, r1
     850:	e1a01000 	mov	r1, r0
     854:	e3a00017 	mov	r0, #23
     858:	ef000000 	svc	0x00000000
     85c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     860:	e12fff1e 	bx	lr

00000864 <srand>:
     864:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     868:	e1a04003 	mov	r4, r3
     86c:	e1a03002 	mov	r3, r2
     870:	e1a02001 	mov	r2, r1
     874:	e1a01000 	mov	r1, r0
     878:	e3a00019 	mov	r0, #25
     87c:	ef000000 	svc	0x00000000
     880:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     884:	e12fff1e 	bx	lr

00000888 <test>:
     888:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     88c:	e1a04003 	mov	r4, r3
     890:	e1a03002 	mov	r3, r2
     894:	e1a02001 	mov	r2, r1
     898:	e1a01000 	mov	r1, r0
     89c:	e3a0001a 	mov	r0, #26
     8a0:	ef000000 	svc	0x00000000
     8a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8a8:	e12fff1e 	bx	lr

000008ac <putc>:
     8ac:	e92d4800 	push	{fp, lr}
     8b0:	e28db004 	add	fp, sp, #4
     8b4:	e24dd008 	sub	sp, sp, #8
     8b8:	e50b0008 	str	r0, [fp, #-8]
     8bc:	e1a03001 	mov	r3, r1
     8c0:	e54b3009 	strb	r3, [fp, #-9]
     8c4:	e24b3009 	sub	r3, fp, #9
     8c8:	e3a02001 	mov	r2, #1
     8cc:	e1a01003 	mov	r1, r3
     8d0:	e51b0008 	ldr	r0, [fp, #-8]
     8d4:	ebffff37 	bl	5b8 <write>
     8d8:	e1a00000 	nop			@ (mov r0, r0)
     8dc:	e24bd004 	sub	sp, fp, #4
     8e0:	e8bd8800 	pop	{fp, pc}

000008e4 <printint>:
     8e4:	e92d4800 	push	{fp, lr}
     8e8:	e28db004 	add	fp, sp, #4
     8ec:	e24dd030 	sub	sp, sp, #48	@ 0x30
     8f0:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     8f4:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     8f8:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     8fc:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     900:	e3a03000 	mov	r3, #0
     904:	e50b300c 	str	r3, [fp, #-12]
     908:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     90c:	e3530000 	cmp	r3, #0
     910:	0a000008 	beq	938 <printint+0x54>
     914:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     918:	e3530000 	cmp	r3, #0
     91c:	aa000005 	bge	938 <printint+0x54>
     920:	e3a03001 	mov	r3, #1
     924:	e50b300c 	str	r3, [fp, #-12]
     928:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     92c:	e2633000 	rsb	r3, r3, #0
     930:	e50b3010 	str	r3, [fp, #-16]
     934:	ea000001 	b	940 <printint+0x5c>
     938:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     93c:	e50b3010 	str	r3, [fp, #-16]
     940:	e3a03000 	mov	r3, #0
     944:	e50b3008 	str	r3, [fp, #-8]
     948:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     94c:	e51b3010 	ldr	r3, [fp, #-16]
     950:	e1a01002 	mov	r1, r2
     954:	e1a00003 	mov	r0, r3
     958:	eb0001d5 	bl	10b4 <__aeabi_uidivmod>
     95c:	e1a03001 	mov	r3, r1
     960:	e1a01003 	mov	r1, r3
     964:	e51b3008 	ldr	r3, [fp, #-8]
     968:	e2832001 	add	r2, r3, #1
     96c:	e50b2008 	str	r2, [fp, #-8]
     970:	e59f20a0 	ldr	r2, [pc, #160]	@ a18 <printint+0x134>
     974:	e7d22001 	ldrb	r2, [r2, r1]
     978:	e2433004 	sub	r3, r3, #4
     97c:	e083300b 	add	r3, r3, fp
     980:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     984:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     988:	e1a01003 	mov	r1, r3
     98c:	e51b0010 	ldr	r0, [fp, #-16]
     990:	eb00018a 	bl	fc0 <__udivsi3>
     994:	e1a03000 	mov	r3, r0
     998:	e50b3010 	str	r3, [fp, #-16]
     99c:	e51b3010 	ldr	r3, [fp, #-16]
     9a0:	e3530000 	cmp	r3, #0
     9a4:	1affffe7 	bne	948 <printint+0x64>
     9a8:	e51b300c 	ldr	r3, [fp, #-12]
     9ac:	e3530000 	cmp	r3, #0
     9b0:	0a00000e 	beq	9f0 <printint+0x10c>
     9b4:	e51b3008 	ldr	r3, [fp, #-8]
     9b8:	e2832001 	add	r2, r3, #1
     9bc:	e50b2008 	str	r2, [fp, #-8]
     9c0:	e2433004 	sub	r3, r3, #4
     9c4:	e083300b 	add	r3, r3, fp
     9c8:	e3a0202d 	mov	r2, #45	@ 0x2d
     9cc:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     9d0:	ea000006 	b	9f0 <printint+0x10c>
     9d4:	e24b2020 	sub	r2, fp, #32
     9d8:	e51b3008 	ldr	r3, [fp, #-8]
     9dc:	e0823003 	add	r3, r2, r3
     9e0:	e5d33000 	ldrb	r3, [r3]
     9e4:	e1a01003 	mov	r1, r3
     9e8:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     9ec:	ebffffae 	bl	8ac <putc>
     9f0:	e51b3008 	ldr	r3, [fp, #-8]
     9f4:	e2433001 	sub	r3, r3, #1
     9f8:	e50b3008 	str	r3, [fp, #-8]
     9fc:	e51b3008 	ldr	r3, [fp, #-8]
     a00:	e3530000 	cmp	r3, #0
     a04:	aafffff2 	bge	9d4 <printint+0xf0>
     a08:	e1a00000 	nop			@ (mov r0, r0)
     a0c:	e1a00000 	nop			@ (mov r0, r0)
     a10:	e24bd004 	sub	sp, fp, #4
     a14:	e8bd8800 	pop	{fp, pc}
     a18:	000010ec 	.word	0x000010ec

00000a1c <printf>:
     a1c:	e92d000e 	push	{r1, r2, r3}
     a20:	e92d4800 	push	{fp, lr}
     a24:	e28db004 	add	fp, sp, #4
     a28:	e24dd024 	sub	sp, sp, #36	@ 0x24
     a2c:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     a30:	e3a03000 	mov	r3, #0
     a34:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     a38:	e28b3008 	add	r3, fp, #8
     a3c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     a40:	e3a03000 	mov	r3, #0
     a44:	e50b3010 	str	r3, [fp, #-16]
     a48:	ea000074 	b	c20 <printf+0x204>
     a4c:	e59b2004 	ldr	r2, [fp, #4]
     a50:	e51b3010 	ldr	r3, [fp, #-16]
     a54:	e0823003 	add	r3, r2, r3
     a58:	e5d33000 	ldrb	r3, [r3]
     a5c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     a60:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     a64:	e3530000 	cmp	r3, #0
     a68:	1a00000b 	bne	a9c <printf+0x80>
     a6c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a70:	e3530025 	cmp	r3, #37	@ 0x25
     a74:	1a000002 	bne	a84 <printf+0x68>
     a78:	e3a03025 	mov	r3, #37	@ 0x25
     a7c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     a80:	ea000063 	b	c14 <printf+0x1f8>
     a84:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a88:	e6ef3073 	uxtb	r3, r3
     a8c:	e1a01003 	mov	r1, r3
     a90:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     a94:	ebffff84 	bl	8ac <putc>
     a98:	ea00005d 	b	c14 <printf+0x1f8>
     a9c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     aa0:	e3530025 	cmp	r3, #37	@ 0x25
     aa4:	1a00005a 	bne	c14 <printf+0x1f8>
     aa8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     aac:	e3530064 	cmp	r3, #100	@ 0x64
     ab0:	1a00000a 	bne	ae0 <printf+0xc4>
     ab4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ab8:	e5933000 	ldr	r3, [r3]
     abc:	e1a01003 	mov	r1, r3
     ac0:	e3a03001 	mov	r3, #1
     ac4:	e3a0200a 	mov	r2, #10
     ac8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     acc:	ebffff84 	bl	8e4 <printint>
     ad0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ad4:	e2833004 	add	r3, r3, #4
     ad8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     adc:	ea00004a 	b	c0c <printf+0x1f0>
     ae0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ae4:	e3530078 	cmp	r3, #120	@ 0x78
     ae8:	0a000002 	beq	af8 <printf+0xdc>
     aec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     af0:	e3530070 	cmp	r3, #112	@ 0x70
     af4:	1a00000a 	bne	b24 <printf+0x108>
     af8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     afc:	e5933000 	ldr	r3, [r3]
     b00:	e1a01003 	mov	r1, r3
     b04:	e3a03000 	mov	r3, #0
     b08:	e3a02010 	mov	r2, #16
     b0c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b10:	ebffff73 	bl	8e4 <printint>
     b14:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b18:	e2833004 	add	r3, r3, #4
     b1c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b20:	ea000039 	b	c0c <printf+0x1f0>
     b24:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b28:	e3530073 	cmp	r3, #115	@ 0x73
     b2c:	1a000018 	bne	b94 <printf+0x178>
     b30:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b34:	e5933000 	ldr	r3, [r3]
     b38:	e50b300c 	str	r3, [fp, #-12]
     b3c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b40:	e2833004 	add	r3, r3, #4
     b44:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b48:	e51b300c 	ldr	r3, [fp, #-12]
     b4c:	e3530000 	cmp	r3, #0
     b50:	1a00000a 	bne	b80 <printf+0x164>
     b54:	e59f30f4 	ldr	r3, [pc, #244]	@ c50 <printf+0x234>
     b58:	e50b300c 	str	r3, [fp, #-12]
     b5c:	ea000007 	b	b80 <printf+0x164>
     b60:	e51b300c 	ldr	r3, [fp, #-12]
     b64:	e5d33000 	ldrb	r3, [r3]
     b68:	e1a01003 	mov	r1, r3
     b6c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b70:	ebffff4d 	bl	8ac <putc>
     b74:	e51b300c 	ldr	r3, [fp, #-12]
     b78:	e2833001 	add	r3, r3, #1
     b7c:	e50b300c 	str	r3, [fp, #-12]
     b80:	e51b300c 	ldr	r3, [fp, #-12]
     b84:	e5d33000 	ldrb	r3, [r3]
     b88:	e3530000 	cmp	r3, #0
     b8c:	1afffff3 	bne	b60 <printf+0x144>
     b90:	ea00001d 	b	c0c <printf+0x1f0>
     b94:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b98:	e3530063 	cmp	r3, #99	@ 0x63
     b9c:	1a000009 	bne	bc8 <printf+0x1ac>
     ba0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ba4:	e5933000 	ldr	r3, [r3]
     ba8:	e6ef3073 	uxtb	r3, r3
     bac:	e1a01003 	mov	r1, r3
     bb0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bb4:	ebffff3c 	bl	8ac <putc>
     bb8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bbc:	e2833004 	add	r3, r3, #4
     bc0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     bc4:	ea000010 	b	c0c <printf+0x1f0>
     bc8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bcc:	e3530025 	cmp	r3, #37	@ 0x25
     bd0:	1a000005 	bne	bec <printf+0x1d0>
     bd4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bd8:	e6ef3073 	uxtb	r3, r3
     bdc:	e1a01003 	mov	r1, r3
     be0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     be4:	ebffff30 	bl	8ac <putc>
     be8:	ea000007 	b	c0c <printf+0x1f0>
     bec:	e3a01025 	mov	r1, #37	@ 0x25
     bf0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bf4:	ebffff2c 	bl	8ac <putc>
     bf8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bfc:	e6ef3073 	uxtb	r3, r3
     c00:	e1a01003 	mov	r1, r3
     c04:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c08:	ebffff27 	bl	8ac <putc>
     c0c:	e3a03000 	mov	r3, #0
     c10:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c14:	e51b3010 	ldr	r3, [fp, #-16]
     c18:	e2833001 	add	r3, r3, #1
     c1c:	e50b3010 	str	r3, [fp, #-16]
     c20:	e59b2004 	ldr	r2, [fp, #4]
     c24:	e51b3010 	ldr	r3, [fp, #-16]
     c28:	e0823003 	add	r3, r2, r3
     c2c:	e5d33000 	ldrb	r3, [r3]
     c30:	e3530000 	cmp	r3, #0
     c34:	1affff84 	bne	a4c <printf+0x30>
     c38:	e1a00000 	nop			@ (mov r0, r0)
     c3c:	e1a00000 	nop			@ (mov r0, r0)
     c40:	e24bd004 	sub	sp, fp, #4
     c44:	e8bd4800 	pop	{fp, lr}
     c48:	e28dd00c 	add	sp, sp, #12
     c4c:	e12fff1e 	bx	lr
     c50:	000010e4 	.word	0x000010e4

00000c54 <free>:
     c54:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     c58:	e28db000 	add	fp, sp, #0
     c5c:	e24dd014 	sub	sp, sp, #20
     c60:	e50b0010 	str	r0, [fp, #-16]
     c64:	e51b3010 	ldr	r3, [fp, #-16]
     c68:	e2433008 	sub	r3, r3, #8
     c6c:	e50b300c 	str	r3, [fp, #-12]
     c70:	e59f3154 	ldr	r3, [pc, #340]	@ dcc <free+0x178>
     c74:	e5933000 	ldr	r3, [r3]
     c78:	e50b3008 	str	r3, [fp, #-8]
     c7c:	ea000010 	b	cc4 <free+0x70>
     c80:	e51b3008 	ldr	r3, [fp, #-8]
     c84:	e5933000 	ldr	r3, [r3]
     c88:	e51b2008 	ldr	r2, [fp, #-8]
     c8c:	e1520003 	cmp	r2, r3
     c90:	3a000008 	bcc	cb8 <free+0x64>
     c94:	e51b200c 	ldr	r2, [fp, #-12]
     c98:	e51b3008 	ldr	r3, [fp, #-8]
     c9c:	e1520003 	cmp	r2, r3
     ca0:	8a000010 	bhi	ce8 <free+0x94>
     ca4:	e51b3008 	ldr	r3, [fp, #-8]
     ca8:	e5933000 	ldr	r3, [r3]
     cac:	e51b200c 	ldr	r2, [fp, #-12]
     cb0:	e1520003 	cmp	r2, r3
     cb4:	3a00000b 	bcc	ce8 <free+0x94>
     cb8:	e51b3008 	ldr	r3, [fp, #-8]
     cbc:	e5933000 	ldr	r3, [r3]
     cc0:	e50b3008 	str	r3, [fp, #-8]
     cc4:	e51b200c 	ldr	r2, [fp, #-12]
     cc8:	e51b3008 	ldr	r3, [fp, #-8]
     ccc:	e1520003 	cmp	r2, r3
     cd0:	9affffea 	bls	c80 <free+0x2c>
     cd4:	e51b3008 	ldr	r3, [fp, #-8]
     cd8:	e5933000 	ldr	r3, [r3]
     cdc:	e51b200c 	ldr	r2, [fp, #-12]
     ce0:	e1520003 	cmp	r2, r3
     ce4:	2affffe5 	bcs	c80 <free+0x2c>
     ce8:	e51b300c 	ldr	r3, [fp, #-12]
     cec:	e5933004 	ldr	r3, [r3, #4]
     cf0:	e1a03183 	lsl	r3, r3, #3
     cf4:	e51b200c 	ldr	r2, [fp, #-12]
     cf8:	e0822003 	add	r2, r2, r3
     cfc:	e51b3008 	ldr	r3, [fp, #-8]
     d00:	e5933000 	ldr	r3, [r3]
     d04:	e1520003 	cmp	r2, r3
     d08:	1a00000d 	bne	d44 <free+0xf0>
     d0c:	e51b300c 	ldr	r3, [fp, #-12]
     d10:	e5932004 	ldr	r2, [r3, #4]
     d14:	e51b3008 	ldr	r3, [fp, #-8]
     d18:	e5933000 	ldr	r3, [r3]
     d1c:	e5933004 	ldr	r3, [r3, #4]
     d20:	e0822003 	add	r2, r2, r3
     d24:	e51b300c 	ldr	r3, [fp, #-12]
     d28:	e5832004 	str	r2, [r3, #4]
     d2c:	e51b3008 	ldr	r3, [fp, #-8]
     d30:	e5933000 	ldr	r3, [r3]
     d34:	e5932000 	ldr	r2, [r3]
     d38:	e51b300c 	ldr	r3, [fp, #-12]
     d3c:	e5832000 	str	r2, [r3]
     d40:	ea000003 	b	d54 <free+0x100>
     d44:	e51b3008 	ldr	r3, [fp, #-8]
     d48:	e5932000 	ldr	r2, [r3]
     d4c:	e51b300c 	ldr	r3, [fp, #-12]
     d50:	e5832000 	str	r2, [r3]
     d54:	e51b3008 	ldr	r3, [fp, #-8]
     d58:	e5933004 	ldr	r3, [r3, #4]
     d5c:	e1a03183 	lsl	r3, r3, #3
     d60:	e51b2008 	ldr	r2, [fp, #-8]
     d64:	e0823003 	add	r3, r2, r3
     d68:	e51b200c 	ldr	r2, [fp, #-12]
     d6c:	e1520003 	cmp	r2, r3
     d70:	1a00000b 	bne	da4 <free+0x150>
     d74:	e51b3008 	ldr	r3, [fp, #-8]
     d78:	e5932004 	ldr	r2, [r3, #4]
     d7c:	e51b300c 	ldr	r3, [fp, #-12]
     d80:	e5933004 	ldr	r3, [r3, #4]
     d84:	e0822003 	add	r2, r2, r3
     d88:	e51b3008 	ldr	r3, [fp, #-8]
     d8c:	e5832004 	str	r2, [r3, #4]
     d90:	e51b300c 	ldr	r3, [fp, #-12]
     d94:	e5932000 	ldr	r2, [r3]
     d98:	e51b3008 	ldr	r3, [fp, #-8]
     d9c:	e5832000 	str	r2, [r3]
     da0:	ea000002 	b	db0 <free+0x15c>
     da4:	e51b3008 	ldr	r3, [fp, #-8]
     da8:	e51b200c 	ldr	r2, [fp, #-12]
     dac:	e5832000 	str	r2, [r3]
     db0:	e59f2014 	ldr	r2, [pc, #20]	@ dcc <free+0x178>
     db4:	e51b3008 	ldr	r3, [fp, #-8]
     db8:	e5823000 	str	r3, [r2]
     dbc:	e1a00000 	nop			@ (mov r0, r0)
     dc0:	e28bd000 	add	sp, fp, #0
     dc4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     dc8:	e12fff1e 	bx	lr
     dcc:	00001108 	.word	0x00001108

00000dd0 <morecore>:
     dd0:	e92d4800 	push	{fp, lr}
     dd4:	e28db004 	add	fp, sp, #4
     dd8:	e24dd010 	sub	sp, sp, #16
     ddc:	e50b0010 	str	r0, [fp, #-16]
     de0:	e51b3010 	ldr	r3, [fp, #-16]
     de4:	e3530a01 	cmp	r3, #4096	@ 0x1000
     de8:	2a000001 	bcs	df4 <morecore+0x24>
     dec:	e3a03a01 	mov	r3, #4096	@ 0x1000
     df0:	e50b3010 	str	r3, [fp, #-16]
     df4:	e51b3010 	ldr	r3, [fp, #-16]
     df8:	e1a03183 	lsl	r3, r3, #3
     dfc:	e1a00003 	mov	r0, r3
     e00:	ebfffe61 	bl	78c <sbrk>
     e04:	e50b0008 	str	r0, [fp, #-8]
     e08:	e51b3008 	ldr	r3, [fp, #-8]
     e0c:	e3730001 	cmn	r3, #1
     e10:	1a000001 	bne	e1c <morecore+0x4c>
     e14:	e3a03000 	mov	r3, #0
     e18:	ea00000a 	b	e48 <morecore+0x78>
     e1c:	e51b3008 	ldr	r3, [fp, #-8]
     e20:	e50b300c 	str	r3, [fp, #-12]
     e24:	e51b300c 	ldr	r3, [fp, #-12]
     e28:	e51b2010 	ldr	r2, [fp, #-16]
     e2c:	e5832004 	str	r2, [r3, #4]
     e30:	e51b300c 	ldr	r3, [fp, #-12]
     e34:	e2833008 	add	r3, r3, #8
     e38:	e1a00003 	mov	r0, r3
     e3c:	ebffff84 	bl	c54 <free>
     e40:	e59f300c 	ldr	r3, [pc, #12]	@ e54 <morecore+0x84>
     e44:	e5933000 	ldr	r3, [r3]
     e48:	e1a00003 	mov	r0, r3
     e4c:	e24bd004 	sub	sp, fp, #4
     e50:	e8bd8800 	pop	{fp, pc}
     e54:	00001108 	.word	0x00001108

00000e58 <malloc>:
     e58:	e92d4800 	push	{fp, lr}
     e5c:	e28db004 	add	fp, sp, #4
     e60:	e24dd018 	sub	sp, sp, #24
     e64:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     e68:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e6c:	e2833007 	add	r3, r3, #7
     e70:	e1a031a3 	lsr	r3, r3, #3
     e74:	e2833001 	add	r3, r3, #1
     e78:	e50b3010 	str	r3, [fp, #-16]
     e7c:	e59f3134 	ldr	r3, [pc, #308]	@ fb8 <malloc+0x160>
     e80:	e5933000 	ldr	r3, [r3]
     e84:	e50b300c 	str	r3, [fp, #-12]
     e88:	e51b300c 	ldr	r3, [fp, #-12]
     e8c:	e3530000 	cmp	r3, #0
     e90:	1a00000b 	bne	ec4 <malloc+0x6c>
     e94:	e59f3120 	ldr	r3, [pc, #288]	@ fbc <malloc+0x164>
     e98:	e50b300c 	str	r3, [fp, #-12]
     e9c:	e59f2114 	ldr	r2, [pc, #276]	@ fb8 <malloc+0x160>
     ea0:	e51b300c 	ldr	r3, [fp, #-12]
     ea4:	e5823000 	str	r3, [r2]
     ea8:	e59f3108 	ldr	r3, [pc, #264]	@ fb8 <malloc+0x160>
     eac:	e5933000 	ldr	r3, [r3]
     eb0:	e59f2104 	ldr	r2, [pc, #260]	@ fbc <malloc+0x164>
     eb4:	e5823000 	str	r3, [r2]
     eb8:	e59f30fc 	ldr	r3, [pc, #252]	@ fbc <malloc+0x164>
     ebc:	e3a02000 	mov	r2, #0
     ec0:	e5832004 	str	r2, [r3, #4]
     ec4:	e51b300c 	ldr	r3, [fp, #-12]
     ec8:	e5933000 	ldr	r3, [r3]
     ecc:	e50b3008 	str	r3, [fp, #-8]
     ed0:	e51b3008 	ldr	r3, [fp, #-8]
     ed4:	e5933004 	ldr	r3, [r3, #4]
     ed8:	e51b2010 	ldr	r2, [fp, #-16]
     edc:	e1520003 	cmp	r2, r3
     ee0:	8a00001e 	bhi	f60 <malloc+0x108>
     ee4:	e51b3008 	ldr	r3, [fp, #-8]
     ee8:	e5933004 	ldr	r3, [r3, #4]
     eec:	e51b2010 	ldr	r2, [fp, #-16]
     ef0:	e1520003 	cmp	r2, r3
     ef4:	1a000004 	bne	f0c <malloc+0xb4>
     ef8:	e51b3008 	ldr	r3, [fp, #-8]
     efc:	e5932000 	ldr	r2, [r3]
     f00:	e51b300c 	ldr	r3, [fp, #-12]
     f04:	e5832000 	str	r2, [r3]
     f08:	ea00000e 	b	f48 <malloc+0xf0>
     f0c:	e51b3008 	ldr	r3, [fp, #-8]
     f10:	e5932004 	ldr	r2, [r3, #4]
     f14:	e51b3010 	ldr	r3, [fp, #-16]
     f18:	e0422003 	sub	r2, r2, r3
     f1c:	e51b3008 	ldr	r3, [fp, #-8]
     f20:	e5832004 	str	r2, [r3, #4]
     f24:	e51b3008 	ldr	r3, [fp, #-8]
     f28:	e5933004 	ldr	r3, [r3, #4]
     f2c:	e1a03183 	lsl	r3, r3, #3
     f30:	e51b2008 	ldr	r2, [fp, #-8]
     f34:	e0823003 	add	r3, r2, r3
     f38:	e50b3008 	str	r3, [fp, #-8]
     f3c:	e51b3008 	ldr	r3, [fp, #-8]
     f40:	e51b2010 	ldr	r2, [fp, #-16]
     f44:	e5832004 	str	r2, [r3, #4]
     f48:	e59f2068 	ldr	r2, [pc, #104]	@ fb8 <malloc+0x160>
     f4c:	e51b300c 	ldr	r3, [fp, #-12]
     f50:	e5823000 	str	r3, [r2]
     f54:	e51b3008 	ldr	r3, [fp, #-8]
     f58:	e2833008 	add	r3, r3, #8
     f5c:	ea000012 	b	fac <malloc+0x154>
     f60:	e59f3050 	ldr	r3, [pc, #80]	@ fb8 <malloc+0x160>
     f64:	e5933000 	ldr	r3, [r3]
     f68:	e51b2008 	ldr	r2, [fp, #-8]
     f6c:	e1520003 	cmp	r2, r3
     f70:	1a000007 	bne	f94 <malloc+0x13c>
     f74:	e51b0010 	ldr	r0, [fp, #-16]
     f78:	ebffff94 	bl	dd0 <morecore>
     f7c:	e50b0008 	str	r0, [fp, #-8]
     f80:	e51b3008 	ldr	r3, [fp, #-8]
     f84:	e3530000 	cmp	r3, #0
     f88:	1a000001 	bne	f94 <malloc+0x13c>
     f8c:	e3a03000 	mov	r3, #0
     f90:	ea000005 	b	fac <malloc+0x154>
     f94:	e51b3008 	ldr	r3, [fp, #-8]
     f98:	e50b300c 	str	r3, [fp, #-12]
     f9c:	e51b3008 	ldr	r3, [fp, #-8]
     fa0:	e5933000 	ldr	r3, [r3]
     fa4:	e50b3008 	str	r3, [fp, #-8]
     fa8:	eaffffc8 	b	ed0 <malloc+0x78>
     fac:	e1a00003 	mov	r0, r3
     fb0:	e24bd004 	sub	sp, fp, #4
     fb4:	e8bd8800 	pop	{fp, pc}
     fb8:	00001108 	.word	0x00001108
     fbc:	00001100 	.word	0x00001100

00000fc0 <__udivsi3>:
     fc0:	e2512001 	subs	r2, r1, #1
     fc4:	012fff1e 	bxeq	lr
     fc8:	3a000036 	bcc	10a8 <__udivsi3+0xe8>
     fcc:	e1500001 	cmp	r0, r1
     fd0:	9a000022 	bls	1060 <__udivsi3+0xa0>
     fd4:	e1110002 	tst	r1, r2
     fd8:	0a000023 	beq	106c <__udivsi3+0xac>
     fdc:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
     fe0:	01a01181 	lsleq	r1, r1, #3
     fe4:	03a03008 	moveq	r3, #8
     fe8:	13a03001 	movne	r3, #1
     fec:	e3510201 	cmp	r1, #268435456	@ 0x10000000
     ff0:	31510000 	cmpcc	r1, r0
     ff4:	31a01201 	lslcc	r1, r1, #4
     ff8:	31a03203 	lslcc	r3, r3, #4
     ffc:	3afffffa 	bcc	fec <__udivsi3+0x2c>
    1000:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1004:	31510000 	cmpcc	r1, r0
    1008:	31a01081 	lslcc	r1, r1, #1
    100c:	31a03083 	lslcc	r3, r3, #1
    1010:	3afffffa 	bcc	1000 <__udivsi3+0x40>
    1014:	e3a02000 	mov	r2, #0
    1018:	e1500001 	cmp	r0, r1
    101c:	20400001 	subcs	r0, r0, r1
    1020:	21822003 	orrcs	r2, r2, r3
    1024:	e15000a1 	cmp	r0, r1, lsr #1
    1028:	204000a1 	subcs	r0, r0, r1, lsr #1
    102c:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1030:	e1500121 	cmp	r0, r1, lsr #2
    1034:	20400121 	subcs	r0, r0, r1, lsr #2
    1038:	21822123 	orrcs	r2, r2, r3, lsr #2
    103c:	e15001a1 	cmp	r0, r1, lsr #3
    1040:	204001a1 	subcs	r0, r0, r1, lsr #3
    1044:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1048:	e3500000 	cmp	r0, #0
    104c:	11b03223 	lsrsne	r3, r3, #4
    1050:	11a01221 	lsrne	r1, r1, #4
    1054:	1affffef 	bne	1018 <__udivsi3+0x58>
    1058:	e1a00002 	mov	r0, r2
    105c:	e12fff1e 	bx	lr
    1060:	03a00001 	moveq	r0, #1
    1064:	13a00000 	movne	r0, #0
    1068:	e12fff1e 	bx	lr
    106c:	e3510801 	cmp	r1, #65536	@ 0x10000
    1070:	21a01821 	lsrcs	r1, r1, #16
    1074:	23a02010 	movcs	r2, #16
    1078:	33a02000 	movcc	r2, #0
    107c:	e3510c01 	cmp	r1, #256	@ 0x100
    1080:	21a01421 	lsrcs	r1, r1, #8
    1084:	22822008 	addcs	r2, r2, #8
    1088:	e3510010 	cmp	r1, #16
    108c:	21a01221 	lsrcs	r1, r1, #4
    1090:	22822004 	addcs	r2, r2, #4
    1094:	e3510004 	cmp	r1, #4
    1098:	82822003 	addhi	r2, r2, #3
    109c:	908220a1 	addls	r2, r2, r1, lsr #1
    10a0:	e1a00230 	lsr	r0, r0, r2
    10a4:	e12fff1e 	bx	lr
    10a8:	e3500000 	cmp	r0, #0
    10ac:	13e00000 	mvnne	r0, #0
    10b0:	ea000007 	b	10d4 <__aeabi_idiv0>

000010b4 <__aeabi_uidivmod>:
    10b4:	e3510000 	cmp	r1, #0
    10b8:	0afffffa 	beq	10a8 <__udivsi3+0xe8>
    10bc:	e92d4003 	push	{r0, r1, lr}
    10c0:	ebffffbe 	bl	fc0 <__udivsi3>
    10c4:	e8bd4006 	pop	{r1, r2, lr}
    10c8:	e0030092 	mul	r3, r2, r0
    10cc:	e0411003 	sub	r1, r1, r3
    10d0:	e12fff1e 	bx	lr

000010d4 <__aeabi_idiv0>:
    10d4:	e12fff1e 	bx	lr
