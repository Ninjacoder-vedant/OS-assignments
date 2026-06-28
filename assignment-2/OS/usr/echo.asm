
_echo:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      14:	e3a03001 	mov	r3, #1
      18:	e50b3008 	str	r3, [fp, #-8]
      1c:	ea000013 	b	70 <main+0x70>
      20:	e51b3008 	ldr	r3, [fp, #-8]
      24:	e1a03103 	lsl	r3, r3, #2
      28:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      2c:	e0823003 	add	r3, r2, r3
      30:	e5931000 	ldr	r1, [r3]
      34:	e51b3008 	ldr	r3, [fp, #-8]
      38:	e2833001 	add	r3, r3, #1
      3c:	e51b2010 	ldr	r2, [fp, #-16]
      40:	e1520003 	cmp	r2, r3
      44:	da000001 	ble	50 <main+0x50>
      48:	e59f3034 	ldr	r3, [pc, #52]	@ 84 <main+0x84>
      4c:	ea000000 	b	54 <main+0x54>
      50:	e59f3030 	ldr	r3, [pc, #48]	@ 88 <main+0x88>
      54:	e1a02001 	mov	r2, r1
      58:	e59f102c 	ldr	r1, [pc, #44]	@ 8c <main+0x8c>
      5c:	e3a00001 	mov	r0, #1
      60:	eb000286 	bl	a80 <printf>
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e2833001 	add	r3, r3, #1
      6c:	e50b3008 	str	r3, [fp, #-8]
      70:	e51b2008 	ldr	r2, [fp, #-8]
      74:	e51b3010 	ldr	r3, [fp, #-16]
      78:	e1520003 	cmp	r2, r3
      7c:	baffffe7 	blt	20 <main+0x20>
      80:	eb000141 	bl	58c <exit>
      84:	0000113c 	.word	0x0000113c
      88:	00001140 	.word	0x00001140
      8c:	00001144 	.word	0x00001144

00000090 <strcpy>:
      90:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      94:	e28db000 	add	fp, sp, #0
      98:	e24dd014 	sub	sp, sp, #20
      9c:	e50b0010 	str	r0, [fp, #-16]
      a0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      a4:	e51b3010 	ldr	r3, [fp, #-16]
      a8:	e50b3008 	str	r3, [fp, #-8]
      ac:	e1a00000 	nop			@ (mov r0, r0)
      b0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      b4:	e2823001 	add	r3, r2, #1
      b8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      bc:	e51b3010 	ldr	r3, [fp, #-16]
      c0:	e2831001 	add	r1, r3, #1
      c4:	e50b1010 	str	r1, [fp, #-16]
      c8:	e5d22000 	ldrb	r2, [r2]
      cc:	e5c32000 	strb	r2, [r3]
      d0:	e5d33000 	ldrb	r3, [r3]
      d4:	e3530000 	cmp	r3, #0
      d8:	1afffff4 	bne	b0 <strcpy+0x20>
      dc:	e51b3008 	ldr	r3, [fp, #-8]
      e0:	e1a00003 	mov	r0, r3
      e4:	e28bd000 	add	sp, fp, #0
      e8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      ec:	e12fff1e 	bx	lr

000000f0 <strcmp>:
      f0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      f4:	e28db000 	add	fp, sp, #0
      f8:	e24dd00c 	sub	sp, sp, #12
      fc:	e50b0008 	str	r0, [fp, #-8]
     100:	e50b100c 	str	r1, [fp, #-12]
     104:	ea000005 	b	120 <strcmp+0x30>
     108:	e51b3008 	ldr	r3, [fp, #-8]
     10c:	e2833001 	add	r3, r3, #1
     110:	e50b3008 	str	r3, [fp, #-8]
     114:	e51b300c 	ldr	r3, [fp, #-12]
     118:	e2833001 	add	r3, r3, #1
     11c:	e50b300c 	str	r3, [fp, #-12]
     120:	e51b3008 	ldr	r3, [fp, #-8]
     124:	e5d33000 	ldrb	r3, [r3]
     128:	e3530000 	cmp	r3, #0
     12c:	0a000005 	beq	148 <strcmp+0x58>
     130:	e51b3008 	ldr	r3, [fp, #-8]
     134:	e5d32000 	ldrb	r2, [r3]
     138:	e51b300c 	ldr	r3, [fp, #-12]
     13c:	e5d33000 	ldrb	r3, [r3]
     140:	e1520003 	cmp	r2, r3
     144:	0affffef 	beq	108 <strcmp+0x18>
     148:	e51b3008 	ldr	r3, [fp, #-8]
     14c:	e5d33000 	ldrb	r3, [r3]
     150:	e1a02003 	mov	r2, r3
     154:	e51b300c 	ldr	r3, [fp, #-12]
     158:	e5d33000 	ldrb	r3, [r3]
     15c:	e0423003 	sub	r3, r2, r3
     160:	e1a00003 	mov	r0, r3
     164:	e28bd000 	add	sp, fp, #0
     168:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     16c:	e12fff1e 	bx	lr

00000170 <strlen>:
     170:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     174:	e28db000 	add	fp, sp, #0
     178:	e24dd014 	sub	sp, sp, #20
     17c:	e50b0010 	str	r0, [fp, #-16]
     180:	e3a03000 	mov	r3, #0
     184:	e50b3008 	str	r3, [fp, #-8]
     188:	ea000002 	b	198 <strlen+0x28>
     18c:	e51b3008 	ldr	r3, [fp, #-8]
     190:	e2833001 	add	r3, r3, #1
     194:	e50b3008 	str	r3, [fp, #-8]
     198:	e51b3008 	ldr	r3, [fp, #-8]
     19c:	e51b2010 	ldr	r2, [fp, #-16]
     1a0:	e0823003 	add	r3, r2, r3
     1a4:	e5d33000 	ldrb	r3, [r3]
     1a8:	e3530000 	cmp	r3, #0
     1ac:	1afffff6 	bne	18c <strlen+0x1c>
     1b0:	e51b3008 	ldr	r3, [fp, #-8]
     1b4:	e1a00003 	mov	r0, r3
     1b8:	e28bd000 	add	sp, fp, #0
     1bc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1c0:	e12fff1e 	bx	lr

000001c4 <memset>:
     1c4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1c8:	e28db000 	add	fp, sp, #0
     1cc:	e24dd024 	sub	sp, sp, #36	@ 0x24
     1d0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     1d4:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     1d8:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     1dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     1e0:	e50b3008 	str	r3, [fp, #-8]
     1e4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     1e8:	e54b300d 	strb	r3, [fp, #-13]
     1ec:	e55b200d 	ldrb	r2, [fp, #-13]
     1f0:	e1a03002 	mov	r3, r2
     1f4:	e1a03403 	lsl	r3, r3, #8
     1f8:	e0833002 	add	r3, r3, r2
     1fc:	e1a03803 	lsl	r3, r3, #16
     200:	e1a02003 	mov	r2, r3
     204:	e55b300d 	ldrb	r3, [fp, #-13]
     208:	e1a03403 	lsl	r3, r3, #8
     20c:	e1822003 	orr	r2, r2, r3
     210:	e55b300d 	ldrb	r3, [fp, #-13]
     214:	e1823003 	orr	r3, r2, r3
     218:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     21c:	ea000008 	b	244 <memset+0x80>
     220:	e51b3008 	ldr	r3, [fp, #-8]
     224:	e55b200d 	ldrb	r2, [fp, #-13]
     228:	e5c32000 	strb	r2, [r3]
     22c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     230:	e2433001 	sub	r3, r3, #1
     234:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     238:	e51b3008 	ldr	r3, [fp, #-8]
     23c:	e2833001 	add	r3, r3, #1
     240:	e50b3008 	str	r3, [fp, #-8]
     244:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     248:	e3530000 	cmp	r3, #0
     24c:	0a000003 	beq	260 <memset+0x9c>
     250:	e51b3008 	ldr	r3, [fp, #-8]
     254:	e2033003 	and	r3, r3, #3
     258:	e3530000 	cmp	r3, #0
     25c:	1affffef 	bne	220 <memset+0x5c>
     260:	e51b3008 	ldr	r3, [fp, #-8]
     264:	e50b300c 	str	r3, [fp, #-12]
     268:	ea000008 	b	290 <memset+0xcc>
     26c:	e51b300c 	ldr	r3, [fp, #-12]
     270:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     274:	e5832000 	str	r2, [r3]
     278:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     27c:	e2433004 	sub	r3, r3, #4
     280:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     284:	e51b300c 	ldr	r3, [fp, #-12]
     288:	e2833004 	add	r3, r3, #4
     28c:	e50b300c 	str	r3, [fp, #-12]
     290:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     294:	e3530003 	cmp	r3, #3
     298:	8afffff3 	bhi	26c <memset+0xa8>
     29c:	e51b300c 	ldr	r3, [fp, #-12]
     2a0:	e50b3008 	str	r3, [fp, #-8]
     2a4:	ea000008 	b	2cc <memset+0x108>
     2a8:	e51b3008 	ldr	r3, [fp, #-8]
     2ac:	e55b200d 	ldrb	r2, [fp, #-13]
     2b0:	e5c32000 	strb	r2, [r3]
     2b4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2b8:	e2433001 	sub	r3, r3, #1
     2bc:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2c0:	e51b3008 	ldr	r3, [fp, #-8]
     2c4:	e2833001 	add	r3, r3, #1
     2c8:	e50b3008 	str	r3, [fp, #-8]
     2cc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2d0:	e3530000 	cmp	r3, #0
     2d4:	1afffff3 	bne	2a8 <memset+0xe4>
     2d8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2dc:	e1a00003 	mov	r0, r3
     2e0:	e28bd000 	add	sp, fp, #0
     2e4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2e8:	e12fff1e 	bx	lr

000002ec <strchr>:
     2ec:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2f0:	e28db000 	add	fp, sp, #0
     2f4:	e24dd00c 	sub	sp, sp, #12
     2f8:	e50b0008 	str	r0, [fp, #-8]
     2fc:	e1a03001 	mov	r3, r1
     300:	e54b3009 	strb	r3, [fp, #-9]
     304:	ea000009 	b	330 <strchr+0x44>
     308:	e51b3008 	ldr	r3, [fp, #-8]
     30c:	e5d33000 	ldrb	r3, [r3]
     310:	e55b2009 	ldrb	r2, [fp, #-9]
     314:	e1520003 	cmp	r2, r3
     318:	1a000001 	bne	324 <strchr+0x38>
     31c:	e51b3008 	ldr	r3, [fp, #-8]
     320:	ea000007 	b	344 <strchr+0x58>
     324:	e51b3008 	ldr	r3, [fp, #-8]
     328:	e2833001 	add	r3, r3, #1
     32c:	e50b3008 	str	r3, [fp, #-8]
     330:	e51b3008 	ldr	r3, [fp, #-8]
     334:	e5d33000 	ldrb	r3, [r3]
     338:	e3530000 	cmp	r3, #0
     33c:	1afffff1 	bne	308 <strchr+0x1c>
     340:	e3a03000 	mov	r3, #0
     344:	e1a00003 	mov	r0, r3
     348:	e28bd000 	add	sp, fp, #0
     34c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     350:	e12fff1e 	bx	lr

00000354 <gets>:
     354:	e92d4800 	push	{fp, lr}
     358:	e28db004 	add	fp, sp, #4
     35c:	e24dd018 	sub	sp, sp, #24
     360:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     364:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     368:	e3a03000 	mov	r3, #0
     36c:	e50b3008 	str	r3, [fp, #-8]
     370:	ea000016 	b	3d0 <gets+0x7c>
     374:	e24b300d 	sub	r3, fp, #13
     378:	e3a02001 	mov	r2, #1
     37c:	e1a01003 	mov	r1, r3
     380:	e3a00000 	mov	r0, #0
     384:	eb00009b 	bl	5f8 <read>
     388:	e50b000c 	str	r0, [fp, #-12]
     38c:	e51b300c 	ldr	r3, [fp, #-12]
     390:	e3530000 	cmp	r3, #0
     394:	da000013 	ble	3e8 <gets+0x94>
     398:	e51b3008 	ldr	r3, [fp, #-8]
     39c:	e2832001 	add	r2, r3, #1
     3a0:	e50b2008 	str	r2, [fp, #-8]
     3a4:	e1a02003 	mov	r2, r3
     3a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3ac:	e0833002 	add	r3, r3, r2
     3b0:	e55b200d 	ldrb	r2, [fp, #-13]
     3b4:	e5c32000 	strb	r2, [r3]
     3b8:	e55b300d 	ldrb	r3, [fp, #-13]
     3bc:	e353000a 	cmp	r3, #10
     3c0:	0a000009 	beq	3ec <gets+0x98>
     3c4:	e55b300d 	ldrb	r3, [fp, #-13]
     3c8:	e353000d 	cmp	r3, #13
     3cc:	0a000006 	beq	3ec <gets+0x98>
     3d0:	e51b3008 	ldr	r3, [fp, #-8]
     3d4:	e2833001 	add	r3, r3, #1
     3d8:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     3dc:	e1520003 	cmp	r2, r3
     3e0:	caffffe3 	bgt	374 <gets+0x20>
     3e4:	ea000000 	b	3ec <gets+0x98>
     3e8:	e1a00000 	nop			@ (mov r0, r0)
     3ec:	e51b3008 	ldr	r3, [fp, #-8]
     3f0:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     3f4:	e0823003 	add	r3, r2, r3
     3f8:	e3a02000 	mov	r2, #0
     3fc:	e5c32000 	strb	r2, [r3]
     400:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     404:	e1a00003 	mov	r0, r3
     408:	e24bd004 	sub	sp, fp, #4
     40c:	e8bd8800 	pop	{fp, pc}

00000410 <stat>:
     410:	e92d4800 	push	{fp, lr}
     414:	e28db004 	add	fp, sp, #4
     418:	e24dd010 	sub	sp, sp, #16
     41c:	e50b0010 	str	r0, [fp, #-16]
     420:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     424:	e3a01000 	mov	r1, #0
     428:	e51b0010 	ldr	r0, [fp, #-16]
     42c:	eb00009e 	bl	6ac <open>
     430:	e50b0008 	str	r0, [fp, #-8]
     434:	e51b3008 	ldr	r3, [fp, #-8]
     438:	e3530000 	cmp	r3, #0
     43c:	aa000001 	bge	448 <stat+0x38>
     440:	e3e03000 	mvn	r3, #0
     444:	ea000006 	b	464 <stat+0x54>
     448:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     44c:	e51b0008 	ldr	r0, [fp, #-8]
     450:	eb0000b0 	bl	718 <fstat>
     454:	e50b000c 	str	r0, [fp, #-12]
     458:	e51b0008 	ldr	r0, [fp, #-8]
     45c:	eb000077 	bl	640 <close>
     460:	e51b300c 	ldr	r3, [fp, #-12]
     464:	e1a00003 	mov	r0, r3
     468:	e24bd004 	sub	sp, fp, #4
     46c:	e8bd8800 	pop	{fp, pc}

00000470 <atoi>:
     470:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     474:	e28db000 	add	fp, sp, #0
     478:	e24dd014 	sub	sp, sp, #20
     47c:	e50b0010 	str	r0, [fp, #-16]
     480:	e3a03000 	mov	r3, #0
     484:	e50b3008 	str	r3, [fp, #-8]
     488:	ea00000c 	b	4c0 <atoi+0x50>
     48c:	e51b2008 	ldr	r2, [fp, #-8]
     490:	e1a03002 	mov	r3, r2
     494:	e1a03103 	lsl	r3, r3, #2
     498:	e0833002 	add	r3, r3, r2
     49c:	e1a03083 	lsl	r3, r3, #1
     4a0:	e1a01003 	mov	r1, r3
     4a4:	e51b3010 	ldr	r3, [fp, #-16]
     4a8:	e2832001 	add	r2, r3, #1
     4ac:	e50b2010 	str	r2, [fp, #-16]
     4b0:	e5d33000 	ldrb	r3, [r3]
     4b4:	e0813003 	add	r3, r1, r3
     4b8:	e2433030 	sub	r3, r3, #48	@ 0x30
     4bc:	e50b3008 	str	r3, [fp, #-8]
     4c0:	e51b3010 	ldr	r3, [fp, #-16]
     4c4:	e5d33000 	ldrb	r3, [r3]
     4c8:	e353002f 	cmp	r3, #47	@ 0x2f
     4cc:	9a000003 	bls	4e0 <atoi+0x70>
     4d0:	e51b3010 	ldr	r3, [fp, #-16]
     4d4:	e5d33000 	ldrb	r3, [r3]
     4d8:	e3530039 	cmp	r3, #57	@ 0x39
     4dc:	9affffea 	bls	48c <atoi+0x1c>
     4e0:	e51b3008 	ldr	r3, [fp, #-8]
     4e4:	e1a00003 	mov	r0, r3
     4e8:	e28bd000 	add	sp, fp, #0
     4ec:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4f0:	e12fff1e 	bx	lr

000004f4 <memmove>:
     4f4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4f8:	e28db000 	add	fp, sp, #0
     4fc:	e24dd01c 	sub	sp, sp, #28
     500:	e50b0010 	str	r0, [fp, #-16]
     504:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     508:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     50c:	e51b3010 	ldr	r3, [fp, #-16]
     510:	e50b3008 	str	r3, [fp, #-8]
     514:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     518:	e50b300c 	str	r3, [fp, #-12]
     51c:	ea000007 	b	540 <memmove+0x4c>
     520:	e51b200c 	ldr	r2, [fp, #-12]
     524:	e2823001 	add	r3, r2, #1
     528:	e50b300c 	str	r3, [fp, #-12]
     52c:	e51b3008 	ldr	r3, [fp, #-8]
     530:	e2831001 	add	r1, r3, #1
     534:	e50b1008 	str	r1, [fp, #-8]
     538:	e5d22000 	ldrb	r2, [r2]
     53c:	e5c32000 	strb	r2, [r3]
     540:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     544:	e2432001 	sub	r2, r3, #1
     548:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     54c:	e3530000 	cmp	r3, #0
     550:	cafffff2 	bgt	520 <memmove+0x2c>
     554:	e51b3010 	ldr	r3, [fp, #-16]
     558:	e1a00003 	mov	r0, r3
     55c:	e28bd000 	add	sp, fp, #0
     560:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     564:	e12fff1e 	bx	lr

00000568 <fork>:
     568:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     56c:	e1a04003 	mov	r4, r3
     570:	e1a03002 	mov	r3, r2
     574:	e1a02001 	mov	r2, r1
     578:	e1a01000 	mov	r1, r0
     57c:	e3a00001 	mov	r0, #1
     580:	ef000000 	svc	0x00000000
     584:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     588:	e12fff1e 	bx	lr

0000058c <exit>:
     58c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     590:	e1a04003 	mov	r4, r3
     594:	e1a03002 	mov	r3, r2
     598:	e1a02001 	mov	r2, r1
     59c:	e1a01000 	mov	r1, r0
     5a0:	e3a00002 	mov	r0, #2
     5a4:	ef000000 	svc	0x00000000
     5a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5ac:	e12fff1e 	bx	lr

000005b0 <wait>:
     5b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5b4:	e1a04003 	mov	r4, r3
     5b8:	e1a03002 	mov	r3, r2
     5bc:	e1a02001 	mov	r2, r1
     5c0:	e1a01000 	mov	r1, r0
     5c4:	e3a00003 	mov	r0, #3
     5c8:	ef000000 	svc	0x00000000
     5cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5d0:	e12fff1e 	bx	lr

000005d4 <pipe>:
     5d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5d8:	e1a04003 	mov	r4, r3
     5dc:	e1a03002 	mov	r3, r2
     5e0:	e1a02001 	mov	r2, r1
     5e4:	e1a01000 	mov	r1, r0
     5e8:	e3a00004 	mov	r0, #4
     5ec:	ef000000 	svc	0x00000000
     5f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5f4:	e12fff1e 	bx	lr

000005f8 <read>:
     5f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5fc:	e1a04003 	mov	r4, r3
     600:	e1a03002 	mov	r3, r2
     604:	e1a02001 	mov	r2, r1
     608:	e1a01000 	mov	r1, r0
     60c:	e3a00005 	mov	r0, #5
     610:	ef000000 	svc	0x00000000
     614:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     618:	e12fff1e 	bx	lr

0000061c <write>:
     61c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     620:	e1a04003 	mov	r4, r3
     624:	e1a03002 	mov	r3, r2
     628:	e1a02001 	mov	r2, r1
     62c:	e1a01000 	mov	r1, r0
     630:	e3a00010 	mov	r0, #16
     634:	ef000000 	svc	0x00000000
     638:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     63c:	e12fff1e 	bx	lr

00000640 <close>:
     640:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     644:	e1a04003 	mov	r4, r3
     648:	e1a03002 	mov	r3, r2
     64c:	e1a02001 	mov	r2, r1
     650:	e1a01000 	mov	r1, r0
     654:	e3a00015 	mov	r0, #21
     658:	ef000000 	svc	0x00000000
     65c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     660:	e12fff1e 	bx	lr

00000664 <kill>:
     664:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     668:	e1a04003 	mov	r4, r3
     66c:	e1a03002 	mov	r3, r2
     670:	e1a02001 	mov	r2, r1
     674:	e1a01000 	mov	r1, r0
     678:	e3a00006 	mov	r0, #6
     67c:	ef000000 	svc	0x00000000
     680:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     684:	e12fff1e 	bx	lr

00000688 <exec>:
     688:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     68c:	e1a04003 	mov	r4, r3
     690:	e1a03002 	mov	r3, r2
     694:	e1a02001 	mov	r2, r1
     698:	e1a01000 	mov	r1, r0
     69c:	e3a00007 	mov	r0, #7
     6a0:	ef000000 	svc	0x00000000
     6a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6a8:	e12fff1e 	bx	lr

000006ac <open>:
     6ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6b0:	e1a04003 	mov	r4, r3
     6b4:	e1a03002 	mov	r3, r2
     6b8:	e1a02001 	mov	r2, r1
     6bc:	e1a01000 	mov	r1, r0
     6c0:	e3a0000f 	mov	r0, #15
     6c4:	ef000000 	svc	0x00000000
     6c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6cc:	e12fff1e 	bx	lr

000006d0 <mknod>:
     6d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6d4:	e1a04003 	mov	r4, r3
     6d8:	e1a03002 	mov	r3, r2
     6dc:	e1a02001 	mov	r2, r1
     6e0:	e1a01000 	mov	r1, r0
     6e4:	e3a00011 	mov	r0, #17
     6e8:	ef000000 	svc	0x00000000
     6ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6f0:	e12fff1e 	bx	lr

000006f4 <unlink>:
     6f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6f8:	e1a04003 	mov	r4, r3
     6fc:	e1a03002 	mov	r3, r2
     700:	e1a02001 	mov	r2, r1
     704:	e1a01000 	mov	r1, r0
     708:	e3a00012 	mov	r0, #18
     70c:	ef000000 	svc	0x00000000
     710:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     714:	e12fff1e 	bx	lr

00000718 <fstat>:
     718:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     71c:	e1a04003 	mov	r4, r3
     720:	e1a03002 	mov	r3, r2
     724:	e1a02001 	mov	r2, r1
     728:	e1a01000 	mov	r1, r0
     72c:	e3a00008 	mov	r0, #8
     730:	ef000000 	svc	0x00000000
     734:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     738:	e12fff1e 	bx	lr

0000073c <link>:
     73c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     740:	e1a04003 	mov	r4, r3
     744:	e1a03002 	mov	r3, r2
     748:	e1a02001 	mov	r2, r1
     74c:	e1a01000 	mov	r1, r0
     750:	e3a00013 	mov	r0, #19
     754:	ef000000 	svc	0x00000000
     758:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     75c:	e12fff1e 	bx	lr

00000760 <mkdir>:
     760:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     764:	e1a04003 	mov	r4, r3
     768:	e1a03002 	mov	r3, r2
     76c:	e1a02001 	mov	r2, r1
     770:	e1a01000 	mov	r1, r0
     774:	e3a00014 	mov	r0, #20
     778:	ef000000 	svc	0x00000000
     77c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     780:	e12fff1e 	bx	lr

00000784 <chdir>:
     784:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     788:	e1a04003 	mov	r4, r3
     78c:	e1a03002 	mov	r3, r2
     790:	e1a02001 	mov	r2, r1
     794:	e1a01000 	mov	r1, r0
     798:	e3a00009 	mov	r0, #9
     79c:	ef000000 	svc	0x00000000
     7a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7a4:	e12fff1e 	bx	lr

000007a8 <dup>:
     7a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7ac:	e1a04003 	mov	r4, r3
     7b0:	e1a03002 	mov	r3, r2
     7b4:	e1a02001 	mov	r2, r1
     7b8:	e1a01000 	mov	r1, r0
     7bc:	e3a0000a 	mov	r0, #10
     7c0:	ef000000 	svc	0x00000000
     7c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7c8:	e12fff1e 	bx	lr

000007cc <getpid>:
     7cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7d0:	e1a04003 	mov	r4, r3
     7d4:	e1a03002 	mov	r3, r2
     7d8:	e1a02001 	mov	r2, r1
     7dc:	e1a01000 	mov	r1, r0
     7e0:	e3a0000b 	mov	r0, #11
     7e4:	ef000000 	svc	0x00000000
     7e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7ec:	e12fff1e 	bx	lr

000007f0 <sbrk>:
     7f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7f4:	e1a04003 	mov	r4, r3
     7f8:	e1a03002 	mov	r3, r2
     7fc:	e1a02001 	mov	r2, r1
     800:	e1a01000 	mov	r1, r0
     804:	e3a0000c 	mov	r0, #12
     808:	ef000000 	svc	0x00000000
     80c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     810:	e12fff1e 	bx	lr

00000814 <sleep>:
     814:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     818:	e1a04003 	mov	r4, r3
     81c:	e1a03002 	mov	r3, r2
     820:	e1a02001 	mov	r2, r1
     824:	e1a01000 	mov	r1, r0
     828:	e3a0000d 	mov	r0, #13
     82c:	ef000000 	svc	0x00000000
     830:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     834:	e12fff1e 	bx	lr

00000838 <uptime>:
     838:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     83c:	e1a04003 	mov	r4, r3
     840:	e1a03002 	mov	r3, r2
     844:	e1a02001 	mov	r2, r1
     848:	e1a01000 	mov	r1, r0
     84c:	e3a0000e 	mov	r0, #14
     850:	ef000000 	svc	0x00000000
     854:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     858:	e12fff1e 	bx	lr

0000085c <getprocs>:
     85c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     860:	e1a04003 	mov	r4, r3
     864:	e1a03002 	mov	r3, r2
     868:	e1a02001 	mov	r2, r1
     86c:	e1a01000 	mov	r1, r0
     870:	e3a00016 	mov	r0, #22
     874:	ef000000 	svc	0x00000000
     878:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     87c:	e12fff1e 	bx	lr

00000880 <getpinfo>:
     880:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     884:	e1a04003 	mov	r4, r3
     888:	e1a03002 	mov	r3, r2
     88c:	e1a02001 	mov	r2, r1
     890:	e1a01000 	mov	r1, r0
     894:	e3a00018 	mov	r0, #24
     898:	ef000000 	svc	0x00000000
     89c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8a0:	e12fff1e 	bx	lr

000008a4 <settickets>:
     8a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8a8:	e1a04003 	mov	r4, r3
     8ac:	e1a03002 	mov	r3, r2
     8b0:	e1a02001 	mov	r2, r1
     8b4:	e1a01000 	mov	r1, r0
     8b8:	e3a00017 	mov	r0, #23
     8bc:	ef000000 	svc	0x00000000
     8c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8c4:	e12fff1e 	bx	lr

000008c8 <srand>:
     8c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8cc:	e1a04003 	mov	r4, r3
     8d0:	e1a03002 	mov	r3, r2
     8d4:	e1a02001 	mov	r2, r1
     8d8:	e1a01000 	mov	r1, r0
     8dc:	e3a00019 	mov	r0, #25
     8e0:	ef000000 	svc	0x00000000
     8e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8e8:	e12fff1e 	bx	lr

000008ec <test>:
     8ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8f0:	e1a04003 	mov	r4, r3
     8f4:	e1a03002 	mov	r3, r2
     8f8:	e1a02001 	mov	r2, r1
     8fc:	e1a01000 	mov	r1, r0
     900:	e3a0001a 	mov	r0, #26
     904:	ef000000 	svc	0x00000000
     908:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     90c:	e12fff1e 	bx	lr

00000910 <putc>:
     910:	e92d4800 	push	{fp, lr}
     914:	e28db004 	add	fp, sp, #4
     918:	e24dd008 	sub	sp, sp, #8
     91c:	e50b0008 	str	r0, [fp, #-8]
     920:	e1a03001 	mov	r3, r1
     924:	e54b3009 	strb	r3, [fp, #-9]
     928:	e24b3009 	sub	r3, fp, #9
     92c:	e3a02001 	mov	r2, #1
     930:	e1a01003 	mov	r1, r3
     934:	e51b0008 	ldr	r0, [fp, #-8]
     938:	ebffff37 	bl	61c <write>
     93c:	e1a00000 	nop			@ (mov r0, r0)
     940:	e24bd004 	sub	sp, fp, #4
     944:	e8bd8800 	pop	{fp, pc}

00000948 <printint>:
     948:	e92d4800 	push	{fp, lr}
     94c:	e28db004 	add	fp, sp, #4
     950:	e24dd030 	sub	sp, sp, #48	@ 0x30
     954:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     958:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     95c:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     960:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     964:	e3a03000 	mov	r3, #0
     968:	e50b300c 	str	r3, [fp, #-12]
     96c:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     970:	e3530000 	cmp	r3, #0
     974:	0a000008 	beq	99c <printint+0x54>
     978:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     97c:	e3530000 	cmp	r3, #0
     980:	aa000005 	bge	99c <printint+0x54>
     984:	e3a03001 	mov	r3, #1
     988:	e50b300c 	str	r3, [fp, #-12]
     98c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     990:	e2633000 	rsb	r3, r3, #0
     994:	e50b3010 	str	r3, [fp, #-16]
     998:	ea000001 	b	9a4 <printint+0x5c>
     99c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     9a0:	e50b3010 	str	r3, [fp, #-16]
     9a4:	e3a03000 	mov	r3, #0
     9a8:	e50b3008 	str	r3, [fp, #-8]
     9ac:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     9b0:	e51b3010 	ldr	r3, [fp, #-16]
     9b4:	e1a01002 	mov	r1, r2
     9b8:	e1a00003 	mov	r0, r3
     9bc:	eb0001d5 	bl	1118 <__aeabi_uidivmod>
     9c0:	e1a03001 	mov	r3, r1
     9c4:	e1a01003 	mov	r1, r3
     9c8:	e51b3008 	ldr	r3, [fp, #-8]
     9cc:	e2832001 	add	r2, r3, #1
     9d0:	e50b2008 	str	r2, [fp, #-8]
     9d4:	e59f20a0 	ldr	r2, [pc, #160]	@ a7c <printint+0x134>
     9d8:	e7d22001 	ldrb	r2, [r2, r1]
     9dc:	e2433004 	sub	r3, r3, #4
     9e0:	e083300b 	add	r3, r3, fp
     9e4:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     9e8:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     9ec:	e1a01003 	mov	r1, r3
     9f0:	e51b0010 	ldr	r0, [fp, #-16]
     9f4:	eb00018a 	bl	1024 <__udivsi3>
     9f8:	e1a03000 	mov	r3, r0
     9fc:	e50b3010 	str	r3, [fp, #-16]
     a00:	e51b3010 	ldr	r3, [fp, #-16]
     a04:	e3530000 	cmp	r3, #0
     a08:	1affffe7 	bne	9ac <printint+0x64>
     a0c:	e51b300c 	ldr	r3, [fp, #-12]
     a10:	e3530000 	cmp	r3, #0
     a14:	0a00000e 	beq	a54 <printint+0x10c>
     a18:	e51b3008 	ldr	r3, [fp, #-8]
     a1c:	e2832001 	add	r2, r3, #1
     a20:	e50b2008 	str	r2, [fp, #-8]
     a24:	e2433004 	sub	r3, r3, #4
     a28:	e083300b 	add	r3, r3, fp
     a2c:	e3a0202d 	mov	r2, #45	@ 0x2d
     a30:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     a34:	ea000006 	b	a54 <printint+0x10c>
     a38:	e24b2020 	sub	r2, fp, #32
     a3c:	e51b3008 	ldr	r3, [fp, #-8]
     a40:	e0823003 	add	r3, r2, r3
     a44:	e5d33000 	ldrb	r3, [r3]
     a48:	e1a01003 	mov	r1, r3
     a4c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     a50:	ebffffae 	bl	910 <putc>
     a54:	e51b3008 	ldr	r3, [fp, #-8]
     a58:	e2433001 	sub	r3, r3, #1
     a5c:	e50b3008 	str	r3, [fp, #-8]
     a60:	e51b3008 	ldr	r3, [fp, #-8]
     a64:	e3530000 	cmp	r3, #0
     a68:	aafffff2 	bge	a38 <printint+0xf0>
     a6c:	e1a00000 	nop			@ (mov r0, r0)
     a70:	e1a00000 	nop			@ (mov r0, r0)
     a74:	e24bd004 	sub	sp, fp, #4
     a78:	e8bd8800 	pop	{fp, pc}
     a7c:	00001154 	.word	0x00001154

00000a80 <printf>:
     a80:	e92d000e 	push	{r1, r2, r3}
     a84:	e92d4800 	push	{fp, lr}
     a88:	e28db004 	add	fp, sp, #4
     a8c:	e24dd024 	sub	sp, sp, #36	@ 0x24
     a90:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     a94:	e3a03000 	mov	r3, #0
     a98:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     a9c:	e28b3008 	add	r3, fp, #8
     aa0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     aa4:	e3a03000 	mov	r3, #0
     aa8:	e50b3010 	str	r3, [fp, #-16]
     aac:	ea000074 	b	c84 <printf+0x204>
     ab0:	e59b2004 	ldr	r2, [fp, #4]
     ab4:	e51b3010 	ldr	r3, [fp, #-16]
     ab8:	e0823003 	add	r3, r2, r3
     abc:	e5d33000 	ldrb	r3, [r3]
     ac0:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     ac4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     ac8:	e3530000 	cmp	r3, #0
     acc:	1a00000b 	bne	b00 <printf+0x80>
     ad0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ad4:	e3530025 	cmp	r3, #37	@ 0x25
     ad8:	1a000002 	bne	ae8 <printf+0x68>
     adc:	e3a03025 	mov	r3, #37	@ 0x25
     ae0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     ae4:	ea000063 	b	c78 <printf+0x1f8>
     ae8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     aec:	e6ef3073 	uxtb	r3, r3
     af0:	e1a01003 	mov	r1, r3
     af4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     af8:	ebffff84 	bl	910 <putc>
     afc:	ea00005d 	b	c78 <printf+0x1f8>
     b00:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b04:	e3530025 	cmp	r3, #37	@ 0x25
     b08:	1a00005a 	bne	c78 <printf+0x1f8>
     b0c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b10:	e3530064 	cmp	r3, #100	@ 0x64
     b14:	1a00000a 	bne	b44 <printf+0xc4>
     b18:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b1c:	e5933000 	ldr	r3, [r3]
     b20:	e1a01003 	mov	r1, r3
     b24:	e3a03001 	mov	r3, #1
     b28:	e3a0200a 	mov	r2, #10
     b2c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b30:	ebffff84 	bl	948 <printint>
     b34:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b38:	e2833004 	add	r3, r3, #4
     b3c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b40:	ea00004a 	b	c70 <printf+0x1f0>
     b44:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b48:	e3530078 	cmp	r3, #120	@ 0x78
     b4c:	0a000002 	beq	b5c <printf+0xdc>
     b50:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b54:	e3530070 	cmp	r3, #112	@ 0x70
     b58:	1a00000a 	bne	b88 <printf+0x108>
     b5c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b60:	e5933000 	ldr	r3, [r3]
     b64:	e1a01003 	mov	r1, r3
     b68:	e3a03000 	mov	r3, #0
     b6c:	e3a02010 	mov	r2, #16
     b70:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b74:	ebffff73 	bl	948 <printint>
     b78:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b7c:	e2833004 	add	r3, r3, #4
     b80:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b84:	ea000039 	b	c70 <printf+0x1f0>
     b88:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b8c:	e3530073 	cmp	r3, #115	@ 0x73
     b90:	1a000018 	bne	bf8 <printf+0x178>
     b94:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b98:	e5933000 	ldr	r3, [r3]
     b9c:	e50b300c 	str	r3, [fp, #-12]
     ba0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ba4:	e2833004 	add	r3, r3, #4
     ba8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     bac:	e51b300c 	ldr	r3, [fp, #-12]
     bb0:	e3530000 	cmp	r3, #0
     bb4:	1a00000a 	bne	be4 <printf+0x164>
     bb8:	e59f30f4 	ldr	r3, [pc, #244]	@ cb4 <printf+0x234>
     bbc:	e50b300c 	str	r3, [fp, #-12]
     bc0:	ea000007 	b	be4 <printf+0x164>
     bc4:	e51b300c 	ldr	r3, [fp, #-12]
     bc8:	e5d33000 	ldrb	r3, [r3]
     bcc:	e1a01003 	mov	r1, r3
     bd0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bd4:	ebffff4d 	bl	910 <putc>
     bd8:	e51b300c 	ldr	r3, [fp, #-12]
     bdc:	e2833001 	add	r3, r3, #1
     be0:	e50b300c 	str	r3, [fp, #-12]
     be4:	e51b300c 	ldr	r3, [fp, #-12]
     be8:	e5d33000 	ldrb	r3, [r3]
     bec:	e3530000 	cmp	r3, #0
     bf0:	1afffff3 	bne	bc4 <printf+0x144>
     bf4:	ea00001d 	b	c70 <printf+0x1f0>
     bf8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bfc:	e3530063 	cmp	r3, #99	@ 0x63
     c00:	1a000009 	bne	c2c <printf+0x1ac>
     c04:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c08:	e5933000 	ldr	r3, [r3]
     c0c:	e6ef3073 	uxtb	r3, r3
     c10:	e1a01003 	mov	r1, r3
     c14:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c18:	ebffff3c 	bl	910 <putc>
     c1c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c20:	e2833004 	add	r3, r3, #4
     c24:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c28:	ea000010 	b	c70 <printf+0x1f0>
     c2c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c30:	e3530025 	cmp	r3, #37	@ 0x25
     c34:	1a000005 	bne	c50 <printf+0x1d0>
     c38:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c3c:	e6ef3073 	uxtb	r3, r3
     c40:	e1a01003 	mov	r1, r3
     c44:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c48:	ebffff30 	bl	910 <putc>
     c4c:	ea000007 	b	c70 <printf+0x1f0>
     c50:	e3a01025 	mov	r1, #37	@ 0x25
     c54:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c58:	ebffff2c 	bl	910 <putc>
     c5c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c60:	e6ef3073 	uxtb	r3, r3
     c64:	e1a01003 	mov	r1, r3
     c68:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c6c:	ebffff27 	bl	910 <putc>
     c70:	e3a03000 	mov	r3, #0
     c74:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c78:	e51b3010 	ldr	r3, [fp, #-16]
     c7c:	e2833001 	add	r3, r3, #1
     c80:	e50b3010 	str	r3, [fp, #-16]
     c84:	e59b2004 	ldr	r2, [fp, #4]
     c88:	e51b3010 	ldr	r3, [fp, #-16]
     c8c:	e0823003 	add	r3, r2, r3
     c90:	e5d33000 	ldrb	r3, [r3]
     c94:	e3530000 	cmp	r3, #0
     c98:	1affff84 	bne	ab0 <printf+0x30>
     c9c:	e1a00000 	nop			@ (mov r0, r0)
     ca0:	e1a00000 	nop			@ (mov r0, r0)
     ca4:	e24bd004 	sub	sp, fp, #4
     ca8:	e8bd4800 	pop	{fp, lr}
     cac:	e28dd00c 	add	sp, sp, #12
     cb0:	e12fff1e 	bx	lr
     cb4:	0000114c 	.word	0x0000114c

00000cb8 <free>:
     cb8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     cbc:	e28db000 	add	fp, sp, #0
     cc0:	e24dd014 	sub	sp, sp, #20
     cc4:	e50b0010 	str	r0, [fp, #-16]
     cc8:	e51b3010 	ldr	r3, [fp, #-16]
     ccc:	e2433008 	sub	r3, r3, #8
     cd0:	e50b300c 	str	r3, [fp, #-12]
     cd4:	e59f3154 	ldr	r3, [pc, #340]	@ e30 <free+0x178>
     cd8:	e5933000 	ldr	r3, [r3]
     cdc:	e50b3008 	str	r3, [fp, #-8]
     ce0:	ea000010 	b	d28 <free+0x70>
     ce4:	e51b3008 	ldr	r3, [fp, #-8]
     ce8:	e5933000 	ldr	r3, [r3]
     cec:	e51b2008 	ldr	r2, [fp, #-8]
     cf0:	e1520003 	cmp	r2, r3
     cf4:	3a000008 	bcc	d1c <free+0x64>
     cf8:	e51b200c 	ldr	r2, [fp, #-12]
     cfc:	e51b3008 	ldr	r3, [fp, #-8]
     d00:	e1520003 	cmp	r2, r3
     d04:	8a000010 	bhi	d4c <free+0x94>
     d08:	e51b3008 	ldr	r3, [fp, #-8]
     d0c:	e5933000 	ldr	r3, [r3]
     d10:	e51b200c 	ldr	r2, [fp, #-12]
     d14:	e1520003 	cmp	r2, r3
     d18:	3a00000b 	bcc	d4c <free+0x94>
     d1c:	e51b3008 	ldr	r3, [fp, #-8]
     d20:	e5933000 	ldr	r3, [r3]
     d24:	e50b3008 	str	r3, [fp, #-8]
     d28:	e51b200c 	ldr	r2, [fp, #-12]
     d2c:	e51b3008 	ldr	r3, [fp, #-8]
     d30:	e1520003 	cmp	r2, r3
     d34:	9affffea 	bls	ce4 <free+0x2c>
     d38:	e51b3008 	ldr	r3, [fp, #-8]
     d3c:	e5933000 	ldr	r3, [r3]
     d40:	e51b200c 	ldr	r2, [fp, #-12]
     d44:	e1520003 	cmp	r2, r3
     d48:	2affffe5 	bcs	ce4 <free+0x2c>
     d4c:	e51b300c 	ldr	r3, [fp, #-12]
     d50:	e5933004 	ldr	r3, [r3, #4]
     d54:	e1a03183 	lsl	r3, r3, #3
     d58:	e51b200c 	ldr	r2, [fp, #-12]
     d5c:	e0822003 	add	r2, r2, r3
     d60:	e51b3008 	ldr	r3, [fp, #-8]
     d64:	e5933000 	ldr	r3, [r3]
     d68:	e1520003 	cmp	r2, r3
     d6c:	1a00000d 	bne	da8 <free+0xf0>
     d70:	e51b300c 	ldr	r3, [fp, #-12]
     d74:	e5932004 	ldr	r2, [r3, #4]
     d78:	e51b3008 	ldr	r3, [fp, #-8]
     d7c:	e5933000 	ldr	r3, [r3]
     d80:	e5933004 	ldr	r3, [r3, #4]
     d84:	e0822003 	add	r2, r2, r3
     d88:	e51b300c 	ldr	r3, [fp, #-12]
     d8c:	e5832004 	str	r2, [r3, #4]
     d90:	e51b3008 	ldr	r3, [fp, #-8]
     d94:	e5933000 	ldr	r3, [r3]
     d98:	e5932000 	ldr	r2, [r3]
     d9c:	e51b300c 	ldr	r3, [fp, #-12]
     da0:	e5832000 	str	r2, [r3]
     da4:	ea000003 	b	db8 <free+0x100>
     da8:	e51b3008 	ldr	r3, [fp, #-8]
     dac:	e5932000 	ldr	r2, [r3]
     db0:	e51b300c 	ldr	r3, [fp, #-12]
     db4:	e5832000 	str	r2, [r3]
     db8:	e51b3008 	ldr	r3, [fp, #-8]
     dbc:	e5933004 	ldr	r3, [r3, #4]
     dc0:	e1a03183 	lsl	r3, r3, #3
     dc4:	e51b2008 	ldr	r2, [fp, #-8]
     dc8:	e0823003 	add	r3, r2, r3
     dcc:	e51b200c 	ldr	r2, [fp, #-12]
     dd0:	e1520003 	cmp	r2, r3
     dd4:	1a00000b 	bne	e08 <free+0x150>
     dd8:	e51b3008 	ldr	r3, [fp, #-8]
     ddc:	e5932004 	ldr	r2, [r3, #4]
     de0:	e51b300c 	ldr	r3, [fp, #-12]
     de4:	e5933004 	ldr	r3, [r3, #4]
     de8:	e0822003 	add	r2, r2, r3
     dec:	e51b3008 	ldr	r3, [fp, #-8]
     df0:	e5832004 	str	r2, [r3, #4]
     df4:	e51b300c 	ldr	r3, [fp, #-12]
     df8:	e5932000 	ldr	r2, [r3]
     dfc:	e51b3008 	ldr	r3, [fp, #-8]
     e00:	e5832000 	str	r2, [r3]
     e04:	ea000002 	b	e14 <free+0x15c>
     e08:	e51b3008 	ldr	r3, [fp, #-8]
     e0c:	e51b200c 	ldr	r2, [fp, #-12]
     e10:	e5832000 	str	r2, [r3]
     e14:	e59f2014 	ldr	r2, [pc, #20]	@ e30 <free+0x178>
     e18:	e51b3008 	ldr	r3, [fp, #-8]
     e1c:	e5823000 	str	r3, [r2]
     e20:	e1a00000 	nop			@ (mov r0, r0)
     e24:	e28bd000 	add	sp, fp, #0
     e28:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     e2c:	e12fff1e 	bx	lr
     e30:	00001170 	.word	0x00001170

00000e34 <morecore>:
     e34:	e92d4800 	push	{fp, lr}
     e38:	e28db004 	add	fp, sp, #4
     e3c:	e24dd010 	sub	sp, sp, #16
     e40:	e50b0010 	str	r0, [fp, #-16]
     e44:	e51b3010 	ldr	r3, [fp, #-16]
     e48:	e3530a01 	cmp	r3, #4096	@ 0x1000
     e4c:	2a000001 	bcs	e58 <morecore+0x24>
     e50:	e3a03a01 	mov	r3, #4096	@ 0x1000
     e54:	e50b3010 	str	r3, [fp, #-16]
     e58:	e51b3010 	ldr	r3, [fp, #-16]
     e5c:	e1a03183 	lsl	r3, r3, #3
     e60:	e1a00003 	mov	r0, r3
     e64:	ebfffe61 	bl	7f0 <sbrk>
     e68:	e50b0008 	str	r0, [fp, #-8]
     e6c:	e51b3008 	ldr	r3, [fp, #-8]
     e70:	e3730001 	cmn	r3, #1
     e74:	1a000001 	bne	e80 <morecore+0x4c>
     e78:	e3a03000 	mov	r3, #0
     e7c:	ea00000a 	b	eac <morecore+0x78>
     e80:	e51b3008 	ldr	r3, [fp, #-8]
     e84:	e50b300c 	str	r3, [fp, #-12]
     e88:	e51b300c 	ldr	r3, [fp, #-12]
     e8c:	e51b2010 	ldr	r2, [fp, #-16]
     e90:	e5832004 	str	r2, [r3, #4]
     e94:	e51b300c 	ldr	r3, [fp, #-12]
     e98:	e2833008 	add	r3, r3, #8
     e9c:	e1a00003 	mov	r0, r3
     ea0:	ebffff84 	bl	cb8 <free>
     ea4:	e59f300c 	ldr	r3, [pc, #12]	@ eb8 <morecore+0x84>
     ea8:	e5933000 	ldr	r3, [r3]
     eac:	e1a00003 	mov	r0, r3
     eb0:	e24bd004 	sub	sp, fp, #4
     eb4:	e8bd8800 	pop	{fp, pc}
     eb8:	00001170 	.word	0x00001170

00000ebc <malloc>:
     ebc:	e92d4800 	push	{fp, lr}
     ec0:	e28db004 	add	fp, sp, #4
     ec4:	e24dd018 	sub	sp, sp, #24
     ec8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     ecc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ed0:	e2833007 	add	r3, r3, #7
     ed4:	e1a031a3 	lsr	r3, r3, #3
     ed8:	e2833001 	add	r3, r3, #1
     edc:	e50b3010 	str	r3, [fp, #-16]
     ee0:	e59f3134 	ldr	r3, [pc, #308]	@ 101c <malloc+0x160>
     ee4:	e5933000 	ldr	r3, [r3]
     ee8:	e50b300c 	str	r3, [fp, #-12]
     eec:	e51b300c 	ldr	r3, [fp, #-12]
     ef0:	e3530000 	cmp	r3, #0
     ef4:	1a00000b 	bne	f28 <malloc+0x6c>
     ef8:	e59f3120 	ldr	r3, [pc, #288]	@ 1020 <malloc+0x164>
     efc:	e50b300c 	str	r3, [fp, #-12]
     f00:	e59f2114 	ldr	r2, [pc, #276]	@ 101c <malloc+0x160>
     f04:	e51b300c 	ldr	r3, [fp, #-12]
     f08:	e5823000 	str	r3, [r2]
     f0c:	e59f3108 	ldr	r3, [pc, #264]	@ 101c <malloc+0x160>
     f10:	e5933000 	ldr	r3, [r3]
     f14:	e59f2104 	ldr	r2, [pc, #260]	@ 1020 <malloc+0x164>
     f18:	e5823000 	str	r3, [r2]
     f1c:	e59f30fc 	ldr	r3, [pc, #252]	@ 1020 <malloc+0x164>
     f20:	e3a02000 	mov	r2, #0
     f24:	e5832004 	str	r2, [r3, #4]
     f28:	e51b300c 	ldr	r3, [fp, #-12]
     f2c:	e5933000 	ldr	r3, [r3]
     f30:	e50b3008 	str	r3, [fp, #-8]
     f34:	e51b3008 	ldr	r3, [fp, #-8]
     f38:	e5933004 	ldr	r3, [r3, #4]
     f3c:	e51b2010 	ldr	r2, [fp, #-16]
     f40:	e1520003 	cmp	r2, r3
     f44:	8a00001e 	bhi	fc4 <malloc+0x108>
     f48:	e51b3008 	ldr	r3, [fp, #-8]
     f4c:	e5933004 	ldr	r3, [r3, #4]
     f50:	e51b2010 	ldr	r2, [fp, #-16]
     f54:	e1520003 	cmp	r2, r3
     f58:	1a000004 	bne	f70 <malloc+0xb4>
     f5c:	e51b3008 	ldr	r3, [fp, #-8]
     f60:	e5932000 	ldr	r2, [r3]
     f64:	e51b300c 	ldr	r3, [fp, #-12]
     f68:	e5832000 	str	r2, [r3]
     f6c:	ea00000e 	b	fac <malloc+0xf0>
     f70:	e51b3008 	ldr	r3, [fp, #-8]
     f74:	e5932004 	ldr	r2, [r3, #4]
     f78:	e51b3010 	ldr	r3, [fp, #-16]
     f7c:	e0422003 	sub	r2, r2, r3
     f80:	e51b3008 	ldr	r3, [fp, #-8]
     f84:	e5832004 	str	r2, [r3, #4]
     f88:	e51b3008 	ldr	r3, [fp, #-8]
     f8c:	e5933004 	ldr	r3, [r3, #4]
     f90:	e1a03183 	lsl	r3, r3, #3
     f94:	e51b2008 	ldr	r2, [fp, #-8]
     f98:	e0823003 	add	r3, r2, r3
     f9c:	e50b3008 	str	r3, [fp, #-8]
     fa0:	e51b3008 	ldr	r3, [fp, #-8]
     fa4:	e51b2010 	ldr	r2, [fp, #-16]
     fa8:	e5832004 	str	r2, [r3, #4]
     fac:	e59f2068 	ldr	r2, [pc, #104]	@ 101c <malloc+0x160>
     fb0:	e51b300c 	ldr	r3, [fp, #-12]
     fb4:	e5823000 	str	r3, [r2]
     fb8:	e51b3008 	ldr	r3, [fp, #-8]
     fbc:	e2833008 	add	r3, r3, #8
     fc0:	ea000012 	b	1010 <malloc+0x154>
     fc4:	e59f3050 	ldr	r3, [pc, #80]	@ 101c <malloc+0x160>
     fc8:	e5933000 	ldr	r3, [r3]
     fcc:	e51b2008 	ldr	r2, [fp, #-8]
     fd0:	e1520003 	cmp	r2, r3
     fd4:	1a000007 	bne	ff8 <malloc+0x13c>
     fd8:	e51b0010 	ldr	r0, [fp, #-16]
     fdc:	ebffff94 	bl	e34 <morecore>
     fe0:	e50b0008 	str	r0, [fp, #-8]
     fe4:	e51b3008 	ldr	r3, [fp, #-8]
     fe8:	e3530000 	cmp	r3, #0
     fec:	1a000001 	bne	ff8 <malloc+0x13c>
     ff0:	e3a03000 	mov	r3, #0
     ff4:	ea000005 	b	1010 <malloc+0x154>
     ff8:	e51b3008 	ldr	r3, [fp, #-8]
     ffc:	e50b300c 	str	r3, [fp, #-12]
    1000:	e51b3008 	ldr	r3, [fp, #-8]
    1004:	e5933000 	ldr	r3, [r3]
    1008:	e50b3008 	str	r3, [fp, #-8]
    100c:	eaffffc8 	b	f34 <malloc+0x78>
    1010:	e1a00003 	mov	r0, r3
    1014:	e24bd004 	sub	sp, fp, #4
    1018:	e8bd8800 	pop	{fp, pc}
    101c:	00001170 	.word	0x00001170
    1020:	00001168 	.word	0x00001168

00001024 <__udivsi3>:
    1024:	e2512001 	subs	r2, r1, #1
    1028:	012fff1e 	bxeq	lr
    102c:	3a000036 	bcc	110c <__udivsi3+0xe8>
    1030:	e1500001 	cmp	r0, r1
    1034:	9a000022 	bls	10c4 <__udivsi3+0xa0>
    1038:	e1110002 	tst	r1, r2
    103c:	0a000023 	beq	10d0 <__udivsi3+0xac>
    1040:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1044:	01a01181 	lsleq	r1, r1, #3
    1048:	03a03008 	moveq	r3, #8
    104c:	13a03001 	movne	r3, #1
    1050:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1054:	31510000 	cmpcc	r1, r0
    1058:	31a01201 	lslcc	r1, r1, #4
    105c:	31a03203 	lslcc	r3, r3, #4
    1060:	3afffffa 	bcc	1050 <__udivsi3+0x2c>
    1064:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1068:	31510000 	cmpcc	r1, r0
    106c:	31a01081 	lslcc	r1, r1, #1
    1070:	31a03083 	lslcc	r3, r3, #1
    1074:	3afffffa 	bcc	1064 <__udivsi3+0x40>
    1078:	e3a02000 	mov	r2, #0
    107c:	e1500001 	cmp	r0, r1
    1080:	20400001 	subcs	r0, r0, r1
    1084:	21822003 	orrcs	r2, r2, r3
    1088:	e15000a1 	cmp	r0, r1, lsr #1
    108c:	204000a1 	subcs	r0, r0, r1, lsr #1
    1090:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1094:	e1500121 	cmp	r0, r1, lsr #2
    1098:	20400121 	subcs	r0, r0, r1, lsr #2
    109c:	21822123 	orrcs	r2, r2, r3, lsr #2
    10a0:	e15001a1 	cmp	r0, r1, lsr #3
    10a4:	204001a1 	subcs	r0, r0, r1, lsr #3
    10a8:	218221a3 	orrcs	r2, r2, r3, lsr #3
    10ac:	e3500000 	cmp	r0, #0
    10b0:	11b03223 	lsrsne	r3, r3, #4
    10b4:	11a01221 	lsrne	r1, r1, #4
    10b8:	1affffef 	bne	107c <__udivsi3+0x58>
    10bc:	e1a00002 	mov	r0, r2
    10c0:	e12fff1e 	bx	lr
    10c4:	03a00001 	moveq	r0, #1
    10c8:	13a00000 	movne	r0, #0
    10cc:	e12fff1e 	bx	lr
    10d0:	e3510801 	cmp	r1, #65536	@ 0x10000
    10d4:	21a01821 	lsrcs	r1, r1, #16
    10d8:	23a02010 	movcs	r2, #16
    10dc:	33a02000 	movcc	r2, #0
    10e0:	e3510c01 	cmp	r1, #256	@ 0x100
    10e4:	21a01421 	lsrcs	r1, r1, #8
    10e8:	22822008 	addcs	r2, r2, #8
    10ec:	e3510010 	cmp	r1, #16
    10f0:	21a01221 	lsrcs	r1, r1, #4
    10f4:	22822004 	addcs	r2, r2, #4
    10f8:	e3510004 	cmp	r1, #4
    10fc:	82822003 	addhi	r2, r2, #3
    1100:	908220a1 	addls	r2, r2, r1, lsr #1
    1104:	e1a00230 	lsr	r0, r0, r2
    1108:	e12fff1e 	bx	lr
    110c:	e3500000 	cmp	r0, #0
    1110:	13e00000 	mvnne	r0, #0
    1114:	ea000007 	b	1138 <__aeabi_idiv0>

00001118 <__aeabi_uidivmod>:
    1118:	e3510000 	cmp	r1, #0
    111c:	0afffffa 	beq	110c <__udivsi3+0xe8>
    1120:	e92d4003 	push	{r0, r1, lr}
    1124:	ebffffbe 	bl	1024 <__udivsi3>
    1128:	e8bd4006 	pop	{r1, r2, lr}
    112c:	e0030092 	mul	r3, r2, r0
    1130:	e0411003 	sub	r1, r1, r3
    1134:	e12fff1e 	bx	lr

00001138 <__aeabi_idiv0>:
    1138:	e12fff1e 	bx	lr
