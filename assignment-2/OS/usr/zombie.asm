
_zombie:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	eb00013b 	bl	4fc <fork>
       c:	e1a03000 	mov	r3, r0
      10:	e3530000 	cmp	r3, #0
      14:	da000001 	ble	20 <main+0x20>
      18:	e3a00005 	mov	r0, #5
      1c:	eb0001e1 	bl	7a8 <sleep>
      20:	eb00013e 	bl	520 <exit>

00000024 <strcpy>:
      24:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      28:	e28db000 	add	fp, sp, #0
      2c:	e24dd014 	sub	sp, sp, #20
      30:	e50b0010 	str	r0, [fp, #-16]
      34:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      38:	e51b3010 	ldr	r3, [fp, #-16]
      3c:	e50b3008 	str	r3, [fp, #-8]
      40:	e1a00000 	nop			@ (mov r0, r0)
      44:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      48:	e2823001 	add	r3, r2, #1
      4c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      50:	e51b3010 	ldr	r3, [fp, #-16]
      54:	e2831001 	add	r1, r3, #1
      58:	e50b1010 	str	r1, [fp, #-16]
      5c:	e5d22000 	ldrb	r2, [r2]
      60:	e5c32000 	strb	r2, [r3]
      64:	e5d33000 	ldrb	r3, [r3]
      68:	e3530000 	cmp	r3, #0
      6c:	1afffff4 	bne	44 <strcpy+0x20>
      70:	e51b3008 	ldr	r3, [fp, #-8]
      74:	e1a00003 	mov	r0, r3
      78:	e28bd000 	add	sp, fp, #0
      7c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      80:	e12fff1e 	bx	lr

00000084 <strcmp>:
      84:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      88:	e28db000 	add	fp, sp, #0
      8c:	e24dd00c 	sub	sp, sp, #12
      90:	e50b0008 	str	r0, [fp, #-8]
      94:	e50b100c 	str	r1, [fp, #-12]
      98:	ea000005 	b	b4 <strcmp+0x30>
      9c:	e51b3008 	ldr	r3, [fp, #-8]
      a0:	e2833001 	add	r3, r3, #1
      a4:	e50b3008 	str	r3, [fp, #-8]
      a8:	e51b300c 	ldr	r3, [fp, #-12]
      ac:	e2833001 	add	r3, r3, #1
      b0:	e50b300c 	str	r3, [fp, #-12]
      b4:	e51b3008 	ldr	r3, [fp, #-8]
      b8:	e5d33000 	ldrb	r3, [r3]
      bc:	e3530000 	cmp	r3, #0
      c0:	0a000005 	beq	dc <strcmp+0x58>
      c4:	e51b3008 	ldr	r3, [fp, #-8]
      c8:	e5d32000 	ldrb	r2, [r3]
      cc:	e51b300c 	ldr	r3, [fp, #-12]
      d0:	e5d33000 	ldrb	r3, [r3]
      d4:	e1520003 	cmp	r2, r3
      d8:	0affffef 	beq	9c <strcmp+0x18>
      dc:	e51b3008 	ldr	r3, [fp, #-8]
      e0:	e5d33000 	ldrb	r3, [r3]
      e4:	e1a02003 	mov	r2, r3
      e8:	e51b300c 	ldr	r3, [fp, #-12]
      ec:	e5d33000 	ldrb	r3, [r3]
      f0:	e0423003 	sub	r3, r2, r3
      f4:	e1a00003 	mov	r0, r3
      f8:	e28bd000 	add	sp, fp, #0
      fc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     100:	e12fff1e 	bx	lr

00000104 <strlen>:
     104:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     108:	e28db000 	add	fp, sp, #0
     10c:	e24dd014 	sub	sp, sp, #20
     110:	e50b0010 	str	r0, [fp, #-16]
     114:	e3a03000 	mov	r3, #0
     118:	e50b3008 	str	r3, [fp, #-8]
     11c:	ea000002 	b	12c <strlen+0x28>
     120:	e51b3008 	ldr	r3, [fp, #-8]
     124:	e2833001 	add	r3, r3, #1
     128:	e50b3008 	str	r3, [fp, #-8]
     12c:	e51b3008 	ldr	r3, [fp, #-8]
     130:	e51b2010 	ldr	r2, [fp, #-16]
     134:	e0823003 	add	r3, r2, r3
     138:	e5d33000 	ldrb	r3, [r3]
     13c:	e3530000 	cmp	r3, #0
     140:	1afffff6 	bne	120 <strlen+0x1c>
     144:	e51b3008 	ldr	r3, [fp, #-8]
     148:	e1a00003 	mov	r0, r3
     14c:	e28bd000 	add	sp, fp, #0
     150:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     154:	e12fff1e 	bx	lr

00000158 <memset>:
     158:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     15c:	e28db000 	add	fp, sp, #0
     160:	e24dd024 	sub	sp, sp, #36	@ 0x24
     164:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     168:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     16c:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     170:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     174:	e50b3008 	str	r3, [fp, #-8]
     178:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     17c:	e54b300d 	strb	r3, [fp, #-13]
     180:	e55b200d 	ldrb	r2, [fp, #-13]
     184:	e1a03002 	mov	r3, r2
     188:	e1a03403 	lsl	r3, r3, #8
     18c:	e0833002 	add	r3, r3, r2
     190:	e1a03803 	lsl	r3, r3, #16
     194:	e1a02003 	mov	r2, r3
     198:	e55b300d 	ldrb	r3, [fp, #-13]
     19c:	e1a03403 	lsl	r3, r3, #8
     1a0:	e1822003 	orr	r2, r2, r3
     1a4:	e55b300d 	ldrb	r3, [fp, #-13]
     1a8:	e1823003 	orr	r3, r2, r3
     1ac:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     1b0:	ea000008 	b	1d8 <memset+0x80>
     1b4:	e51b3008 	ldr	r3, [fp, #-8]
     1b8:	e55b200d 	ldrb	r2, [fp, #-13]
     1bc:	e5c32000 	strb	r2, [r3]
     1c0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     1c4:	e2433001 	sub	r3, r3, #1
     1c8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     1cc:	e51b3008 	ldr	r3, [fp, #-8]
     1d0:	e2833001 	add	r3, r3, #1
     1d4:	e50b3008 	str	r3, [fp, #-8]
     1d8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     1dc:	e3530000 	cmp	r3, #0
     1e0:	0a000003 	beq	1f4 <memset+0x9c>
     1e4:	e51b3008 	ldr	r3, [fp, #-8]
     1e8:	e2033003 	and	r3, r3, #3
     1ec:	e3530000 	cmp	r3, #0
     1f0:	1affffef 	bne	1b4 <memset+0x5c>
     1f4:	e51b3008 	ldr	r3, [fp, #-8]
     1f8:	e50b300c 	str	r3, [fp, #-12]
     1fc:	ea000008 	b	224 <memset+0xcc>
     200:	e51b300c 	ldr	r3, [fp, #-12]
     204:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     208:	e5832000 	str	r2, [r3]
     20c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     210:	e2433004 	sub	r3, r3, #4
     214:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     218:	e51b300c 	ldr	r3, [fp, #-12]
     21c:	e2833004 	add	r3, r3, #4
     220:	e50b300c 	str	r3, [fp, #-12]
     224:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     228:	e3530003 	cmp	r3, #3
     22c:	8afffff3 	bhi	200 <memset+0xa8>
     230:	e51b300c 	ldr	r3, [fp, #-12]
     234:	e50b3008 	str	r3, [fp, #-8]
     238:	ea000008 	b	260 <memset+0x108>
     23c:	e51b3008 	ldr	r3, [fp, #-8]
     240:	e55b200d 	ldrb	r2, [fp, #-13]
     244:	e5c32000 	strb	r2, [r3]
     248:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     24c:	e2433001 	sub	r3, r3, #1
     250:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     254:	e51b3008 	ldr	r3, [fp, #-8]
     258:	e2833001 	add	r3, r3, #1
     25c:	e50b3008 	str	r3, [fp, #-8]
     260:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     264:	e3530000 	cmp	r3, #0
     268:	1afffff3 	bne	23c <memset+0xe4>
     26c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     270:	e1a00003 	mov	r0, r3
     274:	e28bd000 	add	sp, fp, #0
     278:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     27c:	e12fff1e 	bx	lr

00000280 <strchr>:
     280:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     284:	e28db000 	add	fp, sp, #0
     288:	e24dd00c 	sub	sp, sp, #12
     28c:	e50b0008 	str	r0, [fp, #-8]
     290:	e1a03001 	mov	r3, r1
     294:	e54b3009 	strb	r3, [fp, #-9]
     298:	ea000009 	b	2c4 <strchr+0x44>
     29c:	e51b3008 	ldr	r3, [fp, #-8]
     2a0:	e5d33000 	ldrb	r3, [r3]
     2a4:	e55b2009 	ldrb	r2, [fp, #-9]
     2a8:	e1520003 	cmp	r2, r3
     2ac:	1a000001 	bne	2b8 <strchr+0x38>
     2b0:	e51b3008 	ldr	r3, [fp, #-8]
     2b4:	ea000007 	b	2d8 <strchr+0x58>
     2b8:	e51b3008 	ldr	r3, [fp, #-8]
     2bc:	e2833001 	add	r3, r3, #1
     2c0:	e50b3008 	str	r3, [fp, #-8]
     2c4:	e51b3008 	ldr	r3, [fp, #-8]
     2c8:	e5d33000 	ldrb	r3, [r3]
     2cc:	e3530000 	cmp	r3, #0
     2d0:	1afffff1 	bne	29c <strchr+0x1c>
     2d4:	e3a03000 	mov	r3, #0
     2d8:	e1a00003 	mov	r0, r3
     2dc:	e28bd000 	add	sp, fp, #0
     2e0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2e4:	e12fff1e 	bx	lr

000002e8 <gets>:
     2e8:	e92d4800 	push	{fp, lr}
     2ec:	e28db004 	add	fp, sp, #4
     2f0:	e24dd018 	sub	sp, sp, #24
     2f4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     2f8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     2fc:	e3a03000 	mov	r3, #0
     300:	e50b3008 	str	r3, [fp, #-8]
     304:	ea000016 	b	364 <gets+0x7c>
     308:	e24b300d 	sub	r3, fp, #13
     30c:	e3a02001 	mov	r2, #1
     310:	e1a01003 	mov	r1, r3
     314:	e3a00000 	mov	r0, #0
     318:	eb00009b 	bl	58c <read>
     31c:	e50b000c 	str	r0, [fp, #-12]
     320:	e51b300c 	ldr	r3, [fp, #-12]
     324:	e3530000 	cmp	r3, #0
     328:	da000013 	ble	37c <gets+0x94>
     32c:	e51b3008 	ldr	r3, [fp, #-8]
     330:	e2832001 	add	r2, r3, #1
     334:	e50b2008 	str	r2, [fp, #-8]
     338:	e1a02003 	mov	r2, r3
     33c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     340:	e0833002 	add	r3, r3, r2
     344:	e55b200d 	ldrb	r2, [fp, #-13]
     348:	e5c32000 	strb	r2, [r3]
     34c:	e55b300d 	ldrb	r3, [fp, #-13]
     350:	e353000a 	cmp	r3, #10
     354:	0a000009 	beq	380 <gets+0x98>
     358:	e55b300d 	ldrb	r3, [fp, #-13]
     35c:	e353000d 	cmp	r3, #13
     360:	0a000006 	beq	380 <gets+0x98>
     364:	e51b3008 	ldr	r3, [fp, #-8]
     368:	e2833001 	add	r3, r3, #1
     36c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     370:	e1520003 	cmp	r2, r3
     374:	caffffe3 	bgt	308 <gets+0x20>
     378:	ea000000 	b	380 <gets+0x98>
     37c:	e1a00000 	nop			@ (mov r0, r0)
     380:	e51b3008 	ldr	r3, [fp, #-8]
     384:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     388:	e0823003 	add	r3, r2, r3
     38c:	e3a02000 	mov	r2, #0
     390:	e5c32000 	strb	r2, [r3]
     394:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     398:	e1a00003 	mov	r0, r3
     39c:	e24bd004 	sub	sp, fp, #4
     3a0:	e8bd8800 	pop	{fp, pc}

000003a4 <stat>:
     3a4:	e92d4800 	push	{fp, lr}
     3a8:	e28db004 	add	fp, sp, #4
     3ac:	e24dd010 	sub	sp, sp, #16
     3b0:	e50b0010 	str	r0, [fp, #-16]
     3b4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     3b8:	e3a01000 	mov	r1, #0
     3bc:	e51b0010 	ldr	r0, [fp, #-16]
     3c0:	eb00009e 	bl	640 <open>
     3c4:	e50b0008 	str	r0, [fp, #-8]
     3c8:	e51b3008 	ldr	r3, [fp, #-8]
     3cc:	e3530000 	cmp	r3, #0
     3d0:	aa000001 	bge	3dc <stat+0x38>
     3d4:	e3e03000 	mvn	r3, #0
     3d8:	ea000006 	b	3f8 <stat+0x54>
     3dc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     3e0:	e51b0008 	ldr	r0, [fp, #-8]
     3e4:	eb0000b0 	bl	6ac <fstat>
     3e8:	e50b000c 	str	r0, [fp, #-12]
     3ec:	e51b0008 	ldr	r0, [fp, #-8]
     3f0:	eb000077 	bl	5d4 <close>
     3f4:	e51b300c 	ldr	r3, [fp, #-12]
     3f8:	e1a00003 	mov	r0, r3
     3fc:	e24bd004 	sub	sp, fp, #4
     400:	e8bd8800 	pop	{fp, pc}

00000404 <atoi>:
     404:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     408:	e28db000 	add	fp, sp, #0
     40c:	e24dd014 	sub	sp, sp, #20
     410:	e50b0010 	str	r0, [fp, #-16]
     414:	e3a03000 	mov	r3, #0
     418:	e50b3008 	str	r3, [fp, #-8]
     41c:	ea00000c 	b	454 <atoi+0x50>
     420:	e51b2008 	ldr	r2, [fp, #-8]
     424:	e1a03002 	mov	r3, r2
     428:	e1a03103 	lsl	r3, r3, #2
     42c:	e0833002 	add	r3, r3, r2
     430:	e1a03083 	lsl	r3, r3, #1
     434:	e1a01003 	mov	r1, r3
     438:	e51b3010 	ldr	r3, [fp, #-16]
     43c:	e2832001 	add	r2, r3, #1
     440:	e50b2010 	str	r2, [fp, #-16]
     444:	e5d33000 	ldrb	r3, [r3]
     448:	e0813003 	add	r3, r1, r3
     44c:	e2433030 	sub	r3, r3, #48	@ 0x30
     450:	e50b3008 	str	r3, [fp, #-8]
     454:	e51b3010 	ldr	r3, [fp, #-16]
     458:	e5d33000 	ldrb	r3, [r3]
     45c:	e353002f 	cmp	r3, #47	@ 0x2f
     460:	9a000003 	bls	474 <atoi+0x70>
     464:	e51b3010 	ldr	r3, [fp, #-16]
     468:	e5d33000 	ldrb	r3, [r3]
     46c:	e3530039 	cmp	r3, #57	@ 0x39
     470:	9affffea 	bls	420 <atoi+0x1c>
     474:	e51b3008 	ldr	r3, [fp, #-8]
     478:	e1a00003 	mov	r0, r3
     47c:	e28bd000 	add	sp, fp, #0
     480:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     484:	e12fff1e 	bx	lr

00000488 <memmove>:
     488:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     48c:	e28db000 	add	fp, sp, #0
     490:	e24dd01c 	sub	sp, sp, #28
     494:	e50b0010 	str	r0, [fp, #-16]
     498:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     49c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     4a0:	e51b3010 	ldr	r3, [fp, #-16]
     4a4:	e50b3008 	str	r3, [fp, #-8]
     4a8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     4ac:	e50b300c 	str	r3, [fp, #-12]
     4b0:	ea000007 	b	4d4 <memmove+0x4c>
     4b4:	e51b200c 	ldr	r2, [fp, #-12]
     4b8:	e2823001 	add	r3, r2, #1
     4bc:	e50b300c 	str	r3, [fp, #-12]
     4c0:	e51b3008 	ldr	r3, [fp, #-8]
     4c4:	e2831001 	add	r1, r3, #1
     4c8:	e50b1008 	str	r1, [fp, #-8]
     4cc:	e5d22000 	ldrb	r2, [r2]
     4d0:	e5c32000 	strb	r2, [r3]
     4d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4d8:	e2432001 	sub	r2, r3, #1
     4dc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     4e0:	e3530000 	cmp	r3, #0
     4e4:	cafffff2 	bgt	4b4 <memmove+0x2c>
     4e8:	e51b3010 	ldr	r3, [fp, #-16]
     4ec:	e1a00003 	mov	r0, r3
     4f0:	e28bd000 	add	sp, fp, #0
     4f4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4f8:	e12fff1e 	bx	lr

000004fc <fork>:
     4fc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     500:	e1a04003 	mov	r4, r3
     504:	e1a03002 	mov	r3, r2
     508:	e1a02001 	mov	r2, r1
     50c:	e1a01000 	mov	r1, r0
     510:	e3a00001 	mov	r0, #1
     514:	ef000000 	svc	0x00000000
     518:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     51c:	e12fff1e 	bx	lr

00000520 <exit>:
     520:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     524:	e1a04003 	mov	r4, r3
     528:	e1a03002 	mov	r3, r2
     52c:	e1a02001 	mov	r2, r1
     530:	e1a01000 	mov	r1, r0
     534:	e3a00002 	mov	r0, #2
     538:	ef000000 	svc	0x00000000
     53c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     540:	e12fff1e 	bx	lr

00000544 <wait>:
     544:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     548:	e1a04003 	mov	r4, r3
     54c:	e1a03002 	mov	r3, r2
     550:	e1a02001 	mov	r2, r1
     554:	e1a01000 	mov	r1, r0
     558:	e3a00003 	mov	r0, #3
     55c:	ef000000 	svc	0x00000000
     560:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     564:	e12fff1e 	bx	lr

00000568 <pipe>:
     568:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     56c:	e1a04003 	mov	r4, r3
     570:	e1a03002 	mov	r3, r2
     574:	e1a02001 	mov	r2, r1
     578:	e1a01000 	mov	r1, r0
     57c:	e3a00004 	mov	r0, #4
     580:	ef000000 	svc	0x00000000
     584:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     588:	e12fff1e 	bx	lr

0000058c <read>:
     58c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     590:	e1a04003 	mov	r4, r3
     594:	e1a03002 	mov	r3, r2
     598:	e1a02001 	mov	r2, r1
     59c:	e1a01000 	mov	r1, r0
     5a0:	e3a00005 	mov	r0, #5
     5a4:	ef000000 	svc	0x00000000
     5a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5ac:	e12fff1e 	bx	lr

000005b0 <write>:
     5b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5b4:	e1a04003 	mov	r4, r3
     5b8:	e1a03002 	mov	r3, r2
     5bc:	e1a02001 	mov	r2, r1
     5c0:	e1a01000 	mov	r1, r0
     5c4:	e3a00010 	mov	r0, #16
     5c8:	ef000000 	svc	0x00000000
     5cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5d0:	e12fff1e 	bx	lr

000005d4 <close>:
     5d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5d8:	e1a04003 	mov	r4, r3
     5dc:	e1a03002 	mov	r3, r2
     5e0:	e1a02001 	mov	r2, r1
     5e4:	e1a01000 	mov	r1, r0
     5e8:	e3a00015 	mov	r0, #21
     5ec:	ef000000 	svc	0x00000000
     5f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5f4:	e12fff1e 	bx	lr

000005f8 <kill>:
     5f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5fc:	e1a04003 	mov	r4, r3
     600:	e1a03002 	mov	r3, r2
     604:	e1a02001 	mov	r2, r1
     608:	e1a01000 	mov	r1, r0
     60c:	e3a00006 	mov	r0, #6
     610:	ef000000 	svc	0x00000000
     614:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     618:	e12fff1e 	bx	lr

0000061c <exec>:
     61c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     620:	e1a04003 	mov	r4, r3
     624:	e1a03002 	mov	r3, r2
     628:	e1a02001 	mov	r2, r1
     62c:	e1a01000 	mov	r1, r0
     630:	e3a00007 	mov	r0, #7
     634:	ef000000 	svc	0x00000000
     638:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     63c:	e12fff1e 	bx	lr

00000640 <open>:
     640:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     644:	e1a04003 	mov	r4, r3
     648:	e1a03002 	mov	r3, r2
     64c:	e1a02001 	mov	r2, r1
     650:	e1a01000 	mov	r1, r0
     654:	e3a0000f 	mov	r0, #15
     658:	ef000000 	svc	0x00000000
     65c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     660:	e12fff1e 	bx	lr

00000664 <mknod>:
     664:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     668:	e1a04003 	mov	r4, r3
     66c:	e1a03002 	mov	r3, r2
     670:	e1a02001 	mov	r2, r1
     674:	e1a01000 	mov	r1, r0
     678:	e3a00011 	mov	r0, #17
     67c:	ef000000 	svc	0x00000000
     680:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     684:	e12fff1e 	bx	lr

00000688 <unlink>:
     688:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     68c:	e1a04003 	mov	r4, r3
     690:	e1a03002 	mov	r3, r2
     694:	e1a02001 	mov	r2, r1
     698:	e1a01000 	mov	r1, r0
     69c:	e3a00012 	mov	r0, #18
     6a0:	ef000000 	svc	0x00000000
     6a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6a8:	e12fff1e 	bx	lr

000006ac <fstat>:
     6ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6b0:	e1a04003 	mov	r4, r3
     6b4:	e1a03002 	mov	r3, r2
     6b8:	e1a02001 	mov	r2, r1
     6bc:	e1a01000 	mov	r1, r0
     6c0:	e3a00008 	mov	r0, #8
     6c4:	ef000000 	svc	0x00000000
     6c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6cc:	e12fff1e 	bx	lr

000006d0 <link>:
     6d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6d4:	e1a04003 	mov	r4, r3
     6d8:	e1a03002 	mov	r3, r2
     6dc:	e1a02001 	mov	r2, r1
     6e0:	e1a01000 	mov	r1, r0
     6e4:	e3a00013 	mov	r0, #19
     6e8:	ef000000 	svc	0x00000000
     6ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6f0:	e12fff1e 	bx	lr

000006f4 <mkdir>:
     6f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6f8:	e1a04003 	mov	r4, r3
     6fc:	e1a03002 	mov	r3, r2
     700:	e1a02001 	mov	r2, r1
     704:	e1a01000 	mov	r1, r0
     708:	e3a00014 	mov	r0, #20
     70c:	ef000000 	svc	0x00000000
     710:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     714:	e12fff1e 	bx	lr

00000718 <chdir>:
     718:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     71c:	e1a04003 	mov	r4, r3
     720:	e1a03002 	mov	r3, r2
     724:	e1a02001 	mov	r2, r1
     728:	e1a01000 	mov	r1, r0
     72c:	e3a00009 	mov	r0, #9
     730:	ef000000 	svc	0x00000000
     734:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     738:	e12fff1e 	bx	lr

0000073c <dup>:
     73c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     740:	e1a04003 	mov	r4, r3
     744:	e1a03002 	mov	r3, r2
     748:	e1a02001 	mov	r2, r1
     74c:	e1a01000 	mov	r1, r0
     750:	e3a0000a 	mov	r0, #10
     754:	ef000000 	svc	0x00000000
     758:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     75c:	e12fff1e 	bx	lr

00000760 <getpid>:
     760:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     764:	e1a04003 	mov	r4, r3
     768:	e1a03002 	mov	r3, r2
     76c:	e1a02001 	mov	r2, r1
     770:	e1a01000 	mov	r1, r0
     774:	e3a0000b 	mov	r0, #11
     778:	ef000000 	svc	0x00000000
     77c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     780:	e12fff1e 	bx	lr

00000784 <sbrk>:
     784:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     788:	e1a04003 	mov	r4, r3
     78c:	e1a03002 	mov	r3, r2
     790:	e1a02001 	mov	r2, r1
     794:	e1a01000 	mov	r1, r0
     798:	e3a0000c 	mov	r0, #12
     79c:	ef000000 	svc	0x00000000
     7a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7a4:	e12fff1e 	bx	lr

000007a8 <sleep>:
     7a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7ac:	e1a04003 	mov	r4, r3
     7b0:	e1a03002 	mov	r3, r2
     7b4:	e1a02001 	mov	r2, r1
     7b8:	e1a01000 	mov	r1, r0
     7bc:	e3a0000d 	mov	r0, #13
     7c0:	ef000000 	svc	0x00000000
     7c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7c8:	e12fff1e 	bx	lr

000007cc <uptime>:
     7cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7d0:	e1a04003 	mov	r4, r3
     7d4:	e1a03002 	mov	r3, r2
     7d8:	e1a02001 	mov	r2, r1
     7dc:	e1a01000 	mov	r1, r0
     7e0:	e3a0000e 	mov	r0, #14
     7e4:	ef000000 	svc	0x00000000
     7e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7ec:	e12fff1e 	bx	lr

000007f0 <getprocs>:
     7f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7f4:	e1a04003 	mov	r4, r3
     7f8:	e1a03002 	mov	r3, r2
     7fc:	e1a02001 	mov	r2, r1
     800:	e1a01000 	mov	r1, r0
     804:	e3a00016 	mov	r0, #22
     808:	ef000000 	svc	0x00000000
     80c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     810:	e12fff1e 	bx	lr

00000814 <getpinfo>:
     814:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     818:	e1a04003 	mov	r4, r3
     81c:	e1a03002 	mov	r3, r2
     820:	e1a02001 	mov	r2, r1
     824:	e1a01000 	mov	r1, r0
     828:	e3a00018 	mov	r0, #24
     82c:	ef000000 	svc	0x00000000
     830:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     834:	e12fff1e 	bx	lr

00000838 <settickets>:
     838:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     83c:	e1a04003 	mov	r4, r3
     840:	e1a03002 	mov	r3, r2
     844:	e1a02001 	mov	r2, r1
     848:	e1a01000 	mov	r1, r0
     84c:	e3a00017 	mov	r0, #23
     850:	ef000000 	svc	0x00000000
     854:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     858:	e12fff1e 	bx	lr

0000085c <srand>:
     85c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     860:	e1a04003 	mov	r4, r3
     864:	e1a03002 	mov	r3, r2
     868:	e1a02001 	mov	r2, r1
     86c:	e1a01000 	mov	r1, r0
     870:	e3a00019 	mov	r0, #25
     874:	ef000000 	svc	0x00000000
     878:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     87c:	e12fff1e 	bx	lr

00000880 <test>:
     880:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     884:	e1a04003 	mov	r4, r3
     888:	e1a03002 	mov	r3, r2
     88c:	e1a02001 	mov	r2, r1
     890:	e1a01000 	mov	r1, r0
     894:	e3a0001a 	mov	r0, #26
     898:	ef000000 	svc	0x00000000
     89c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8a0:	e12fff1e 	bx	lr

000008a4 <putc>:
     8a4:	e92d4800 	push	{fp, lr}
     8a8:	e28db004 	add	fp, sp, #4
     8ac:	e24dd008 	sub	sp, sp, #8
     8b0:	e50b0008 	str	r0, [fp, #-8]
     8b4:	e1a03001 	mov	r3, r1
     8b8:	e54b3009 	strb	r3, [fp, #-9]
     8bc:	e24b3009 	sub	r3, fp, #9
     8c0:	e3a02001 	mov	r2, #1
     8c4:	e1a01003 	mov	r1, r3
     8c8:	e51b0008 	ldr	r0, [fp, #-8]
     8cc:	ebffff37 	bl	5b0 <write>
     8d0:	e1a00000 	nop			@ (mov r0, r0)
     8d4:	e24bd004 	sub	sp, fp, #4
     8d8:	e8bd8800 	pop	{fp, pc}

000008dc <printint>:
     8dc:	e92d4800 	push	{fp, lr}
     8e0:	e28db004 	add	fp, sp, #4
     8e4:	e24dd030 	sub	sp, sp, #48	@ 0x30
     8e8:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     8ec:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     8f0:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     8f4:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     8f8:	e3a03000 	mov	r3, #0
     8fc:	e50b300c 	str	r3, [fp, #-12]
     900:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     904:	e3530000 	cmp	r3, #0
     908:	0a000008 	beq	930 <printint+0x54>
     90c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     910:	e3530000 	cmp	r3, #0
     914:	aa000005 	bge	930 <printint+0x54>
     918:	e3a03001 	mov	r3, #1
     91c:	e50b300c 	str	r3, [fp, #-12]
     920:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     924:	e2633000 	rsb	r3, r3, #0
     928:	e50b3010 	str	r3, [fp, #-16]
     92c:	ea000001 	b	938 <printint+0x5c>
     930:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     934:	e50b3010 	str	r3, [fp, #-16]
     938:	e3a03000 	mov	r3, #0
     93c:	e50b3008 	str	r3, [fp, #-8]
     940:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     944:	e51b3010 	ldr	r3, [fp, #-16]
     948:	e1a01002 	mov	r1, r2
     94c:	e1a00003 	mov	r0, r3
     950:	eb0001d5 	bl	10ac <__aeabi_uidivmod>
     954:	e1a03001 	mov	r3, r1
     958:	e1a01003 	mov	r1, r3
     95c:	e51b3008 	ldr	r3, [fp, #-8]
     960:	e2832001 	add	r2, r3, #1
     964:	e50b2008 	str	r2, [fp, #-8]
     968:	e59f20a0 	ldr	r2, [pc, #160]	@ a10 <printint+0x134>
     96c:	e7d22001 	ldrb	r2, [r2, r1]
     970:	e2433004 	sub	r3, r3, #4
     974:	e083300b 	add	r3, r3, fp
     978:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     97c:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     980:	e1a01003 	mov	r1, r3
     984:	e51b0010 	ldr	r0, [fp, #-16]
     988:	eb00018a 	bl	fb8 <__udivsi3>
     98c:	e1a03000 	mov	r3, r0
     990:	e50b3010 	str	r3, [fp, #-16]
     994:	e51b3010 	ldr	r3, [fp, #-16]
     998:	e3530000 	cmp	r3, #0
     99c:	1affffe7 	bne	940 <printint+0x64>
     9a0:	e51b300c 	ldr	r3, [fp, #-12]
     9a4:	e3530000 	cmp	r3, #0
     9a8:	0a00000e 	beq	9e8 <printint+0x10c>
     9ac:	e51b3008 	ldr	r3, [fp, #-8]
     9b0:	e2832001 	add	r2, r3, #1
     9b4:	e50b2008 	str	r2, [fp, #-8]
     9b8:	e2433004 	sub	r3, r3, #4
     9bc:	e083300b 	add	r3, r3, fp
     9c0:	e3a0202d 	mov	r2, #45	@ 0x2d
     9c4:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     9c8:	ea000006 	b	9e8 <printint+0x10c>
     9cc:	e24b2020 	sub	r2, fp, #32
     9d0:	e51b3008 	ldr	r3, [fp, #-8]
     9d4:	e0823003 	add	r3, r2, r3
     9d8:	e5d33000 	ldrb	r3, [r3]
     9dc:	e1a01003 	mov	r1, r3
     9e0:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     9e4:	ebffffae 	bl	8a4 <putc>
     9e8:	e51b3008 	ldr	r3, [fp, #-8]
     9ec:	e2433001 	sub	r3, r3, #1
     9f0:	e50b3008 	str	r3, [fp, #-8]
     9f4:	e51b3008 	ldr	r3, [fp, #-8]
     9f8:	e3530000 	cmp	r3, #0
     9fc:	aafffff2 	bge	9cc <printint+0xf0>
     a00:	e1a00000 	nop			@ (mov r0, r0)
     a04:	e1a00000 	nop			@ (mov r0, r0)
     a08:	e24bd004 	sub	sp, fp, #4
     a0c:	e8bd8800 	pop	{fp, pc}
     a10:	000010d8 	.word	0x000010d8

00000a14 <printf>:
     a14:	e92d000e 	push	{r1, r2, r3}
     a18:	e92d4800 	push	{fp, lr}
     a1c:	e28db004 	add	fp, sp, #4
     a20:	e24dd024 	sub	sp, sp, #36	@ 0x24
     a24:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     a28:	e3a03000 	mov	r3, #0
     a2c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     a30:	e28b3008 	add	r3, fp, #8
     a34:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     a38:	e3a03000 	mov	r3, #0
     a3c:	e50b3010 	str	r3, [fp, #-16]
     a40:	ea000074 	b	c18 <printf+0x204>
     a44:	e59b2004 	ldr	r2, [fp, #4]
     a48:	e51b3010 	ldr	r3, [fp, #-16]
     a4c:	e0823003 	add	r3, r2, r3
     a50:	e5d33000 	ldrb	r3, [r3]
     a54:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     a58:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     a5c:	e3530000 	cmp	r3, #0
     a60:	1a00000b 	bne	a94 <printf+0x80>
     a64:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a68:	e3530025 	cmp	r3, #37	@ 0x25
     a6c:	1a000002 	bne	a7c <printf+0x68>
     a70:	e3a03025 	mov	r3, #37	@ 0x25
     a74:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     a78:	ea000063 	b	c0c <printf+0x1f8>
     a7c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a80:	e6ef3073 	uxtb	r3, r3
     a84:	e1a01003 	mov	r1, r3
     a88:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     a8c:	ebffff84 	bl	8a4 <putc>
     a90:	ea00005d 	b	c0c <printf+0x1f8>
     a94:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     a98:	e3530025 	cmp	r3, #37	@ 0x25
     a9c:	1a00005a 	bne	c0c <printf+0x1f8>
     aa0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     aa4:	e3530064 	cmp	r3, #100	@ 0x64
     aa8:	1a00000a 	bne	ad8 <printf+0xc4>
     aac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ab0:	e5933000 	ldr	r3, [r3]
     ab4:	e1a01003 	mov	r1, r3
     ab8:	e3a03001 	mov	r3, #1
     abc:	e3a0200a 	mov	r2, #10
     ac0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ac4:	ebffff84 	bl	8dc <printint>
     ac8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     acc:	e2833004 	add	r3, r3, #4
     ad0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ad4:	ea00004a 	b	c04 <printf+0x1f0>
     ad8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     adc:	e3530078 	cmp	r3, #120	@ 0x78
     ae0:	0a000002 	beq	af0 <printf+0xdc>
     ae4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ae8:	e3530070 	cmp	r3, #112	@ 0x70
     aec:	1a00000a 	bne	b1c <printf+0x108>
     af0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     af4:	e5933000 	ldr	r3, [r3]
     af8:	e1a01003 	mov	r1, r3
     afc:	e3a03000 	mov	r3, #0
     b00:	e3a02010 	mov	r2, #16
     b04:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b08:	ebffff73 	bl	8dc <printint>
     b0c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b10:	e2833004 	add	r3, r3, #4
     b14:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b18:	ea000039 	b	c04 <printf+0x1f0>
     b1c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b20:	e3530073 	cmp	r3, #115	@ 0x73
     b24:	1a000018 	bne	b8c <printf+0x178>
     b28:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b2c:	e5933000 	ldr	r3, [r3]
     b30:	e50b300c 	str	r3, [fp, #-12]
     b34:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b38:	e2833004 	add	r3, r3, #4
     b3c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b40:	e51b300c 	ldr	r3, [fp, #-12]
     b44:	e3530000 	cmp	r3, #0
     b48:	1a00000a 	bne	b78 <printf+0x164>
     b4c:	e59f30f4 	ldr	r3, [pc, #244]	@ c48 <printf+0x234>
     b50:	e50b300c 	str	r3, [fp, #-12]
     b54:	ea000007 	b	b78 <printf+0x164>
     b58:	e51b300c 	ldr	r3, [fp, #-12]
     b5c:	e5d33000 	ldrb	r3, [r3]
     b60:	e1a01003 	mov	r1, r3
     b64:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b68:	ebffff4d 	bl	8a4 <putc>
     b6c:	e51b300c 	ldr	r3, [fp, #-12]
     b70:	e2833001 	add	r3, r3, #1
     b74:	e50b300c 	str	r3, [fp, #-12]
     b78:	e51b300c 	ldr	r3, [fp, #-12]
     b7c:	e5d33000 	ldrb	r3, [r3]
     b80:	e3530000 	cmp	r3, #0
     b84:	1afffff3 	bne	b58 <printf+0x144>
     b88:	ea00001d 	b	c04 <printf+0x1f0>
     b8c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b90:	e3530063 	cmp	r3, #99	@ 0x63
     b94:	1a000009 	bne	bc0 <printf+0x1ac>
     b98:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b9c:	e5933000 	ldr	r3, [r3]
     ba0:	e6ef3073 	uxtb	r3, r3
     ba4:	e1a01003 	mov	r1, r3
     ba8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bac:	ebffff3c 	bl	8a4 <putc>
     bb0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bb4:	e2833004 	add	r3, r3, #4
     bb8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     bbc:	ea000010 	b	c04 <printf+0x1f0>
     bc0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bc4:	e3530025 	cmp	r3, #37	@ 0x25
     bc8:	1a000005 	bne	be4 <printf+0x1d0>
     bcc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bd0:	e6ef3073 	uxtb	r3, r3
     bd4:	e1a01003 	mov	r1, r3
     bd8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bdc:	ebffff30 	bl	8a4 <putc>
     be0:	ea000007 	b	c04 <printf+0x1f0>
     be4:	e3a01025 	mov	r1, #37	@ 0x25
     be8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bec:	ebffff2c 	bl	8a4 <putc>
     bf0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bf4:	e6ef3073 	uxtb	r3, r3
     bf8:	e1a01003 	mov	r1, r3
     bfc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c00:	ebffff27 	bl	8a4 <putc>
     c04:	e3a03000 	mov	r3, #0
     c08:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c0c:	e51b3010 	ldr	r3, [fp, #-16]
     c10:	e2833001 	add	r3, r3, #1
     c14:	e50b3010 	str	r3, [fp, #-16]
     c18:	e59b2004 	ldr	r2, [fp, #4]
     c1c:	e51b3010 	ldr	r3, [fp, #-16]
     c20:	e0823003 	add	r3, r2, r3
     c24:	e5d33000 	ldrb	r3, [r3]
     c28:	e3530000 	cmp	r3, #0
     c2c:	1affff84 	bne	a44 <printf+0x30>
     c30:	e1a00000 	nop			@ (mov r0, r0)
     c34:	e1a00000 	nop			@ (mov r0, r0)
     c38:	e24bd004 	sub	sp, fp, #4
     c3c:	e8bd4800 	pop	{fp, lr}
     c40:	e28dd00c 	add	sp, sp, #12
     c44:	e12fff1e 	bx	lr
     c48:	000010d0 	.word	0x000010d0

00000c4c <free>:
     c4c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     c50:	e28db000 	add	fp, sp, #0
     c54:	e24dd014 	sub	sp, sp, #20
     c58:	e50b0010 	str	r0, [fp, #-16]
     c5c:	e51b3010 	ldr	r3, [fp, #-16]
     c60:	e2433008 	sub	r3, r3, #8
     c64:	e50b300c 	str	r3, [fp, #-12]
     c68:	e59f3154 	ldr	r3, [pc, #340]	@ dc4 <free+0x178>
     c6c:	e5933000 	ldr	r3, [r3]
     c70:	e50b3008 	str	r3, [fp, #-8]
     c74:	ea000010 	b	cbc <free+0x70>
     c78:	e51b3008 	ldr	r3, [fp, #-8]
     c7c:	e5933000 	ldr	r3, [r3]
     c80:	e51b2008 	ldr	r2, [fp, #-8]
     c84:	e1520003 	cmp	r2, r3
     c88:	3a000008 	bcc	cb0 <free+0x64>
     c8c:	e51b200c 	ldr	r2, [fp, #-12]
     c90:	e51b3008 	ldr	r3, [fp, #-8]
     c94:	e1520003 	cmp	r2, r3
     c98:	8a000010 	bhi	ce0 <free+0x94>
     c9c:	e51b3008 	ldr	r3, [fp, #-8]
     ca0:	e5933000 	ldr	r3, [r3]
     ca4:	e51b200c 	ldr	r2, [fp, #-12]
     ca8:	e1520003 	cmp	r2, r3
     cac:	3a00000b 	bcc	ce0 <free+0x94>
     cb0:	e51b3008 	ldr	r3, [fp, #-8]
     cb4:	e5933000 	ldr	r3, [r3]
     cb8:	e50b3008 	str	r3, [fp, #-8]
     cbc:	e51b200c 	ldr	r2, [fp, #-12]
     cc0:	e51b3008 	ldr	r3, [fp, #-8]
     cc4:	e1520003 	cmp	r2, r3
     cc8:	9affffea 	bls	c78 <free+0x2c>
     ccc:	e51b3008 	ldr	r3, [fp, #-8]
     cd0:	e5933000 	ldr	r3, [r3]
     cd4:	e51b200c 	ldr	r2, [fp, #-12]
     cd8:	e1520003 	cmp	r2, r3
     cdc:	2affffe5 	bcs	c78 <free+0x2c>
     ce0:	e51b300c 	ldr	r3, [fp, #-12]
     ce4:	e5933004 	ldr	r3, [r3, #4]
     ce8:	e1a03183 	lsl	r3, r3, #3
     cec:	e51b200c 	ldr	r2, [fp, #-12]
     cf0:	e0822003 	add	r2, r2, r3
     cf4:	e51b3008 	ldr	r3, [fp, #-8]
     cf8:	e5933000 	ldr	r3, [r3]
     cfc:	e1520003 	cmp	r2, r3
     d00:	1a00000d 	bne	d3c <free+0xf0>
     d04:	e51b300c 	ldr	r3, [fp, #-12]
     d08:	e5932004 	ldr	r2, [r3, #4]
     d0c:	e51b3008 	ldr	r3, [fp, #-8]
     d10:	e5933000 	ldr	r3, [r3]
     d14:	e5933004 	ldr	r3, [r3, #4]
     d18:	e0822003 	add	r2, r2, r3
     d1c:	e51b300c 	ldr	r3, [fp, #-12]
     d20:	e5832004 	str	r2, [r3, #4]
     d24:	e51b3008 	ldr	r3, [fp, #-8]
     d28:	e5933000 	ldr	r3, [r3]
     d2c:	e5932000 	ldr	r2, [r3]
     d30:	e51b300c 	ldr	r3, [fp, #-12]
     d34:	e5832000 	str	r2, [r3]
     d38:	ea000003 	b	d4c <free+0x100>
     d3c:	e51b3008 	ldr	r3, [fp, #-8]
     d40:	e5932000 	ldr	r2, [r3]
     d44:	e51b300c 	ldr	r3, [fp, #-12]
     d48:	e5832000 	str	r2, [r3]
     d4c:	e51b3008 	ldr	r3, [fp, #-8]
     d50:	e5933004 	ldr	r3, [r3, #4]
     d54:	e1a03183 	lsl	r3, r3, #3
     d58:	e51b2008 	ldr	r2, [fp, #-8]
     d5c:	e0823003 	add	r3, r2, r3
     d60:	e51b200c 	ldr	r2, [fp, #-12]
     d64:	e1520003 	cmp	r2, r3
     d68:	1a00000b 	bne	d9c <free+0x150>
     d6c:	e51b3008 	ldr	r3, [fp, #-8]
     d70:	e5932004 	ldr	r2, [r3, #4]
     d74:	e51b300c 	ldr	r3, [fp, #-12]
     d78:	e5933004 	ldr	r3, [r3, #4]
     d7c:	e0822003 	add	r2, r2, r3
     d80:	e51b3008 	ldr	r3, [fp, #-8]
     d84:	e5832004 	str	r2, [r3, #4]
     d88:	e51b300c 	ldr	r3, [fp, #-12]
     d8c:	e5932000 	ldr	r2, [r3]
     d90:	e51b3008 	ldr	r3, [fp, #-8]
     d94:	e5832000 	str	r2, [r3]
     d98:	ea000002 	b	da8 <free+0x15c>
     d9c:	e51b3008 	ldr	r3, [fp, #-8]
     da0:	e51b200c 	ldr	r2, [fp, #-12]
     da4:	e5832000 	str	r2, [r3]
     da8:	e59f2014 	ldr	r2, [pc, #20]	@ dc4 <free+0x178>
     dac:	e51b3008 	ldr	r3, [fp, #-8]
     db0:	e5823000 	str	r3, [r2]
     db4:	e1a00000 	nop			@ (mov r0, r0)
     db8:	e28bd000 	add	sp, fp, #0
     dbc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     dc0:	e12fff1e 	bx	lr
     dc4:	000010f4 	.word	0x000010f4

00000dc8 <morecore>:
     dc8:	e92d4800 	push	{fp, lr}
     dcc:	e28db004 	add	fp, sp, #4
     dd0:	e24dd010 	sub	sp, sp, #16
     dd4:	e50b0010 	str	r0, [fp, #-16]
     dd8:	e51b3010 	ldr	r3, [fp, #-16]
     ddc:	e3530a01 	cmp	r3, #4096	@ 0x1000
     de0:	2a000001 	bcs	dec <morecore+0x24>
     de4:	e3a03a01 	mov	r3, #4096	@ 0x1000
     de8:	e50b3010 	str	r3, [fp, #-16]
     dec:	e51b3010 	ldr	r3, [fp, #-16]
     df0:	e1a03183 	lsl	r3, r3, #3
     df4:	e1a00003 	mov	r0, r3
     df8:	ebfffe61 	bl	784 <sbrk>
     dfc:	e50b0008 	str	r0, [fp, #-8]
     e00:	e51b3008 	ldr	r3, [fp, #-8]
     e04:	e3730001 	cmn	r3, #1
     e08:	1a000001 	bne	e14 <morecore+0x4c>
     e0c:	e3a03000 	mov	r3, #0
     e10:	ea00000a 	b	e40 <morecore+0x78>
     e14:	e51b3008 	ldr	r3, [fp, #-8]
     e18:	e50b300c 	str	r3, [fp, #-12]
     e1c:	e51b300c 	ldr	r3, [fp, #-12]
     e20:	e51b2010 	ldr	r2, [fp, #-16]
     e24:	e5832004 	str	r2, [r3, #4]
     e28:	e51b300c 	ldr	r3, [fp, #-12]
     e2c:	e2833008 	add	r3, r3, #8
     e30:	e1a00003 	mov	r0, r3
     e34:	ebffff84 	bl	c4c <free>
     e38:	e59f300c 	ldr	r3, [pc, #12]	@ e4c <morecore+0x84>
     e3c:	e5933000 	ldr	r3, [r3]
     e40:	e1a00003 	mov	r0, r3
     e44:	e24bd004 	sub	sp, fp, #4
     e48:	e8bd8800 	pop	{fp, pc}
     e4c:	000010f4 	.word	0x000010f4

00000e50 <malloc>:
     e50:	e92d4800 	push	{fp, lr}
     e54:	e28db004 	add	fp, sp, #4
     e58:	e24dd018 	sub	sp, sp, #24
     e5c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     e60:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e64:	e2833007 	add	r3, r3, #7
     e68:	e1a031a3 	lsr	r3, r3, #3
     e6c:	e2833001 	add	r3, r3, #1
     e70:	e50b3010 	str	r3, [fp, #-16]
     e74:	e59f3134 	ldr	r3, [pc, #308]	@ fb0 <malloc+0x160>
     e78:	e5933000 	ldr	r3, [r3]
     e7c:	e50b300c 	str	r3, [fp, #-12]
     e80:	e51b300c 	ldr	r3, [fp, #-12]
     e84:	e3530000 	cmp	r3, #0
     e88:	1a00000b 	bne	ebc <malloc+0x6c>
     e8c:	e59f3120 	ldr	r3, [pc, #288]	@ fb4 <malloc+0x164>
     e90:	e50b300c 	str	r3, [fp, #-12]
     e94:	e59f2114 	ldr	r2, [pc, #276]	@ fb0 <malloc+0x160>
     e98:	e51b300c 	ldr	r3, [fp, #-12]
     e9c:	e5823000 	str	r3, [r2]
     ea0:	e59f3108 	ldr	r3, [pc, #264]	@ fb0 <malloc+0x160>
     ea4:	e5933000 	ldr	r3, [r3]
     ea8:	e59f2104 	ldr	r2, [pc, #260]	@ fb4 <malloc+0x164>
     eac:	e5823000 	str	r3, [r2]
     eb0:	e59f30fc 	ldr	r3, [pc, #252]	@ fb4 <malloc+0x164>
     eb4:	e3a02000 	mov	r2, #0
     eb8:	e5832004 	str	r2, [r3, #4]
     ebc:	e51b300c 	ldr	r3, [fp, #-12]
     ec0:	e5933000 	ldr	r3, [r3]
     ec4:	e50b3008 	str	r3, [fp, #-8]
     ec8:	e51b3008 	ldr	r3, [fp, #-8]
     ecc:	e5933004 	ldr	r3, [r3, #4]
     ed0:	e51b2010 	ldr	r2, [fp, #-16]
     ed4:	e1520003 	cmp	r2, r3
     ed8:	8a00001e 	bhi	f58 <malloc+0x108>
     edc:	e51b3008 	ldr	r3, [fp, #-8]
     ee0:	e5933004 	ldr	r3, [r3, #4]
     ee4:	e51b2010 	ldr	r2, [fp, #-16]
     ee8:	e1520003 	cmp	r2, r3
     eec:	1a000004 	bne	f04 <malloc+0xb4>
     ef0:	e51b3008 	ldr	r3, [fp, #-8]
     ef4:	e5932000 	ldr	r2, [r3]
     ef8:	e51b300c 	ldr	r3, [fp, #-12]
     efc:	e5832000 	str	r2, [r3]
     f00:	ea00000e 	b	f40 <malloc+0xf0>
     f04:	e51b3008 	ldr	r3, [fp, #-8]
     f08:	e5932004 	ldr	r2, [r3, #4]
     f0c:	e51b3010 	ldr	r3, [fp, #-16]
     f10:	e0422003 	sub	r2, r2, r3
     f14:	e51b3008 	ldr	r3, [fp, #-8]
     f18:	e5832004 	str	r2, [r3, #4]
     f1c:	e51b3008 	ldr	r3, [fp, #-8]
     f20:	e5933004 	ldr	r3, [r3, #4]
     f24:	e1a03183 	lsl	r3, r3, #3
     f28:	e51b2008 	ldr	r2, [fp, #-8]
     f2c:	e0823003 	add	r3, r2, r3
     f30:	e50b3008 	str	r3, [fp, #-8]
     f34:	e51b3008 	ldr	r3, [fp, #-8]
     f38:	e51b2010 	ldr	r2, [fp, #-16]
     f3c:	e5832004 	str	r2, [r3, #4]
     f40:	e59f2068 	ldr	r2, [pc, #104]	@ fb0 <malloc+0x160>
     f44:	e51b300c 	ldr	r3, [fp, #-12]
     f48:	e5823000 	str	r3, [r2]
     f4c:	e51b3008 	ldr	r3, [fp, #-8]
     f50:	e2833008 	add	r3, r3, #8
     f54:	ea000012 	b	fa4 <malloc+0x154>
     f58:	e59f3050 	ldr	r3, [pc, #80]	@ fb0 <malloc+0x160>
     f5c:	e5933000 	ldr	r3, [r3]
     f60:	e51b2008 	ldr	r2, [fp, #-8]
     f64:	e1520003 	cmp	r2, r3
     f68:	1a000007 	bne	f8c <malloc+0x13c>
     f6c:	e51b0010 	ldr	r0, [fp, #-16]
     f70:	ebffff94 	bl	dc8 <morecore>
     f74:	e50b0008 	str	r0, [fp, #-8]
     f78:	e51b3008 	ldr	r3, [fp, #-8]
     f7c:	e3530000 	cmp	r3, #0
     f80:	1a000001 	bne	f8c <malloc+0x13c>
     f84:	e3a03000 	mov	r3, #0
     f88:	ea000005 	b	fa4 <malloc+0x154>
     f8c:	e51b3008 	ldr	r3, [fp, #-8]
     f90:	e50b300c 	str	r3, [fp, #-12]
     f94:	e51b3008 	ldr	r3, [fp, #-8]
     f98:	e5933000 	ldr	r3, [r3]
     f9c:	e50b3008 	str	r3, [fp, #-8]
     fa0:	eaffffc8 	b	ec8 <malloc+0x78>
     fa4:	e1a00003 	mov	r0, r3
     fa8:	e24bd004 	sub	sp, fp, #4
     fac:	e8bd8800 	pop	{fp, pc}
     fb0:	000010f4 	.word	0x000010f4
     fb4:	000010ec 	.word	0x000010ec

00000fb8 <__udivsi3>:
     fb8:	e2512001 	subs	r2, r1, #1
     fbc:	012fff1e 	bxeq	lr
     fc0:	3a000036 	bcc	10a0 <__udivsi3+0xe8>
     fc4:	e1500001 	cmp	r0, r1
     fc8:	9a000022 	bls	1058 <__udivsi3+0xa0>
     fcc:	e1110002 	tst	r1, r2
     fd0:	0a000023 	beq	1064 <__udivsi3+0xac>
     fd4:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
     fd8:	01a01181 	lsleq	r1, r1, #3
     fdc:	03a03008 	moveq	r3, #8
     fe0:	13a03001 	movne	r3, #1
     fe4:	e3510201 	cmp	r1, #268435456	@ 0x10000000
     fe8:	31510000 	cmpcc	r1, r0
     fec:	31a01201 	lslcc	r1, r1, #4
     ff0:	31a03203 	lslcc	r3, r3, #4
     ff4:	3afffffa 	bcc	fe4 <__udivsi3+0x2c>
     ff8:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
     ffc:	31510000 	cmpcc	r1, r0
    1000:	31a01081 	lslcc	r1, r1, #1
    1004:	31a03083 	lslcc	r3, r3, #1
    1008:	3afffffa 	bcc	ff8 <__udivsi3+0x40>
    100c:	e3a02000 	mov	r2, #0
    1010:	e1500001 	cmp	r0, r1
    1014:	20400001 	subcs	r0, r0, r1
    1018:	21822003 	orrcs	r2, r2, r3
    101c:	e15000a1 	cmp	r0, r1, lsr #1
    1020:	204000a1 	subcs	r0, r0, r1, lsr #1
    1024:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1028:	e1500121 	cmp	r0, r1, lsr #2
    102c:	20400121 	subcs	r0, r0, r1, lsr #2
    1030:	21822123 	orrcs	r2, r2, r3, lsr #2
    1034:	e15001a1 	cmp	r0, r1, lsr #3
    1038:	204001a1 	subcs	r0, r0, r1, lsr #3
    103c:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1040:	e3500000 	cmp	r0, #0
    1044:	11b03223 	lsrsne	r3, r3, #4
    1048:	11a01221 	lsrne	r1, r1, #4
    104c:	1affffef 	bne	1010 <__udivsi3+0x58>
    1050:	e1a00002 	mov	r0, r2
    1054:	e12fff1e 	bx	lr
    1058:	03a00001 	moveq	r0, #1
    105c:	13a00000 	movne	r0, #0
    1060:	e12fff1e 	bx	lr
    1064:	e3510801 	cmp	r1, #65536	@ 0x10000
    1068:	21a01821 	lsrcs	r1, r1, #16
    106c:	23a02010 	movcs	r2, #16
    1070:	33a02000 	movcc	r2, #0
    1074:	e3510c01 	cmp	r1, #256	@ 0x100
    1078:	21a01421 	lsrcs	r1, r1, #8
    107c:	22822008 	addcs	r2, r2, #8
    1080:	e3510010 	cmp	r1, #16
    1084:	21a01221 	lsrcs	r1, r1, #4
    1088:	22822004 	addcs	r2, r2, #4
    108c:	e3510004 	cmp	r1, #4
    1090:	82822003 	addhi	r2, r2, #3
    1094:	908220a1 	addls	r2, r2, r1, lsr #1
    1098:	e1a00230 	lsr	r0, r0, r2
    109c:	e12fff1e 	bx	lr
    10a0:	e3500000 	cmp	r0, #0
    10a4:	13e00000 	mvnne	r0, #0
    10a8:	ea000007 	b	10cc <__aeabi_idiv0>

000010ac <__aeabi_uidivmod>:
    10ac:	e3510000 	cmp	r1, #0
    10b0:	0afffffa 	beq	10a0 <__udivsi3+0xe8>
    10b4:	e92d4003 	push	{r0, r1, lr}
    10b8:	ebffffbe 	bl	fb8 <__udivsi3>
    10bc:	e8bd4006 	pop	{r1, r2, lr}
    10c0:	e0030092 	mul	r3, r2, r0
    10c4:	e0411003 	sub	r1, r1, r3
    10c8:	e12fff1e 	bx	lr

000010cc <__aeabi_idiv0>:
    10cc:	e12fff1e 	bx	lr
