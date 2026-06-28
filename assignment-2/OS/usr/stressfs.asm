
_stressfs:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dde22 	sub	sp, sp, #544	@ 0x220
       c:	e50b0220 	str	r0, [fp, #-544]	@ 0xfffffde0
      10:	e50b1224 	str	r1, [fp, #-548]	@ 0xfffffddc
      14:	e59f214c 	ldr	r2, [pc, #332]	@ 168 <main+0x168>
      18:	e24b3018 	sub	r3, fp, #24
      1c:	e8920007 	ldm	r2, {r0, r1, r2}
      20:	e8a30003 	stmia	r3!, {r0, r1}
      24:	e1c320b0 	strh	r2, [r3]
      28:	e59f113c 	ldr	r1, [pc, #316]	@ 16c <main+0x16c>
      2c:	e3a00001 	mov	r0, #1
      30:	eb0002cd 	bl	b6c <printf>
      34:	e24b3f86 	sub	r3, fp, #536	@ 0x218
      38:	e3a02c02 	mov	r2, #512	@ 0x200
      3c:	e3a01061 	mov	r1, #97	@ 0x61
      40:	e1a00003 	mov	r0, r3
      44:	eb000099 	bl	2b0 <memset>
      48:	e3a03000 	mov	r3, #0
      4c:	e50b3008 	str	r3, [fp, #-8]
      50:	ea000006 	b	70 <main+0x70>
      54:	eb00017e 	bl	654 <fork>
      58:	e1a03000 	mov	r3, r0
      5c:	e3530000 	cmp	r3, #0
      60:	ca000006 	bgt	80 <main+0x80>
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e2833001 	add	r3, r3, #1
      6c:	e50b3008 	str	r3, [fp, #-8]
      70:	e51b3008 	ldr	r3, [fp, #-8]
      74:	e3530003 	cmp	r3, #3
      78:	dafffff5 	ble	54 <main+0x54>
      7c:	ea000000 	b	84 <main+0x84>
      80:	e1a00000 	nop			@ (mov r0, r0)
      84:	e51b2008 	ldr	r2, [fp, #-8]
      88:	e59f10e0 	ldr	r1, [pc, #224]	@ 170 <main+0x170>
      8c:	e3a00001 	mov	r0, #1
      90:	eb0002b5 	bl	b6c <printf>
      94:	e55b2010 	ldrb	r2, [fp, #-16]
      98:	e51b3008 	ldr	r3, [fp, #-8]
      9c:	e6ef3073 	uxtb	r3, r3
      a0:	e0823003 	add	r3, r2, r3
      a4:	e6ef3073 	uxtb	r3, r3
      a8:	e54b3010 	strb	r3, [fp, #-16]
      ac:	e24b3018 	sub	r3, fp, #24
      b0:	e59f10bc 	ldr	r1, [pc, #188]	@ 174 <main+0x174>
      b4:	e1a00003 	mov	r0, r3
      b8:	eb0001b6 	bl	798 <open>
      bc:	e50b000c 	str	r0, [fp, #-12]
      c0:	e3a03000 	mov	r3, #0
      c4:	e50b3008 	str	r3, [fp, #-8]
      c8:	ea000007 	b	ec <main+0xec>
      cc:	e24b3f86 	sub	r3, fp, #536	@ 0x218
      d0:	e3a02c02 	mov	r2, #512	@ 0x200
      d4:	e1a01003 	mov	r1, r3
      d8:	e51b000c 	ldr	r0, [fp, #-12]
      dc:	eb000189 	bl	708 <write>
      e0:	e51b3008 	ldr	r3, [fp, #-8]
      e4:	e2833001 	add	r3, r3, #1
      e8:	e50b3008 	str	r3, [fp, #-8]
      ec:	e51b3008 	ldr	r3, [fp, #-8]
      f0:	e3530013 	cmp	r3, #19
      f4:	dafffff4 	ble	cc <main+0xcc>
      f8:	e51b000c 	ldr	r0, [fp, #-12]
      fc:	eb00018a 	bl	72c <close>
     100:	e59f1070 	ldr	r1, [pc, #112]	@ 178 <main+0x178>
     104:	e3a00001 	mov	r0, #1
     108:	eb000297 	bl	b6c <printf>
     10c:	e24b3018 	sub	r3, fp, #24
     110:	e3a01000 	mov	r1, #0
     114:	e1a00003 	mov	r0, r3
     118:	eb00019e 	bl	798 <open>
     11c:	e50b000c 	str	r0, [fp, #-12]
     120:	e3a03000 	mov	r3, #0
     124:	e50b3008 	str	r3, [fp, #-8]
     128:	ea000007 	b	14c <main+0x14c>
     12c:	e24b3f86 	sub	r3, fp, #536	@ 0x218
     130:	e3a02c02 	mov	r2, #512	@ 0x200
     134:	e1a01003 	mov	r1, r3
     138:	e51b000c 	ldr	r0, [fp, #-12]
     13c:	eb000168 	bl	6e4 <read>
     140:	e51b3008 	ldr	r3, [fp, #-8]
     144:	e2833001 	add	r3, r3, #1
     148:	e50b3008 	str	r3, [fp, #-8]
     14c:	e51b3008 	ldr	r3, [fp, #-8]
     150:	e3530013 	cmp	r3, #19
     154:	dafffff4 	ble	12c <main+0x12c>
     158:	e51b000c 	ldr	r0, [fp, #-12]
     15c:	eb000172 	bl	72c <close>
     160:	eb00014d 	bl	69c <wait>
     164:	eb000143 	bl	678 <exit>
     168:	00001250 	.word	0x00001250
     16c:	00001228 	.word	0x00001228
     170:	0000123c 	.word	0x0000123c
     174:	00000202 	.word	0x00000202
     178:	00001248 	.word	0x00001248

0000017c <strcpy>:
     17c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     180:	e28db000 	add	fp, sp, #0
     184:	e24dd014 	sub	sp, sp, #20
     188:	e50b0010 	str	r0, [fp, #-16]
     18c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     190:	e51b3010 	ldr	r3, [fp, #-16]
     194:	e50b3008 	str	r3, [fp, #-8]
     198:	e1a00000 	nop			@ (mov r0, r0)
     19c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     1a0:	e2823001 	add	r3, r2, #1
     1a4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     1a8:	e51b3010 	ldr	r3, [fp, #-16]
     1ac:	e2831001 	add	r1, r3, #1
     1b0:	e50b1010 	str	r1, [fp, #-16]
     1b4:	e5d22000 	ldrb	r2, [r2]
     1b8:	e5c32000 	strb	r2, [r3]
     1bc:	e5d33000 	ldrb	r3, [r3]
     1c0:	e3530000 	cmp	r3, #0
     1c4:	1afffff4 	bne	19c <strcpy+0x20>
     1c8:	e51b3008 	ldr	r3, [fp, #-8]
     1cc:	e1a00003 	mov	r0, r3
     1d0:	e28bd000 	add	sp, fp, #0
     1d4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1d8:	e12fff1e 	bx	lr

000001dc <strcmp>:
     1dc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1e0:	e28db000 	add	fp, sp, #0
     1e4:	e24dd00c 	sub	sp, sp, #12
     1e8:	e50b0008 	str	r0, [fp, #-8]
     1ec:	e50b100c 	str	r1, [fp, #-12]
     1f0:	ea000005 	b	20c <strcmp+0x30>
     1f4:	e51b3008 	ldr	r3, [fp, #-8]
     1f8:	e2833001 	add	r3, r3, #1
     1fc:	e50b3008 	str	r3, [fp, #-8]
     200:	e51b300c 	ldr	r3, [fp, #-12]
     204:	e2833001 	add	r3, r3, #1
     208:	e50b300c 	str	r3, [fp, #-12]
     20c:	e51b3008 	ldr	r3, [fp, #-8]
     210:	e5d33000 	ldrb	r3, [r3]
     214:	e3530000 	cmp	r3, #0
     218:	0a000005 	beq	234 <strcmp+0x58>
     21c:	e51b3008 	ldr	r3, [fp, #-8]
     220:	e5d32000 	ldrb	r2, [r3]
     224:	e51b300c 	ldr	r3, [fp, #-12]
     228:	e5d33000 	ldrb	r3, [r3]
     22c:	e1520003 	cmp	r2, r3
     230:	0affffef 	beq	1f4 <strcmp+0x18>
     234:	e51b3008 	ldr	r3, [fp, #-8]
     238:	e5d33000 	ldrb	r3, [r3]
     23c:	e1a02003 	mov	r2, r3
     240:	e51b300c 	ldr	r3, [fp, #-12]
     244:	e5d33000 	ldrb	r3, [r3]
     248:	e0423003 	sub	r3, r2, r3
     24c:	e1a00003 	mov	r0, r3
     250:	e28bd000 	add	sp, fp, #0
     254:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     258:	e12fff1e 	bx	lr

0000025c <strlen>:
     25c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     260:	e28db000 	add	fp, sp, #0
     264:	e24dd014 	sub	sp, sp, #20
     268:	e50b0010 	str	r0, [fp, #-16]
     26c:	e3a03000 	mov	r3, #0
     270:	e50b3008 	str	r3, [fp, #-8]
     274:	ea000002 	b	284 <strlen+0x28>
     278:	e51b3008 	ldr	r3, [fp, #-8]
     27c:	e2833001 	add	r3, r3, #1
     280:	e50b3008 	str	r3, [fp, #-8]
     284:	e51b3008 	ldr	r3, [fp, #-8]
     288:	e51b2010 	ldr	r2, [fp, #-16]
     28c:	e0823003 	add	r3, r2, r3
     290:	e5d33000 	ldrb	r3, [r3]
     294:	e3530000 	cmp	r3, #0
     298:	1afffff6 	bne	278 <strlen+0x1c>
     29c:	e51b3008 	ldr	r3, [fp, #-8]
     2a0:	e1a00003 	mov	r0, r3
     2a4:	e28bd000 	add	sp, fp, #0
     2a8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2ac:	e12fff1e 	bx	lr

000002b0 <memset>:
     2b0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2b4:	e28db000 	add	fp, sp, #0
     2b8:	e24dd024 	sub	sp, sp, #36	@ 0x24
     2bc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     2c0:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     2c4:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     2c8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2cc:	e50b3008 	str	r3, [fp, #-8]
     2d0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     2d4:	e54b300d 	strb	r3, [fp, #-13]
     2d8:	e55b200d 	ldrb	r2, [fp, #-13]
     2dc:	e1a03002 	mov	r3, r2
     2e0:	e1a03403 	lsl	r3, r3, #8
     2e4:	e0833002 	add	r3, r3, r2
     2e8:	e1a03803 	lsl	r3, r3, #16
     2ec:	e1a02003 	mov	r2, r3
     2f0:	e55b300d 	ldrb	r3, [fp, #-13]
     2f4:	e1a03403 	lsl	r3, r3, #8
     2f8:	e1822003 	orr	r2, r2, r3
     2fc:	e55b300d 	ldrb	r3, [fp, #-13]
     300:	e1823003 	orr	r3, r2, r3
     304:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     308:	ea000008 	b	330 <memset+0x80>
     30c:	e51b3008 	ldr	r3, [fp, #-8]
     310:	e55b200d 	ldrb	r2, [fp, #-13]
     314:	e5c32000 	strb	r2, [r3]
     318:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     31c:	e2433001 	sub	r3, r3, #1
     320:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     324:	e51b3008 	ldr	r3, [fp, #-8]
     328:	e2833001 	add	r3, r3, #1
     32c:	e50b3008 	str	r3, [fp, #-8]
     330:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     334:	e3530000 	cmp	r3, #0
     338:	0a000003 	beq	34c <memset+0x9c>
     33c:	e51b3008 	ldr	r3, [fp, #-8]
     340:	e2033003 	and	r3, r3, #3
     344:	e3530000 	cmp	r3, #0
     348:	1affffef 	bne	30c <memset+0x5c>
     34c:	e51b3008 	ldr	r3, [fp, #-8]
     350:	e50b300c 	str	r3, [fp, #-12]
     354:	ea000008 	b	37c <memset+0xcc>
     358:	e51b300c 	ldr	r3, [fp, #-12]
     35c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     360:	e5832000 	str	r2, [r3]
     364:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     368:	e2433004 	sub	r3, r3, #4
     36c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     370:	e51b300c 	ldr	r3, [fp, #-12]
     374:	e2833004 	add	r3, r3, #4
     378:	e50b300c 	str	r3, [fp, #-12]
     37c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     380:	e3530003 	cmp	r3, #3
     384:	8afffff3 	bhi	358 <memset+0xa8>
     388:	e51b300c 	ldr	r3, [fp, #-12]
     38c:	e50b3008 	str	r3, [fp, #-8]
     390:	ea000008 	b	3b8 <memset+0x108>
     394:	e51b3008 	ldr	r3, [fp, #-8]
     398:	e55b200d 	ldrb	r2, [fp, #-13]
     39c:	e5c32000 	strb	r2, [r3]
     3a0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3a4:	e2433001 	sub	r3, r3, #1
     3a8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3ac:	e51b3008 	ldr	r3, [fp, #-8]
     3b0:	e2833001 	add	r3, r3, #1
     3b4:	e50b3008 	str	r3, [fp, #-8]
     3b8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3bc:	e3530000 	cmp	r3, #0
     3c0:	1afffff3 	bne	394 <memset+0xe4>
     3c4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3c8:	e1a00003 	mov	r0, r3
     3cc:	e28bd000 	add	sp, fp, #0
     3d0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3d4:	e12fff1e 	bx	lr

000003d8 <strchr>:
     3d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     3dc:	e28db000 	add	fp, sp, #0
     3e0:	e24dd00c 	sub	sp, sp, #12
     3e4:	e50b0008 	str	r0, [fp, #-8]
     3e8:	e1a03001 	mov	r3, r1
     3ec:	e54b3009 	strb	r3, [fp, #-9]
     3f0:	ea000009 	b	41c <strchr+0x44>
     3f4:	e51b3008 	ldr	r3, [fp, #-8]
     3f8:	e5d33000 	ldrb	r3, [r3]
     3fc:	e55b2009 	ldrb	r2, [fp, #-9]
     400:	e1520003 	cmp	r2, r3
     404:	1a000001 	bne	410 <strchr+0x38>
     408:	e51b3008 	ldr	r3, [fp, #-8]
     40c:	ea000007 	b	430 <strchr+0x58>
     410:	e51b3008 	ldr	r3, [fp, #-8]
     414:	e2833001 	add	r3, r3, #1
     418:	e50b3008 	str	r3, [fp, #-8]
     41c:	e51b3008 	ldr	r3, [fp, #-8]
     420:	e5d33000 	ldrb	r3, [r3]
     424:	e3530000 	cmp	r3, #0
     428:	1afffff1 	bne	3f4 <strchr+0x1c>
     42c:	e3a03000 	mov	r3, #0
     430:	e1a00003 	mov	r0, r3
     434:	e28bd000 	add	sp, fp, #0
     438:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     43c:	e12fff1e 	bx	lr

00000440 <gets>:
     440:	e92d4800 	push	{fp, lr}
     444:	e28db004 	add	fp, sp, #4
     448:	e24dd018 	sub	sp, sp, #24
     44c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     450:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     454:	e3a03000 	mov	r3, #0
     458:	e50b3008 	str	r3, [fp, #-8]
     45c:	ea000016 	b	4bc <gets+0x7c>
     460:	e24b300d 	sub	r3, fp, #13
     464:	e3a02001 	mov	r2, #1
     468:	e1a01003 	mov	r1, r3
     46c:	e3a00000 	mov	r0, #0
     470:	eb00009b 	bl	6e4 <read>
     474:	e50b000c 	str	r0, [fp, #-12]
     478:	e51b300c 	ldr	r3, [fp, #-12]
     47c:	e3530000 	cmp	r3, #0
     480:	da000013 	ble	4d4 <gets+0x94>
     484:	e51b3008 	ldr	r3, [fp, #-8]
     488:	e2832001 	add	r2, r3, #1
     48c:	e50b2008 	str	r2, [fp, #-8]
     490:	e1a02003 	mov	r2, r3
     494:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     498:	e0833002 	add	r3, r3, r2
     49c:	e55b200d 	ldrb	r2, [fp, #-13]
     4a0:	e5c32000 	strb	r2, [r3]
     4a4:	e55b300d 	ldrb	r3, [fp, #-13]
     4a8:	e353000a 	cmp	r3, #10
     4ac:	0a000009 	beq	4d8 <gets+0x98>
     4b0:	e55b300d 	ldrb	r3, [fp, #-13]
     4b4:	e353000d 	cmp	r3, #13
     4b8:	0a000006 	beq	4d8 <gets+0x98>
     4bc:	e51b3008 	ldr	r3, [fp, #-8]
     4c0:	e2833001 	add	r3, r3, #1
     4c4:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     4c8:	e1520003 	cmp	r2, r3
     4cc:	caffffe3 	bgt	460 <gets+0x20>
     4d0:	ea000000 	b	4d8 <gets+0x98>
     4d4:	e1a00000 	nop			@ (mov r0, r0)
     4d8:	e51b3008 	ldr	r3, [fp, #-8]
     4dc:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     4e0:	e0823003 	add	r3, r2, r3
     4e4:	e3a02000 	mov	r2, #0
     4e8:	e5c32000 	strb	r2, [r3]
     4ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4f0:	e1a00003 	mov	r0, r3
     4f4:	e24bd004 	sub	sp, fp, #4
     4f8:	e8bd8800 	pop	{fp, pc}

000004fc <stat>:
     4fc:	e92d4800 	push	{fp, lr}
     500:	e28db004 	add	fp, sp, #4
     504:	e24dd010 	sub	sp, sp, #16
     508:	e50b0010 	str	r0, [fp, #-16]
     50c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     510:	e3a01000 	mov	r1, #0
     514:	e51b0010 	ldr	r0, [fp, #-16]
     518:	eb00009e 	bl	798 <open>
     51c:	e50b0008 	str	r0, [fp, #-8]
     520:	e51b3008 	ldr	r3, [fp, #-8]
     524:	e3530000 	cmp	r3, #0
     528:	aa000001 	bge	534 <stat+0x38>
     52c:	e3e03000 	mvn	r3, #0
     530:	ea000006 	b	550 <stat+0x54>
     534:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     538:	e51b0008 	ldr	r0, [fp, #-8]
     53c:	eb0000b0 	bl	804 <fstat>
     540:	e50b000c 	str	r0, [fp, #-12]
     544:	e51b0008 	ldr	r0, [fp, #-8]
     548:	eb000077 	bl	72c <close>
     54c:	e51b300c 	ldr	r3, [fp, #-12]
     550:	e1a00003 	mov	r0, r3
     554:	e24bd004 	sub	sp, fp, #4
     558:	e8bd8800 	pop	{fp, pc}

0000055c <atoi>:
     55c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     560:	e28db000 	add	fp, sp, #0
     564:	e24dd014 	sub	sp, sp, #20
     568:	e50b0010 	str	r0, [fp, #-16]
     56c:	e3a03000 	mov	r3, #0
     570:	e50b3008 	str	r3, [fp, #-8]
     574:	ea00000c 	b	5ac <atoi+0x50>
     578:	e51b2008 	ldr	r2, [fp, #-8]
     57c:	e1a03002 	mov	r3, r2
     580:	e1a03103 	lsl	r3, r3, #2
     584:	e0833002 	add	r3, r3, r2
     588:	e1a03083 	lsl	r3, r3, #1
     58c:	e1a01003 	mov	r1, r3
     590:	e51b3010 	ldr	r3, [fp, #-16]
     594:	e2832001 	add	r2, r3, #1
     598:	e50b2010 	str	r2, [fp, #-16]
     59c:	e5d33000 	ldrb	r3, [r3]
     5a0:	e0813003 	add	r3, r1, r3
     5a4:	e2433030 	sub	r3, r3, #48	@ 0x30
     5a8:	e50b3008 	str	r3, [fp, #-8]
     5ac:	e51b3010 	ldr	r3, [fp, #-16]
     5b0:	e5d33000 	ldrb	r3, [r3]
     5b4:	e353002f 	cmp	r3, #47	@ 0x2f
     5b8:	9a000003 	bls	5cc <atoi+0x70>
     5bc:	e51b3010 	ldr	r3, [fp, #-16]
     5c0:	e5d33000 	ldrb	r3, [r3]
     5c4:	e3530039 	cmp	r3, #57	@ 0x39
     5c8:	9affffea 	bls	578 <atoi+0x1c>
     5cc:	e51b3008 	ldr	r3, [fp, #-8]
     5d0:	e1a00003 	mov	r0, r3
     5d4:	e28bd000 	add	sp, fp, #0
     5d8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5dc:	e12fff1e 	bx	lr

000005e0 <memmove>:
     5e0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5e4:	e28db000 	add	fp, sp, #0
     5e8:	e24dd01c 	sub	sp, sp, #28
     5ec:	e50b0010 	str	r0, [fp, #-16]
     5f0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     5f4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     5f8:	e51b3010 	ldr	r3, [fp, #-16]
     5fc:	e50b3008 	str	r3, [fp, #-8]
     600:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     604:	e50b300c 	str	r3, [fp, #-12]
     608:	ea000007 	b	62c <memmove+0x4c>
     60c:	e51b200c 	ldr	r2, [fp, #-12]
     610:	e2823001 	add	r3, r2, #1
     614:	e50b300c 	str	r3, [fp, #-12]
     618:	e51b3008 	ldr	r3, [fp, #-8]
     61c:	e2831001 	add	r1, r3, #1
     620:	e50b1008 	str	r1, [fp, #-8]
     624:	e5d22000 	ldrb	r2, [r2]
     628:	e5c32000 	strb	r2, [r3]
     62c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     630:	e2432001 	sub	r2, r3, #1
     634:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     638:	e3530000 	cmp	r3, #0
     63c:	cafffff2 	bgt	60c <memmove+0x2c>
     640:	e51b3010 	ldr	r3, [fp, #-16]
     644:	e1a00003 	mov	r0, r3
     648:	e28bd000 	add	sp, fp, #0
     64c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     650:	e12fff1e 	bx	lr

00000654 <fork>:
     654:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     658:	e1a04003 	mov	r4, r3
     65c:	e1a03002 	mov	r3, r2
     660:	e1a02001 	mov	r2, r1
     664:	e1a01000 	mov	r1, r0
     668:	e3a00001 	mov	r0, #1
     66c:	ef000000 	svc	0x00000000
     670:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     674:	e12fff1e 	bx	lr

00000678 <exit>:
     678:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     67c:	e1a04003 	mov	r4, r3
     680:	e1a03002 	mov	r3, r2
     684:	e1a02001 	mov	r2, r1
     688:	e1a01000 	mov	r1, r0
     68c:	e3a00002 	mov	r0, #2
     690:	ef000000 	svc	0x00000000
     694:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     698:	e12fff1e 	bx	lr

0000069c <wait>:
     69c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6a0:	e1a04003 	mov	r4, r3
     6a4:	e1a03002 	mov	r3, r2
     6a8:	e1a02001 	mov	r2, r1
     6ac:	e1a01000 	mov	r1, r0
     6b0:	e3a00003 	mov	r0, #3
     6b4:	ef000000 	svc	0x00000000
     6b8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6bc:	e12fff1e 	bx	lr

000006c0 <pipe>:
     6c0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6c4:	e1a04003 	mov	r4, r3
     6c8:	e1a03002 	mov	r3, r2
     6cc:	e1a02001 	mov	r2, r1
     6d0:	e1a01000 	mov	r1, r0
     6d4:	e3a00004 	mov	r0, #4
     6d8:	ef000000 	svc	0x00000000
     6dc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6e0:	e12fff1e 	bx	lr

000006e4 <read>:
     6e4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6e8:	e1a04003 	mov	r4, r3
     6ec:	e1a03002 	mov	r3, r2
     6f0:	e1a02001 	mov	r2, r1
     6f4:	e1a01000 	mov	r1, r0
     6f8:	e3a00005 	mov	r0, #5
     6fc:	ef000000 	svc	0x00000000
     700:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     704:	e12fff1e 	bx	lr

00000708 <write>:
     708:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     70c:	e1a04003 	mov	r4, r3
     710:	e1a03002 	mov	r3, r2
     714:	e1a02001 	mov	r2, r1
     718:	e1a01000 	mov	r1, r0
     71c:	e3a00010 	mov	r0, #16
     720:	ef000000 	svc	0x00000000
     724:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     728:	e12fff1e 	bx	lr

0000072c <close>:
     72c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     730:	e1a04003 	mov	r4, r3
     734:	e1a03002 	mov	r3, r2
     738:	e1a02001 	mov	r2, r1
     73c:	e1a01000 	mov	r1, r0
     740:	e3a00015 	mov	r0, #21
     744:	ef000000 	svc	0x00000000
     748:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     74c:	e12fff1e 	bx	lr

00000750 <kill>:
     750:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     754:	e1a04003 	mov	r4, r3
     758:	e1a03002 	mov	r3, r2
     75c:	e1a02001 	mov	r2, r1
     760:	e1a01000 	mov	r1, r0
     764:	e3a00006 	mov	r0, #6
     768:	ef000000 	svc	0x00000000
     76c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     770:	e12fff1e 	bx	lr

00000774 <exec>:
     774:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     778:	e1a04003 	mov	r4, r3
     77c:	e1a03002 	mov	r3, r2
     780:	e1a02001 	mov	r2, r1
     784:	e1a01000 	mov	r1, r0
     788:	e3a00007 	mov	r0, #7
     78c:	ef000000 	svc	0x00000000
     790:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     794:	e12fff1e 	bx	lr

00000798 <open>:
     798:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     79c:	e1a04003 	mov	r4, r3
     7a0:	e1a03002 	mov	r3, r2
     7a4:	e1a02001 	mov	r2, r1
     7a8:	e1a01000 	mov	r1, r0
     7ac:	e3a0000f 	mov	r0, #15
     7b0:	ef000000 	svc	0x00000000
     7b4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7b8:	e12fff1e 	bx	lr

000007bc <mknod>:
     7bc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7c0:	e1a04003 	mov	r4, r3
     7c4:	e1a03002 	mov	r3, r2
     7c8:	e1a02001 	mov	r2, r1
     7cc:	e1a01000 	mov	r1, r0
     7d0:	e3a00011 	mov	r0, #17
     7d4:	ef000000 	svc	0x00000000
     7d8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7dc:	e12fff1e 	bx	lr

000007e0 <unlink>:
     7e0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7e4:	e1a04003 	mov	r4, r3
     7e8:	e1a03002 	mov	r3, r2
     7ec:	e1a02001 	mov	r2, r1
     7f0:	e1a01000 	mov	r1, r0
     7f4:	e3a00012 	mov	r0, #18
     7f8:	ef000000 	svc	0x00000000
     7fc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     800:	e12fff1e 	bx	lr

00000804 <fstat>:
     804:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     808:	e1a04003 	mov	r4, r3
     80c:	e1a03002 	mov	r3, r2
     810:	e1a02001 	mov	r2, r1
     814:	e1a01000 	mov	r1, r0
     818:	e3a00008 	mov	r0, #8
     81c:	ef000000 	svc	0x00000000
     820:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     824:	e12fff1e 	bx	lr

00000828 <link>:
     828:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     82c:	e1a04003 	mov	r4, r3
     830:	e1a03002 	mov	r3, r2
     834:	e1a02001 	mov	r2, r1
     838:	e1a01000 	mov	r1, r0
     83c:	e3a00013 	mov	r0, #19
     840:	ef000000 	svc	0x00000000
     844:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     848:	e12fff1e 	bx	lr

0000084c <mkdir>:
     84c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     850:	e1a04003 	mov	r4, r3
     854:	e1a03002 	mov	r3, r2
     858:	e1a02001 	mov	r2, r1
     85c:	e1a01000 	mov	r1, r0
     860:	e3a00014 	mov	r0, #20
     864:	ef000000 	svc	0x00000000
     868:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     86c:	e12fff1e 	bx	lr

00000870 <chdir>:
     870:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     874:	e1a04003 	mov	r4, r3
     878:	e1a03002 	mov	r3, r2
     87c:	e1a02001 	mov	r2, r1
     880:	e1a01000 	mov	r1, r0
     884:	e3a00009 	mov	r0, #9
     888:	ef000000 	svc	0x00000000
     88c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     890:	e12fff1e 	bx	lr

00000894 <dup>:
     894:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     898:	e1a04003 	mov	r4, r3
     89c:	e1a03002 	mov	r3, r2
     8a0:	e1a02001 	mov	r2, r1
     8a4:	e1a01000 	mov	r1, r0
     8a8:	e3a0000a 	mov	r0, #10
     8ac:	ef000000 	svc	0x00000000
     8b0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8b4:	e12fff1e 	bx	lr

000008b8 <getpid>:
     8b8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8bc:	e1a04003 	mov	r4, r3
     8c0:	e1a03002 	mov	r3, r2
     8c4:	e1a02001 	mov	r2, r1
     8c8:	e1a01000 	mov	r1, r0
     8cc:	e3a0000b 	mov	r0, #11
     8d0:	ef000000 	svc	0x00000000
     8d4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8d8:	e12fff1e 	bx	lr

000008dc <sbrk>:
     8dc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8e0:	e1a04003 	mov	r4, r3
     8e4:	e1a03002 	mov	r3, r2
     8e8:	e1a02001 	mov	r2, r1
     8ec:	e1a01000 	mov	r1, r0
     8f0:	e3a0000c 	mov	r0, #12
     8f4:	ef000000 	svc	0x00000000
     8f8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8fc:	e12fff1e 	bx	lr

00000900 <sleep>:
     900:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     904:	e1a04003 	mov	r4, r3
     908:	e1a03002 	mov	r3, r2
     90c:	e1a02001 	mov	r2, r1
     910:	e1a01000 	mov	r1, r0
     914:	e3a0000d 	mov	r0, #13
     918:	ef000000 	svc	0x00000000
     91c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     920:	e12fff1e 	bx	lr

00000924 <uptime>:
     924:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     928:	e1a04003 	mov	r4, r3
     92c:	e1a03002 	mov	r3, r2
     930:	e1a02001 	mov	r2, r1
     934:	e1a01000 	mov	r1, r0
     938:	e3a0000e 	mov	r0, #14
     93c:	ef000000 	svc	0x00000000
     940:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     944:	e12fff1e 	bx	lr

00000948 <getprocs>:
     948:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     94c:	e1a04003 	mov	r4, r3
     950:	e1a03002 	mov	r3, r2
     954:	e1a02001 	mov	r2, r1
     958:	e1a01000 	mov	r1, r0
     95c:	e3a00016 	mov	r0, #22
     960:	ef000000 	svc	0x00000000
     964:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     968:	e12fff1e 	bx	lr

0000096c <getpinfo>:
     96c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     970:	e1a04003 	mov	r4, r3
     974:	e1a03002 	mov	r3, r2
     978:	e1a02001 	mov	r2, r1
     97c:	e1a01000 	mov	r1, r0
     980:	e3a00018 	mov	r0, #24
     984:	ef000000 	svc	0x00000000
     988:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     98c:	e12fff1e 	bx	lr

00000990 <settickets>:
     990:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     994:	e1a04003 	mov	r4, r3
     998:	e1a03002 	mov	r3, r2
     99c:	e1a02001 	mov	r2, r1
     9a0:	e1a01000 	mov	r1, r0
     9a4:	e3a00017 	mov	r0, #23
     9a8:	ef000000 	svc	0x00000000
     9ac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9b0:	e12fff1e 	bx	lr

000009b4 <srand>:
     9b4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9b8:	e1a04003 	mov	r4, r3
     9bc:	e1a03002 	mov	r3, r2
     9c0:	e1a02001 	mov	r2, r1
     9c4:	e1a01000 	mov	r1, r0
     9c8:	e3a00019 	mov	r0, #25
     9cc:	ef000000 	svc	0x00000000
     9d0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9d4:	e12fff1e 	bx	lr

000009d8 <test>:
     9d8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9dc:	e1a04003 	mov	r4, r3
     9e0:	e1a03002 	mov	r3, r2
     9e4:	e1a02001 	mov	r2, r1
     9e8:	e1a01000 	mov	r1, r0
     9ec:	e3a0001a 	mov	r0, #26
     9f0:	ef000000 	svc	0x00000000
     9f4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9f8:	e12fff1e 	bx	lr

000009fc <putc>:
     9fc:	e92d4800 	push	{fp, lr}
     a00:	e28db004 	add	fp, sp, #4
     a04:	e24dd008 	sub	sp, sp, #8
     a08:	e50b0008 	str	r0, [fp, #-8]
     a0c:	e1a03001 	mov	r3, r1
     a10:	e54b3009 	strb	r3, [fp, #-9]
     a14:	e24b3009 	sub	r3, fp, #9
     a18:	e3a02001 	mov	r2, #1
     a1c:	e1a01003 	mov	r1, r3
     a20:	e51b0008 	ldr	r0, [fp, #-8]
     a24:	ebffff37 	bl	708 <write>
     a28:	e1a00000 	nop			@ (mov r0, r0)
     a2c:	e24bd004 	sub	sp, fp, #4
     a30:	e8bd8800 	pop	{fp, pc}

00000a34 <printint>:
     a34:	e92d4800 	push	{fp, lr}
     a38:	e28db004 	add	fp, sp, #4
     a3c:	e24dd030 	sub	sp, sp, #48	@ 0x30
     a40:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     a44:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     a48:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     a4c:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     a50:	e3a03000 	mov	r3, #0
     a54:	e50b300c 	str	r3, [fp, #-12]
     a58:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     a5c:	e3530000 	cmp	r3, #0
     a60:	0a000008 	beq	a88 <printint+0x54>
     a64:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a68:	e3530000 	cmp	r3, #0
     a6c:	aa000005 	bge	a88 <printint+0x54>
     a70:	e3a03001 	mov	r3, #1
     a74:	e50b300c 	str	r3, [fp, #-12]
     a78:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a7c:	e2633000 	rsb	r3, r3, #0
     a80:	e50b3010 	str	r3, [fp, #-16]
     a84:	ea000001 	b	a90 <printint+0x5c>
     a88:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a8c:	e50b3010 	str	r3, [fp, #-16]
     a90:	e3a03000 	mov	r3, #0
     a94:	e50b3008 	str	r3, [fp, #-8]
     a98:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     a9c:	e51b3010 	ldr	r3, [fp, #-16]
     aa0:	e1a01002 	mov	r1, r2
     aa4:	e1a00003 	mov	r0, r3
     aa8:	eb0001d5 	bl	1204 <__aeabi_uidivmod>
     aac:	e1a03001 	mov	r3, r1
     ab0:	e1a01003 	mov	r1, r3
     ab4:	e51b3008 	ldr	r3, [fp, #-8]
     ab8:	e2832001 	add	r2, r3, #1
     abc:	e50b2008 	str	r2, [fp, #-8]
     ac0:	e59f20a0 	ldr	r2, [pc, #160]	@ b68 <printint+0x134>
     ac4:	e7d22001 	ldrb	r2, [r2, r1]
     ac8:	e2433004 	sub	r3, r3, #4
     acc:	e083300b 	add	r3, r3, fp
     ad0:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     ad4:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     ad8:	e1a01003 	mov	r1, r3
     adc:	e51b0010 	ldr	r0, [fp, #-16]
     ae0:	eb00018a 	bl	1110 <__udivsi3>
     ae4:	e1a03000 	mov	r3, r0
     ae8:	e50b3010 	str	r3, [fp, #-16]
     aec:	e51b3010 	ldr	r3, [fp, #-16]
     af0:	e3530000 	cmp	r3, #0
     af4:	1affffe7 	bne	a98 <printint+0x64>
     af8:	e51b300c 	ldr	r3, [fp, #-12]
     afc:	e3530000 	cmp	r3, #0
     b00:	0a00000e 	beq	b40 <printint+0x10c>
     b04:	e51b3008 	ldr	r3, [fp, #-8]
     b08:	e2832001 	add	r2, r3, #1
     b0c:	e50b2008 	str	r2, [fp, #-8]
     b10:	e2433004 	sub	r3, r3, #4
     b14:	e083300b 	add	r3, r3, fp
     b18:	e3a0202d 	mov	r2, #45	@ 0x2d
     b1c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     b20:	ea000006 	b	b40 <printint+0x10c>
     b24:	e24b2020 	sub	r2, fp, #32
     b28:	e51b3008 	ldr	r3, [fp, #-8]
     b2c:	e0823003 	add	r3, r2, r3
     b30:	e5d33000 	ldrb	r3, [r3]
     b34:	e1a01003 	mov	r1, r3
     b38:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     b3c:	ebffffae 	bl	9fc <putc>
     b40:	e51b3008 	ldr	r3, [fp, #-8]
     b44:	e2433001 	sub	r3, r3, #1
     b48:	e50b3008 	str	r3, [fp, #-8]
     b4c:	e51b3008 	ldr	r3, [fp, #-8]
     b50:	e3530000 	cmp	r3, #0
     b54:	aafffff2 	bge	b24 <printint+0xf0>
     b58:	e1a00000 	nop			@ (mov r0, r0)
     b5c:	e1a00000 	nop			@ (mov r0, r0)
     b60:	e24bd004 	sub	sp, fp, #4
     b64:	e8bd8800 	pop	{fp, pc}
     b68:	00001264 	.word	0x00001264

00000b6c <printf>:
     b6c:	e92d000e 	push	{r1, r2, r3}
     b70:	e92d4800 	push	{fp, lr}
     b74:	e28db004 	add	fp, sp, #4
     b78:	e24dd024 	sub	sp, sp, #36	@ 0x24
     b7c:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     b80:	e3a03000 	mov	r3, #0
     b84:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b88:	e28b3008 	add	r3, fp, #8
     b8c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b90:	e3a03000 	mov	r3, #0
     b94:	e50b3010 	str	r3, [fp, #-16]
     b98:	ea000074 	b	d70 <printf+0x204>
     b9c:	e59b2004 	ldr	r2, [fp, #4]
     ba0:	e51b3010 	ldr	r3, [fp, #-16]
     ba4:	e0823003 	add	r3, r2, r3
     ba8:	e5d33000 	ldrb	r3, [r3]
     bac:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     bb0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     bb4:	e3530000 	cmp	r3, #0
     bb8:	1a00000b 	bne	bec <printf+0x80>
     bbc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bc0:	e3530025 	cmp	r3, #37	@ 0x25
     bc4:	1a000002 	bne	bd4 <printf+0x68>
     bc8:	e3a03025 	mov	r3, #37	@ 0x25
     bcc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     bd0:	ea000063 	b	d64 <printf+0x1f8>
     bd4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bd8:	e6ef3073 	uxtb	r3, r3
     bdc:	e1a01003 	mov	r1, r3
     be0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     be4:	ebffff84 	bl	9fc <putc>
     be8:	ea00005d 	b	d64 <printf+0x1f8>
     bec:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     bf0:	e3530025 	cmp	r3, #37	@ 0x25
     bf4:	1a00005a 	bne	d64 <printf+0x1f8>
     bf8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bfc:	e3530064 	cmp	r3, #100	@ 0x64
     c00:	1a00000a 	bne	c30 <printf+0xc4>
     c04:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c08:	e5933000 	ldr	r3, [r3]
     c0c:	e1a01003 	mov	r1, r3
     c10:	e3a03001 	mov	r3, #1
     c14:	e3a0200a 	mov	r2, #10
     c18:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c1c:	ebffff84 	bl	a34 <printint>
     c20:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c24:	e2833004 	add	r3, r3, #4
     c28:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c2c:	ea00004a 	b	d5c <printf+0x1f0>
     c30:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c34:	e3530078 	cmp	r3, #120	@ 0x78
     c38:	0a000002 	beq	c48 <printf+0xdc>
     c3c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c40:	e3530070 	cmp	r3, #112	@ 0x70
     c44:	1a00000a 	bne	c74 <printf+0x108>
     c48:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c4c:	e5933000 	ldr	r3, [r3]
     c50:	e1a01003 	mov	r1, r3
     c54:	e3a03000 	mov	r3, #0
     c58:	e3a02010 	mov	r2, #16
     c5c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c60:	ebffff73 	bl	a34 <printint>
     c64:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c68:	e2833004 	add	r3, r3, #4
     c6c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c70:	ea000039 	b	d5c <printf+0x1f0>
     c74:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c78:	e3530073 	cmp	r3, #115	@ 0x73
     c7c:	1a000018 	bne	ce4 <printf+0x178>
     c80:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c84:	e5933000 	ldr	r3, [r3]
     c88:	e50b300c 	str	r3, [fp, #-12]
     c8c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c90:	e2833004 	add	r3, r3, #4
     c94:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c98:	e51b300c 	ldr	r3, [fp, #-12]
     c9c:	e3530000 	cmp	r3, #0
     ca0:	1a00000a 	bne	cd0 <printf+0x164>
     ca4:	e59f30f4 	ldr	r3, [pc, #244]	@ da0 <printf+0x234>
     ca8:	e50b300c 	str	r3, [fp, #-12]
     cac:	ea000007 	b	cd0 <printf+0x164>
     cb0:	e51b300c 	ldr	r3, [fp, #-12]
     cb4:	e5d33000 	ldrb	r3, [r3]
     cb8:	e1a01003 	mov	r1, r3
     cbc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cc0:	ebffff4d 	bl	9fc <putc>
     cc4:	e51b300c 	ldr	r3, [fp, #-12]
     cc8:	e2833001 	add	r3, r3, #1
     ccc:	e50b300c 	str	r3, [fp, #-12]
     cd0:	e51b300c 	ldr	r3, [fp, #-12]
     cd4:	e5d33000 	ldrb	r3, [r3]
     cd8:	e3530000 	cmp	r3, #0
     cdc:	1afffff3 	bne	cb0 <printf+0x144>
     ce0:	ea00001d 	b	d5c <printf+0x1f0>
     ce4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ce8:	e3530063 	cmp	r3, #99	@ 0x63
     cec:	1a000009 	bne	d18 <printf+0x1ac>
     cf0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     cf4:	e5933000 	ldr	r3, [r3]
     cf8:	e6ef3073 	uxtb	r3, r3
     cfc:	e1a01003 	mov	r1, r3
     d00:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d04:	ebffff3c 	bl	9fc <putc>
     d08:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d0c:	e2833004 	add	r3, r3, #4
     d10:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d14:	ea000010 	b	d5c <printf+0x1f0>
     d18:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d1c:	e3530025 	cmp	r3, #37	@ 0x25
     d20:	1a000005 	bne	d3c <printf+0x1d0>
     d24:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d28:	e6ef3073 	uxtb	r3, r3
     d2c:	e1a01003 	mov	r1, r3
     d30:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d34:	ebffff30 	bl	9fc <putc>
     d38:	ea000007 	b	d5c <printf+0x1f0>
     d3c:	e3a01025 	mov	r1, #37	@ 0x25
     d40:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d44:	ebffff2c 	bl	9fc <putc>
     d48:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d4c:	e6ef3073 	uxtb	r3, r3
     d50:	e1a01003 	mov	r1, r3
     d54:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d58:	ebffff27 	bl	9fc <putc>
     d5c:	e3a03000 	mov	r3, #0
     d60:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     d64:	e51b3010 	ldr	r3, [fp, #-16]
     d68:	e2833001 	add	r3, r3, #1
     d6c:	e50b3010 	str	r3, [fp, #-16]
     d70:	e59b2004 	ldr	r2, [fp, #4]
     d74:	e51b3010 	ldr	r3, [fp, #-16]
     d78:	e0823003 	add	r3, r2, r3
     d7c:	e5d33000 	ldrb	r3, [r3]
     d80:	e3530000 	cmp	r3, #0
     d84:	1affff84 	bne	b9c <printf+0x30>
     d88:	e1a00000 	nop			@ (mov r0, r0)
     d8c:	e1a00000 	nop			@ (mov r0, r0)
     d90:	e24bd004 	sub	sp, fp, #4
     d94:	e8bd4800 	pop	{fp, lr}
     d98:	e28dd00c 	add	sp, sp, #12
     d9c:	e12fff1e 	bx	lr
     da0:	0000125c 	.word	0x0000125c

00000da4 <free>:
     da4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     da8:	e28db000 	add	fp, sp, #0
     dac:	e24dd014 	sub	sp, sp, #20
     db0:	e50b0010 	str	r0, [fp, #-16]
     db4:	e51b3010 	ldr	r3, [fp, #-16]
     db8:	e2433008 	sub	r3, r3, #8
     dbc:	e50b300c 	str	r3, [fp, #-12]
     dc0:	e59f3154 	ldr	r3, [pc, #340]	@ f1c <free+0x178>
     dc4:	e5933000 	ldr	r3, [r3]
     dc8:	e50b3008 	str	r3, [fp, #-8]
     dcc:	ea000010 	b	e14 <free+0x70>
     dd0:	e51b3008 	ldr	r3, [fp, #-8]
     dd4:	e5933000 	ldr	r3, [r3]
     dd8:	e51b2008 	ldr	r2, [fp, #-8]
     ddc:	e1520003 	cmp	r2, r3
     de0:	3a000008 	bcc	e08 <free+0x64>
     de4:	e51b200c 	ldr	r2, [fp, #-12]
     de8:	e51b3008 	ldr	r3, [fp, #-8]
     dec:	e1520003 	cmp	r2, r3
     df0:	8a000010 	bhi	e38 <free+0x94>
     df4:	e51b3008 	ldr	r3, [fp, #-8]
     df8:	e5933000 	ldr	r3, [r3]
     dfc:	e51b200c 	ldr	r2, [fp, #-12]
     e00:	e1520003 	cmp	r2, r3
     e04:	3a00000b 	bcc	e38 <free+0x94>
     e08:	e51b3008 	ldr	r3, [fp, #-8]
     e0c:	e5933000 	ldr	r3, [r3]
     e10:	e50b3008 	str	r3, [fp, #-8]
     e14:	e51b200c 	ldr	r2, [fp, #-12]
     e18:	e51b3008 	ldr	r3, [fp, #-8]
     e1c:	e1520003 	cmp	r2, r3
     e20:	9affffea 	bls	dd0 <free+0x2c>
     e24:	e51b3008 	ldr	r3, [fp, #-8]
     e28:	e5933000 	ldr	r3, [r3]
     e2c:	e51b200c 	ldr	r2, [fp, #-12]
     e30:	e1520003 	cmp	r2, r3
     e34:	2affffe5 	bcs	dd0 <free+0x2c>
     e38:	e51b300c 	ldr	r3, [fp, #-12]
     e3c:	e5933004 	ldr	r3, [r3, #4]
     e40:	e1a03183 	lsl	r3, r3, #3
     e44:	e51b200c 	ldr	r2, [fp, #-12]
     e48:	e0822003 	add	r2, r2, r3
     e4c:	e51b3008 	ldr	r3, [fp, #-8]
     e50:	e5933000 	ldr	r3, [r3]
     e54:	e1520003 	cmp	r2, r3
     e58:	1a00000d 	bne	e94 <free+0xf0>
     e5c:	e51b300c 	ldr	r3, [fp, #-12]
     e60:	e5932004 	ldr	r2, [r3, #4]
     e64:	e51b3008 	ldr	r3, [fp, #-8]
     e68:	e5933000 	ldr	r3, [r3]
     e6c:	e5933004 	ldr	r3, [r3, #4]
     e70:	e0822003 	add	r2, r2, r3
     e74:	e51b300c 	ldr	r3, [fp, #-12]
     e78:	e5832004 	str	r2, [r3, #4]
     e7c:	e51b3008 	ldr	r3, [fp, #-8]
     e80:	e5933000 	ldr	r3, [r3]
     e84:	e5932000 	ldr	r2, [r3]
     e88:	e51b300c 	ldr	r3, [fp, #-12]
     e8c:	e5832000 	str	r2, [r3]
     e90:	ea000003 	b	ea4 <free+0x100>
     e94:	e51b3008 	ldr	r3, [fp, #-8]
     e98:	e5932000 	ldr	r2, [r3]
     e9c:	e51b300c 	ldr	r3, [fp, #-12]
     ea0:	e5832000 	str	r2, [r3]
     ea4:	e51b3008 	ldr	r3, [fp, #-8]
     ea8:	e5933004 	ldr	r3, [r3, #4]
     eac:	e1a03183 	lsl	r3, r3, #3
     eb0:	e51b2008 	ldr	r2, [fp, #-8]
     eb4:	e0823003 	add	r3, r2, r3
     eb8:	e51b200c 	ldr	r2, [fp, #-12]
     ebc:	e1520003 	cmp	r2, r3
     ec0:	1a00000b 	bne	ef4 <free+0x150>
     ec4:	e51b3008 	ldr	r3, [fp, #-8]
     ec8:	e5932004 	ldr	r2, [r3, #4]
     ecc:	e51b300c 	ldr	r3, [fp, #-12]
     ed0:	e5933004 	ldr	r3, [r3, #4]
     ed4:	e0822003 	add	r2, r2, r3
     ed8:	e51b3008 	ldr	r3, [fp, #-8]
     edc:	e5832004 	str	r2, [r3, #4]
     ee0:	e51b300c 	ldr	r3, [fp, #-12]
     ee4:	e5932000 	ldr	r2, [r3]
     ee8:	e51b3008 	ldr	r3, [fp, #-8]
     eec:	e5832000 	str	r2, [r3]
     ef0:	ea000002 	b	f00 <free+0x15c>
     ef4:	e51b3008 	ldr	r3, [fp, #-8]
     ef8:	e51b200c 	ldr	r2, [fp, #-12]
     efc:	e5832000 	str	r2, [r3]
     f00:	e59f2014 	ldr	r2, [pc, #20]	@ f1c <free+0x178>
     f04:	e51b3008 	ldr	r3, [fp, #-8]
     f08:	e5823000 	str	r3, [r2]
     f0c:	e1a00000 	nop			@ (mov r0, r0)
     f10:	e28bd000 	add	sp, fp, #0
     f14:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     f18:	e12fff1e 	bx	lr
     f1c:	00001280 	.word	0x00001280

00000f20 <morecore>:
     f20:	e92d4800 	push	{fp, lr}
     f24:	e28db004 	add	fp, sp, #4
     f28:	e24dd010 	sub	sp, sp, #16
     f2c:	e50b0010 	str	r0, [fp, #-16]
     f30:	e51b3010 	ldr	r3, [fp, #-16]
     f34:	e3530a01 	cmp	r3, #4096	@ 0x1000
     f38:	2a000001 	bcs	f44 <morecore+0x24>
     f3c:	e3a03a01 	mov	r3, #4096	@ 0x1000
     f40:	e50b3010 	str	r3, [fp, #-16]
     f44:	e51b3010 	ldr	r3, [fp, #-16]
     f48:	e1a03183 	lsl	r3, r3, #3
     f4c:	e1a00003 	mov	r0, r3
     f50:	ebfffe61 	bl	8dc <sbrk>
     f54:	e50b0008 	str	r0, [fp, #-8]
     f58:	e51b3008 	ldr	r3, [fp, #-8]
     f5c:	e3730001 	cmn	r3, #1
     f60:	1a000001 	bne	f6c <morecore+0x4c>
     f64:	e3a03000 	mov	r3, #0
     f68:	ea00000a 	b	f98 <morecore+0x78>
     f6c:	e51b3008 	ldr	r3, [fp, #-8]
     f70:	e50b300c 	str	r3, [fp, #-12]
     f74:	e51b300c 	ldr	r3, [fp, #-12]
     f78:	e51b2010 	ldr	r2, [fp, #-16]
     f7c:	e5832004 	str	r2, [r3, #4]
     f80:	e51b300c 	ldr	r3, [fp, #-12]
     f84:	e2833008 	add	r3, r3, #8
     f88:	e1a00003 	mov	r0, r3
     f8c:	ebffff84 	bl	da4 <free>
     f90:	e59f300c 	ldr	r3, [pc, #12]	@ fa4 <morecore+0x84>
     f94:	e5933000 	ldr	r3, [r3]
     f98:	e1a00003 	mov	r0, r3
     f9c:	e24bd004 	sub	sp, fp, #4
     fa0:	e8bd8800 	pop	{fp, pc}
     fa4:	00001280 	.word	0x00001280

00000fa8 <malloc>:
     fa8:	e92d4800 	push	{fp, lr}
     fac:	e28db004 	add	fp, sp, #4
     fb0:	e24dd018 	sub	sp, sp, #24
     fb4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     fb8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fbc:	e2833007 	add	r3, r3, #7
     fc0:	e1a031a3 	lsr	r3, r3, #3
     fc4:	e2833001 	add	r3, r3, #1
     fc8:	e50b3010 	str	r3, [fp, #-16]
     fcc:	e59f3134 	ldr	r3, [pc, #308]	@ 1108 <malloc+0x160>
     fd0:	e5933000 	ldr	r3, [r3]
     fd4:	e50b300c 	str	r3, [fp, #-12]
     fd8:	e51b300c 	ldr	r3, [fp, #-12]
     fdc:	e3530000 	cmp	r3, #0
     fe0:	1a00000b 	bne	1014 <malloc+0x6c>
     fe4:	e59f3120 	ldr	r3, [pc, #288]	@ 110c <malloc+0x164>
     fe8:	e50b300c 	str	r3, [fp, #-12]
     fec:	e59f2114 	ldr	r2, [pc, #276]	@ 1108 <malloc+0x160>
     ff0:	e51b300c 	ldr	r3, [fp, #-12]
     ff4:	e5823000 	str	r3, [r2]
     ff8:	e59f3108 	ldr	r3, [pc, #264]	@ 1108 <malloc+0x160>
     ffc:	e5933000 	ldr	r3, [r3]
    1000:	e59f2104 	ldr	r2, [pc, #260]	@ 110c <malloc+0x164>
    1004:	e5823000 	str	r3, [r2]
    1008:	e59f30fc 	ldr	r3, [pc, #252]	@ 110c <malloc+0x164>
    100c:	e3a02000 	mov	r2, #0
    1010:	e5832004 	str	r2, [r3, #4]
    1014:	e51b300c 	ldr	r3, [fp, #-12]
    1018:	e5933000 	ldr	r3, [r3]
    101c:	e50b3008 	str	r3, [fp, #-8]
    1020:	e51b3008 	ldr	r3, [fp, #-8]
    1024:	e5933004 	ldr	r3, [r3, #4]
    1028:	e51b2010 	ldr	r2, [fp, #-16]
    102c:	e1520003 	cmp	r2, r3
    1030:	8a00001e 	bhi	10b0 <malloc+0x108>
    1034:	e51b3008 	ldr	r3, [fp, #-8]
    1038:	e5933004 	ldr	r3, [r3, #4]
    103c:	e51b2010 	ldr	r2, [fp, #-16]
    1040:	e1520003 	cmp	r2, r3
    1044:	1a000004 	bne	105c <malloc+0xb4>
    1048:	e51b3008 	ldr	r3, [fp, #-8]
    104c:	e5932000 	ldr	r2, [r3]
    1050:	e51b300c 	ldr	r3, [fp, #-12]
    1054:	e5832000 	str	r2, [r3]
    1058:	ea00000e 	b	1098 <malloc+0xf0>
    105c:	e51b3008 	ldr	r3, [fp, #-8]
    1060:	e5932004 	ldr	r2, [r3, #4]
    1064:	e51b3010 	ldr	r3, [fp, #-16]
    1068:	e0422003 	sub	r2, r2, r3
    106c:	e51b3008 	ldr	r3, [fp, #-8]
    1070:	e5832004 	str	r2, [r3, #4]
    1074:	e51b3008 	ldr	r3, [fp, #-8]
    1078:	e5933004 	ldr	r3, [r3, #4]
    107c:	e1a03183 	lsl	r3, r3, #3
    1080:	e51b2008 	ldr	r2, [fp, #-8]
    1084:	e0823003 	add	r3, r2, r3
    1088:	e50b3008 	str	r3, [fp, #-8]
    108c:	e51b3008 	ldr	r3, [fp, #-8]
    1090:	e51b2010 	ldr	r2, [fp, #-16]
    1094:	e5832004 	str	r2, [r3, #4]
    1098:	e59f2068 	ldr	r2, [pc, #104]	@ 1108 <malloc+0x160>
    109c:	e51b300c 	ldr	r3, [fp, #-12]
    10a0:	e5823000 	str	r3, [r2]
    10a4:	e51b3008 	ldr	r3, [fp, #-8]
    10a8:	e2833008 	add	r3, r3, #8
    10ac:	ea000012 	b	10fc <malloc+0x154>
    10b0:	e59f3050 	ldr	r3, [pc, #80]	@ 1108 <malloc+0x160>
    10b4:	e5933000 	ldr	r3, [r3]
    10b8:	e51b2008 	ldr	r2, [fp, #-8]
    10bc:	e1520003 	cmp	r2, r3
    10c0:	1a000007 	bne	10e4 <malloc+0x13c>
    10c4:	e51b0010 	ldr	r0, [fp, #-16]
    10c8:	ebffff94 	bl	f20 <morecore>
    10cc:	e50b0008 	str	r0, [fp, #-8]
    10d0:	e51b3008 	ldr	r3, [fp, #-8]
    10d4:	e3530000 	cmp	r3, #0
    10d8:	1a000001 	bne	10e4 <malloc+0x13c>
    10dc:	e3a03000 	mov	r3, #0
    10e0:	ea000005 	b	10fc <malloc+0x154>
    10e4:	e51b3008 	ldr	r3, [fp, #-8]
    10e8:	e50b300c 	str	r3, [fp, #-12]
    10ec:	e51b3008 	ldr	r3, [fp, #-8]
    10f0:	e5933000 	ldr	r3, [r3]
    10f4:	e50b3008 	str	r3, [fp, #-8]
    10f8:	eaffffc8 	b	1020 <malloc+0x78>
    10fc:	e1a00003 	mov	r0, r3
    1100:	e24bd004 	sub	sp, fp, #4
    1104:	e8bd8800 	pop	{fp, pc}
    1108:	00001280 	.word	0x00001280
    110c:	00001278 	.word	0x00001278

00001110 <__udivsi3>:
    1110:	e2512001 	subs	r2, r1, #1
    1114:	012fff1e 	bxeq	lr
    1118:	3a000036 	bcc	11f8 <__udivsi3+0xe8>
    111c:	e1500001 	cmp	r0, r1
    1120:	9a000022 	bls	11b0 <__udivsi3+0xa0>
    1124:	e1110002 	tst	r1, r2
    1128:	0a000023 	beq	11bc <__udivsi3+0xac>
    112c:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1130:	01a01181 	lsleq	r1, r1, #3
    1134:	03a03008 	moveq	r3, #8
    1138:	13a03001 	movne	r3, #1
    113c:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1140:	31510000 	cmpcc	r1, r0
    1144:	31a01201 	lslcc	r1, r1, #4
    1148:	31a03203 	lslcc	r3, r3, #4
    114c:	3afffffa 	bcc	113c <__udivsi3+0x2c>
    1150:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1154:	31510000 	cmpcc	r1, r0
    1158:	31a01081 	lslcc	r1, r1, #1
    115c:	31a03083 	lslcc	r3, r3, #1
    1160:	3afffffa 	bcc	1150 <__udivsi3+0x40>
    1164:	e3a02000 	mov	r2, #0
    1168:	e1500001 	cmp	r0, r1
    116c:	20400001 	subcs	r0, r0, r1
    1170:	21822003 	orrcs	r2, r2, r3
    1174:	e15000a1 	cmp	r0, r1, lsr #1
    1178:	204000a1 	subcs	r0, r0, r1, lsr #1
    117c:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1180:	e1500121 	cmp	r0, r1, lsr #2
    1184:	20400121 	subcs	r0, r0, r1, lsr #2
    1188:	21822123 	orrcs	r2, r2, r3, lsr #2
    118c:	e15001a1 	cmp	r0, r1, lsr #3
    1190:	204001a1 	subcs	r0, r0, r1, lsr #3
    1194:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1198:	e3500000 	cmp	r0, #0
    119c:	11b03223 	lsrsne	r3, r3, #4
    11a0:	11a01221 	lsrne	r1, r1, #4
    11a4:	1affffef 	bne	1168 <__udivsi3+0x58>
    11a8:	e1a00002 	mov	r0, r2
    11ac:	e12fff1e 	bx	lr
    11b0:	03a00001 	moveq	r0, #1
    11b4:	13a00000 	movne	r0, #0
    11b8:	e12fff1e 	bx	lr
    11bc:	e3510801 	cmp	r1, #65536	@ 0x10000
    11c0:	21a01821 	lsrcs	r1, r1, #16
    11c4:	23a02010 	movcs	r2, #16
    11c8:	33a02000 	movcc	r2, #0
    11cc:	e3510c01 	cmp	r1, #256	@ 0x100
    11d0:	21a01421 	lsrcs	r1, r1, #8
    11d4:	22822008 	addcs	r2, r2, #8
    11d8:	e3510010 	cmp	r1, #16
    11dc:	21a01221 	lsrcs	r1, r1, #4
    11e0:	22822004 	addcs	r2, r2, #4
    11e4:	e3510004 	cmp	r1, #4
    11e8:	82822003 	addhi	r2, r2, #3
    11ec:	908220a1 	addls	r2, r2, r1, lsr #1
    11f0:	e1a00230 	lsr	r0, r0, r2
    11f4:	e12fff1e 	bx	lr
    11f8:	e3500000 	cmp	r0, #0
    11fc:	13e00000 	mvnne	r0, #0
    1200:	ea000007 	b	1224 <__aeabi_idiv0>

00001204 <__aeabi_uidivmod>:
    1204:	e3510000 	cmp	r1, #0
    1208:	0afffffa 	beq	11f8 <__udivsi3+0xe8>
    120c:	e92d4003 	push	{r0, r1, lr}
    1210:	ebffffbe 	bl	1110 <__udivsi3>
    1214:	e8bd4006 	pop	{r1, r2, lr}
    1218:	e0030092 	mul	r3, r2, r0
    121c:	e0411003 	sub	r1, r1, r3
    1220:	e12fff1e 	bx	lr

00001224 <__aeabi_idiv0>:
    1224:	e12fff1e 	bx	lr
