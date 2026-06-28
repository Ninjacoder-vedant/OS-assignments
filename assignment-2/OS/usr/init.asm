
_init:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd008 	sub	sp, sp, #8
       c:	e3a01002 	mov	r1, #2
      10:	e59f00c4 	ldr	r0, [pc, #196]	@ dc <main+0xdc>
      14:	eb0001be 	bl	714 <open>
      18:	e1a03000 	mov	r3, r0
      1c:	e3530000 	cmp	r3, #0
      20:	aa000006 	bge	40 <main+0x40>
      24:	e3a02001 	mov	r2, #1
      28:	e3a01001 	mov	r1, #1
      2c:	e59f00a8 	ldr	r0, [pc, #168]	@ dc <main+0xdc>
      30:	eb0001c0 	bl	738 <mknod>
      34:	e3a01002 	mov	r1, #2
      38:	e59f009c 	ldr	r0, [pc, #156]	@ dc <main+0xdc>
      3c:	eb0001b4 	bl	714 <open>
      40:	e3a00000 	mov	r0, #0
      44:	eb0001f1 	bl	810 <dup>
      48:	e3a00000 	mov	r0, #0
      4c:	eb0001ef 	bl	810 <dup>
      50:	e59f1088 	ldr	r1, [pc, #136]	@ e0 <main+0xe0>
      54:	e3a00001 	mov	r0, #1
      58:	eb0002a2 	bl	ae8 <printf>
      5c:	eb00015b 	bl	5d0 <fork>
      60:	e50b0008 	str	r0, [fp, #-8]
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e3530000 	cmp	r3, #0
      6c:	aa000003 	bge	80 <main+0x80>
      70:	e59f106c 	ldr	r1, [pc, #108]	@ e4 <main+0xe4>
      74:	e3a00001 	mov	r0, #1
      78:	eb00029a 	bl	ae8 <printf>
      7c:	eb00015c 	bl	5f4 <exit>
      80:	e51b3008 	ldr	r3, [fp, #-8]
      84:	e3530000 	cmp	r3, #0
      88:	1a000009 	bne	b4 <main+0xb4>
      8c:	e59f1054 	ldr	r1, [pc, #84]	@ e8 <main+0xe8>
      90:	e59f0054 	ldr	r0, [pc, #84]	@ ec <main+0xec>
      94:	eb000195 	bl	6f0 <exec>
      98:	e59f1050 	ldr	r1, [pc, #80]	@ f0 <main+0xf0>
      9c:	e3a00001 	mov	r0, #1
      a0:	eb000290 	bl	ae8 <printf>
      a4:	eb000152 	bl	5f4 <exit>
      a8:	e59f1044 	ldr	r1, [pc, #68]	@ f4 <main+0xf4>
      ac:	e3a00001 	mov	r0, #1
      b0:	eb00028c 	bl	ae8 <printf>
      b4:	eb000157 	bl	618 <wait>
      b8:	e50b000c 	str	r0, [fp, #-12]
      bc:	e51b300c 	ldr	r3, [fp, #-12]
      c0:	e3530000 	cmp	r3, #0
      c4:	baffffe1 	blt	50 <main+0x50>
      c8:	e51b200c 	ldr	r2, [fp, #-12]
      cc:	e51b3008 	ldr	r3, [fp, #-8]
      d0:	e1520003 	cmp	r2, r3
      d4:	1afffff3 	bne	a8 <main+0xa8>
      d8:	eaffffdc 	b	50 <main+0x50>
      dc:	000011a8 	.word	0x000011a8
      e0:	000011b0 	.word	0x000011b0
      e4:	000011c4 	.word	0x000011c4
      e8:	00001204 	.word	0x00001204
      ec:	000011a4 	.word	0x000011a4
      f0:	000011d8 	.word	0x000011d8
      f4:	000011f0 	.word	0x000011f0

000000f8 <strcpy>:
      f8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      fc:	e28db000 	add	fp, sp, #0
     100:	e24dd014 	sub	sp, sp, #20
     104:	e50b0010 	str	r0, [fp, #-16]
     108:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     10c:	e51b3010 	ldr	r3, [fp, #-16]
     110:	e50b3008 	str	r3, [fp, #-8]
     114:	e1a00000 	nop			@ (mov r0, r0)
     118:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     11c:	e2823001 	add	r3, r2, #1
     120:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     124:	e51b3010 	ldr	r3, [fp, #-16]
     128:	e2831001 	add	r1, r3, #1
     12c:	e50b1010 	str	r1, [fp, #-16]
     130:	e5d22000 	ldrb	r2, [r2]
     134:	e5c32000 	strb	r2, [r3]
     138:	e5d33000 	ldrb	r3, [r3]
     13c:	e3530000 	cmp	r3, #0
     140:	1afffff4 	bne	118 <strcpy+0x20>
     144:	e51b3008 	ldr	r3, [fp, #-8]
     148:	e1a00003 	mov	r0, r3
     14c:	e28bd000 	add	sp, fp, #0
     150:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     154:	e12fff1e 	bx	lr

00000158 <strcmp>:
     158:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     15c:	e28db000 	add	fp, sp, #0
     160:	e24dd00c 	sub	sp, sp, #12
     164:	e50b0008 	str	r0, [fp, #-8]
     168:	e50b100c 	str	r1, [fp, #-12]
     16c:	ea000005 	b	188 <strcmp+0x30>
     170:	e51b3008 	ldr	r3, [fp, #-8]
     174:	e2833001 	add	r3, r3, #1
     178:	e50b3008 	str	r3, [fp, #-8]
     17c:	e51b300c 	ldr	r3, [fp, #-12]
     180:	e2833001 	add	r3, r3, #1
     184:	e50b300c 	str	r3, [fp, #-12]
     188:	e51b3008 	ldr	r3, [fp, #-8]
     18c:	e5d33000 	ldrb	r3, [r3]
     190:	e3530000 	cmp	r3, #0
     194:	0a000005 	beq	1b0 <strcmp+0x58>
     198:	e51b3008 	ldr	r3, [fp, #-8]
     19c:	e5d32000 	ldrb	r2, [r3]
     1a0:	e51b300c 	ldr	r3, [fp, #-12]
     1a4:	e5d33000 	ldrb	r3, [r3]
     1a8:	e1520003 	cmp	r2, r3
     1ac:	0affffef 	beq	170 <strcmp+0x18>
     1b0:	e51b3008 	ldr	r3, [fp, #-8]
     1b4:	e5d33000 	ldrb	r3, [r3]
     1b8:	e1a02003 	mov	r2, r3
     1bc:	e51b300c 	ldr	r3, [fp, #-12]
     1c0:	e5d33000 	ldrb	r3, [r3]
     1c4:	e0423003 	sub	r3, r2, r3
     1c8:	e1a00003 	mov	r0, r3
     1cc:	e28bd000 	add	sp, fp, #0
     1d0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1d4:	e12fff1e 	bx	lr

000001d8 <strlen>:
     1d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1dc:	e28db000 	add	fp, sp, #0
     1e0:	e24dd014 	sub	sp, sp, #20
     1e4:	e50b0010 	str	r0, [fp, #-16]
     1e8:	e3a03000 	mov	r3, #0
     1ec:	e50b3008 	str	r3, [fp, #-8]
     1f0:	ea000002 	b	200 <strlen+0x28>
     1f4:	e51b3008 	ldr	r3, [fp, #-8]
     1f8:	e2833001 	add	r3, r3, #1
     1fc:	e50b3008 	str	r3, [fp, #-8]
     200:	e51b3008 	ldr	r3, [fp, #-8]
     204:	e51b2010 	ldr	r2, [fp, #-16]
     208:	e0823003 	add	r3, r2, r3
     20c:	e5d33000 	ldrb	r3, [r3]
     210:	e3530000 	cmp	r3, #0
     214:	1afffff6 	bne	1f4 <strlen+0x1c>
     218:	e51b3008 	ldr	r3, [fp, #-8]
     21c:	e1a00003 	mov	r0, r3
     220:	e28bd000 	add	sp, fp, #0
     224:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     228:	e12fff1e 	bx	lr

0000022c <memset>:
     22c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     230:	e28db000 	add	fp, sp, #0
     234:	e24dd024 	sub	sp, sp, #36	@ 0x24
     238:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     23c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     240:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     244:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     248:	e50b3008 	str	r3, [fp, #-8]
     24c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     250:	e54b300d 	strb	r3, [fp, #-13]
     254:	e55b200d 	ldrb	r2, [fp, #-13]
     258:	e1a03002 	mov	r3, r2
     25c:	e1a03403 	lsl	r3, r3, #8
     260:	e0833002 	add	r3, r3, r2
     264:	e1a03803 	lsl	r3, r3, #16
     268:	e1a02003 	mov	r2, r3
     26c:	e55b300d 	ldrb	r3, [fp, #-13]
     270:	e1a03403 	lsl	r3, r3, #8
     274:	e1822003 	orr	r2, r2, r3
     278:	e55b300d 	ldrb	r3, [fp, #-13]
     27c:	e1823003 	orr	r3, r2, r3
     280:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     284:	ea000008 	b	2ac <memset+0x80>
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
     2b4:	0a000003 	beq	2c8 <memset+0x9c>
     2b8:	e51b3008 	ldr	r3, [fp, #-8]
     2bc:	e2033003 	and	r3, r3, #3
     2c0:	e3530000 	cmp	r3, #0
     2c4:	1affffef 	bne	288 <memset+0x5c>
     2c8:	e51b3008 	ldr	r3, [fp, #-8]
     2cc:	e50b300c 	str	r3, [fp, #-12]
     2d0:	ea000008 	b	2f8 <memset+0xcc>
     2d4:	e51b300c 	ldr	r3, [fp, #-12]
     2d8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     2dc:	e5832000 	str	r2, [r3]
     2e0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2e4:	e2433004 	sub	r3, r3, #4
     2e8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2ec:	e51b300c 	ldr	r3, [fp, #-12]
     2f0:	e2833004 	add	r3, r3, #4
     2f4:	e50b300c 	str	r3, [fp, #-12]
     2f8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2fc:	e3530003 	cmp	r3, #3
     300:	8afffff3 	bhi	2d4 <memset+0xa8>
     304:	e51b300c 	ldr	r3, [fp, #-12]
     308:	e50b3008 	str	r3, [fp, #-8]
     30c:	ea000008 	b	334 <memset+0x108>
     310:	e51b3008 	ldr	r3, [fp, #-8]
     314:	e55b200d 	ldrb	r2, [fp, #-13]
     318:	e5c32000 	strb	r2, [r3]
     31c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     320:	e2433001 	sub	r3, r3, #1
     324:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     328:	e51b3008 	ldr	r3, [fp, #-8]
     32c:	e2833001 	add	r3, r3, #1
     330:	e50b3008 	str	r3, [fp, #-8]
     334:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     338:	e3530000 	cmp	r3, #0
     33c:	1afffff3 	bne	310 <memset+0xe4>
     340:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     344:	e1a00003 	mov	r0, r3
     348:	e28bd000 	add	sp, fp, #0
     34c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     350:	e12fff1e 	bx	lr

00000354 <strchr>:
     354:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     358:	e28db000 	add	fp, sp, #0
     35c:	e24dd00c 	sub	sp, sp, #12
     360:	e50b0008 	str	r0, [fp, #-8]
     364:	e1a03001 	mov	r3, r1
     368:	e54b3009 	strb	r3, [fp, #-9]
     36c:	ea000009 	b	398 <strchr+0x44>
     370:	e51b3008 	ldr	r3, [fp, #-8]
     374:	e5d33000 	ldrb	r3, [r3]
     378:	e55b2009 	ldrb	r2, [fp, #-9]
     37c:	e1520003 	cmp	r2, r3
     380:	1a000001 	bne	38c <strchr+0x38>
     384:	e51b3008 	ldr	r3, [fp, #-8]
     388:	ea000007 	b	3ac <strchr+0x58>
     38c:	e51b3008 	ldr	r3, [fp, #-8]
     390:	e2833001 	add	r3, r3, #1
     394:	e50b3008 	str	r3, [fp, #-8]
     398:	e51b3008 	ldr	r3, [fp, #-8]
     39c:	e5d33000 	ldrb	r3, [r3]
     3a0:	e3530000 	cmp	r3, #0
     3a4:	1afffff1 	bne	370 <strchr+0x1c>
     3a8:	e3a03000 	mov	r3, #0
     3ac:	e1a00003 	mov	r0, r3
     3b0:	e28bd000 	add	sp, fp, #0
     3b4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3b8:	e12fff1e 	bx	lr

000003bc <gets>:
     3bc:	e92d4800 	push	{fp, lr}
     3c0:	e28db004 	add	fp, sp, #4
     3c4:	e24dd018 	sub	sp, sp, #24
     3c8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     3cc:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     3d0:	e3a03000 	mov	r3, #0
     3d4:	e50b3008 	str	r3, [fp, #-8]
     3d8:	ea000016 	b	438 <gets+0x7c>
     3dc:	e24b300d 	sub	r3, fp, #13
     3e0:	e3a02001 	mov	r2, #1
     3e4:	e1a01003 	mov	r1, r3
     3e8:	e3a00000 	mov	r0, #0
     3ec:	eb00009b 	bl	660 <read>
     3f0:	e50b000c 	str	r0, [fp, #-12]
     3f4:	e51b300c 	ldr	r3, [fp, #-12]
     3f8:	e3530000 	cmp	r3, #0
     3fc:	da000013 	ble	450 <gets+0x94>
     400:	e51b3008 	ldr	r3, [fp, #-8]
     404:	e2832001 	add	r2, r3, #1
     408:	e50b2008 	str	r2, [fp, #-8]
     40c:	e1a02003 	mov	r2, r3
     410:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     414:	e0833002 	add	r3, r3, r2
     418:	e55b200d 	ldrb	r2, [fp, #-13]
     41c:	e5c32000 	strb	r2, [r3]
     420:	e55b300d 	ldrb	r3, [fp, #-13]
     424:	e353000a 	cmp	r3, #10
     428:	0a000009 	beq	454 <gets+0x98>
     42c:	e55b300d 	ldrb	r3, [fp, #-13]
     430:	e353000d 	cmp	r3, #13
     434:	0a000006 	beq	454 <gets+0x98>
     438:	e51b3008 	ldr	r3, [fp, #-8]
     43c:	e2833001 	add	r3, r3, #1
     440:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     444:	e1520003 	cmp	r2, r3
     448:	caffffe3 	bgt	3dc <gets+0x20>
     44c:	ea000000 	b	454 <gets+0x98>
     450:	e1a00000 	nop			@ (mov r0, r0)
     454:	e51b3008 	ldr	r3, [fp, #-8]
     458:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     45c:	e0823003 	add	r3, r2, r3
     460:	e3a02000 	mov	r2, #0
     464:	e5c32000 	strb	r2, [r3]
     468:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     46c:	e1a00003 	mov	r0, r3
     470:	e24bd004 	sub	sp, fp, #4
     474:	e8bd8800 	pop	{fp, pc}

00000478 <stat>:
     478:	e92d4800 	push	{fp, lr}
     47c:	e28db004 	add	fp, sp, #4
     480:	e24dd010 	sub	sp, sp, #16
     484:	e50b0010 	str	r0, [fp, #-16]
     488:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     48c:	e3a01000 	mov	r1, #0
     490:	e51b0010 	ldr	r0, [fp, #-16]
     494:	eb00009e 	bl	714 <open>
     498:	e50b0008 	str	r0, [fp, #-8]
     49c:	e51b3008 	ldr	r3, [fp, #-8]
     4a0:	e3530000 	cmp	r3, #0
     4a4:	aa000001 	bge	4b0 <stat+0x38>
     4a8:	e3e03000 	mvn	r3, #0
     4ac:	ea000006 	b	4cc <stat+0x54>
     4b0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     4b4:	e51b0008 	ldr	r0, [fp, #-8]
     4b8:	eb0000b0 	bl	780 <fstat>
     4bc:	e50b000c 	str	r0, [fp, #-12]
     4c0:	e51b0008 	ldr	r0, [fp, #-8]
     4c4:	eb000077 	bl	6a8 <close>
     4c8:	e51b300c 	ldr	r3, [fp, #-12]
     4cc:	e1a00003 	mov	r0, r3
     4d0:	e24bd004 	sub	sp, fp, #4
     4d4:	e8bd8800 	pop	{fp, pc}

000004d8 <atoi>:
     4d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4dc:	e28db000 	add	fp, sp, #0
     4e0:	e24dd014 	sub	sp, sp, #20
     4e4:	e50b0010 	str	r0, [fp, #-16]
     4e8:	e3a03000 	mov	r3, #0
     4ec:	e50b3008 	str	r3, [fp, #-8]
     4f0:	ea00000c 	b	528 <atoi+0x50>
     4f4:	e51b2008 	ldr	r2, [fp, #-8]
     4f8:	e1a03002 	mov	r3, r2
     4fc:	e1a03103 	lsl	r3, r3, #2
     500:	e0833002 	add	r3, r3, r2
     504:	e1a03083 	lsl	r3, r3, #1
     508:	e1a01003 	mov	r1, r3
     50c:	e51b3010 	ldr	r3, [fp, #-16]
     510:	e2832001 	add	r2, r3, #1
     514:	e50b2010 	str	r2, [fp, #-16]
     518:	e5d33000 	ldrb	r3, [r3]
     51c:	e0813003 	add	r3, r1, r3
     520:	e2433030 	sub	r3, r3, #48	@ 0x30
     524:	e50b3008 	str	r3, [fp, #-8]
     528:	e51b3010 	ldr	r3, [fp, #-16]
     52c:	e5d33000 	ldrb	r3, [r3]
     530:	e353002f 	cmp	r3, #47	@ 0x2f
     534:	9a000003 	bls	548 <atoi+0x70>
     538:	e51b3010 	ldr	r3, [fp, #-16]
     53c:	e5d33000 	ldrb	r3, [r3]
     540:	e3530039 	cmp	r3, #57	@ 0x39
     544:	9affffea 	bls	4f4 <atoi+0x1c>
     548:	e51b3008 	ldr	r3, [fp, #-8]
     54c:	e1a00003 	mov	r0, r3
     550:	e28bd000 	add	sp, fp, #0
     554:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     558:	e12fff1e 	bx	lr

0000055c <memmove>:
     55c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     560:	e28db000 	add	fp, sp, #0
     564:	e24dd01c 	sub	sp, sp, #28
     568:	e50b0010 	str	r0, [fp, #-16]
     56c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     570:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     574:	e51b3010 	ldr	r3, [fp, #-16]
     578:	e50b3008 	str	r3, [fp, #-8]
     57c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     580:	e50b300c 	str	r3, [fp, #-12]
     584:	ea000007 	b	5a8 <memmove+0x4c>
     588:	e51b200c 	ldr	r2, [fp, #-12]
     58c:	e2823001 	add	r3, r2, #1
     590:	e50b300c 	str	r3, [fp, #-12]
     594:	e51b3008 	ldr	r3, [fp, #-8]
     598:	e2831001 	add	r1, r3, #1
     59c:	e50b1008 	str	r1, [fp, #-8]
     5a0:	e5d22000 	ldrb	r2, [r2]
     5a4:	e5c32000 	strb	r2, [r3]
     5a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     5ac:	e2432001 	sub	r2, r3, #1
     5b0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     5b4:	e3530000 	cmp	r3, #0
     5b8:	cafffff2 	bgt	588 <memmove+0x2c>
     5bc:	e51b3010 	ldr	r3, [fp, #-16]
     5c0:	e1a00003 	mov	r0, r3
     5c4:	e28bd000 	add	sp, fp, #0
     5c8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5cc:	e12fff1e 	bx	lr

000005d0 <fork>:
     5d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5d4:	e1a04003 	mov	r4, r3
     5d8:	e1a03002 	mov	r3, r2
     5dc:	e1a02001 	mov	r2, r1
     5e0:	e1a01000 	mov	r1, r0
     5e4:	e3a00001 	mov	r0, #1
     5e8:	ef000000 	svc	0x00000000
     5ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5f0:	e12fff1e 	bx	lr

000005f4 <exit>:
     5f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5f8:	e1a04003 	mov	r4, r3
     5fc:	e1a03002 	mov	r3, r2
     600:	e1a02001 	mov	r2, r1
     604:	e1a01000 	mov	r1, r0
     608:	e3a00002 	mov	r0, #2
     60c:	ef000000 	svc	0x00000000
     610:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     614:	e12fff1e 	bx	lr

00000618 <wait>:
     618:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     61c:	e1a04003 	mov	r4, r3
     620:	e1a03002 	mov	r3, r2
     624:	e1a02001 	mov	r2, r1
     628:	e1a01000 	mov	r1, r0
     62c:	e3a00003 	mov	r0, #3
     630:	ef000000 	svc	0x00000000
     634:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     638:	e12fff1e 	bx	lr

0000063c <pipe>:
     63c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     640:	e1a04003 	mov	r4, r3
     644:	e1a03002 	mov	r3, r2
     648:	e1a02001 	mov	r2, r1
     64c:	e1a01000 	mov	r1, r0
     650:	e3a00004 	mov	r0, #4
     654:	ef000000 	svc	0x00000000
     658:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     65c:	e12fff1e 	bx	lr

00000660 <read>:
     660:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     664:	e1a04003 	mov	r4, r3
     668:	e1a03002 	mov	r3, r2
     66c:	e1a02001 	mov	r2, r1
     670:	e1a01000 	mov	r1, r0
     674:	e3a00005 	mov	r0, #5
     678:	ef000000 	svc	0x00000000
     67c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     680:	e12fff1e 	bx	lr

00000684 <write>:
     684:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     688:	e1a04003 	mov	r4, r3
     68c:	e1a03002 	mov	r3, r2
     690:	e1a02001 	mov	r2, r1
     694:	e1a01000 	mov	r1, r0
     698:	e3a00010 	mov	r0, #16
     69c:	ef000000 	svc	0x00000000
     6a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6a4:	e12fff1e 	bx	lr

000006a8 <close>:
     6a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6ac:	e1a04003 	mov	r4, r3
     6b0:	e1a03002 	mov	r3, r2
     6b4:	e1a02001 	mov	r2, r1
     6b8:	e1a01000 	mov	r1, r0
     6bc:	e3a00015 	mov	r0, #21
     6c0:	ef000000 	svc	0x00000000
     6c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6c8:	e12fff1e 	bx	lr

000006cc <kill>:
     6cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6d0:	e1a04003 	mov	r4, r3
     6d4:	e1a03002 	mov	r3, r2
     6d8:	e1a02001 	mov	r2, r1
     6dc:	e1a01000 	mov	r1, r0
     6e0:	e3a00006 	mov	r0, #6
     6e4:	ef000000 	svc	0x00000000
     6e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6ec:	e12fff1e 	bx	lr

000006f0 <exec>:
     6f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6f4:	e1a04003 	mov	r4, r3
     6f8:	e1a03002 	mov	r3, r2
     6fc:	e1a02001 	mov	r2, r1
     700:	e1a01000 	mov	r1, r0
     704:	e3a00007 	mov	r0, #7
     708:	ef000000 	svc	0x00000000
     70c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     710:	e12fff1e 	bx	lr

00000714 <open>:
     714:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     718:	e1a04003 	mov	r4, r3
     71c:	e1a03002 	mov	r3, r2
     720:	e1a02001 	mov	r2, r1
     724:	e1a01000 	mov	r1, r0
     728:	e3a0000f 	mov	r0, #15
     72c:	ef000000 	svc	0x00000000
     730:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     734:	e12fff1e 	bx	lr

00000738 <mknod>:
     738:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     73c:	e1a04003 	mov	r4, r3
     740:	e1a03002 	mov	r3, r2
     744:	e1a02001 	mov	r2, r1
     748:	e1a01000 	mov	r1, r0
     74c:	e3a00011 	mov	r0, #17
     750:	ef000000 	svc	0x00000000
     754:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     758:	e12fff1e 	bx	lr

0000075c <unlink>:
     75c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     760:	e1a04003 	mov	r4, r3
     764:	e1a03002 	mov	r3, r2
     768:	e1a02001 	mov	r2, r1
     76c:	e1a01000 	mov	r1, r0
     770:	e3a00012 	mov	r0, #18
     774:	ef000000 	svc	0x00000000
     778:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     77c:	e12fff1e 	bx	lr

00000780 <fstat>:
     780:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     784:	e1a04003 	mov	r4, r3
     788:	e1a03002 	mov	r3, r2
     78c:	e1a02001 	mov	r2, r1
     790:	e1a01000 	mov	r1, r0
     794:	e3a00008 	mov	r0, #8
     798:	ef000000 	svc	0x00000000
     79c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7a0:	e12fff1e 	bx	lr

000007a4 <link>:
     7a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7a8:	e1a04003 	mov	r4, r3
     7ac:	e1a03002 	mov	r3, r2
     7b0:	e1a02001 	mov	r2, r1
     7b4:	e1a01000 	mov	r1, r0
     7b8:	e3a00013 	mov	r0, #19
     7bc:	ef000000 	svc	0x00000000
     7c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7c4:	e12fff1e 	bx	lr

000007c8 <mkdir>:
     7c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7cc:	e1a04003 	mov	r4, r3
     7d0:	e1a03002 	mov	r3, r2
     7d4:	e1a02001 	mov	r2, r1
     7d8:	e1a01000 	mov	r1, r0
     7dc:	e3a00014 	mov	r0, #20
     7e0:	ef000000 	svc	0x00000000
     7e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7e8:	e12fff1e 	bx	lr

000007ec <chdir>:
     7ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7f0:	e1a04003 	mov	r4, r3
     7f4:	e1a03002 	mov	r3, r2
     7f8:	e1a02001 	mov	r2, r1
     7fc:	e1a01000 	mov	r1, r0
     800:	e3a00009 	mov	r0, #9
     804:	ef000000 	svc	0x00000000
     808:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     80c:	e12fff1e 	bx	lr

00000810 <dup>:
     810:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     814:	e1a04003 	mov	r4, r3
     818:	e1a03002 	mov	r3, r2
     81c:	e1a02001 	mov	r2, r1
     820:	e1a01000 	mov	r1, r0
     824:	e3a0000a 	mov	r0, #10
     828:	ef000000 	svc	0x00000000
     82c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     830:	e12fff1e 	bx	lr

00000834 <getpid>:
     834:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     838:	e1a04003 	mov	r4, r3
     83c:	e1a03002 	mov	r3, r2
     840:	e1a02001 	mov	r2, r1
     844:	e1a01000 	mov	r1, r0
     848:	e3a0000b 	mov	r0, #11
     84c:	ef000000 	svc	0x00000000
     850:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     854:	e12fff1e 	bx	lr

00000858 <sbrk>:
     858:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     85c:	e1a04003 	mov	r4, r3
     860:	e1a03002 	mov	r3, r2
     864:	e1a02001 	mov	r2, r1
     868:	e1a01000 	mov	r1, r0
     86c:	e3a0000c 	mov	r0, #12
     870:	ef000000 	svc	0x00000000
     874:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     878:	e12fff1e 	bx	lr

0000087c <sleep>:
     87c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     880:	e1a04003 	mov	r4, r3
     884:	e1a03002 	mov	r3, r2
     888:	e1a02001 	mov	r2, r1
     88c:	e1a01000 	mov	r1, r0
     890:	e3a0000d 	mov	r0, #13
     894:	ef000000 	svc	0x00000000
     898:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     89c:	e12fff1e 	bx	lr

000008a0 <uptime>:
     8a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8a4:	e1a04003 	mov	r4, r3
     8a8:	e1a03002 	mov	r3, r2
     8ac:	e1a02001 	mov	r2, r1
     8b0:	e1a01000 	mov	r1, r0
     8b4:	e3a0000e 	mov	r0, #14
     8b8:	ef000000 	svc	0x00000000
     8bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8c0:	e12fff1e 	bx	lr

000008c4 <getprocs>:
     8c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8c8:	e1a04003 	mov	r4, r3
     8cc:	e1a03002 	mov	r3, r2
     8d0:	e1a02001 	mov	r2, r1
     8d4:	e1a01000 	mov	r1, r0
     8d8:	e3a00016 	mov	r0, #22
     8dc:	ef000000 	svc	0x00000000
     8e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8e4:	e12fff1e 	bx	lr

000008e8 <getpinfo>:
     8e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8ec:	e1a04003 	mov	r4, r3
     8f0:	e1a03002 	mov	r3, r2
     8f4:	e1a02001 	mov	r2, r1
     8f8:	e1a01000 	mov	r1, r0
     8fc:	e3a00018 	mov	r0, #24
     900:	ef000000 	svc	0x00000000
     904:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     908:	e12fff1e 	bx	lr

0000090c <settickets>:
     90c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     910:	e1a04003 	mov	r4, r3
     914:	e1a03002 	mov	r3, r2
     918:	e1a02001 	mov	r2, r1
     91c:	e1a01000 	mov	r1, r0
     920:	e3a00017 	mov	r0, #23
     924:	ef000000 	svc	0x00000000
     928:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     92c:	e12fff1e 	bx	lr

00000930 <srand>:
     930:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     934:	e1a04003 	mov	r4, r3
     938:	e1a03002 	mov	r3, r2
     93c:	e1a02001 	mov	r2, r1
     940:	e1a01000 	mov	r1, r0
     944:	e3a00019 	mov	r0, #25
     948:	ef000000 	svc	0x00000000
     94c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     950:	e12fff1e 	bx	lr

00000954 <test>:
     954:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     958:	e1a04003 	mov	r4, r3
     95c:	e1a03002 	mov	r3, r2
     960:	e1a02001 	mov	r2, r1
     964:	e1a01000 	mov	r1, r0
     968:	e3a0001a 	mov	r0, #26
     96c:	ef000000 	svc	0x00000000
     970:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     974:	e12fff1e 	bx	lr

00000978 <putc>:
     978:	e92d4800 	push	{fp, lr}
     97c:	e28db004 	add	fp, sp, #4
     980:	e24dd008 	sub	sp, sp, #8
     984:	e50b0008 	str	r0, [fp, #-8]
     988:	e1a03001 	mov	r3, r1
     98c:	e54b3009 	strb	r3, [fp, #-9]
     990:	e24b3009 	sub	r3, fp, #9
     994:	e3a02001 	mov	r2, #1
     998:	e1a01003 	mov	r1, r3
     99c:	e51b0008 	ldr	r0, [fp, #-8]
     9a0:	ebffff37 	bl	684 <write>
     9a4:	e1a00000 	nop			@ (mov r0, r0)
     9a8:	e24bd004 	sub	sp, fp, #4
     9ac:	e8bd8800 	pop	{fp, pc}

000009b0 <printint>:
     9b0:	e92d4800 	push	{fp, lr}
     9b4:	e28db004 	add	fp, sp, #4
     9b8:	e24dd030 	sub	sp, sp, #48	@ 0x30
     9bc:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     9c0:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     9c4:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     9c8:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     9cc:	e3a03000 	mov	r3, #0
     9d0:	e50b300c 	str	r3, [fp, #-12]
     9d4:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     9d8:	e3530000 	cmp	r3, #0
     9dc:	0a000008 	beq	a04 <printint+0x54>
     9e0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     9e4:	e3530000 	cmp	r3, #0
     9e8:	aa000005 	bge	a04 <printint+0x54>
     9ec:	e3a03001 	mov	r3, #1
     9f0:	e50b300c 	str	r3, [fp, #-12]
     9f4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     9f8:	e2633000 	rsb	r3, r3, #0
     9fc:	e50b3010 	str	r3, [fp, #-16]
     a00:	ea000001 	b	a0c <printint+0x5c>
     a04:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a08:	e50b3010 	str	r3, [fp, #-16]
     a0c:	e3a03000 	mov	r3, #0
     a10:	e50b3008 	str	r3, [fp, #-8]
     a14:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     a18:	e51b3010 	ldr	r3, [fp, #-16]
     a1c:	e1a01002 	mov	r1, r2
     a20:	e1a00003 	mov	r0, r3
     a24:	eb0001d5 	bl	1180 <__aeabi_uidivmod>
     a28:	e1a03001 	mov	r3, r1
     a2c:	e1a01003 	mov	r1, r3
     a30:	e51b3008 	ldr	r3, [fp, #-8]
     a34:	e2832001 	add	r2, r3, #1
     a38:	e50b2008 	str	r2, [fp, #-8]
     a3c:	e59f20a0 	ldr	r2, [pc, #160]	@ ae4 <printint+0x134>
     a40:	e7d22001 	ldrb	r2, [r2, r1]
     a44:	e2433004 	sub	r3, r3, #4
     a48:	e083300b 	add	r3, r3, fp
     a4c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     a50:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     a54:	e1a01003 	mov	r1, r3
     a58:	e51b0010 	ldr	r0, [fp, #-16]
     a5c:	eb00018a 	bl	108c <__udivsi3>
     a60:	e1a03000 	mov	r3, r0
     a64:	e50b3010 	str	r3, [fp, #-16]
     a68:	e51b3010 	ldr	r3, [fp, #-16]
     a6c:	e3530000 	cmp	r3, #0
     a70:	1affffe7 	bne	a14 <printint+0x64>
     a74:	e51b300c 	ldr	r3, [fp, #-12]
     a78:	e3530000 	cmp	r3, #0
     a7c:	0a00000e 	beq	abc <printint+0x10c>
     a80:	e51b3008 	ldr	r3, [fp, #-8]
     a84:	e2832001 	add	r2, r3, #1
     a88:	e50b2008 	str	r2, [fp, #-8]
     a8c:	e2433004 	sub	r3, r3, #4
     a90:	e083300b 	add	r3, r3, fp
     a94:	e3a0202d 	mov	r2, #45	@ 0x2d
     a98:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     a9c:	ea000006 	b	abc <printint+0x10c>
     aa0:	e24b2020 	sub	r2, fp, #32
     aa4:	e51b3008 	ldr	r3, [fp, #-8]
     aa8:	e0823003 	add	r3, r2, r3
     aac:	e5d33000 	ldrb	r3, [r3]
     ab0:	e1a01003 	mov	r1, r3
     ab4:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     ab8:	ebffffae 	bl	978 <putc>
     abc:	e51b3008 	ldr	r3, [fp, #-8]
     ac0:	e2433001 	sub	r3, r3, #1
     ac4:	e50b3008 	str	r3, [fp, #-8]
     ac8:	e51b3008 	ldr	r3, [fp, #-8]
     acc:	e3530000 	cmp	r3, #0
     ad0:	aafffff2 	bge	aa0 <printint+0xf0>
     ad4:	e1a00000 	nop			@ (mov r0, r0)
     ad8:	e1a00000 	nop			@ (mov r0, r0)
     adc:	e24bd004 	sub	sp, fp, #4
     ae0:	e8bd8800 	pop	{fp, pc}
     ae4:	0000120c 	.word	0x0000120c

00000ae8 <printf>:
     ae8:	e92d000e 	push	{r1, r2, r3}
     aec:	e92d4800 	push	{fp, lr}
     af0:	e28db004 	add	fp, sp, #4
     af4:	e24dd024 	sub	sp, sp, #36	@ 0x24
     af8:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     afc:	e3a03000 	mov	r3, #0
     b00:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b04:	e28b3008 	add	r3, fp, #8
     b08:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b0c:	e3a03000 	mov	r3, #0
     b10:	e50b3010 	str	r3, [fp, #-16]
     b14:	ea000074 	b	cec <printf+0x204>
     b18:	e59b2004 	ldr	r2, [fp, #4]
     b1c:	e51b3010 	ldr	r3, [fp, #-16]
     b20:	e0823003 	add	r3, r2, r3
     b24:	e5d33000 	ldrb	r3, [r3]
     b28:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     b2c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b30:	e3530000 	cmp	r3, #0
     b34:	1a00000b 	bne	b68 <printf+0x80>
     b38:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b3c:	e3530025 	cmp	r3, #37	@ 0x25
     b40:	1a000002 	bne	b50 <printf+0x68>
     b44:	e3a03025 	mov	r3, #37	@ 0x25
     b48:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b4c:	ea000063 	b	ce0 <printf+0x1f8>
     b50:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b54:	e6ef3073 	uxtb	r3, r3
     b58:	e1a01003 	mov	r1, r3
     b5c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b60:	ebffff84 	bl	978 <putc>
     b64:	ea00005d 	b	ce0 <printf+0x1f8>
     b68:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b6c:	e3530025 	cmp	r3, #37	@ 0x25
     b70:	1a00005a 	bne	ce0 <printf+0x1f8>
     b74:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b78:	e3530064 	cmp	r3, #100	@ 0x64
     b7c:	1a00000a 	bne	bac <printf+0xc4>
     b80:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b84:	e5933000 	ldr	r3, [r3]
     b88:	e1a01003 	mov	r1, r3
     b8c:	e3a03001 	mov	r3, #1
     b90:	e3a0200a 	mov	r2, #10
     b94:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b98:	ebffff84 	bl	9b0 <printint>
     b9c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ba0:	e2833004 	add	r3, r3, #4
     ba4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ba8:	ea00004a 	b	cd8 <printf+0x1f0>
     bac:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bb0:	e3530078 	cmp	r3, #120	@ 0x78
     bb4:	0a000002 	beq	bc4 <printf+0xdc>
     bb8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bbc:	e3530070 	cmp	r3, #112	@ 0x70
     bc0:	1a00000a 	bne	bf0 <printf+0x108>
     bc4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bc8:	e5933000 	ldr	r3, [r3]
     bcc:	e1a01003 	mov	r1, r3
     bd0:	e3a03000 	mov	r3, #0
     bd4:	e3a02010 	mov	r2, #16
     bd8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bdc:	ebffff73 	bl	9b0 <printint>
     be0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     be4:	e2833004 	add	r3, r3, #4
     be8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     bec:	ea000039 	b	cd8 <printf+0x1f0>
     bf0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bf4:	e3530073 	cmp	r3, #115	@ 0x73
     bf8:	1a000018 	bne	c60 <printf+0x178>
     bfc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c00:	e5933000 	ldr	r3, [r3]
     c04:	e50b300c 	str	r3, [fp, #-12]
     c08:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c0c:	e2833004 	add	r3, r3, #4
     c10:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c14:	e51b300c 	ldr	r3, [fp, #-12]
     c18:	e3530000 	cmp	r3, #0
     c1c:	1a00000a 	bne	c4c <printf+0x164>
     c20:	e59f30f4 	ldr	r3, [pc, #244]	@ d1c <printf+0x234>
     c24:	e50b300c 	str	r3, [fp, #-12]
     c28:	ea000007 	b	c4c <printf+0x164>
     c2c:	e51b300c 	ldr	r3, [fp, #-12]
     c30:	e5d33000 	ldrb	r3, [r3]
     c34:	e1a01003 	mov	r1, r3
     c38:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c3c:	ebffff4d 	bl	978 <putc>
     c40:	e51b300c 	ldr	r3, [fp, #-12]
     c44:	e2833001 	add	r3, r3, #1
     c48:	e50b300c 	str	r3, [fp, #-12]
     c4c:	e51b300c 	ldr	r3, [fp, #-12]
     c50:	e5d33000 	ldrb	r3, [r3]
     c54:	e3530000 	cmp	r3, #0
     c58:	1afffff3 	bne	c2c <printf+0x144>
     c5c:	ea00001d 	b	cd8 <printf+0x1f0>
     c60:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c64:	e3530063 	cmp	r3, #99	@ 0x63
     c68:	1a000009 	bne	c94 <printf+0x1ac>
     c6c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c70:	e5933000 	ldr	r3, [r3]
     c74:	e6ef3073 	uxtb	r3, r3
     c78:	e1a01003 	mov	r1, r3
     c7c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c80:	ebffff3c 	bl	978 <putc>
     c84:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c88:	e2833004 	add	r3, r3, #4
     c8c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c90:	ea000010 	b	cd8 <printf+0x1f0>
     c94:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c98:	e3530025 	cmp	r3, #37	@ 0x25
     c9c:	1a000005 	bne	cb8 <printf+0x1d0>
     ca0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ca4:	e6ef3073 	uxtb	r3, r3
     ca8:	e1a01003 	mov	r1, r3
     cac:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cb0:	ebffff30 	bl	978 <putc>
     cb4:	ea000007 	b	cd8 <printf+0x1f0>
     cb8:	e3a01025 	mov	r1, #37	@ 0x25
     cbc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cc0:	ebffff2c 	bl	978 <putc>
     cc4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cc8:	e6ef3073 	uxtb	r3, r3
     ccc:	e1a01003 	mov	r1, r3
     cd0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cd4:	ebffff27 	bl	978 <putc>
     cd8:	e3a03000 	mov	r3, #0
     cdc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     ce0:	e51b3010 	ldr	r3, [fp, #-16]
     ce4:	e2833001 	add	r3, r3, #1
     ce8:	e50b3010 	str	r3, [fp, #-16]
     cec:	e59b2004 	ldr	r2, [fp, #4]
     cf0:	e51b3010 	ldr	r3, [fp, #-16]
     cf4:	e0823003 	add	r3, r2, r3
     cf8:	e5d33000 	ldrb	r3, [r3]
     cfc:	e3530000 	cmp	r3, #0
     d00:	1affff84 	bne	b18 <printf+0x30>
     d04:	e1a00000 	nop			@ (mov r0, r0)
     d08:	e1a00000 	nop			@ (mov r0, r0)
     d0c:	e24bd004 	sub	sp, fp, #4
     d10:	e8bd4800 	pop	{fp, lr}
     d14:	e28dd00c 	add	sp, sp, #12
     d18:	e12fff1e 	bx	lr
     d1c:	000011fc 	.word	0x000011fc

00000d20 <free>:
     d20:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     d24:	e28db000 	add	fp, sp, #0
     d28:	e24dd014 	sub	sp, sp, #20
     d2c:	e50b0010 	str	r0, [fp, #-16]
     d30:	e51b3010 	ldr	r3, [fp, #-16]
     d34:	e2433008 	sub	r3, r3, #8
     d38:	e50b300c 	str	r3, [fp, #-12]
     d3c:	e59f3154 	ldr	r3, [pc, #340]	@ e98 <free+0x178>
     d40:	e5933000 	ldr	r3, [r3]
     d44:	e50b3008 	str	r3, [fp, #-8]
     d48:	ea000010 	b	d90 <free+0x70>
     d4c:	e51b3008 	ldr	r3, [fp, #-8]
     d50:	e5933000 	ldr	r3, [r3]
     d54:	e51b2008 	ldr	r2, [fp, #-8]
     d58:	e1520003 	cmp	r2, r3
     d5c:	3a000008 	bcc	d84 <free+0x64>
     d60:	e51b200c 	ldr	r2, [fp, #-12]
     d64:	e51b3008 	ldr	r3, [fp, #-8]
     d68:	e1520003 	cmp	r2, r3
     d6c:	8a000010 	bhi	db4 <free+0x94>
     d70:	e51b3008 	ldr	r3, [fp, #-8]
     d74:	e5933000 	ldr	r3, [r3]
     d78:	e51b200c 	ldr	r2, [fp, #-12]
     d7c:	e1520003 	cmp	r2, r3
     d80:	3a00000b 	bcc	db4 <free+0x94>
     d84:	e51b3008 	ldr	r3, [fp, #-8]
     d88:	e5933000 	ldr	r3, [r3]
     d8c:	e50b3008 	str	r3, [fp, #-8]
     d90:	e51b200c 	ldr	r2, [fp, #-12]
     d94:	e51b3008 	ldr	r3, [fp, #-8]
     d98:	e1520003 	cmp	r2, r3
     d9c:	9affffea 	bls	d4c <free+0x2c>
     da0:	e51b3008 	ldr	r3, [fp, #-8]
     da4:	e5933000 	ldr	r3, [r3]
     da8:	e51b200c 	ldr	r2, [fp, #-12]
     dac:	e1520003 	cmp	r2, r3
     db0:	2affffe5 	bcs	d4c <free+0x2c>
     db4:	e51b300c 	ldr	r3, [fp, #-12]
     db8:	e5933004 	ldr	r3, [r3, #4]
     dbc:	e1a03183 	lsl	r3, r3, #3
     dc0:	e51b200c 	ldr	r2, [fp, #-12]
     dc4:	e0822003 	add	r2, r2, r3
     dc8:	e51b3008 	ldr	r3, [fp, #-8]
     dcc:	e5933000 	ldr	r3, [r3]
     dd0:	e1520003 	cmp	r2, r3
     dd4:	1a00000d 	bne	e10 <free+0xf0>
     dd8:	e51b300c 	ldr	r3, [fp, #-12]
     ddc:	e5932004 	ldr	r2, [r3, #4]
     de0:	e51b3008 	ldr	r3, [fp, #-8]
     de4:	e5933000 	ldr	r3, [r3]
     de8:	e5933004 	ldr	r3, [r3, #4]
     dec:	e0822003 	add	r2, r2, r3
     df0:	e51b300c 	ldr	r3, [fp, #-12]
     df4:	e5832004 	str	r2, [r3, #4]
     df8:	e51b3008 	ldr	r3, [fp, #-8]
     dfc:	e5933000 	ldr	r3, [r3]
     e00:	e5932000 	ldr	r2, [r3]
     e04:	e51b300c 	ldr	r3, [fp, #-12]
     e08:	e5832000 	str	r2, [r3]
     e0c:	ea000003 	b	e20 <free+0x100>
     e10:	e51b3008 	ldr	r3, [fp, #-8]
     e14:	e5932000 	ldr	r2, [r3]
     e18:	e51b300c 	ldr	r3, [fp, #-12]
     e1c:	e5832000 	str	r2, [r3]
     e20:	e51b3008 	ldr	r3, [fp, #-8]
     e24:	e5933004 	ldr	r3, [r3, #4]
     e28:	e1a03183 	lsl	r3, r3, #3
     e2c:	e51b2008 	ldr	r2, [fp, #-8]
     e30:	e0823003 	add	r3, r2, r3
     e34:	e51b200c 	ldr	r2, [fp, #-12]
     e38:	e1520003 	cmp	r2, r3
     e3c:	1a00000b 	bne	e70 <free+0x150>
     e40:	e51b3008 	ldr	r3, [fp, #-8]
     e44:	e5932004 	ldr	r2, [r3, #4]
     e48:	e51b300c 	ldr	r3, [fp, #-12]
     e4c:	e5933004 	ldr	r3, [r3, #4]
     e50:	e0822003 	add	r2, r2, r3
     e54:	e51b3008 	ldr	r3, [fp, #-8]
     e58:	e5832004 	str	r2, [r3, #4]
     e5c:	e51b300c 	ldr	r3, [fp, #-12]
     e60:	e5932000 	ldr	r2, [r3]
     e64:	e51b3008 	ldr	r3, [fp, #-8]
     e68:	e5832000 	str	r2, [r3]
     e6c:	ea000002 	b	e7c <free+0x15c>
     e70:	e51b3008 	ldr	r3, [fp, #-8]
     e74:	e51b200c 	ldr	r2, [fp, #-12]
     e78:	e5832000 	str	r2, [r3]
     e7c:	e59f2014 	ldr	r2, [pc, #20]	@ e98 <free+0x178>
     e80:	e51b3008 	ldr	r3, [fp, #-8]
     e84:	e5823000 	str	r3, [r2]
     e88:	e1a00000 	nop			@ (mov r0, r0)
     e8c:	e28bd000 	add	sp, fp, #0
     e90:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     e94:	e12fff1e 	bx	lr
     e98:	00001228 	.word	0x00001228

00000e9c <morecore>:
     e9c:	e92d4800 	push	{fp, lr}
     ea0:	e28db004 	add	fp, sp, #4
     ea4:	e24dd010 	sub	sp, sp, #16
     ea8:	e50b0010 	str	r0, [fp, #-16]
     eac:	e51b3010 	ldr	r3, [fp, #-16]
     eb0:	e3530a01 	cmp	r3, #4096	@ 0x1000
     eb4:	2a000001 	bcs	ec0 <morecore+0x24>
     eb8:	e3a03a01 	mov	r3, #4096	@ 0x1000
     ebc:	e50b3010 	str	r3, [fp, #-16]
     ec0:	e51b3010 	ldr	r3, [fp, #-16]
     ec4:	e1a03183 	lsl	r3, r3, #3
     ec8:	e1a00003 	mov	r0, r3
     ecc:	ebfffe61 	bl	858 <sbrk>
     ed0:	e50b0008 	str	r0, [fp, #-8]
     ed4:	e51b3008 	ldr	r3, [fp, #-8]
     ed8:	e3730001 	cmn	r3, #1
     edc:	1a000001 	bne	ee8 <morecore+0x4c>
     ee0:	e3a03000 	mov	r3, #0
     ee4:	ea00000a 	b	f14 <morecore+0x78>
     ee8:	e51b3008 	ldr	r3, [fp, #-8]
     eec:	e50b300c 	str	r3, [fp, #-12]
     ef0:	e51b300c 	ldr	r3, [fp, #-12]
     ef4:	e51b2010 	ldr	r2, [fp, #-16]
     ef8:	e5832004 	str	r2, [r3, #4]
     efc:	e51b300c 	ldr	r3, [fp, #-12]
     f00:	e2833008 	add	r3, r3, #8
     f04:	e1a00003 	mov	r0, r3
     f08:	ebffff84 	bl	d20 <free>
     f0c:	e59f300c 	ldr	r3, [pc, #12]	@ f20 <morecore+0x84>
     f10:	e5933000 	ldr	r3, [r3]
     f14:	e1a00003 	mov	r0, r3
     f18:	e24bd004 	sub	sp, fp, #4
     f1c:	e8bd8800 	pop	{fp, pc}
     f20:	00001228 	.word	0x00001228

00000f24 <malloc>:
     f24:	e92d4800 	push	{fp, lr}
     f28:	e28db004 	add	fp, sp, #4
     f2c:	e24dd018 	sub	sp, sp, #24
     f30:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     f34:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f38:	e2833007 	add	r3, r3, #7
     f3c:	e1a031a3 	lsr	r3, r3, #3
     f40:	e2833001 	add	r3, r3, #1
     f44:	e50b3010 	str	r3, [fp, #-16]
     f48:	e59f3134 	ldr	r3, [pc, #308]	@ 1084 <malloc+0x160>
     f4c:	e5933000 	ldr	r3, [r3]
     f50:	e50b300c 	str	r3, [fp, #-12]
     f54:	e51b300c 	ldr	r3, [fp, #-12]
     f58:	e3530000 	cmp	r3, #0
     f5c:	1a00000b 	bne	f90 <malloc+0x6c>
     f60:	e59f3120 	ldr	r3, [pc, #288]	@ 1088 <malloc+0x164>
     f64:	e50b300c 	str	r3, [fp, #-12]
     f68:	e59f2114 	ldr	r2, [pc, #276]	@ 1084 <malloc+0x160>
     f6c:	e51b300c 	ldr	r3, [fp, #-12]
     f70:	e5823000 	str	r3, [r2]
     f74:	e59f3108 	ldr	r3, [pc, #264]	@ 1084 <malloc+0x160>
     f78:	e5933000 	ldr	r3, [r3]
     f7c:	e59f2104 	ldr	r2, [pc, #260]	@ 1088 <malloc+0x164>
     f80:	e5823000 	str	r3, [r2]
     f84:	e59f30fc 	ldr	r3, [pc, #252]	@ 1088 <malloc+0x164>
     f88:	e3a02000 	mov	r2, #0
     f8c:	e5832004 	str	r2, [r3, #4]
     f90:	e51b300c 	ldr	r3, [fp, #-12]
     f94:	e5933000 	ldr	r3, [r3]
     f98:	e50b3008 	str	r3, [fp, #-8]
     f9c:	e51b3008 	ldr	r3, [fp, #-8]
     fa0:	e5933004 	ldr	r3, [r3, #4]
     fa4:	e51b2010 	ldr	r2, [fp, #-16]
     fa8:	e1520003 	cmp	r2, r3
     fac:	8a00001e 	bhi	102c <malloc+0x108>
     fb0:	e51b3008 	ldr	r3, [fp, #-8]
     fb4:	e5933004 	ldr	r3, [r3, #4]
     fb8:	e51b2010 	ldr	r2, [fp, #-16]
     fbc:	e1520003 	cmp	r2, r3
     fc0:	1a000004 	bne	fd8 <malloc+0xb4>
     fc4:	e51b3008 	ldr	r3, [fp, #-8]
     fc8:	e5932000 	ldr	r2, [r3]
     fcc:	e51b300c 	ldr	r3, [fp, #-12]
     fd0:	e5832000 	str	r2, [r3]
     fd4:	ea00000e 	b	1014 <malloc+0xf0>
     fd8:	e51b3008 	ldr	r3, [fp, #-8]
     fdc:	e5932004 	ldr	r2, [r3, #4]
     fe0:	e51b3010 	ldr	r3, [fp, #-16]
     fe4:	e0422003 	sub	r2, r2, r3
     fe8:	e51b3008 	ldr	r3, [fp, #-8]
     fec:	e5832004 	str	r2, [r3, #4]
     ff0:	e51b3008 	ldr	r3, [fp, #-8]
     ff4:	e5933004 	ldr	r3, [r3, #4]
     ff8:	e1a03183 	lsl	r3, r3, #3
     ffc:	e51b2008 	ldr	r2, [fp, #-8]
    1000:	e0823003 	add	r3, r2, r3
    1004:	e50b3008 	str	r3, [fp, #-8]
    1008:	e51b3008 	ldr	r3, [fp, #-8]
    100c:	e51b2010 	ldr	r2, [fp, #-16]
    1010:	e5832004 	str	r2, [r3, #4]
    1014:	e59f2068 	ldr	r2, [pc, #104]	@ 1084 <malloc+0x160>
    1018:	e51b300c 	ldr	r3, [fp, #-12]
    101c:	e5823000 	str	r3, [r2]
    1020:	e51b3008 	ldr	r3, [fp, #-8]
    1024:	e2833008 	add	r3, r3, #8
    1028:	ea000012 	b	1078 <malloc+0x154>
    102c:	e59f3050 	ldr	r3, [pc, #80]	@ 1084 <malloc+0x160>
    1030:	e5933000 	ldr	r3, [r3]
    1034:	e51b2008 	ldr	r2, [fp, #-8]
    1038:	e1520003 	cmp	r2, r3
    103c:	1a000007 	bne	1060 <malloc+0x13c>
    1040:	e51b0010 	ldr	r0, [fp, #-16]
    1044:	ebffff94 	bl	e9c <morecore>
    1048:	e50b0008 	str	r0, [fp, #-8]
    104c:	e51b3008 	ldr	r3, [fp, #-8]
    1050:	e3530000 	cmp	r3, #0
    1054:	1a000001 	bne	1060 <malloc+0x13c>
    1058:	e3a03000 	mov	r3, #0
    105c:	ea000005 	b	1078 <malloc+0x154>
    1060:	e51b3008 	ldr	r3, [fp, #-8]
    1064:	e50b300c 	str	r3, [fp, #-12]
    1068:	e51b3008 	ldr	r3, [fp, #-8]
    106c:	e5933000 	ldr	r3, [r3]
    1070:	e50b3008 	str	r3, [fp, #-8]
    1074:	eaffffc8 	b	f9c <malloc+0x78>
    1078:	e1a00003 	mov	r0, r3
    107c:	e24bd004 	sub	sp, fp, #4
    1080:	e8bd8800 	pop	{fp, pc}
    1084:	00001228 	.word	0x00001228
    1088:	00001220 	.word	0x00001220

0000108c <__udivsi3>:
    108c:	e2512001 	subs	r2, r1, #1
    1090:	012fff1e 	bxeq	lr
    1094:	3a000036 	bcc	1174 <__udivsi3+0xe8>
    1098:	e1500001 	cmp	r0, r1
    109c:	9a000022 	bls	112c <__udivsi3+0xa0>
    10a0:	e1110002 	tst	r1, r2
    10a4:	0a000023 	beq	1138 <__udivsi3+0xac>
    10a8:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    10ac:	01a01181 	lsleq	r1, r1, #3
    10b0:	03a03008 	moveq	r3, #8
    10b4:	13a03001 	movne	r3, #1
    10b8:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    10bc:	31510000 	cmpcc	r1, r0
    10c0:	31a01201 	lslcc	r1, r1, #4
    10c4:	31a03203 	lslcc	r3, r3, #4
    10c8:	3afffffa 	bcc	10b8 <__udivsi3+0x2c>
    10cc:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    10d0:	31510000 	cmpcc	r1, r0
    10d4:	31a01081 	lslcc	r1, r1, #1
    10d8:	31a03083 	lslcc	r3, r3, #1
    10dc:	3afffffa 	bcc	10cc <__udivsi3+0x40>
    10e0:	e3a02000 	mov	r2, #0
    10e4:	e1500001 	cmp	r0, r1
    10e8:	20400001 	subcs	r0, r0, r1
    10ec:	21822003 	orrcs	r2, r2, r3
    10f0:	e15000a1 	cmp	r0, r1, lsr #1
    10f4:	204000a1 	subcs	r0, r0, r1, lsr #1
    10f8:	218220a3 	orrcs	r2, r2, r3, lsr #1
    10fc:	e1500121 	cmp	r0, r1, lsr #2
    1100:	20400121 	subcs	r0, r0, r1, lsr #2
    1104:	21822123 	orrcs	r2, r2, r3, lsr #2
    1108:	e15001a1 	cmp	r0, r1, lsr #3
    110c:	204001a1 	subcs	r0, r0, r1, lsr #3
    1110:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1114:	e3500000 	cmp	r0, #0
    1118:	11b03223 	lsrsne	r3, r3, #4
    111c:	11a01221 	lsrne	r1, r1, #4
    1120:	1affffef 	bne	10e4 <__udivsi3+0x58>
    1124:	e1a00002 	mov	r0, r2
    1128:	e12fff1e 	bx	lr
    112c:	03a00001 	moveq	r0, #1
    1130:	13a00000 	movne	r0, #0
    1134:	e12fff1e 	bx	lr
    1138:	e3510801 	cmp	r1, #65536	@ 0x10000
    113c:	21a01821 	lsrcs	r1, r1, #16
    1140:	23a02010 	movcs	r2, #16
    1144:	33a02000 	movcc	r2, #0
    1148:	e3510c01 	cmp	r1, #256	@ 0x100
    114c:	21a01421 	lsrcs	r1, r1, #8
    1150:	22822008 	addcs	r2, r2, #8
    1154:	e3510010 	cmp	r1, #16
    1158:	21a01221 	lsrcs	r1, r1, #4
    115c:	22822004 	addcs	r2, r2, #4
    1160:	e3510004 	cmp	r1, #4
    1164:	82822003 	addhi	r2, r2, #3
    1168:	908220a1 	addls	r2, r2, r1, lsr #1
    116c:	e1a00230 	lsr	r0, r0, r2
    1170:	e12fff1e 	bx	lr
    1174:	e3500000 	cmp	r0, #0
    1178:	13e00000 	mvnne	r0, #0
    117c:	ea000007 	b	11a0 <__aeabi_idiv0>

00001180 <__aeabi_uidivmod>:
    1180:	e3510000 	cmp	r1, #0
    1184:	0afffffa 	beq	1174 <__udivsi3+0xe8>
    1188:	e92d4003 	push	{r0, r1, lr}
    118c:	ebffffbe 	bl	108c <__udivsi3>
    1190:	e8bd4006 	pop	{r1, r2, lr}
    1194:	e0030092 	mul	r3, r2, r0
    1198:	e0411003 	sub	r1, r1, r3
    119c:	e12fff1e 	bx	lr

000011a0 <__aeabi_idiv0>:
    11a0:	e12fff1e 	bx	lr
