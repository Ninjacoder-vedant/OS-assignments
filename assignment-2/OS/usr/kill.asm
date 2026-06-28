
_kill:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      14:	e51b3010 	ldr	r3, [fp, #-16]
      18:	e3530000 	cmp	r3, #0
      1c:	ca000003 	bgt	30 <main+0x30>
      20:	e59f105c 	ldr	r1, [pc, #92]	@ 84 <main+0x84>
      24:	e3a00002 	mov	r0, #2
      28:	eb000292 	bl	a78 <printf>
      2c:	eb000154 	bl	584 <exit>
      30:	e3a03001 	mov	r3, #1
      34:	e50b3008 	str	r3, [fp, #-8]
      38:	ea00000c 	b	70 <main+0x70>
      3c:	e51b3008 	ldr	r3, [fp, #-8]
      40:	e1a03103 	lsl	r3, r3, #2
      44:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      48:	e0823003 	add	r3, r2, r3
      4c:	e5933000 	ldr	r3, [r3]
      50:	e1a00003 	mov	r0, r3
      54:	eb000103 	bl	468 <atoi>
      58:	e1a03000 	mov	r3, r0
      5c:	e1a00003 	mov	r0, r3
      60:	eb00017d 	bl	65c <kill>
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e2833001 	add	r3, r3, #1
      6c:	e50b3008 	str	r3, [fp, #-8]
      70:	e51b2008 	ldr	r2, [fp, #-8]
      74:	e51b3010 	ldr	r3, [fp, #-16]
      78:	e1520003 	cmp	r2, r3
      7c:	baffffee 	blt	3c <main+0x3c>
      80:	eb00013f 	bl	584 <exit>
      84:	00001134 	.word	0x00001134

00000088 <strcpy>:
      88:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      8c:	e28db000 	add	fp, sp, #0
      90:	e24dd014 	sub	sp, sp, #20
      94:	e50b0010 	str	r0, [fp, #-16]
      98:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      9c:	e51b3010 	ldr	r3, [fp, #-16]
      a0:	e50b3008 	str	r3, [fp, #-8]
      a4:	e1a00000 	nop			@ (mov r0, r0)
      a8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      ac:	e2823001 	add	r3, r2, #1
      b0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      b4:	e51b3010 	ldr	r3, [fp, #-16]
      b8:	e2831001 	add	r1, r3, #1
      bc:	e50b1010 	str	r1, [fp, #-16]
      c0:	e5d22000 	ldrb	r2, [r2]
      c4:	e5c32000 	strb	r2, [r3]
      c8:	e5d33000 	ldrb	r3, [r3]
      cc:	e3530000 	cmp	r3, #0
      d0:	1afffff4 	bne	a8 <strcpy+0x20>
      d4:	e51b3008 	ldr	r3, [fp, #-8]
      d8:	e1a00003 	mov	r0, r3
      dc:	e28bd000 	add	sp, fp, #0
      e0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      e4:	e12fff1e 	bx	lr

000000e8 <strcmp>:
      e8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      ec:	e28db000 	add	fp, sp, #0
      f0:	e24dd00c 	sub	sp, sp, #12
      f4:	e50b0008 	str	r0, [fp, #-8]
      f8:	e50b100c 	str	r1, [fp, #-12]
      fc:	ea000005 	b	118 <strcmp+0x30>
     100:	e51b3008 	ldr	r3, [fp, #-8]
     104:	e2833001 	add	r3, r3, #1
     108:	e50b3008 	str	r3, [fp, #-8]
     10c:	e51b300c 	ldr	r3, [fp, #-12]
     110:	e2833001 	add	r3, r3, #1
     114:	e50b300c 	str	r3, [fp, #-12]
     118:	e51b3008 	ldr	r3, [fp, #-8]
     11c:	e5d33000 	ldrb	r3, [r3]
     120:	e3530000 	cmp	r3, #0
     124:	0a000005 	beq	140 <strcmp+0x58>
     128:	e51b3008 	ldr	r3, [fp, #-8]
     12c:	e5d32000 	ldrb	r2, [r3]
     130:	e51b300c 	ldr	r3, [fp, #-12]
     134:	e5d33000 	ldrb	r3, [r3]
     138:	e1520003 	cmp	r2, r3
     13c:	0affffef 	beq	100 <strcmp+0x18>
     140:	e51b3008 	ldr	r3, [fp, #-8]
     144:	e5d33000 	ldrb	r3, [r3]
     148:	e1a02003 	mov	r2, r3
     14c:	e51b300c 	ldr	r3, [fp, #-12]
     150:	e5d33000 	ldrb	r3, [r3]
     154:	e0423003 	sub	r3, r2, r3
     158:	e1a00003 	mov	r0, r3
     15c:	e28bd000 	add	sp, fp, #0
     160:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     164:	e12fff1e 	bx	lr

00000168 <strlen>:
     168:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     16c:	e28db000 	add	fp, sp, #0
     170:	e24dd014 	sub	sp, sp, #20
     174:	e50b0010 	str	r0, [fp, #-16]
     178:	e3a03000 	mov	r3, #0
     17c:	e50b3008 	str	r3, [fp, #-8]
     180:	ea000002 	b	190 <strlen+0x28>
     184:	e51b3008 	ldr	r3, [fp, #-8]
     188:	e2833001 	add	r3, r3, #1
     18c:	e50b3008 	str	r3, [fp, #-8]
     190:	e51b3008 	ldr	r3, [fp, #-8]
     194:	e51b2010 	ldr	r2, [fp, #-16]
     198:	e0823003 	add	r3, r2, r3
     19c:	e5d33000 	ldrb	r3, [r3]
     1a0:	e3530000 	cmp	r3, #0
     1a4:	1afffff6 	bne	184 <strlen+0x1c>
     1a8:	e51b3008 	ldr	r3, [fp, #-8]
     1ac:	e1a00003 	mov	r0, r3
     1b0:	e28bd000 	add	sp, fp, #0
     1b4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1b8:	e12fff1e 	bx	lr

000001bc <memset>:
     1bc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1c0:	e28db000 	add	fp, sp, #0
     1c4:	e24dd024 	sub	sp, sp, #36	@ 0x24
     1c8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     1cc:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     1d0:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     1d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     1d8:	e50b3008 	str	r3, [fp, #-8]
     1dc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     1e0:	e54b300d 	strb	r3, [fp, #-13]
     1e4:	e55b200d 	ldrb	r2, [fp, #-13]
     1e8:	e1a03002 	mov	r3, r2
     1ec:	e1a03403 	lsl	r3, r3, #8
     1f0:	e0833002 	add	r3, r3, r2
     1f4:	e1a03803 	lsl	r3, r3, #16
     1f8:	e1a02003 	mov	r2, r3
     1fc:	e55b300d 	ldrb	r3, [fp, #-13]
     200:	e1a03403 	lsl	r3, r3, #8
     204:	e1822003 	orr	r2, r2, r3
     208:	e55b300d 	ldrb	r3, [fp, #-13]
     20c:	e1823003 	orr	r3, r2, r3
     210:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     214:	ea000008 	b	23c <memset+0x80>
     218:	e51b3008 	ldr	r3, [fp, #-8]
     21c:	e55b200d 	ldrb	r2, [fp, #-13]
     220:	e5c32000 	strb	r2, [r3]
     224:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     228:	e2433001 	sub	r3, r3, #1
     22c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     230:	e51b3008 	ldr	r3, [fp, #-8]
     234:	e2833001 	add	r3, r3, #1
     238:	e50b3008 	str	r3, [fp, #-8]
     23c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     240:	e3530000 	cmp	r3, #0
     244:	0a000003 	beq	258 <memset+0x9c>
     248:	e51b3008 	ldr	r3, [fp, #-8]
     24c:	e2033003 	and	r3, r3, #3
     250:	e3530000 	cmp	r3, #0
     254:	1affffef 	bne	218 <memset+0x5c>
     258:	e51b3008 	ldr	r3, [fp, #-8]
     25c:	e50b300c 	str	r3, [fp, #-12]
     260:	ea000008 	b	288 <memset+0xcc>
     264:	e51b300c 	ldr	r3, [fp, #-12]
     268:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     26c:	e5832000 	str	r2, [r3]
     270:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     274:	e2433004 	sub	r3, r3, #4
     278:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     27c:	e51b300c 	ldr	r3, [fp, #-12]
     280:	e2833004 	add	r3, r3, #4
     284:	e50b300c 	str	r3, [fp, #-12]
     288:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     28c:	e3530003 	cmp	r3, #3
     290:	8afffff3 	bhi	264 <memset+0xa8>
     294:	e51b300c 	ldr	r3, [fp, #-12]
     298:	e50b3008 	str	r3, [fp, #-8]
     29c:	ea000008 	b	2c4 <memset+0x108>
     2a0:	e51b3008 	ldr	r3, [fp, #-8]
     2a4:	e55b200d 	ldrb	r2, [fp, #-13]
     2a8:	e5c32000 	strb	r2, [r3]
     2ac:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2b0:	e2433001 	sub	r3, r3, #1
     2b4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2b8:	e51b3008 	ldr	r3, [fp, #-8]
     2bc:	e2833001 	add	r3, r3, #1
     2c0:	e50b3008 	str	r3, [fp, #-8]
     2c4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2c8:	e3530000 	cmp	r3, #0
     2cc:	1afffff3 	bne	2a0 <memset+0xe4>
     2d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2d4:	e1a00003 	mov	r0, r3
     2d8:	e28bd000 	add	sp, fp, #0
     2dc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2e0:	e12fff1e 	bx	lr

000002e4 <strchr>:
     2e4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2e8:	e28db000 	add	fp, sp, #0
     2ec:	e24dd00c 	sub	sp, sp, #12
     2f0:	e50b0008 	str	r0, [fp, #-8]
     2f4:	e1a03001 	mov	r3, r1
     2f8:	e54b3009 	strb	r3, [fp, #-9]
     2fc:	ea000009 	b	328 <strchr+0x44>
     300:	e51b3008 	ldr	r3, [fp, #-8]
     304:	e5d33000 	ldrb	r3, [r3]
     308:	e55b2009 	ldrb	r2, [fp, #-9]
     30c:	e1520003 	cmp	r2, r3
     310:	1a000001 	bne	31c <strchr+0x38>
     314:	e51b3008 	ldr	r3, [fp, #-8]
     318:	ea000007 	b	33c <strchr+0x58>
     31c:	e51b3008 	ldr	r3, [fp, #-8]
     320:	e2833001 	add	r3, r3, #1
     324:	e50b3008 	str	r3, [fp, #-8]
     328:	e51b3008 	ldr	r3, [fp, #-8]
     32c:	e5d33000 	ldrb	r3, [r3]
     330:	e3530000 	cmp	r3, #0
     334:	1afffff1 	bne	300 <strchr+0x1c>
     338:	e3a03000 	mov	r3, #0
     33c:	e1a00003 	mov	r0, r3
     340:	e28bd000 	add	sp, fp, #0
     344:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     348:	e12fff1e 	bx	lr

0000034c <gets>:
     34c:	e92d4800 	push	{fp, lr}
     350:	e28db004 	add	fp, sp, #4
     354:	e24dd018 	sub	sp, sp, #24
     358:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     35c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     360:	e3a03000 	mov	r3, #0
     364:	e50b3008 	str	r3, [fp, #-8]
     368:	ea000016 	b	3c8 <gets+0x7c>
     36c:	e24b300d 	sub	r3, fp, #13
     370:	e3a02001 	mov	r2, #1
     374:	e1a01003 	mov	r1, r3
     378:	e3a00000 	mov	r0, #0
     37c:	eb00009b 	bl	5f0 <read>
     380:	e50b000c 	str	r0, [fp, #-12]
     384:	e51b300c 	ldr	r3, [fp, #-12]
     388:	e3530000 	cmp	r3, #0
     38c:	da000013 	ble	3e0 <gets+0x94>
     390:	e51b3008 	ldr	r3, [fp, #-8]
     394:	e2832001 	add	r2, r3, #1
     398:	e50b2008 	str	r2, [fp, #-8]
     39c:	e1a02003 	mov	r2, r3
     3a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3a4:	e0833002 	add	r3, r3, r2
     3a8:	e55b200d 	ldrb	r2, [fp, #-13]
     3ac:	e5c32000 	strb	r2, [r3]
     3b0:	e55b300d 	ldrb	r3, [fp, #-13]
     3b4:	e353000a 	cmp	r3, #10
     3b8:	0a000009 	beq	3e4 <gets+0x98>
     3bc:	e55b300d 	ldrb	r3, [fp, #-13]
     3c0:	e353000d 	cmp	r3, #13
     3c4:	0a000006 	beq	3e4 <gets+0x98>
     3c8:	e51b3008 	ldr	r3, [fp, #-8]
     3cc:	e2833001 	add	r3, r3, #1
     3d0:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     3d4:	e1520003 	cmp	r2, r3
     3d8:	caffffe3 	bgt	36c <gets+0x20>
     3dc:	ea000000 	b	3e4 <gets+0x98>
     3e0:	e1a00000 	nop			@ (mov r0, r0)
     3e4:	e51b3008 	ldr	r3, [fp, #-8]
     3e8:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     3ec:	e0823003 	add	r3, r2, r3
     3f0:	e3a02000 	mov	r2, #0
     3f4:	e5c32000 	strb	r2, [r3]
     3f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3fc:	e1a00003 	mov	r0, r3
     400:	e24bd004 	sub	sp, fp, #4
     404:	e8bd8800 	pop	{fp, pc}

00000408 <stat>:
     408:	e92d4800 	push	{fp, lr}
     40c:	e28db004 	add	fp, sp, #4
     410:	e24dd010 	sub	sp, sp, #16
     414:	e50b0010 	str	r0, [fp, #-16]
     418:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     41c:	e3a01000 	mov	r1, #0
     420:	e51b0010 	ldr	r0, [fp, #-16]
     424:	eb00009e 	bl	6a4 <open>
     428:	e50b0008 	str	r0, [fp, #-8]
     42c:	e51b3008 	ldr	r3, [fp, #-8]
     430:	e3530000 	cmp	r3, #0
     434:	aa000001 	bge	440 <stat+0x38>
     438:	e3e03000 	mvn	r3, #0
     43c:	ea000006 	b	45c <stat+0x54>
     440:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     444:	e51b0008 	ldr	r0, [fp, #-8]
     448:	eb0000b0 	bl	710 <fstat>
     44c:	e50b000c 	str	r0, [fp, #-12]
     450:	e51b0008 	ldr	r0, [fp, #-8]
     454:	eb000077 	bl	638 <close>
     458:	e51b300c 	ldr	r3, [fp, #-12]
     45c:	e1a00003 	mov	r0, r3
     460:	e24bd004 	sub	sp, fp, #4
     464:	e8bd8800 	pop	{fp, pc}

00000468 <atoi>:
     468:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     46c:	e28db000 	add	fp, sp, #0
     470:	e24dd014 	sub	sp, sp, #20
     474:	e50b0010 	str	r0, [fp, #-16]
     478:	e3a03000 	mov	r3, #0
     47c:	e50b3008 	str	r3, [fp, #-8]
     480:	ea00000c 	b	4b8 <atoi+0x50>
     484:	e51b2008 	ldr	r2, [fp, #-8]
     488:	e1a03002 	mov	r3, r2
     48c:	e1a03103 	lsl	r3, r3, #2
     490:	e0833002 	add	r3, r3, r2
     494:	e1a03083 	lsl	r3, r3, #1
     498:	e1a01003 	mov	r1, r3
     49c:	e51b3010 	ldr	r3, [fp, #-16]
     4a0:	e2832001 	add	r2, r3, #1
     4a4:	e50b2010 	str	r2, [fp, #-16]
     4a8:	e5d33000 	ldrb	r3, [r3]
     4ac:	e0813003 	add	r3, r1, r3
     4b0:	e2433030 	sub	r3, r3, #48	@ 0x30
     4b4:	e50b3008 	str	r3, [fp, #-8]
     4b8:	e51b3010 	ldr	r3, [fp, #-16]
     4bc:	e5d33000 	ldrb	r3, [r3]
     4c0:	e353002f 	cmp	r3, #47	@ 0x2f
     4c4:	9a000003 	bls	4d8 <atoi+0x70>
     4c8:	e51b3010 	ldr	r3, [fp, #-16]
     4cc:	e5d33000 	ldrb	r3, [r3]
     4d0:	e3530039 	cmp	r3, #57	@ 0x39
     4d4:	9affffea 	bls	484 <atoi+0x1c>
     4d8:	e51b3008 	ldr	r3, [fp, #-8]
     4dc:	e1a00003 	mov	r0, r3
     4e0:	e28bd000 	add	sp, fp, #0
     4e4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4e8:	e12fff1e 	bx	lr

000004ec <memmove>:
     4ec:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4f0:	e28db000 	add	fp, sp, #0
     4f4:	e24dd01c 	sub	sp, sp, #28
     4f8:	e50b0010 	str	r0, [fp, #-16]
     4fc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     500:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     504:	e51b3010 	ldr	r3, [fp, #-16]
     508:	e50b3008 	str	r3, [fp, #-8]
     50c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     510:	e50b300c 	str	r3, [fp, #-12]
     514:	ea000007 	b	538 <memmove+0x4c>
     518:	e51b200c 	ldr	r2, [fp, #-12]
     51c:	e2823001 	add	r3, r2, #1
     520:	e50b300c 	str	r3, [fp, #-12]
     524:	e51b3008 	ldr	r3, [fp, #-8]
     528:	e2831001 	add	r1, r3, #1
     52c:	e50b1008 	str	r1, [fp, #-8]
     530:	e5d22000 	ldrb	r2, [r2]
     534:	e5c32000 	strb	r2, [r3]
     538:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     53c:	e2432001 	sub	r2, r3, #1
     540:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     544:	e3530000 	cmp	r3, #0
     548:	cafffff2 	bgt	518 <memmove+0x2c>
     54c:	e51b3010 	ldr	r3, [fp, #-16]
     550:	e1a00003 	mov	r0, r3
     554:	e28bd000 	add	sp, fp, #0
     558:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     55c:	e12fff1e 	bx	lr

00000560 <fork>:
     560:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     564:	e1a04003 	mov	r4, r3
     568:	e1a03002 	mov	r3, r2
     56c:	e1a02001 	mov	r2, r1
     570:	e1a01000 	mov	r1, r0
     574:	e3a00001 	mov	r0, #1
     578:	ef000000 	svc	0x00000000
     57c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     580:	e12fff1e 	bx	lr

00000584 <exit>:
     584:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     588:	e1a04003 	mov	r4, r3
     58c:	e1a03002 	mov	r3, r2
     590:	e1a02001 	mov	r2, r1
     594:	e1a01000 	mov	r1, r0
     598:	e3a00002 	mov	r0, #2
     59c:	ef000000 	svc	0x00000000
     5a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5a4:	e12fff1e 	bx	lr

000005a8 <wait>:
     5a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5ac:	e1a04003 	mov	r4, r3
     5b0:	e1a03002 	mov	r3, r2
     5b4:	e1a02001 	mov	r2, r1
     5b8:	e1a01000 	mov	r1, r0
     5bc:	e3a00003 	mov	r0, #3
     5c0:	ef000000 	svc	0x00000000
     5c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5c8:	e12fff1e 	bx	lr

000005cc <pipe>:
     5cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5d0:	e1a04003 	mov	r4, r3
     5d4:	e1a03002 	mov	r3, r2
     5d8:	e1a02001 	mov	r2, r1
     5dc:	e1a01000 	mov	r1, r0
     5e0:	e3a00004 	mov	r0, #4
     5e4:	ef000000 	svc	0x00000000
     5e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5ec:	e12fff1e 	bx	lr

000005f0 <read>:
     5f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5f4:	e1a04003 	mov	r4, r3
     5f8:	e1a03002 	mov	r3, r2
     5fc:	e1a02001 	mov	r2, r1
     600:	e1a01000 	mov	r1, r0
     604:	e3a00005 	mov	r0, #5
     608:	ef000000 	svc	0x00000000
     60c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     610:	e12fff1e 	bx	lr

00000614 <write>:
     614:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     618:	e1a04003 	mov	r4, r3
     61c:	e1a03002 	mov	r3, r2
     620:	e1a02001 	mov	r2, r1
     624:	e1a01000 	mov	r1, r0
     628:	e3a00010 	mov	r0, #16
     62c:	ef000000 	svc	0x00000000
     630:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     634:	e12fff1e 	bx	lr

00000638 <close>:
     638:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     63c:	e1a04003 	mov	r4, r3
     640:	e1a03002 	mov	r3, r2
     644:	e1a02001 	mov	r2, r1
     648:	e1a01000 	mov	r1, r0
     64c:	e3a00015 	mov	r0, #21
     650:	ef000000 	svc	0x00000000
     654:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     658:	e12fff1e 	bx	lr

0000065c <kill>:
     65c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     660:	e1a04003 	mov	r4, r3
     664:	e1a03002 	mov	r3, r2
     668:	e1a02001 	mov	r2, r1
     66c:	e1a01000 	mov	r1, r0
     670:	e3a00006 	mov	r0, #6
     674:	ef000000 	svc	0x00000000
     678:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     67c:	e12fff1e 	bx	lr

00000680 <exec>:
     680:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     684:	e1a04003 	mov	r4, r3
     688:	e1a03002 	mov	r3, r2
     68c:	e1a02001 	mov	r2, r1
     690:	e1a01000 	mov	r1, r0
     694:	e3a00007 	mov	r0, #7
     698:	ef000000 	svc	0x00000000
     69c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6a0:	e12fff1e 	bx	lr

000006a4 <open>:
     6a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6a8:	e1a04003 	mov	r4, r3
     6ac:	e1a03002 	mov	r3, r2
     6b0:	e1a02001 	mov	r2, r1
     6b4:	e1a01000 	mov	r1, r0
     6b8:	e3a0000f 	mov	r0, #15
     6bc:	ef000000 	svc	0x00000000
     6c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6c4:	e12fff1e 	bx	lr

000006c8 <mknod>:
     6c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6cc:	e1a04003 	mov	r4, r3
     6d0:	e1a03002 	mov	r3, r2
     6d4:	e1a02001 	mov	r2, r1
     6d8:	e1a01000 	mov	r1, r0
     6dc:	e3a00011 	mov	r0, #17
     6e0:	ef000000 	svc	0x00000000
     6e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6e8:	e12fff1e 	bx	lr

000006ec <unlink>:
     6ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6f0:	e1a04003 	mov	r4, r3
     6f4:	e1a03002 	mov	r3, r2
     6f8:	e1a02001 	mov	r2, r1
     6fc:	e1a01000 	mov	r1, r0
     700:	e3a00012 	mov	r0, #18
     704:	ef000000 	svc	0x00000000
     708:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     70c:	e12fff1e 	bx	lr

00000710 <fstat>:
     710:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     714:	e1a04003 	mov	r4, r3
     718:	e1a03002 	mov	r3, r2
     71c:	e1a02001 	mov	r2, r1
     720:	e1a01000 	mov	r1, r0
     724:	e3a00008 	mov	r0, #8
     728:	ef000000 	svc	0x00000000
     72c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     730:	e12fff1e 	bx	lr

00000734 <link>:
     734:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     738:	e1a04003 	mov	r4, r3
     73c:	e1a03002 	mov	r3, r2
     740:	e1a02001 	mov	r2, r1
     744:	e1a01000 	mov	r1, r0
     748:	e3a00013 	mov	r0, #19
     74c:	ef000000 	svc	0x00000000
     750:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     754:	e12fff1e 	bx	lr

00000758 <mkdir>:
     758:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     75c:	e1a04003 	mov	r4, r3
     760:	e1a03002 	mov	r3, r2
     764:	e1a02001 	mov	r2, r1
     768:	e1a01000 	mov	r1, r0
     76c:	e3a00014 	mov	r0, #20
     770:	ef000000 	svc	0x00000000
     774:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     778:	e12fff1e 	bx	lr

0000077c <chdir>:
     77c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     780:	e1a04003 	mov	r4, r3
     784:	e1a03002 	mov	r3, r2
     788:	e1a02001 	mov	r2, r1
     78c:	e1a01000 	mov	r1, r0
     790:	e3a00009 	mov	r0, #9
     794:	ef000000 	svc	0x00000000
     798:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     79c:	e12fff1e 	bx	lr

000007a0 <dup>:
     7a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7a4:	e1a04003 	mov	r4, r3
     7a8:	e1a03002 	mov	r3, r2
     7ac:	e1a02001 	mov	r2, r1
     7b0:	e1a01000 	mov	r1, r0
     7b4:	e3a0000a 	mov	r0, #10
     7b8:	ef000000 	svc	0x00000000
     7bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7c0:	e12fff1e 	bx	lr

000007c4 <getpid>:
     7c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7c8:	e1a04003 	mov	r4, r3
     7cc:	e1a03002 	mov	r3, r2
     7d0:	e1a02001 	mov	r2, r1
     7d4:	e1a01000 	mov	r1, r0
     7d8:	e3a0000b 	mov	r0, #11
     7dc:	ef000000 	svc	0x00000000
     7e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7e4:	e12fff1e 	bx	lr

000007e8 <sbrk>:
     7e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7ec:	e1a04003 	mov	r4, r3
     7f0:	e1a03002 	mov	r3, r2
     7f4:	e1a02001 	mov	r2, r1
     7f8:	e1a01000 	mov	r1, r0
     7fc:	e3a0000c 	mov	r0, #12
     800:	ef000000 	svc	0x00000000
     804:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     808:	e12fff1e 	bx	lr

0000080c <sleep>:
     80c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     810:	e1a04003 	mov	r4, r3
     814:	e1a03002 	mov	r3, r2
     818:	e1a02001 	mov	r2, r1
     81c:	e1a01000 	mov	r1, r0
     820:	e3a0000d 	mov	r0, #13
     824:	ef000000 	svc	0x00000000
     828:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     82c:	e12fff1e 	bx	lr

00000830 <uptime>:
     830:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     834:	e1a04003 	mov	r4, r3
     838:	e1a03002 	mov	r3, r2
     83c:	e1a02001 	mov	r2, r1
     840:	e1a01000 	mov	r1, r0
     844:	e3a0000e 	mov	r0, #14
     848:	ef000000 	svc	0x00000000
     84c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     850:	e12fff1e 	bx	lr

00000854 <getprocs>:
     854:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     858:	e1a04003 	mov	r4, r3
     85c:	e1a03002 	mov	r3, r2
     860:	e1a02001 	mov	r2, r1
     864:	e1a01000 	mov	r1, r0
     868:	e3a00016 	mov	r0, #22
     86c:	ef000000 	svc	0x00000000
     870:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     874:	e12fff1e 	bx	lr

00000878 <getpinfo>:
     878:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     87c:	e1a04003 	mov	r4, r3
     880:	e1a03002 	mov	r3, r2
     884:	e1a02001 	mov	r2, r1
     888:	e1a01000 	mov	r1, r0
     88c:	e3a00018 	mov	r0, #24
     890:	ef000000 	svc	0x00000000
     894:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     898:	e12fff1e 	bx	lr

0000089c <settickets>:
     89c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8a0:	e1a04003 	mov	r4, r3
     8a4:	e1a03002 	mov	r3, r2
     8a8:	e1a02001 	mov	r2, r1
     8ac:	e1a01000 	mov	r1, r0
     8b0:	e3a00017 	mov	r0, #23
     8b4:	ef000000 	svc	0x00000000
     8b8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8bc:	e12fff1e 	bx	lr

000008c0 <srand>:
     8c0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8c4:	e1a04003 	mov	r4, r3
     8c8:	e1a03002 	mov	r3, r2
     8cc:	e1a02001 	mov	r2, r1
     8d0:	e1a01000 	mov	r1, r0
     8d4:	e3a00019 	mov	r0, #25
     8d8:	ef000000 	svc	0x00000000
     8dc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8e0:	e12fff1e 	bx	lr

000008e4 <test>:
     8e4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8e8:	e1a04003 	mov	r4, r3
     8ec:	e1a03002 	mov	r3, r2
     8f0:	e1a02001 	mov	r2, r1
     8f4:	e1a01000 	mov	r1, r0
     8f8:	e3a0001a 	mov	r0, #26
     8fc:	ef000000 	svc	0x00000000
     900:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     904:	e12fff1e 	bx	lr

00000908 <putc>:
     908:	e92d4800 	push	{fp, lr}
     90c:	e28db004 	add	fp, sp, #4
     910:	e24dd008 	sub	sp, sp, #8
     914:	e50b0008 	str	r0, [fp, #-8]
     918:	e1a03001 	mov	r3, r1
     91c:	e54b3009 	strb	r3, [fp, #-9]
     920:	e24b3009 	sub	r3, fp, #9
     924:	e3a02001 	mov	r2, #1
     928:	e1a01003 	mov	r1, r3
     92c:	e51b0008 	ldr	r0, [fp, #-8]
     930:	ebffff37 	bl	614 <write>
     934:	e1a00000 	nop			@ (mov r0, r0)
     938:	e24bd004 	sub	sp, fp, #4
     93c:	e8bd8800 	pop	{fp, pc}

00000940 <printint>:
     940:	e92d4800 	push	{fp, lr}
     944:	e28db004 	add	fp, sp, #4
     948:	e24dd030 	sub	sp, sp, #48	@ 0x30
     94c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     950:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     954:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     958:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     95c:	e3a03000 	mov	r3, #0
     960:	e50b300c 	str	r3, [fp, #-12]
     964:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     968:	e3530000 	cmp	r3, #0
     96c:	0a000008 	beq	994 <printint+0x54>
     970:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     974:	e3530000 	cmp	r3, #0
     978:	aa000005 	bge	994 <printint+0x54>
     97c:	e3a03001 	mov	r3, #1
     980:	e50b300c 	str	r3, [fp, #-12]
     984:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     988:	e2633000 	rsb	r3, r3, #0
     98c:	e50b3010 	str	r3, [fp, #-16]
     990:	ea000001 	b	99c <printint+0x5c>
     994:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     998:	e50b3010 	str	r3, [fp, #-16]
     99c:	e3a03000 	mov	r3, #0
     9a0:	e50b3008 	str	r3, [fp, #-8]
     9a4:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     9a8:	e51b3010 	ldr	r3, [fp, #-16]
     9ac:	e1a01002 	mov	r1, r2
     9b0:	e1a00003 	mov	r0, r3
     9b4:	eb0001d5 	bl	1110 <__aeabi_uidivmod>
     9b8:	e1a03001 	mov	r3, r1
     9bc:	e1a01003 	mov	r1, r3
     9c0:	e51b3008 	ldr	r3, [fp, #-8]
     9c4:	e2832001 	add	r2, r3, #1
     9c8:	e50b2008 	str	r2, [fp, #-8]
     9cc:	e59f20a0 	ldr	r2, [pc, #160]	@ a74 <printint+0x134>
     9d0:	e7d22001 	ldrb	r2, [r2, r1]
     9d4:	e2433004 	sub	r3, r3, #4
     9d8:	e083300b 	add	r3, r3, fp
     9dc:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     9e0:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     9e4:	e1a01003 	mov	r1, r3
     9e8:	e51b0010 	ldr	r0, [fp, #-16]
     9ec:	eb00018a 	bl	101c <__udivsi3>
     9f0:	e1a03000 	mov	r3, r0
     9f4:	e50b3010 	str	r3, [fp, #-16]
     9f8:	e51b3010 	ldr	r3, [fp, #-16]
     9fc:	e3530000 	cmp	r3, #0
     a00:	1affffe7 	bne	9a4 <printint+0x64>
     a04:	e51b300c 	ldr	r3, [fp, #-12]
     a08:	e3530000 	cmp	r3, #0
     a0c:	0a00000e 	beq	a4c <printint+0x10c>
     a10:	e51b3008 	ldr	r3, [fp, #-8]
     a14:	e2832001 	add	r2, r3, #1
     a18:	e50b2008 	str	r2, [fp, #-8]
     a1c:	e2433004 	sub	r3, r3, #4
     a20:	e083300b 	add	r3, r3, fp
     a24:	e3a0202d 	mov	r2, #45	@ 0x2d
     a28:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     a2c:	ea000006 	b	a4c <printint+0x10c>
     a30:	e24b2020 	sub	r2, fp, #32
     a34:	e51b3008 	ldr	r3, [fp, #-8]
     a38:	e0823003 	add	r3, r2, r3
     a3c:	e5d33000 	ldrb	r3, [r3]
     a40:	e1a01003 	mov	r1, r3
     a44:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     a48:	ebffffae 	bl	908 <putc>
     a4c:	e51b3008 	ldr	r3, [fp, #-8]
     a50:	e2433001 	sub	r3, r3, #1
     a54:	e50b3008 	str	r3, [fp, #-8]
     a58:	e51b3008 	ldr	r3, [fp, #-8]
     a5c:	e3530000 	cmp	r3, #0
     a60:	aafffff2 	bge	a30 <printint+0xf0>
     a64:	e1a00000 	nop			@ (mov r0, r0)
     a68:	e1a00000 	nop			@ (mov r0, r0)
     a6c:	e24bd004 	sub	sp, fp, #4
     a70:	e8bd8800 	pop	{fp, pc}
     a74:	00001150 	.word	0x00001150

00000a78 <printf>:
     a78:	e92d000e 	push	{r1, r2, r3}
     a7c:	e92d4800 	push	{fp, lr}
     a80:	e28db004 	add	fp, sp, #4
     a84:	e24dd024 	sub	sp, sp, #36	@ 0x24
     a88:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     a8c:	e3a03000 	mov	r3, #0
     a90:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     a94:	e28b3008 	add	r3, fp, #8
     a98:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     a9c:	e3a03000 	mov	r3, #0
     aa0:	e50b3010 	str	r3, [fp, #-16]
     aa4:	ea000074 	b	c7c <printf+0x204>
     aa8:	e59b2004 	ldr	r2, [fp, #4]
     aac:	e51b3010 	ldr	r3, [fp, #-16]
     ab0:	e0823003 	add	r3, r2, r3
     ab4:	e5d33000 	ldrb	r3, [r3]
     ab8:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     abc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     ac0:	e3530000 	cmp	r3, #0
     ac4:	1a00000b 	bne	af8 <printf+0x80>
     ac8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     acc:	e3530025 	cmp	r3, #37	@ 0x25
     ad0:	1a000002 	bne	ae0 <printf+0x68>
     ad4:	e3a03025 	mov	r3, #37	@ 0x25
     ad8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     adc:	ea000063 	b	c70 <printf+0x1f8>
     ae0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ae4:	e6ef3073 	uxtb	r3, r3
     ae8:	e1a01003 	mov	r1, r3
     aec:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     af0:	ebffff84 	bl	908 <putc>
     af4:	ea00005d 	b	c70 <printf+0x1f8>
     af8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     afc:	e3530025 	cmp	r3, #37	@ 0x25
     b00:	1a00005a 	bne	c70 <printf+0x1f8>
     b04:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b08:	e3530064 	cmp	r3, #100	@ 0x64
     b0c:	1a00000a 	bne	b3c <printf+0xc4>
     b10:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b14:	e5933000 	ldr	r3, [r3]
     b18:	e1a01003 	mov	r1, r3
     b1c:	e3a03001 	mov	r3, #1
     b20:	e3a0200a 	mov	r2, #10
     b24:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b28:	ebffff84 	bl	940 <printint>
     b2c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b30:	e2833004 	add	r3, r3, #4
     b34:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b38:	ea00004a 	b	c68 <printf+0x1f0>
     b3c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b40:	e3530078 	cmp	r3, #120	@ 0x78
     b44:	0a000002 	beq	b54 <printf+0xdc>
     b48:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b4c:	e3530070 	cmp	r3, #112	@ 0x70
     b50:	1a00000a 	bne	b80 <printf+0x108>
     b54:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b58:	e5933000 	ldr	r3, [r3]
     b5c:	e1a01003 	mov	r1, r3
     b60:	e3a03000 	mov	r3, #0
     b64:	e3a02010 	mov	r2, #16
     b68:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b6c:	ebffff73 	bl	940 <printint>
     b70:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b74:	e2833004 	add	r3, r3, #4
     b78:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b7c:	ea000039 	b	c68 <printf+0x1f0>
     b80:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b84:	e3530073 	cmp	r3, #115	@ 0x73
     b88:	1a000018 	bne	bf0 <printf+0x178>
     b8c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b90:	e5933000 	ldr	r3, [r3]
     b94:	e50b300c 	str	r3, [fp, #-12]
     b98:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b9c:	e2833004 	add	r3, r3, #4
     ba0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ba4:	e51b300c 	ldr	r3, [fp, #-12]
     ba8:	e3530000 	cmp	r3, #0
     bac:	1a00000a 	bne	bdc <printf+0x164>
     bb0:	e59f30f4 	ldr	r3, [pc, #244]	@ cac <printf+0x234>
     bb4:	e50b300c 	str	r3, [fp, #-12]
     bb8:	ea000007 	b	bdc <printf+0x164>
     bbc:	e51b300c 	ldr	r3, [fp, #-12]
     bc0:	e5d33000 	ldrb	r3, [r3]
     bc4:	e1a01003 	mov	r1, r3
     bc8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bcc:	ebffff4d 	bl	908 <putc>
     bd0:	e51b300c 	ldr	r3, [fp, #-12]
     bd4:	e2833001 	add	r3, r3, #1
     bd8:	e50b300c 	str	r3, [fp, #-12]
     bdc:	e51b300c 	ldr	r3, [fp, #-12]
     be0:	e5d33000 	ldrb	r3, [r3]
     be4:	e3530000 	cmp	r3, #0
     be8:	1afffff3 	bne	bbc <printf+0x144>
     bec:	ea00001d 	b	c68 <printf+0x1f0>
     bf0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bf4:	e3530063 	cmp	r3, #99	@ 0x63
     bf8:	1a000009 	bne	c24 <printf+0x1ac>
     bfc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c00:	e5933000 	ldr	r3, [r3]
     c04:	e6ef3073 	uxtb	r3, r3
     c08:	e1a01003 	mov	r1, r3
     c0c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c10:	ebffff3c 	bl	908 <putc>
     c14:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c18:	e2833004 	add	r3, r3, #4
     c1c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c20:	ea000010 	b	c68 <printf+0x1f0>
     c24:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c28:	e3530025 	cmp	r3, #37	@ 0x25
     c2c:	1a000005 	bne	c48 <printf+0x1d0>
     c30:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c34:	e6ef3073 	uxtb	r3, r3
     c38:	e1a01003 	mov	r1, r3
     c3c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c40:	ebffff30 	bl	908 <putc>
     c44:	ea000007 	b	c68 <printf+0x1f0>
     c48:	e3a01025 	mov	r1, #37	@ 0x25
     c4c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c50:	ebffff2c 	bl	908 <putc>
     c54:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c58:	e6ef3073 	uxtb	r3, r3
     c5c:	e1a01003 	mov	r1, r3
     c60:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c64:	ebffff27 	bl	908 <putc>
     c68:	e3a03000 	mov	r3, #0
     c6c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c70:	e51b3010 	ldr	r3, [fp, #-16]
     c74:	e2833001 	add	r3, r3, #1
     c78:	e50b3010 	str	r3, [fp, #-16]
     c7c:	e59b2004 	ldr	r2, [fp, #4]
     c80:	e51b3010 	ldr	r3, [fp, #-16]
     c84:	e0823003 	add	r3, r2, r3
     c88:	e5d33000 	ldrb	r3, [r3]
     c8c:	e3530000 	cmp	r3, #0
     c90:	1affff84 	bne	aa8 <printf+0x30>
     c94:	e1a00000 	nop			@ (mov r0, r0)
     c98:	e1a00000 	nop			@ (mov r0, r0)
     c9c:	e24bd004 	sub	sp, fp, #4
     ca0:	e8bd4800 	pop	{fp, lr}
     ca4:	e28dd00c 	add	sp, sp, #12
     ca8:	e12fff1e 	bx	lr
     cac:	00001148 	.word	0x00001148

00000cb0 <free>:
     cb0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     cb4:	e28db000 	add	fp, sp, #0
     cb8:	e24dd014 	sub	sp, sp, #20
     cbc:	e50b0010 	str	r0, [fp, #-16]
     cc0:	e51b3010 	ldr	r3, [fp, #-16]
     cc4:	e2433008 	sub	r3, r3, #8
     cc8:	e50b300c 	str	r3, [fp, #-12]
     ccc:	e59f3154 	ldr	r3, [pc, #340]	@ e28 <free+0x178>
     cd0:	e5933000 	ldr	r3, [r3]
     cd4:	e50b3008 	str	r3, [fp, #-8]
     cd8:	ea000010 	b	d20 <free+0x70>
     cdc:	e51b3008 	ldr	r3, [fp, #-8]
     ce0:	e5933000 	ldr	r3, [r3]
     ce4:	e51b2008 	ldr	r2, [fp, #-8]
     ce8:	e1520003 	cmp	r2, r3
     cec:	3a000008 	bcc	d14 <free+0x64>
     cf0:	e51b200c 	ldr	r2, [fp, #-12]
     cf4:	e51b3008 	ldr	r3, [fp, #-8]
     cf8:	e1520003 	cmp	r2, r3
     cfc:	8a000010 	bhi	d44 <free+0x94>
     d00:	e51b3008 	ldr	r3, [fp, #-8]
     d04:	e5933000 	ldr	r3, [r3]
     d08:	e51b200c 	ldr	r2, [fp, #-12]
     d0c:	e1520003 	cmp	r2, r3
     d10:	3a00000b 	bcc	d44 <free+0x94>
     d14:	e51b3008 	ldr	r3, [fp, #-8]
     d18:	e5933000 	ldr	r3, [r3]
     d1c:	e50b3008 	str	r3, [fp, #-8]
     d20:	e51b200c 	ldr	r2, [fp, #-12]
     d24:	e51b3008 	ldr	r3, [fp, #-8]
     d28:	e1520003 	cmp	r2, r3
     d2c:	9affffea 	bls	cdc <free+0x2c>
     d30:	e51b3008 	ldr	r3, [fp, #-8]
     d34:	e5933000 	ldr	r3, [r3]
     d38:	e51b200c 	ldr	r2, [fp, #-12]
     d3c:	e1520003 	cmp	r2, r3
     d40:	2affffe5 	bcs	cdc <free+0x2c>
     d44:	e51b300c 	ldr	r3, [fp, #-12]
     d48:	e5933004 	ldr	r3, [r3, #4]
     d4c:	e1a03183 	lsl	r3, r3, #3
     d50:	e51b200c 	ldr	r2, [fp, #-12]
     d54:	e0822003 	add	r2, r2, r3
     d58:	e51b3008 	ldr	r3, [fp, #-8]
     d5c:	e5933000 	ldr	r3, [r3]
     d60:	e1520003 	cmp	r2, r3
     d64:	1a00000d 	bne	da0 <free+0xf0>
     d68:	e51b300c 	ldr	r3, [fp, #-12]
     d6c:	e5932004 	ldr	r2, [r3, #4]
     d70:	e51b3008 	ldr	r3, [fp, #-8]
     d74:	e5933000 	ldr	r3, [r3]
     d78:	e5933004 	ldr	r3, [r3, #4]
     d7c:	e0822003 	add	r2, r2, r3
     d80:	e51b300c 	ldr	r3, [fp, #-12]
     d84:	e5832004 	str	r2, [r3, #4]
     d88:	e51b3008 	ldr	r3, [fp, #-8]
     d8c:	e5933000 	ldr	r3, [r3]
     d90:	e5932000 	ldr	r2, [r3]
     d94:	e51b300c 	ldr	r3, [fp, #-12]
     d98:	e5832000 	str	r2, [r3]
     d9c:	ea000003 	b	db0 <free+0x100>
     da0:	e51b3008 	ldr	r3, [fp, #-8]
     da4:	e5932000 	ldr	r2, [r3]
     da8:	e51b300c 	ldr	r3, [fp, #-12]
     dac:	e5832000 	str	r2, [r3]
     db0:	e51b3008 	ldr	r3, [fp, #-8]
     db4:	e5933004 	ldr	r3, [r3, #4]
     db8:	e1a03183 	lsl	r3, r3, #3
     dbc:	e51b2008 	ldr	r2, [fp, #-8]
     dc0:	e0823003 	add	r3, r2, r3
     dc4:	e51b200c 	ldr	r2, [fp, #-12]
     dc8:	e1520003 	cmp	r2, r3
     dcc:	1a00000b 	bne	e00 <free+0x150>
     dd0:	e51b3008 	ldr	r3, [fp, #-8]
     dd4:	e5932004 	ldr	r2, [r3, #4]
     dd8:	e51b300c 	ldr	r3, [fp, #-12]
     ddc:	e5933004 	ldr	r3, [r3, #4]
     de0:	e0822003 	add	r2, r2, r3
     de4:	e51b3008 	ldr	r3, [fp, #-8]
     de8:	e5832004 	str	r2, [r3, #4]
     dec:	e51b300c 	ldr	r3, [fp, #-12]
     df0:	e5932000 	ldr	r2, [r3]
     df4:	e51b3008 	ldr	r3, [fp, #-8]
     df8:	e5832000 	str	r2, [r3]
     dfc:	ea000002 	b	e0c <free+0x15c>
     e00:	e51b3008 	ldr	r3, [fp, #-8]
     e04:	e51b200c 	ldr	r2, [fp, #-12]
     e08:	e5832000 	str	r2, [r3]
     e0c:	e59f2014 	ldr	r2, [pc, #20]	@ e28 <free+0x178>
     e10:	e51b3008 	ldr	r3, [fp, #-8]
     e14:	e5823000 	str	r3, [r2]
     e18:	e1a00000 	nop			@ (mov r0, r0)
     e1c:	e28bd000 	add	sp, fp, #0
     e20:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     e24:	e12fff1e 	bx	lr
     e28:	0000116c 	.word	0x0000116c

00000e2c <morecore>:
     e2c:	e92d4800 	push	{fp, lr}
     e30:	e28db004 	add	fp, sp, #4
     e34:	e24dd010 	sub	sp, sp, #16
     e38:	e50b0010 	str	r0, [fp, #-16]
     e3c:	e51b3010 	ldr	r3, [fp, #-16]
     e40:	e3530a01 	cmp	r3, #4096	@ 0x1000
     e44:	2a000001 	bcs	e50 <morecore+0x24>
     e48:	e3a03a01 	mov	r3, #4096	@ 0x1000
     e4c:	e50b3010 	str	r3, [fp, #-16]
     e50:	e51b3010 	ldr	r3, [fp, #-16]
     e54:	e1a03183 	lsl	r3, r3, #3
     e58:	e1a00003 	mov	r0, r3
     e5c:	ebfffe61 	bl	7e8 <sbrk>
     e60:	e50b0008 	str	r0, [fp, #-8]
     e64:	e51b3008 	ldr	r3, [fp, #-8]
     e68:	e3730001 	cmn	r3, #1
     e6c:	1a000001 	bne	e78 <morecore+0x4c>
     e70:	e3a03000 	mov	r3, #0
     e74:	ea00000a 	b	ea4 <morecore+0x78>
     e78:	e51b3008 	ldr	r3, [fp, #-8]
     e7c:	e50b300c 	str	r3, [fp, #-12]
     e80:	e51b300c 	ldr	r3, [fp, #-12]
     e84:	e51b2010 	ldr	r2, [fp, #-16]
     e88:	e5832004 	str	r2, [r3, #4]
     e8c:	e51b300c 	ldr	r3, [fp, #-12]
     e90:	e2833008 	add	r3, r3, #8
     e94:	e1a00003 	mov	r0, r3
     e98:	ebffff84 	bl	cb0 <free>
     e9c:	e59f300c 	ldr	r3, [pc, #12]	@ eb0 <morecore+0x84>
     ea0:	e5933000 	ldr	r3, [r3]
     ea4:	e1a00003 	mov	r0, r3
     ea8:	e24bd004 	sub	sp, fp, #4
     eac:	e8bd8800 	pop	{fp, pc}
     eb0:	0000116c 	.word	0x0000116c

00000eb4 <malloc>:
     eb4:	e92d4800 	push	{fp, lr}
     eb8:	e28db004 	add	fp, sp, #4
     ebc:	e24dd018 	sub	sp, sp, #24
     ec0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     ec4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ec8:	e2833007 	add	r3, r3, #7
     ecc:	e1a031a3 	lsr	r3, r3, #3
     ed0:	e2833001 	add	r3, r3, #1
     ed4:	e50b3010 	str	r3, [fp, #-16]
     ed8:	e59f3134 	ldr	r3, [pc, #308]	@ 1014 <malloc+0x160>
     edc:	e5933000 	ldr	r3, [r3]
     ee0:	e50b300c 	str	r3, [fp, #-12]
     ee4:	e51b300c 	ldr	r3, [fp, #-12]
     ee8:	e3530000 	cmp	r3, #0
     eec:	1a00000b 	bne	f20 <malloc+0x6c>
     ef0:	e59f3120 	ldr	r3, [pc, #288]	@ 1018 <malloc+0x164>
     ef4:	e50b300c 	str	r3, [fp, #-12]
     ef8:	e59f2114 	ldr	r2, [pc, #276]	@ 1014 <malloc+0x160>
     efc:	e51b300c 	ldr	r3, [fp, #-12]
     f00:	e5823000 	str	r3, [r2]
     f04:	e59f3108 	ldr	r3, [pc, #264]	@ 1014 <malloc+0x160>
     f08:	e5933000 	ldr	r3, [r3]
     f0c:	e59f2104 	ldr	r2, [pc, #260]	@ 1018 <malloc+0x164>
     f10:	e5823000 	str	r3, [r2]
     f14:	e59f30fc 	ldr	r3, [pc, #252]	@ 1018 <malloc+0x164>
     f18:	e3a02000 	mov	r2, #0
     f1c:	e5832004 	str	r2, [r3, #4]
     f20:	e51b300c 	ldr	r3, [fp, #-12]
     f24:	e5933000 	ldr	r3, [r3]
     f28:	e50b3008 	str	r3, [fp, #-8]
     f2c:	e51b3008 	ldr	r3, [fp, #-8]
     f30:	e5933004 	ldr	r3, [r3, #4]
     f34:	e51b2010 	ldr	r2, [fp, #-16]
     f38:	e1520003 	cmp	r2, r3
     f3c:	8a00001e 	bhi	fbc <malloc+0x108>
     f40:	e51b3008 	ldr	r3, [fp, #-8]
     f44:	e5933004 	ldr	r3, [r3, #4]
     f48:	e51b2010 	ldr	r2, [fp, #-16]
     f4c:	e1520003 	cmp	r2, r3
     f50:	1a000004 	bne	f68 <malloc+0xb4>
     f54:	e51b3008 	ldr	r3, [fp, #-8]
     f58:	e5932000 	ldr	r2, [r3]
     f5c:	e51b300c 	ldr	r3, [fp, #-12]
     f60:	e5832000 	str	r2, [r3]
     f64:	ea00000e 	b	fa4 <malloc+0xf0>
     f68:	e51b3008 	ldr	r3, [fp, #-8]
     f6c:	e5932004 	ldr	r2, [r3, #4]
     f70:	e51b3010 	ldr	r3, [fp, #-16]
     f74:	e0422003 	sub	r2, r2, r3
     f78:	e51b3008 	ldr	r3, [fp, #-8]
     f7c:	e5832004 	str	r2, [r3, #4]
     f80:	e51b3008 	ldr	r3, [fp, #-8]
     f84:	e5933004 	ldr	r3, [r3, #4]
     f88:	e1a03183 	lsl	r3, r3, #3
     f8c:	e51b2008 	ldr	r2, [fp, #-8]
     f90:	e0823003 	add	r3, r2, r3
     f94:	e50b3008 	str	r3, [fp, #-8]
     f98:	e51b3008 	ldr	r3, [fp, #-8]
     f9c:	e51b2010 	ldr	r2, [fp, #-16]
     fa0:	e5832004 	str	r2, [r3, #4]
     fa4:	e59f2068 	ldr	r2, [pc, #104]	@ 1014 <malloc+0x160>
     fa8:	e51b300c 	ldr	r3, [fp, #-12]
     fac:	e5823000 	str	r3, [r2]
     fb0:	e51b3008 	ldr	r3, [fp, #-8]
     fb4:	e2833008 	add	r3, r3, #8
     fb8:	ea000012 	b	1008 <malloc+0x154>
     fbc:	e59f3050 	ldr	r3, [pc, #80]	@ 1014 <malloc+0x160>
     fc0:	e5933000 	ldr	r3, [r3]
     fc4:	e51b2008 	ldr	r2, [fp, #-8]
     fc8:	e1520003 	cmp	r2, r3
     fcc:	1a000007 	bne	ff0 <malloc+0x13c>
     fd0:	e51b0010 	ldr	r0, [fp, #-16]
     fd4:	ebffff94 	bl	e2c <morecore>
     fd8:	e50b0008 	str	r0, [fp, #-8]
     fdc:	e51b3008 	ldr	r3, [fp, #-8]
     fe0:	e3530000 	cmp	r3, #0
     fe4:	1a000001 	bne	ff0 <malloc+0x13c>
     fe8:	e3a03000 	mov	r3, #0
     fec:	ea000005 	b	1008 <malloc+0x154>
     ff0:	e51b3008 	ldr	r3, [fp, #-8]
     ff4:	e50b300c 	str	r3, [fp, #-12]
     ff8:	e51b3008 	ldr	r3, [fp, #-8]
     ffc:	e5933000 	ldr	r3, [r3]
    1000:	e50b3008 	str	r3, [fp, #-8]
    1004:	eaffffc8 	b	f2c <malloc+0x78>
    1008:	e1a00003 	mov	r0, r3
    100c:	e24bd004 	sub	sp, fp, #4
    1010:	e8bd8800 	pop	{fp, pc}
    1014:	0000116c 	.word	0x0000116c
    1018:	00001164 	.word	0x00001164

0000101c <__udivsi3>:
    101c:	e2512001 	subs	r2, r1, #1
    1020:	012fff1e 	bxeq	lr
    1024:	3a000036 	bcc	1104 <__udivsi3+0xe8>
    1028:	e1500001 	cmp	r0, r1
    102c:	9a000022 	bls	10bc <__udivsi3+0xa0>
    1030:	e1110002 	tst	r1, r2
    1034:	0a000023 	beq	10c8 <__udivsi3+0xac>
    1038:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    103c:	01a01181 	lsleq	r1, r1, #3
    1040:	03a03008 	moveq	r3, #8
    1044:	13a03001 	movne	r3, #1
    1048:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    104c:	31510000 	cmpcc	r1, r0
    1050:	31a01201 	lslcc	r1, r1, #4
    1054:	31a03203 	lslcc	r3, r3, #4
    1058:	3afffffa 	bcc	1048 <__udivsi3+0x2c>
    105c:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1060:	31510000 	cmpcc	r1, r0
    1064:	31a01081 	lslcc	r1, r1, #1
    1068:	31a03083 	lslcc	r3, r3, #1
    106c:	3afffffa 	bcc	105c <__udivsi3+0x40>
    1070:	e3a02000 	mov	r2, #0
    1074:	e1500001 	cmp	r0, r1
    1078:	20400001 	subcs	r0, r0, r1
    107c:	21822003 	orrcs	r2, r2, r3
    1080:	e15000a1 	cmp	r0, r1, lsr #1
    1084:	204000a1 	subcs	r0, r0, r1, lsr #1
    1088:	218220a3 	orrcs	r2, r2, r3, lsr #1
    108c:	e1500121 	cmp	r0, r1, lsr #2
    1090:	20400121 	subcs	r0, r0, r1, lsr #2
    1094:	21822123 	orrcs	r2, r2, r3, lsr #2
    1098:	e15001a1 	cmp	r0, r1, lsr #3
    109c:	204001a1 	subcs	r0, r0, r1, lsr #3
    10a0:	218221a3 	orrcs	r2, r2, r3, lsr #3
    10a4:	e3500000 	cmp	r0, #0
    10a8:	11b03223 	lsrsne	r3, r3, #4
    10ac:	11a01221 	lsrne	r1, r1, #4
    10b0:	1affffef 	bne	1074 <__udivsi3+0x58>
    10b4:	e1a00002 	mov	r0, r2
    10b8:	e12fff1e 	bx	lr
    10bc:	03a00001 	moveq	r0, #1
    10c0:	13a00000 	movne	r0, #0
    10c4:	e12fff1e 	bx	lr
    10c8:	e3510801 	cmp	r1, #65536	@ 0x10000
    10cc:	21a01821 	lsrcs	r1, r1, #16
    10d0:	23a02010 	movcs	r2, #16
    10d4:	33a02000 	movcc	r2, #0
    10d8:	e3510c01 	cmp	r1, #256	@ 0x100
    10dc:	21a01421 	lsrcs	r1, r1, #8
    10e0:	22822008 	addcs	r2, r2, #8
    10e4:	e3510010 	cmp	r1, #16
    10e8:	21a01221 	lsrcs	r1, r1, #4
    10ec:	22822004 	addcs	r2, r2, #4
    10f0:	e3510004 	cmp	r1, #4
    10f4:	82822003 	addhi	r2, r2, #3
    10f8:	908220a1 	addls	r2, r2, r1, lsr #1
    10fc:	e1a00230 	lsr	r0, r0, r2
    1100:	e12fff1e 	bx	lr
    1104:	e3500000 	cmp	r0, #0
    1108:	13e00000 	mvnne	r0, #0
    110c:	ea000007 	b	1130 <__aeabi_idiv0>

00001110 <__aeabi_uidivmod>:
    1110:	e3510000 	cmp	r1, #0
    1114:	0afffffa 	beq	1104 <__udivsi3+0xe8>
    1118:	e92d4003 	push	{r0, r1, lr}
    111c:	ebffffbe 	bl	101c <__udivsi3>
    1120:	e8bd4006 	pop	{r1, r2, lr}
    1124:	e0030092 	mul	r3, r2, r0
    1128:	e0411003 	sub	r1, r1, r3
    112c:	e12fff1e 	bx	lr

00001130 <__aeabi_idiv0>:
    1130:	e12fff1e 	bx	lr
