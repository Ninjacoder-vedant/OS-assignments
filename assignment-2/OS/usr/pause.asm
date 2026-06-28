
_pause:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      14:	e51b3010 	ldr	r3, [fp, #-16]
      18:	e3530002 	cmp	r3, #2
      1c:	0a000003 	beq	30 <main+0x30>
      20:	e59f1044 	ldr	r1, [pc, #68]	@ 6c <main+0x6c>
      24:	e3a00002 	mov	r0, #2
      28:	eb00028c 	bl	a60 <printf>
      2c:	eb00014e 	bl	56c <exit>
      30:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      34:	e2833004 	add	r3, r3, #4
      38:	e5933000 	ldr	r3, [r3]
      3c:	e1a00003 	mov	r0, r3
      40:	eb000102 	bl	450 <atoi>
      44:	e50b0008 	str	r0, [fp, #-8]
      48:	e51b2008 	ldr	r2, [fp, #-8]
      4c:	e1a03002 	mov	r3, r2
      50:	e1a03103 	lsl	r3, r3, #2
      54:	e0833002 	add	r3, r3, r2
      58:	e1a03083 	lsl	r3, r3, #1
      5c:	e50b300c 	str	r3, [fp, #-12]
      60:	e51b000c 	ldr	r0, [fp, #-12]
      64:	eb0001e2 	bl	7f4 <sleep>
      68:	eb00013f 	bl	56c <exit>
      6c:	0000111c 	.word	0x0000111c

00000070 <strcpy>:
      70:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      74:	e28db000 	add	fp, sp, #0
      78:	e24dd014 	sub	sp, sp, #20
      7c:	e50b0010 	str	r0, [fp, #-16]
      80:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      84:	e51b3010 	ldr	r3, [fp, #-16]
      88:	e50b3008 	str	r3, [fp, #-8]
      8c:	e1a00000 	nop			@ (mov r0, r0)
      90:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      94:	e2823001 	add	r3, r2, #1
      98:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      9c:	e51b3010 	ldr	r3, [fp, #-16]
      a0:	e2831001 	add	r1, r3, #1
      a4:	e50b1010 	str	r1, [fp, #-16]
      a8:	e5d22000 	ldrb	r2, [r2]
      ac:	e5c32000 	strb	r2, [r3]
      b0:	e5d33000 	ldrb	r3, [r3]
      b4:	e3530000 	cmp	r3, #0
      b8:	1afffff4 	bne	90 <strcpy+0x20>
      bc:	e51b3008 	ldr	r3, [fp, #-8]
      c0:	e1a00003 	mov	r0, r3
      c4:	e28bd000 	add	sp, fp, #0
      c8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      cc:	e12fff1e 	bx	lr

000000d0 <strcmp>:
      d0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      d4:	e28db000 	add	fp, sp, #0
      d8:	e24dd00c 	sub	sp, sp, #12
      dc:	e50b0008 	str	r0, [fp, #-8]
      e0:	e50b100c 	str	r1, [fp, #-12]
      e4:	ea000005 	b	100 <strcmp+0x30>
      e8:	e51b3008 	ldr	r3, [fp, #-8]
      ec:	e2833001 	add	r3, r3, #1
      f0:	e50b3008 	str	r3, [fp, #-8]
      f4:	e51b300c 	ldr	r3, [fp, #-12]
      f8:	e2833001 	add	r3, r3, #1
      fc:	e50b300c 	str	r3, [fp, #-12]
     100:	e51b3008 	ldr	r3, [fp, #-8]
     104:	e5d33000 	ldrb	r3, [r3]
     108:	e3530000 	cmp	r3, #0
     10c:	0a000005 	beq	128 <strcmp+0x58>
     110:	e51b3008 	ldr	r3, [fp, #-8]
     114:	e5d32000 	ldrb	r2, [r3]
     118:	e51b300c 	ldr	r3, [fp, #-12]
     11c:	e5d33000 	ldrb	r3, [r3]
     120:	e1520003 	cmp	r2, r3
     124:	0affffef 	beq	e8 <strcmp+0x18>
     128:	e51b3008 	ldr	r3, [fp, #-8]
     12c:	e5d33000 	ldrb	r3, [r3]
     130:	e1a02003 	mov	r2, r3
     134:	e51b300c 	ldr	r3, [fp, #-12]
     138:	e5d33000 	ldrb	r3, [r3]
     13c:	e0423003 	sub	r3, r2, r3
     140:	e1a00003 	mov	r0, r3
     144:	e28bd000 	add	sp, fp, #0
     148:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     14c:	e12fff1e 	bx	lr

00000150 <strlen>:
     150:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     154:	e28db000 	add	fp, sp, #0
     158:	e24dd014 	sub	sp, sp, #20
     15c:	e50b0010 	str	r0, [fp, #-16]
     160:	e3a03000 	mov	r3, #0
     164:	e50b3008 	str	r3, [fp, #-8]
     168:	ea000002 	b	178 <strlen+0x28>
     16c:	e51b3008 	ldr	r3, [fp, #-8]
     170:	e2833001 	add	r3, r3, #1
     174:	e50b3008 	str	r3, [fp, #-8]
     178:	e51b3008 	ldr	r3, [fp, #-8]
     17c:	e51b2010 	ldr	r2, [fp, #-16]
     180:	e0823003 	add	r3, r2, r3
     184:	e5d33000 	ldrb	r3, [r3]
     188:	e3530000 	cmp	r3, #0
     18c:	1afffff6 	bne	16c <strlen+0x1c>
     190:	e51b3008 	ldr	r3, [fp, #-8]
     194:	e1a00003 	mov	r0, r3
     198:	e28bd000 	add	sp, fp, #0
     19c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1a0:	e12fff1e 	bx	lr

000001a4 <memset>:
     1a4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1a8:	e28db000 	add	fp, sp, #0
     1ac:	e24dd024 	sub	sp, sp, #36	@ 0x24
     1b0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     1b4:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     1b8:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     1bc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     1c0:	e50b3008 	str	r3, [fp, #-8]
     1c4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     1c8:	e54b300d 	strb	r3, [fp, #-13]
     1cc:	e55b200d 	ldrb	r2, [fp, #-13]
     1d0:	e1a03002 	mov	r3, r2
     1d4:	e1a03403 	lsl	r3, r3, #8
     1d8:	e0833002 	add	r3, r3, r2
     1dc:	e1a03803 	lsl	r3, r3, #16
     1e0:	e1a02003 	mov	r2, r3
     1e4:	e55b300d 	ldrb	r3, [fp, #-13]
     1e8:	e1a03403 	lsl	r3, r3, #8
     1ec:	e1822003 	orr	r2, r2, r3
     1f0:	e55b300d 	ldrb	r3, [fp, #-13]
     1f4:	e1823003 	orr	r3, r2, r3
     1f8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     1fc:	ea000008 	b	224 <memset+0x80>
     200:	e51b3008 	ldr	r3, [fp, #-8]
     204:	e55b200d 	ldrb	r2, [fp, #-13]
     208:	e5c32000 	strb	r2, [r3]
     20c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     210:	e2433001 	sub	r3, r3, #1
     214:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     218:	e51b3008 	ldr	r3, [fp, #-8]
     21c:	e2833001 	add	r3, r3, #1
     220:	e50b3008 	str	r3, [fp, #-8]
     224:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     228:	e3530000 	cmp	r3, #0
     22c:	0a000003 	beq	240 <memset+0x9c>
     230:	e51b3008 	ldr	r3, [fp, #-8]
     234:	e2033003 	and	r3, r3, #3
     238:	e3530000 	cmp	r3, #0
     23c:	1affffef 	bne	200 <memset+0x5c>
     240:	e51b3008 	ldr	r3, [fp, #-8]
     244:	e50b300c 	str	r3, [fp, #-12]
     248:	ea000008 	b	270 <memset+0xcc>
     24c:	e51b300c 	ldr	r3, [fp, #-12]
     250:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     254:	e5832000 	str	r2, [r3]
     258:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     25c:	e2433004 	sub	r3, r3, #4
     260:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     264:	e51b300c 	ldr	r3, [fp, #-12]
     268:	e2833004 	add	r3, r3, #4
     26c:	e50b300c 	str	r3, [fp, #-12]
     270:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     274:	e3530003 	cmp	r3, #3
     278:	8afffff3 	bhi	24c <memset+0xa8>
     27c:	e51b300c 	ldr	r3, [fp, #-12]
     280:	e50b3008 	str	r3, [fp, #-8]
     284:	ea000008 	b	2ac <memset+0x108>
     288:	e51b3008 	ldr	r3, [fp, #-8]
     28c:	e55b200d 	ldrb	r2, [fp, #-13]
     290:	e5c32000 	strb	r2, [r3]
     294:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     298:	e2433001 	sub	r3, r3, #1
     29c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2a0:	e51b3008 	ldr	r3, [fp, #-8]
     2a4:	e2833001 	add	r3, r3, #1
     2a8:	e50b3008 	str	r3, [fp, #-8]
     2ac:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2b0:	e3530000 	cmp	r3, #0
     2b4:	1afffff3 	bne	288 <memset+0xe4>
     2b8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2bc:	e1a00003 	mov	r0, r3
     2c0:	e28bd000 	add	sp, fp, #0
     2c4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2c8:	e12fff1e 	bx	lr

000002cc <strchr>:
     2cc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2d0:	e28db000 	add	fp, sp, #0
     2d4:	e24dd00c 	sub	sp, sp, #12
     2d8:	e50b0008 	str	r0, [fp, #-8]
     2dc:	e1a03001 	mov	r3, r1
     2e0:	e54b3009 	strb	r3, [fp, #-9]
     2e4:	ea000009 	b	310 <strchr+0x44>
     2e8:	e51b3008 	ldr	r3, [fp, #-8]
     2ec:	e5d33000 	ldrb	r3, [r3]
     2f0:	e55b2009 	ldrb	r2, [fp, #-9]
     2f4:	e1520003 	cmp	r2, r3
     2f8:	1a000001 	bne	304 <strchr+0x38>
     2fc:	e51b3008 	ldr	r3, [fp, #-8]
     300:	ea000007 	b	324 <strchr+0x58>
     304:	e51b3008 	ldr	r3, [fp, #-8]
     308:	e2833001 	add	r3, r3, #1
     30c:	e50b3008 	str	r3, [fp, #-8]
     310:	e51b3008 	ldr	r3, [fp, #-8]
     314:	e5d33000 	ldrb	r3, [r3]
     318:	e3530000 	cmp	r3, #0
     31c:	1afffff1 	bne	2e8 <strchr+0x1c>
     320:	e3a03000 	mov	r3, #0
     324:	e1a00003 	mov	r0, r3
     328:	e28bd000 	add	sp, fp, #0
     32c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     330:	e12fff1e 	bx	lr

00000334 <gets>:
     334:	e92d4800 	push	{fp, lr}
     338:	e28db004 	add	fp, sp, #4
     33c:	e24dd018 	sub	sp, sp, #24
     340:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     344:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     348:	e3a03000 	mov	r3, #0
     34c:	e50b3008 	str	r3, [fp, #-8]
     350:	ea000016 	b	3b0 <gets+0x7c>
     354:	e24b300d 	sub	r3, fp, #13
     358:	e3a02001 	mov	r2, #1
     35c:	e1a01003 	mov	r1, r3
     360:	e3a00000 	mov	r0, #0
     364:	eb00009b 	bl	5d8 <read>
     368:	e50b000c 	str	r0, [fp, #-12]
     36c:	e51b300c 	ldr	r3, [fp, #-12]
     370:	e3530000 	cmp	r3, #0
     374:	da000013 	ble	3c8 <gets+0x94>
     378:	e51b3008 	ldr	r3, [fp, #-8]
     37c:	e2832001 	add	r2, r3, #1
     380:	e50b2008 	str	r2, [fp, #-8]
     384:	e1a02003 	mov	r2, r3
     388:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     38c:	e0833002 	add	r3, r3, r2
     390:	e55b200d 	ldrb	r2, [fp, #-13]
     394:	e5c32000 	strb	r2, [r3]
     398:	e55b300d 	ldrb	r3, [fp, #-13]
     39c:	e353000a 	cmp	r3, #10
     3a0:	0a000009 	beq	3cc <gets+0x98>
     3a4:	e55b300d 	ldrb	r3, [fp, #-13]
     3a8:	e353000d 	cmp	r3, #13
     3ac:	0a000006 	beq	3cc <gets+0x98>
     3b0:	e51b3008 	ldr	r3, [fp, #-8]
     3b4:	e2833001 	add	r3, r3, #1
     3b8:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     3bc:	e1520003 	cmp	r2, r3
     3c0:	caffffe3 	bgt	354 <gets+0x20>
     3c4:	ea000000 	b	3cc <gets+0x98>
     3c8:	e1a00000 	nop			@ (mov r0, r0)
     3cc:	e51b3008 	ldr	r3, [fp, #-8]
     3d0:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     3d4:	e0823003 	add	r3, r2, r3
     3d8:	e3a02000 	mov	r2, #0
     3dc:	e5c32000 	strb	r2, [r3]
     3e0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3e4:	e1a00003 	mov	r0, r3
     3e8:	e24bd004 	sub	sp, fp, #4
     3ec:	e8bd8800 	pop	{fp, pc}

000003f0 <stat>:
     3f0:	e92d4800 	push	{fp, lr}
     3f4:	e28db004 	add	fp, sp, #4
     3f8:	e24dd010 	sub	sp, sp, #16
     3fc:	e50b0010 	str	r0, [fp, #-16]
     400:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     404:	e3a01000 	mov	r1, #0
     408:	e51b0010 	ldr	r0, [fp, #-16]
     40c:	eb00009e 	bl	68c <open>
     410:	e50b0008 	str	r0, [fp, #-8]
     414:	e51b3008 	ldr	r3, [fp, #-8]
     418:	e3530000 	cmp	r3, #0
     41c:	aa000001 	bge	428 <stat+0x38>
     420:	e3e03000 	mvn	r3, #0
     424:	ea000006 	b	444 <stat+0x54>
     428:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     42c:	e51b0008 	ldr	r0, [fp, #-8]
     430:	eb0000b0 	bl	6f8 <fstat>
     434:	e50b000c 	str	r0, [fp, #-12]
     438:	e51b0008 	ldr	r0, [fp, #-8]
     43c:	eb000077 	bl	620 <close>
     440:	e51b300c 	ldr	r3, [fp, #-12]
     444:	e1a00003 	mov	r0, r3
     448:	e24bd004 	sub	sp, fp, #4
     44c:	e8bd8800 	pop	{fp, pc}

00000450 <atoi>:
     450:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     454:	e28db000 	add	fp, sp, #0
     458:	e24dd014 	sub	sp, sp, #20
     45c:	e50b0010 	str	r0, [fp, #-16]
     460:	e3a03000 	mov	r3, #0
     464:	e50b3008 	str	r3, [fp, #-8]
     468:	ea00000c 	b	4a0 <atoi+0x50>
     46c:	e51b2008 	ldr	r2, [fp, #-8]
     470:	e1a03002 	mov	r3, r2
     474:	e1a03103 	lsl	r3, r3, #2
     478:	e0833002 	add	r3, r3, r2
     47c:	e1a03083 	lsl	r3, r3, #1
     480:	e1a01003 	mov	r1, r3
     484:	e51b3010 	ldr	r3, [fp, #-16]
     488:	e2832001 	add	r2, r3, #1
     48c:	e50b2010 	str	r2, [fp, #-16]
     490:	e5d33000 	ldrb	r3, [r3]
     494:	e0813003 	add	r3, r1, r3
     498:	e2433030 	sub	r3, r3, #48	@ 0x30
     49c:	e50b3008 	str	r3, [fp, #-8]
     4a0:	e51b3010 	ldr	r3, [fp, #-16]
     4a4:	e5d33000 	ldrb	r3, [r3]
     4a8:	e353002f 	cmp	r3, #47	@ 0x2f
     4ac:	9a000003 	bls	4c0 <atoi+0x70>
     4b0:	e51b3010 	ldr	r3, [fp, #-16]
     4b4:	e5d33000 	ldrb	r3, [r3]
     4b8:	e3530039 	cmp	r3, #57	@ 0x39
     4bc:	9affffea 	bls	46c <atoi+0x1c>
     4c0:	e51b3008 	ldr	r3, [fp, #-8]
     4c4:	e1a00003 	mov	r0, r3
     4c8:	e28bd000 	add	sp, fp, #0
     4cc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4d0:	e12fff1e 	bx	lr

000004d4 <memmove>:
     4d4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4d8:	e28db000 	add	fp, sp, #0
     4dc:	e24dd01c 	sub	sp, sp, #28
     4e0:	e50b0010 	str	r0, [fp, #-16]
     4e4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     4e8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     4ec:	e51b3010 	ldr	r3, [fp, #-16]
     4f0:	e50b3008 	str	r3, [fp, #-8]
     4f4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     4f8:	e50b300c 	str	r3, [fp, #-12]
     4fc:	ea000007 	b	520 <memmove+0x4c>
     500:	e51b200c 	ldr	r2, [fp, #-12]
     504:	e2823001 	add	r3, r2, #1
     508:	e50b300c 	str	r3, [fp, #-12]
     50c:	e51b3008 	ldr	r3, [fp, #-8]
     510:	e2831001 	add	r1, r3, #1
     514:	e50b1008 	str	r1, [fp, #-8]
     518:	e5d22000 	ldrb	r2, [r2]
     51c:	e5c32000 	strb	r2, [r3]
     520:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     524:	e2432001 	sub	r2, r3, #1
     528:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     52c:	e3530000 	cmp	r3, #0
     530:	cafffff2 	bgt	500 <memmove+0x2c>
     534:	e51b3010 	ldr	r3, [fp, #-16]
     538:	e1a00003 	mov	r0, r3
     53c:	e28bd000 	add	sp, fp, #0
     540:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     544:	e12fff1e 	bx	lr

00000548 <fork>:
     548:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     54c:	e1a04003 	mov	r4, r3
     550:	e1a03002 	mov	r3, r2
     554:	e1a02001 	mov	r2, r1
     558:	e1a01000 	mov	r1, r0
     55c:	e3a00001 	mov	r0, #1
     560:	ef000000 	svc	0x00000000
     564:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     568:	e12fff1e 	bx	lr

0000056c <exit>:
     56c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     570:	e1a04003 	mov	r4, r3
     574:	e1a03002 	mov	r3, r2
     578:	e1a02001 	mov	r2, r1
     57c:	e1a01000 	mov	r1, r0
     580:	e3a00002 	mov	r0, #2
     584:	ef000000 	svc	0x00000000
     588:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     58c:	e12fff1e 	bx	lr

00000590 <wait>:
     590:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     594:	e1a04003 	mov	r4, r3
     598:	e1a03002 	mov	r3, r2
     59c:	e1a02001 	mov	r2, r1
     5a0:	e1a01000 	mov	r1, r0
     5a4:	e3a00003 	mov	r0, #3
     5a8:	ef000000 	svc	0x00000000
     5ac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5b0:	e12fff1e 	bx	lr

000005b4 <pipe>:
     5b4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5b8:	e1a04003 	mov	r4, r3
     5bc:	e1a03002 	mov	r3, r2
     5c0:	e1a02001 	mov	r2, r1
     5c4:	e1a01000 	mov	r1, r0
     5c8:	e3a00004 	mov	r0, #4
     5cc:	ef000000 	svc	0x00000000
     5d0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5d4:	e12fff1e 	bx	lr

000005d8 <read>:
     5d8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5dc:	e1a04003 	mov	r4, r3
     5e0:	e1a03002 	mov	r3, r2
     5e4:	e1a02001 	mov	r2, r1
     5e8:	e1a01000 	mov	r1, r0
     5ec:	e3a00005 	mov	r0, #5
     5f0:	ef000000 	svc	0x00000000
     5f4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5f8:	e12fff1e 	bx	lr

000005fc <write>:
     5fc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     600:	e1a04003 	mov	r4, r3
     604:	e1a03002 	mov	r3, r2
     608:	e1a02001 	mov	r2, r1
     60c:	e1a01000 	mov	r1, r0
     610:	e3a00010 	mov	r0, #16
     614:	ef000000 	svc	0x00000000
     618:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     61c:	e12fff1e 	bx	lr

00000620 <close>:
     620:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     624:	e1a04003 	mov	r4, r3
     628:	e1a03002 	mov	r3, r2
     62c:	e1a02001 	mov	r2, r1
     630:	e1a01000 	mov	r1, r0
     634:	e3a00015 	mov	r0, #21
     638:	ef000000 	svc	0x00000000
     63c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     640:	e12fff1e 	bx	lr

00000644 <kill>:
     644:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     648:	e1a04003 	mov	r4, r3
     64c:	e1a03002 	mov	r3, r2
     650:	e1a02001 	mov	r2, r1
     654:	e1a01000 	mov	r1, r0
     658:	e3a00006 	mov	r0, #6
     65c:	ef000000 	svc	0x00000000
     660:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     664:	e12fff1e 	bx	lr

00000668 <exec>:
     668:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     66c:	e1a04003 	mov	r4, r3
     670:	e1a03002 	mov	r3, r2
     674:	e1a02001 	mov	r2, r1
     678:	e1a01000 	mov	r1, r0
     67c:	e3a00007 	mov	r0, #7
     680:	ef000000 	svc	0x00000000
     684:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     688:	e12fff1e 	bx	lr

0000068c <open>:
     68c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     690:	e1a04003 	mov	r4, r3
     694:	e1a03002 	mov	r3, r2
     698:	e1a02001 	mov	r2, r1
     69c:	e1a01000 	mov	r1, r0
     6a0:	e3a0000f 	mov	r0, #15
     6a4:	ef000000 	svc	0x00000000
     6a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6ac:	e12fff1e 	bx	lr

000006b0 <mknod>:
     6b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6b4:	e1a04003 	mov	r4, r3
     6b8:	e1a03002 	mov	r3, r2
     6bc:	e1a02001 	mov	r2, r1
     6c0:	e1a01000 	mov	r1, r0
     6c4:	e3a00011 	mov	r0, #17
     6c8:	ef000000 	svc	0x00000000
     6cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6d0:	e12fff1e 	bx	lr

000006d4 <unlink>:
     6d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6d8:	e1a04003 	mov	r4, r3
     6dc:	e1a03002 	mov	r3, r2
     6e0:	e1a02001 	mov	r2, r1
     6e4:	e1a01000 	mov	r1, r0
     6e8:	e3a00012 	mov	r0, #18
     6ec:	ef000000 	svc	0x00000000
     6f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6f4:	e12fff1e 	bx	lr

000006f8 <fstat>:
     6f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6fc:	e1a04003 	mov	r4, r3
     700:	e1a03002 	mov	r3, r2
     704:	e1a02001 	mov	r2, r1
     708:	e1a01000 	mov	r1, r0
     70c:	e3a00008 	mov	r0, #8
     710:	ef000000 	svc	0x00000000
     714:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     718:	e12fff1e 	bx	lr

0000071c <link>:
     71c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     720:	e1a04003 	mov	r4, r3
     724:	e1a03002 	mov	r3, r2
     728:	e1a02001 	mov	r2, r1
     72c:	e1a01000 	mov	r1, r0
     730:	e3a00013 	mov	r0, #19
     734:	ef000000 	svc	0x00000000
     738:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     73c:	e12fff1e 	bx	lr

00000740 <mkdir>:
     740:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     744:	e1a04003 	mov	r4, r3
     748:	e1a03002 	mov	r3, r2
     74c:	e1a02001 	mov	r2, r1
     750:	e1a01000 	mov	r1, r0
     754:	e3a00014 	mov	r0, #20
     758:	ef000000 	svc	0x00000000
     75c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     760:	e12fff1e 	bx	lr

00000764 <chdir>:
     764:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     768:	e1a04003 	mov	r4, r3
     76c:	e1a03002 	mov	r3, r2
     770:	e1a02001 	mov	r2, r1
     774:	e1a01000 	mov	r1, r0
     778:	e3a00009 	mov	r0, #9
     77c:	ef000000 	svc	0x00000000
     780:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     784:	e12fff1e 	bx	lr

00000788 <dup>:
     788:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     78c:	e1a04003 	mov	r4, r3
     790:	e1a03002 	mov	r3, r2
     794:	e1a02001 	mov	r2, r1
     798:	e1a01000 	mov	r1, r0
     79c:	e3a0000a 	mov	r0, #10
     7a0:	ef000000 	svc	0x00000000
     7a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7a8:	e12fff1e 	bx	lr

000007ac <getpid>:
     7ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7b0:	e1a04003 	mov	r4, r3
     7b4:	e1a03002 	mov	r3, r2
     7b8:	e1a02001 	mov	r2, r1
     7bc:	e1a01000 	mov	r1, r0
     7c0:	e3a0000b 	mov	r0, #11
     7c4:	ef000000 	svc	0x00000000
     7c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7cc:	e12fff1e 	bx	lr

000007d0 <sbrk>:
     7d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7d4:	e1a04003 	mov	r4, r3
     7d8:	e1a03002 	mov	r3, r2
     7dc:	e1a02001 	mov	r2, r1
     7e0:	e1a01000 	mov	r1, r0
     7e4:	e3a0000c 	mov	r0, #12
     7e8:	ef000000 	svc	0x00000000
     7ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7f0:	e12fff1e 	bx	lr

000007f4 <sleep>:
     7f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7f8:	e1a04003 	mov	r4, r3
     7fc:	e1a03002 	mov	r3, r2
     800:	e1a02001 	mov	r2, r1
     804:	e1a01000 	mov	r1, r0
     808:	e3a0000d 	mov	r0, #13
     80c:	ef000000 	svc	0x00000000
     810:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     814:	e12fff1e 	bx	lr

00000818 <uptime>:
     818:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     81c:	e1a04003 	mov	r4, r3
     820:	e1a03002 	mov	r3, r2
     824:	e1a02001 	mov	r2, r1
     828:	e1a01000 	mov	r1, r0
     82c:	e3a0000e 	mov	r0, #14
     830:	ef000000 	svc	0x00000000
     834:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     838:	e12fff1e 	bx	lr

0000083c <getprocs>:
     83c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     840:	e1a04003 	mov	r4, r3
     844:	e1a03002 	mov	r3, r2
     848:	e1a02001 	mov	r2, r1
     84c:	e1a01000 	mov	r1, r0
     850:	e3a00016 	mov	r0, #22
     854:	ef000000 	svc	0x00000000
     858:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     85c:	e12fff1e 	bx	lr

00000860 <getpinfo>:
     860:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     864:	e1a04003 	mov	r4, r3
     868:	e1a03002 	mov	r3, r2
     86c:	e1a02001 	mov	r2, r1
     870:	e1a01000 	mov	r1, r0
     874:	e3a00018 	mov	r0, #24
     878:	ef000000 	svc	0x00000000
     87c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     880:	e12fff1e 	bx	lr

00000884 <settickets>:
     884:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     888:	e1a04003 	mov	r4, r3
     88c:	e1a03002 	mov	r3, r2
     890:	e1a02001 	mov	r2, r1
     894:	e1a01000 	mov	r1, r0
     898:	e3a00017 	mov	r0, #23
     89c:	ef000000 	svc	0x00000000
     8a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8a4:	e12fff1e 	bx	lr

000008a8 <srand>:
     8a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8ac:	e1a04003 	mov	r4, r3
     8b0:	e1a03002 	mov	r3, r2
     8b4:	e1a02001 	mov	r2, r1
     8b8:	e1a01000 	mov	r1, r0
     8bc:	e3a00019 	mov	r0, #25
     8c0:	ef000000 	svc	0x00000000
     8c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8c8:	e12fff1e 	bx	lr

000008cc <test>:
     8cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8d0:	e1a04003 	mov	r4, r3
     8d4:	e1a03002 	mov	r3, r2
     8d8:	e1a02001 	mov	r2, r1
     8dc:	e1a01000 	mov	r1, r0
     8e0:	e3a0001a 	mov	r0, #26
     8e4:	ef000000 	svc	0x00000000
     8e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8ec:	e12fff1e 	bx	lr

000008f0 <putc>:
     8f0:	e92d4800 	push	{fp, lr}
     8f4:	e28db004 	add	fp, sp, #4
     8f8:	e24dd008 	sub	sp, sp, #8
     8fc:	e50b0008 	str	r0, [fp, #-8]
     900:	e1a03001 	mov	r3, r1
     904:	e54b3009 	strb	r3, [fp, #-9]
     908:	e24b3009 	sub	r3, fp, #9
     90c:	e3a02001 	mov	r2, #1
     910:	e1a01003 	mov	r1, r3
     914:	e51b0008 	ldr	r0, [fp, #-8]
     918:	ebffff37 	bl	5fc <write>
     91c:	e1a00000 	nop			@ (mov r0, r0)
     920:	e24bd004 	sub	sp, fp, #4
     924:	e8bd8800 	pop	{fp, pc}

00000928 <printint>:
     928:	e92d4800 	push	{fp, lr}
     92c:	e28db004 	add	fp, sp, #4
     930:	e24dd030 	sub	sp, sp, #48	@ 0x30
     934:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     938:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     93c:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     940:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     944:	e3a03000 	mov	r3, #0
     948:	e50b300c 	str	r3, [fp, #-12]
     94c:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     950:	e3530000 	cmp	r3, #0
     954:	0a000008 	beq	97c <printint+0x54>
     958:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     95c:	e3530000 	cmp	r3, #0
     960:	aa000005 	bge	97c <printint+0x54>
     964:	e3a03001 	mov	r3, #1
     968:	e50b300c 	str	r3, [fp, #-12]
     96c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     970:	e2633000 	rsb	r3, r3, #0
     974:	e50b3010 	str	r3, [fp, #-16]
     978:	ea000001 	b	984 <printint+0x5c>
     97c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     980:	e50b3010 	str	r3, [fp, #-16]
     984:	e3a03000 	mov	r3, #0
     988:	e50b3008 	str	r3, [fp, #-8]
     98c:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     990:	e51b3010 	ldr	r3, [fp, #-16]
     994:	e1a01002 	mov	r1, r2
     998:	e1a00003 	mov	r0, r3
     99c:	eb0001d5 	bl	10f8 <__aeabi_uidivmod>
     9a0:	e1a03001 	mov	r3, r1
     9a4:	e1a01003 	mov	r1, r3
     9a8:	e51b3008 	ldr	r3, [fp, #-8]
     9ac:	e2832001 	add	r2, r3, #1
     9b0:	e50b2008 	str	r2, [fp, #-8]
     9b4:	e59f20a0 	ldr	r2, [pc, #160]	@ a5c <printint+0x134>
     9b8:	e7d22001 	ldrb	r2, [r2, r1]
     9bc:	e2433004 	sub	r3, r3, #4
     9c0:	e083300b 	add	r3, r3, fp
     9c4:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     9c8:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     9cc:	e1a01003 	mov	r1, r3
     9d0:	e51b0010 	ldr	r0, [fp, #-16]
     9d4:	eb00018a 	bl	1004 <__udivsi3>
     9d8:	e1a03000 	mov	r3, r0
     9dc:	e50b3010 	str	r3, [fp, #-16]
     9e0:	e51b3010 	ldr	r3, [fp, #-16]
     9e4:	e3530000 	cmp	r3, #0
     9e8:	1affffe7 	bne	98c <printint+0x64>
     9ec:	e51b300c 	ldr	r3, [fp, #-12]
     9f0:	e3530000 	cmp	r3, #0
     9f4:	0a00000e 	beq	a34 <printint+0x10c>
     9f8:	e51b3008 	ldr	r3, [fp, #-8]
     9fc:	e2832001 	add	r2, r3, #1
     a00:	e50b2008 	str	r2, [fp, #-8]
     a04:	e2433004 	sub	r3, r3, #4
     a08:	e083300b 	add	r3, r3, fp
     a0c:	e3a0202d 	mov	r2, #45	@ 0x2d
     a10:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     a14:	ea000006 	b	a34 <printint+0x10c>
     a18:	e24b2020 	sub	r2, fp, #32
     a1c:	e51b3008 	ldr	r3, [fp, #-8]
     a20:	e0823003 	add	r3, r2, r3
     a24:	e5d33000 	ldrb	r3, [r3]
     a28:	e1a01003 	mov	r1, r3
     a2c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     a30:	ebffffae 	bl	8f0 <putc>
     a34:	e51b3008 	ldr	r3, [fp, #-8]
     a38:	e2433001 	sub	r3, r3, #1
     a3c:	e50b3008 	str	r3, [fp, #-8]
     a40:	e51b3008 	ldr	r3, [fp, #-8]
     a44:	e3530000 	cmp	r3, #0
     a48:	aafffff2 	bge	a18 <printint+0xf0>
     a4c:	e1a00000 	nop			@ (mov r0, r0)
     a50:	e1a00000 	nop			@ (mov r0, r0)
     a54:	e24bd004 	sub	sp, fp, #4
     a58:	e8bd8800 	pop	{fp, pc}
     a5c:	00001164 	.word	0x00001164

00000a60 <printf>:
     a60:	e92d000e 	push	{r1, r2, r3}
     a64:	e92d4800 	push	{fp, lr}
     a68:	e28db004 	add	fp, sp, #4
     a6c:	e24dd024 	sub	sp, sp, #36	@ 0x24
     a70:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     a74:	e3a03000 	mov	r3, #0
     a78:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     a7c:	e28b3008 	add	r3, fp, #8
     a80:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     a84:	e3a03000 	mov	r3, #0
     a88:	e50b3010 	str	r3, [fp, #-16]
     a8c:	ea000074 	b	c64 <printf+0x204>
     a90:	e59b2004 	ldr	r2, [fp, #4]
     a94:	e51b3010 	ldr	r3, [fp, #-16]
     a98:	e0823003 	add	r3, r2, r3
     a9c:	e5d33000 	ldrb	r3, [r3]
     aa0:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     aa4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     aa8:	e3530000 	cmp	r3, #0
     aac:	1a00000b 	bne	ae0 <printf+0x80>
     ab0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ab4:	e3530025 	cmp	r3, #37	@ 0x25
     ab8:	1a000002 	bne	ac8 <printf+0x68>
     abc:	e3a03025 	mov	r3, #37	@ 0x25
     ac0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     ac4:	ea000063 	b	c58 <printf+0x1f8>
     ac8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     acc:	e6ef3073 	uxtb	r3, r3
     ad0:	e1a01003 	mov	r1, r3
     ad4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ad8:	ebffff84 	bl	8f0 <putc>
     adc:	ea00005d 	b	c58 <printf+0x1f8>
     ae0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     ae4:	e3530025 	cmp	r3, #37	@ 0x25
     ae8:	1a00005a 	bne	c58 <printf+0x1f8>
     aec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     af0:	e3530064 	cmp	r3, #100	@ 0x64
     af4:	1a00000a 	bne	b24 <printf+0xc4>
     af8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     afc:	e5933000 	ldr	r3, [r3]
     b00:	e1a01003 	mov	r1, r3
     b04:	e3a03001 	mov	r3, #1
     b08:	e3a0200a 	mov	r2, #10
     b0c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b10:	ebffff84 	bl	928 <printint>
     b14:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b18:	e2833004 	add	r3, r3, #4
     b1c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b20:	ea00004a 	b	c50 <printf+0x1f0>
     b24:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b28:	e3530078 	cmp	r3, #120	@ 0x78
     b2c:	0a000002 	beq	b3c <printf+0xdc>
     b30:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b34:	e3530070 	cmp	r3, #112	@ 0x70
     b38:	1a00000a 	bne	b68 <printf+0x108>
     b3c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b40:	e5933000 	ldr	r3, [r3]
     b44:	e1a01003 	mov	r1, r3
     b48:	e3a03000 	mov	r3, #0
     b4c:	e3a02010 	mov	r2, #16
     b50:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b54:	ebffff73 	bl	928 <printint>
     b58:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b5c:	e2833004 	add	r3, r3, #4
     b60:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b64:	ea000039 	b	c50 <printf+0x1f0>
     b68:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b6c:	e3530073 	cmp	r3, #115	@ 0x73
     b70:	1a000018 	bne	bd8 <printf+0x178>
     b74:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b78:	e5933000 	ldr	r3, [r3]
     b7c:	e50b300c 	str	r3, [fp, #-12]
     b80:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b84:	e2833004 	add	r3, r3, #4
     b88:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b8c:	e51b300c 	ldr	r3, [fp, #-12]
     b90:	e3530000 	cmp	r3, #0
     b94:	1a00000a 	bne	bc4 <printf+0x164>
     b98:	e59f30f4 	ldr	r3, [pc, #244]	@ c94 <printf+0x234>
     b9c:	e50b300c 	str	r3, [fp, #-12]
     ba0:	ea000007 	b	bc4 <printf+0x164>
     ba4:	e51b300c 	ldr	r3, [fp, #-12]
     ba8:	e5d33000 	ldrb	r3, [r3]
     bac:	e1a01003 	mov	r1, r3
     bb0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bb4:	ebffff4d 	bl	8f0 <putc>
     bb8:	e51b300c 	ldr	r3, [fp, #-12]
     bbc:	e2833001 	add	r3, r3, #1
     bc0:	e50b300c 	str	r3, [fp, #-12]
     bc4:	e51b300c 	ldr	r3, [fp, #-12]
     bc8:	e5d33000 	ldrb	r3, [r3]
     bcc:	e3530000 	cmp	r3, #0
     bd0:	1afffff3 	bne	ba4 <printf+0x144>
     bd4:	ea00001d 	b	c50 <printf+0x1f0>
     bd8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bdc:	e3530063 	cmp	r3, #99	@ 0x63
     be0:	1a000009 	bne	c0c <printf+0x1ac>
     be4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     be8:	e5933000 	ldr	r3, [r3]
     bec:	e6ef3073 	uxtb	r3, r3
     bf0:	e1a01003 	mov	r1, r3
     bf4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bf8:	ebffff3c 	bl	8f0 <putc>
     bfc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c00:	e2833004 	add	r3, r3, #4
     c04:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c08:	ea000010 	b	c50 <printf+0x1f0>
     c0c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c10:	e3530025 	cmp	r3, #37	@ 0x25
     c14:	1a000005 	bne	c30 <printf+0x1d0>
     c18:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c1c:	e6ef3073 	uxtb	r3, r3
     c20:	e1a01003 	mov	r1, r3
     c24:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c28:	ebffff30 	bl	8f0 <putc>
     c2c:	ea000007 	b	c50 <printf+0x1f0>
     c30:	e3a01025 	mov	r1, #37	@ 0x25
     c34:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c38:	ebffff2c 	bl	8f0 <putc>
     c3c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c40:	e6ef3073 	uxtb	r3, r3
     c44:	e1a01003 	mov	r1, r3
     c48:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c4c:	ebffff27 	bl	8f0 <putc>
     c50:	e3a03000 	mov	r3, #0
     c54:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c58:	e51b3010 	ldr	r3, [fp, #-16]
     c5c:	e2833001 	add	r3, r3, #1
     c60:	e50b3010 	str	r3, [fp, #-16]
     c64:	e59b2004 	ldr	r2, [fp, #4]
     c68:	e51b3010 	ldr	r3, [fp, #-16]
     c6c:	e0823003 	add	r3, r2, r3
     c70:	e5d33000 	ldrb	r3, [r3]
     c74:	e3530000 	cmp	r3, #0
     c78:	1affff84 	bne	a90 <printf+0x30>
     c7c:	e1a00000 	nop			@ (mov r0, r0)
     c80:	e1a00000 	nop			@ (mov r0, r0)
     c84:	e24bd004 	sub	sp, fp, #4
     c88:	e8bd4800 	pop	{fp, lr}
     c8c:	e28dd00c 	add	sp, sp, #12
     c90:	e12fff1e 	bx	lr
     c94:	0000115c 	.word	0x0000115c

00000c98 <free>:
     c98:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     c9c:	e28db000 	add	fp, sp, #0
     ca0:	e24dd014 	sub	sp, sp, #20
     ca4:	e50b0010 	str	r0, [fp, #-16]
     ca8:	e51b3010 	ldr	r3, [fp, #-16]
     cac:	e2433008 	sub	r3, r3, #8
     cb0:	e50b300c 	str	r3, [fp, #-12]
     cb4:	e59f3154 	ldr	r3, [pc, #340]	@ e10 <free+0x178>
     cb8:	e5933000 	ldr	r3, [r3]
     cbc:	e50b3008 	str	r3, [fp, #-8]
     cc0:	ea000010 	b	d08 <free+0x70>
     cc4:	e51b3008 	ldr	r3, [fp, #-8]
     cc8:	e5933000 	ldr	r3, [r3]
     ccc:	e51b2008 	ldr	r2, [fp, #-8]
     cd0:	e1520003 	cmp	r2, r3
     cd4:	3a000008 	bcc	cfc <free+0x64>
     cd8:	e51b200c 	ldr	r2, [fp, #-12]
     cdc:	e51b3008 	ldr	r3, [fp, #-8]
     ce0:	e1520003 	cmp	r2, r3
     ce4:	8a000010 	bhi	d2c <free+0x94>
     ce8:	e51b3008 	ldr	r3, [fp, #-8]
     cec:	e5933000 	ldr	r3, [r3]
     cf0:	e51b200c 	ldr	r2, [fp, #-12]
     cf4:	e1520003 	cmp	r2, r3
     cf8:	3a00000b 	bcc	d2c <free+0x94>
     cfc:	e51b3008 	ldr	r3, [fp, #-8]
     d00:	e5933000 	ldr	r3, [r3]
     d04:	e50b3008 	str	r3, [fp, #-8]
     d08:	e51b200c 	ldr	r2, [fp, #-12]
     d0c:	e51b3008 	ldr	r3, [fp, #-8]
     d10:	e1520003 	cmp	r2, r3
     d14:	9affffea 	bls	cc4 <free+0x2c>
     d18:	e51b3008 	ldr	r3, [fp, #-8]
     d1c:	e5933000 	ldr	r3, [r3]
     d20:	e51b200c 	ldr	r2, [fp, #-12]
     d24:	e1520003 	cmp	r2, r3
     d28:	2affffe5 	bcs	cc4 <free+0x2c>
     d2c:	e51b300c 	ldr	r3, [fp, #-12]
     d30:	e5933004 	ldr	r3, [r3, #4]
     d34:	e1a03183 	lsl	r3, r3, #3
     d38:	e51b200c 	ldr	r2, [fp, #-12]
     d3c:	e0822003 	add	r2, r2, r3
     d40:	e51b3008 	ldr	r3, [fp, #-8]
     d44:	e5933000 	ldr	r3, [r3]
     d48:	e1520003 	cmp	r2, r3
     d4c:	1a00000d 	bne	d88 <free+0xf0>
     d50:	e51b300c 	ldr	r3, [fp, #-12]
     d54:	e5932004 	ldr	r2, [r3, #4]
     d58:	e51b3008 	ldr	r3, [fp, #-8]
     d5c:	e5933000 	ldr	r3, [r3]
     d60:	e5933004 	ldr	r3, [r3, #4]
     d64:	e0822003 	add	r2, r2, r3
     d68:	e51b300c 	ldr	r3, [fp, #-12]
     d6c:	e5832004 	str	r2, [r3, #4]
     d70:	e51b3008 	ldr	r3, [fp, #-8]
     d74:	e5933000 	ldr	r3, [r3]
     d78:	e5932000 	ldr	r2, [r3]
     d7c:	e51b300c 	ldr	r3, [fp, #-12]
     d80:	e5832000 	str	r2, [r3]
     d84:	ea000003 	b	d98 <free+0x100>
     d88:	e51b3008 	ldr	r3, [fp, #-8]
     d8c:	e5932000 	ldr	r2, [r3]
     d90:	e51b300c 	ldr	r3, [fp, #-12]
     d94:	e5832000 	str	r2, [r3]
     d98:	e51b3008 	ldr	r3, [fp, #-8]
     d9c:	e5933004 	ldr	r3, [r3, #4]
     da0:	e1a03183 	lsl	r3, r3, #3
     da4:	e51b2008 	ldr	r2, [fp, #-8]
     da8:	e0823003 	add	r3, r2, r3
     dac:	e51b200c 	ldr	r2, [fp, #-12]
     db0:	e1520003 	cmp	r2, r3
     db4:	1a00000b 	bne	de8 <free+0x150>
     db8:	e51b3008 	ldr	r3, [fp, #-8]
     dbc:	e5932004 	ldr	r2, [r3, #4]
     dc0:	e51b300c 	ldr	r3, [fp, #-12]
     dc4:	e5933004 	ldr	r3, [r3, #4]
     dc8:	e0822003 	add	r2, r2, r3
     dcc:	e51b3008 	ldr	r3, [fp, #-8]
     dd0:	e5832004 	str	r2, [r3, #4]
     dd4:	e51b300c 	ldr	r3, [fp, #-12]
     dd8:	e5932000 	ldr	r2, [r3]
     ddc:	e51b3008 	ldr	r3, [fp, #-8]
     de0:	e5832000 	str	r2, [r3]
     de4:	ea000002 	b	df4 <free+0x15c>
     de8:	e51b3008 	ldr	r3, [fp, #-8]
     dec:	e51b200c 	ldr	r2, [fp, #-12]
     df0:	e5832000 	str	r2, [r3]
     df4:	e59f2014 	ldr	r2, [pc, #20]	@ e10 <free+0x178>
     df8:	e51b3008 	ldr	r3, [fp, #-8]
     dfc:	e5823000 	str	r3, [r2]
     e00:	e1a00000 	nop			@ (mov r0, r0)
     e04:	e28bd000 	add	sp, fp, #0
     e08:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     e0c:	e12fff1e 	bx	lr
     e10:	00001180 	.word	0x00001180

00000e14 <morecore>:
     e14:	e92d4800 	push	{fp, lr}
     e18:	e28db004 	add	fp, sp, #4
     e1c:	e24dd010 	sub	sp, sp, #16
     e20:	e50b0010 	str	r0, [fp, #-16]
     e24:	e51b3010 	ldr	r3, [fp, #-16]
     e28:	e3530a01 	cmp	r3, #4096	@ 0x1000
     e2c:	2a000001 	bcs	e38 <morecore+0x24>
     e30:	e3a03a01 	mov	r3, #4096	@ 0x1000
     e34:	e50b3010 	str	r3, [fp, #-16]
     e38:	e51b3010 	ldr	r3, [fp, #-16]
     e3c:	e1a03183 	lsl	r3, r3, #3
     e40:	e1a00003 	mov	r0, r3
     e44:	ebfffe61 	bl	7d0 <sbrk>
     e48:	e50b0008 	str	r0, [fp, #-8]
     e4c:	e51b3008 	ldr	r3, [fp, #-8]
     e50:	e3730001 	cmn	r3, #1
     e54:	1a000001 	bne	e60 <morecore+0x4c>
     e58:	e3a03000 	mov	r3, #0
     e5c:	ea00000a 	b	e8c <morecore+0x78>
     e60:	e51b3008 	ldr	r3, [fp, #-8]
     e64:	e50b300c 	str	r3, [fp, #-12]
     e68:	e51b300c 	ldr	r3, [fp, #-12]
     e6c:	e51b2010 	ldr	r2, [fp, #-16]
     e70:	e5832004 	str	r2, [r3, #4]
     e74:	e51b300c 	ldr	r3, [fp, #-12]
     e78:	e2833008 	add	r3, r3, #8
     e7c:	e1a00003 	mov	r0, r3
     e80:	ebffff84 	bl	c98 <free>
     e84:	e59f300c 	ldr	r3, [pc, #12]	@ e98 <morecore+0x84>
     e88:	e5933000 	ldr	r3, [r3]
     e8c:	e1a00003 	mov	r0, r3
     e90:	e24bd004 	sub	sp, fp, #4
     e94:	e8bd8800 	pop	{fp, pc}
     e98:	00001180 	.word	0x00001180

00000e9c <malloc>:
     e9c:	e92d4800 	push	{fp, lr}
     ea0:	e28db004 	add	fp, sp, #4
     ea4:	e24dd018 	sub	sp, sp, #24
     ea8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     eac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     eb0:	e2833007 	add	r3, r3, #7
     eb4:	e1a031a3 	lsr	r3, r3, #3
     eb8:	e2833001 	add	r3, r3, #1
     ebc:	e50b3010 	str	r3, [fp, #-16]
     ec0:	e59f3134 	ldr	r3, [pc, #308]	@ ffc <malloc+0x160>
     ec4:	e5933000 	ldr	r3, [r3]
     ec8:	e50b300c 	str	r3, [fp, #-12]
     ecc:	e51b300c 	ldr	r3, [fp, #-12]
     ed0:	e3530000 	cmp	r3, #0
     ed4:	1a00000b 	bne	f08 <malloc+0x6c>
     ed8:	e59f3120 	ldr	r3, [pc, #288]	@ 1000 <malloc+0x164>
     edc:	e50b300c 	str	r3, [fp, #-12]
     ee0:	e59f2114 	ldr	r2, [pc, #276]	@ ffc <malloc+0x160>
     ee4:	e51b300c 	ldr	r3, [fp, #-12]
     ee8:	e5823000 	str	r3, [r2]
     eec:	e59f3108 	ldr	r3, [pc, #264]	@ ffc <malloc+0x160>
     ef0:	e5933000 	ldr	r3, [r3]
     ef4:	e59f2104 	ldr	r2, [pc, #260]	@ 1000 <malloc+0x164>
     ef8:	e5823000 	str	r3, [r2]
     efc:	e59f30fc 	ldr	r3, [pc, #252]	@ 1000 <malloc+0x164>
     f00:	e3a02000 	mov	r2, #0
     f04:	e5832004 	str	r2, [r3, #4]
     f08:	e51b300c 	ldr	r3, [fp, #-12]
     f0c:	e5933000 	ldr	r3, [r3]
     f10:	e50b3008 	str	r3, [fp, #-8]
     f14:	e51b3008 	ldr	r3, [fp, #-8]
     f18:	e5933004 	ldr	r3, [r3, #4]
     f1c:	e51b2010 	ldr	r2, [fp, #-16]
     f20:	e1520003 	cmp	r2, r3
     f24:	8a00001e 	bhi	fa4 <malloc+0x108>
     f28:	e51b3008 	ldr	r3, [fp, #-8]
     f2c:	e5933004 	ldr	r3, [r3, #4]
     f30:	e51b2010 	ldr	r2, [fp, #-16]
     f34:	e1520003 	cmp	r2, r3
     f38:	1a000004 	bne	f50 <malloc+0xb4>
     f3c:	e51b3008 	ldr	r3, [fp, #-8]
     f40:	e5932000 	ldr	r2, [r3]
     f44:	e51b300c 	ldr	r3, [fp, #-12]
     f48:	e5832000 	str	r2, [r3]
     f4c:	ea00000e 	b	f8c <malloc+0xf0>
     f50:	e51b3008 	ldr	r3, [fp, #-8]
     f54:	e5932004 	ldr	r2, [r3, #4]
     f58:	e51b3010 	ldr	r3, [fp, #-16]
     f5c:	e0422003 	sub	r2, r2, r3
     f60:	e51b3008 	ldr	r3, [fp, #-8]
     f64:	e5832004 	str	r2, [r3, #4]
     f68:	e51b3008 	ldr	r3, [fp, #-8]
     f6c:	e5933004 	ldr	r3, [r3, #4]
     f70:	e1a03183 	lsl	r3, r3, #3
     f74:	e51b2008 	ldr	r2, [fp, #-8]
     f78:	e0823003 	add	r3, r2, r3
     f7c:	e50b3008 	str	r3, [fp, #-8]
     f80:	e51b3008 	ldr	r3, [fp, #-8]
     f84:	e51b2010 	ldr	r2, [fp, #-16]
     f88:	e5832004 	str	r2, [r3, #4]
     f8c:	e59f2068 	ldr	r2, [pc, #104]	@ ffc <malloc+0x160>
     f90:	e51b300c 	ldr	r3, [fp, #-12]
     f94:	e5823000 	str	r3, [r2]
     f98:	e51b3008 	ldr	r3, [fp, #-8]
     f9c:	e2833008 	add	r3, r3, #8
     fa0:	ea000012 	b	ff0 <malloc+0x154>
     fa4:	e59f3050 	ldr	r3, [pc, #80]	@ ffc <malloc+0x160>
     fa8:	e5933000 	ldr	r3, [r3]
     fac:	e51b2008 	ldr	r2, [fp, #-8]
     fb0:	e1520003 	cmp	r2, r3
     fb4:	1a000007 	bne	fd8 <malloc+0x13c>
     fb8:	e51b0010 	ldr	r0, [fp, #-16]
     fbc:	ebffff94 	bl	e14 <morecore>
     fc0:	e50b0008 	str	r0, [fp, #-8]
     fc4:	e51b3008 	ldr	r3, [fp, #-8]
     fc8:	e3530000 	cmp	r3, #0
     fcc:	1a000001 	bne	fd8 <malloc+0x13c>
     fd0:	e3a03000 	mov	r3, #0
     fd4:	ea000005 	b	ff0 <malloc+0x154>
     fd8:	e51b3008 	ldr	r3, [fp, #-8]
     fdc:	e50b300c 	str	r3, [fp, #-12]
     fe0:	e51b3008 	ldr	r3, [fp, #-8]
     fe4:	e5933000 	ldr	r3, [r3]
     fe8:	e50b3008 	str	r3, [fp, #-8]
     fec:	eaffffc8 	b	f14 <malloc+0x78>
     ff0:	e1a00003 	mov	r0, r3
     ff4:	e24bd004 	sub	sp, fp, #4
     ff8:	e8bd8800 	pop	{fp, pc}
     ffc:	00001180 	.word	0x00001180
    1000:	00001178 	.word	0x00001178

00001004 <__udivsi3>:
    1004:	e2512001 	subs	r2, r1, #1
    1008:	012fff1e 	bxeq	lr
    100c:	3a000036 	bcc	10ec <__udivsi3+0xe8>
    1010:	e1500001 	cmp	r0, r1
    1014:	9a000022 	bls	10a4 <__udivsi3+0xa0>
    1018:	e1110002 	tst	r1, r2
    101c:	0a000023 	beq	10b0 <__udivsi3+0xac>
    1020:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1024:	01a01181 	lsleq	r1, r1, #3
    1028:	03a03008 	moveq	r3, #8
    102c:	13a03001 	movne	r3, #1
    1030:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1034:	31510000 	cmpcc	r1, r0
    1038:	31a01201 	lslcc	r1, r1, #4
    103c:	31a03203 	lslcc	r3, r3, #4
    1040:	3afffffa 	bcc	1030 <__udivsi3+0x2c>
    1044:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1048:	31510000 	cmpcc	r1, r0
    104c:	31a01081 	lslcc	r1, r1, #1
    1050:	31a03083 	lslcc	r3, r3, #1
    1054:	3afffffa 	bcc	1044 <__udivsi3+0x40>
    1058:	e3a02000 	mov	r2, #0
    105c:	e1500001 	cmp	r0, r1
    1060:	20400001 	subcs	r0, r0, r1
    1064:	21822003 	orrcs	r2, r2, r3
    1068:	e15000a1 	cmp	r0, r1, lsr #1
    106c:	204000a1 	subcs	r0, r0, r1, lsr #1
    1070:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1074:	e1500121 	cmp	r0, r1, lsr #2
    1078:	20400121 	subcs	r0, r0, r1, lsr #2
    107c:	21822123 	orrcs	r2, r2, r3, lsr #2
    1080:	e15001a1 	cmp	r0, r1, lsr #3
    1084:	204001a1 	subcs	r0, r0, r1, lsr #3
    1088:	218221a3 	orrcs	r2, r2, r3, lsr #3
    108c:	e3500000 	cmp	r0, #0
    1090:	11b03223 	lsrsne	r3, r3, #4
    1094:	11a01221 	lsrne	r1, r1, #4
    1098:	1affffef 	bne	105c <__udivsi3+0x58>
    109c:	e1a00002 	mov	r0, r2
    10a0:	e12fff1e 	bx	lr
    10a4:	03a00001 	moveq	r0, #1
    10a8:	13a00000 	movne	r0, #0
    10ac:	e12fff1e 	bx	lr
    10b0:	e3510801 	cmp	r1, #65536	@ 0x10000
    10b4:	21a01821 	lsrcs	r1, r1, #16
    10b8:	23a02010 	movcs	r2, #16
    10bc:	33a02000 	movcc	r2, #0
    10c0:	e3510c01 	cmp	r1, #256	@ 0x100
    10c4:	21a01421 	lsrcs	r1, r1, #8
    10c8:	22822008 	addcs	r2, r2, #8
    10cc:	e3510010 	cmp	r1, #16
    10d0:	21a01221 	lsrcs	r1, r1, #4
    10d4:	22822004 	addcs	r2, r2, #4
    10d8:	e3510004 	cmp	r1, #4
    10dc:	82822003 	addhi	r2, r2, #3
    10e0:	908220a1 	addls	r2, r2, r1, lsr #1
    10e4:	e1a00230 	lsr	r0, r0, r2
    10e8:	e12fff1e 	bx	lr
    10ec:	e3500000 	cmp	r0, #0
    10f0:	13e00000 	mvnne	r0, #0
    10f4:	ea000007 	b	1118 <__aeabi_idiv0>

000010f8 <__aeabi_uidivmod>:
    10f8:	e3510000 	cmp	r1, #0
    10fc:	0afffffa 	beq	10ec <__udivsi3+0xe8>
    1100:	e92d4003 	push	{r0, r1, lr}
    1104:	ebffffbe 	bl	1004 <__udivsi3>
    1108:	e8bd4006 	pop	{r1, r2, lr}
    110c:	e0030092 	mul	r3, r2, r0
    1110:	e0411003 	sub	r1, r1, r3
    1114:	e12fff1e 	bx	lr

00001118 <__aeabi_idiv0>:
    1118:	e12fff1e 	bx	lr
