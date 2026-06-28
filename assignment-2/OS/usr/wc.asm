
_wc:     file format elf32-littlearm


Disassembly of section .text:

00000000 <wc>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd028 	sub	sp, sp, #40	@ 0x28
       c:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
      10:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
      14:	e3a03000 	mov	r3, #0
      18:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      1c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      20:	e50b3010 	str	r3, [fp, #-16]
      24:	e51b3010 	ldr	r3, [fp, #-16]
      28:	e50b300c 	str	r3, [fp, #-12]
      2c:	e3a03000 	mov	r3, #0
      30:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
      34:	ea00002a 	b	e4 <wc+0xe4>
      38:	e3a03000 	mov	r3, #0
      3c:	e50b3008 	str	r3, [fp, #-8]
      40:	ea000023 	b	d4 <wc+0xd4>
      44:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      48:	e2833001 	add	r3, r3, #1
      4c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      50:	e59f20f8 	ldr	r2, [pc, #248]	@ 150 <wc+0x150>
      54:	e51b3008 	ldr	r3, [fp, #-8]
      58:	e0823003 	add	r3, r2, r3
      5c:	e5d33000 	ldrb	r3, [r3]
      60:	e353000a 	cmp	r3, #10
      64:	1a000002 	bne	74 <wc+0x74>
      68:	e51b300c 	ldr	r3, [fp, #-12]
      6c:	e2833001 	add	r3, r3, #1
      70:	e50b300c 	str	r3, [fp, #-12]
      74:	e59f20d4 	ldr	r2, [pc, #212]	@ 150 <wc+0x150>
      78:	e51b3008 	ldr	r3, [fp, #-8]
      7c:	e0823003 	add	r3, r2, r3
      80:	e5d33000 	ldrb	r3, [r3]
      84:	e1a01003 	mov	r1, r3
      88:	e59f00c4 	ldr	r0, [pc, #196]	@ 154 <wc+0x154>
      8c:	eb000103 	bl	4a0 <strchr>
      90:	e1a03000 	mov	r3, r0
      94:	e3530000 	cmp	r3, #0
      98:	0a000002 	beq	a8 <wc+0xa8>
      9c:	e3a03000 	mov	r3, #0
      a0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
      a4:	ea000007 	b	c8 <wc+0xc8>
      a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      ac:	e3530000 	cmp	r3, #0
      b0:	1a000004 	bne	c8 <wc+0xc8>
      b4:	e51b3010 	ldr	r3, [fp, #-16]
      b8:	e2833001 	add	r3, r3, #1
      bc:	e50b3010 	str	r3, [fp, #-16]
      c0:	e3a03001 	mov	r3, #1
      c4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
      c8:	e51b3008 	ldr	r3, [fp, #-8]
      cc:	e2833001 	add	r3, r3, #1
      d0:	e50b3008 	str	r3, [fp, #-8]
      d4:	e51b2008 	ldr	r2, [fp, #-8]
      d8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
      dc:	e1520003 	cmp	r2, r3
      e0:	baffffd7 	blt	44 <wc+0x44>
      e4:	e3a02c02 	mov	r2, #512	@ 0x200
      e8:	e59f1060 	ldr	r1, [pc, #96]	@ 150 <wc+0x150>
      ec:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
      f0:	eb0001ad 	bl	7ac <read>
      f4:	e50b001c 	str	r0, [fp, #-28]	@ 0xffffffe4
      f8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
      fc:	e3530000 	cmp	r3, #0
     100:	caffffcc 	bgt	38 <wc+0x38>
     104:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     108:	e3530000 	cmp	r3, #0
     10c:	aa000003 	bge	120 <wc+0x120>
     110:	e59f1040 	ldr	r1, [pc, #64]	@ 158 <wc+0x158>
     114:	e3a00001 	mov	r0, #1
     118:	eb0002c5 	bl	c34 <printf>
     11c:	eb000187 	bl	740 <exit>
     120:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
     124:	e58d3004 	str	r3, [sp, #4]
     128:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     12c:	e58d3000 	str	r3, [sp]
     130:	e51b3010 	ldr	r3, [fp, #-16]
     134:	e51b200c 	ldr	r2, [fp, #-12]
     138:	e59f101c 	ldr	r1, [pc, #28]	@ 15c <wc+0x15c>
     13c:	e3a00001 	mov	r0, #1
     140:	eb0002bb 	bl	c34 <printf>
     144:	e1a00000 	nop			@ (mov r0, r0)
     148:	e24bd004 	sub	sp, fp, #4
     14c:	e8bd8800 	pop	{fp, pc}
     150:	0000134c 	.word	0x0000134c
     154:	000012f0 	.word	0x000012f0
     158:	000012f8 	.word	0x000012f8
     15c:	00001308 	.word	0x00001308

00000160 <main>:
     160:	e92d4800 	push	{fp, lr}
     164:	e28db004 	add	fp, sp, #4
     168:	e24dd010 	sub	sp, sp, #16
     16c:	e50b0010 	str	r0, [fp, #-16]
     170:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     174:	e51b3010 	ldr	r3, [fp, #-16]
     178:	e3530001 	cmp	r3, #1
     17c:	ca000003 	bgt	190 <main+0x30>
     180:	e59f10b4 	ldr	r1, [pc, #180]	@ 23c <main+0xdc>
     184:	e3a00000 	mov	r0, #0
     188:	ebffff9c 	bl	0 <wc>
     18c:	eb00016b 	bl	740 <exit>
     190:	e3a03001 	mov	r3, #1
     194:	e50b3008 	str	r3, [fp, #-8]
     198:	ea000022 	b	228 <main+0xc8>
     19c:	e51b3008 	ldr	r3, [fp, #-8]
     1a0:	e1a03103 	lsl	r3, r3, #2
     1a4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     1a8:	e0823003 	add	r3, r2, r3
     1ac:	e5933000 	ldr	r3, [r3]
     1b0:	e3a01000 	mov	r1, #0
     1b4:	e1a00003 	mov	r0, r3
     1b8:	eb0001a8 	bl	860 <open>
     1bc:	e50b000c 	str	r0, [fp, #-12]
     1c0:	e51b300c 	ldr	r3, [fp, #-12]
     1c4:	e3530000 	cmp	r3, #0
     1c8:	aa000009 	bge	1f4 <main+0x94>
     1cc:	e51b3008 	ldr	r3, [fp, #-8]
     1d0:	e1a03103 	lsl	r3, r3, #2
     1d4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     1d8:	e0823003 	add	r3, r2, r3
     1dc:	e5933000 	ldr	r3, [r3]
     1e0:	e1a02003 	mov	r2, r3
     1e4:	e59f1054 	ldr	r1, [pc, #84]	@ 240 <main+0xe0>
     1e8:	e3a00001 	mov	r0, #1
     1ec:	eb000290 	bl	c34 <printf>
     1f0:	eb000152 	bl	740 <exit>
     1f4:	e51b3008 	ldr	r3, [fp, #-8]
     1f8:	e1a03103 	lsl	r3, r3, #2
     1fc:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     200:	e0823003 	add	r3, r2, r3
     204:	e5933000 	ldr	r3, [r3]
     208:	e1a01003 	mov	r1, r3
     20c:	e51b000c 	ldr	r0, [fp, #-12]
     210:	ebffff7a 	bl	0 <wc>
     214:	e51b000c 	ldr	r0, [fp, #-12]
     218:	eb000175 	bl	7f4 <close>
     21c:	e51b3008 	ldr	r3, [fp, #-8]
     220:	e2833001 	add	r3, r3, #1
     224:	e50b3008 	str	r3, [fp, #-8]
     228:	e51b2008 	ldr	r2, [fp, #-8]
     22c:	e51b3010 	ldr	r3, [fp, #-16]
     230:	e1520003 	cmp	r2, r3
     234:	baffffd8 	blt	19c <main+0x3c>
     238:	eb000140 	bl	740 <exit>
     23c:	00001318 	.word	0x00001318
     240:	0000131c 	.word	0x0000131c

00000244 <strcpy>:
     244:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     248:	e28db000 	add	fp, sp, #0
     24c:	e24dd014 	sub	sp, sp, #20
     250:	e50b0010 	str	r0, [fp, #-16]
     254:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     258:	e51b3010 	ldr	r3, [fp, #-16]
     25c:	e50b3008 	str	r3, [fp, #-8]
     260:	e1a00000 	nop			@ (mov r0, r0)
     264:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     268:	e2823001 	add	r3, r2, #1
     26c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     270:	e51b3010 	ldr	r3, [fp, #-16]
     274:	e2831001 	add	r1, r3, #1
     278:	e50b1010 	str	r1, [fp, #-16]
     27c:	e5d22000 	ldrb	r2, [r2]
     280:	e5c32000 	strb	r2, [r3]
     284:	e5d33000 	ldrb	r3, [r3]
     288:	e3530000 	cmp	r3, #0
     28c:	1afffff4 	bne	264 <strcpy+0x20>
     290:	e51b3008 	ldr	r3, [fp, #-8]
     294:	e1a00003 	mov	r0, r3
     298:	e28bd000 	add	sp, fp, #0
     29c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2a0:	e12fff1e 	bx	lr

000002a4 <strcmp>:
     2a4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2a8:	e28db000 	add	fp, sp, #0
     2ac:	e24dd00c 	sub	sp, sp, #12
     2b0:	e50b0008 	str	r0, [fp, #-8]
     2b4:	e50b100c 	str	r1, [fp, #-12]
     2b8:	ea000005 	b	2d4 <strcmp+0x30>
     2bc:	e51b3008 	ldr	r3, [fp, #-8]
     2c0:	e2833001 	add	r3, r3, #1
     2c4:	e50b3008 	str	r3, [fp, #-8]
     2c8:	e51b300c 	ldr	r3, [fp, #-12]
     2cc:	e2833001 	add	r3, r3, #1
     2d0:	e50b300c 	str	r3, [fp, #-12]
     2d4:	e51b3008 	ldr	r3, [fp, #-8]
     2d8:	e5d33000 	ldrb	r3, [r3]
     2dc:	e3530000 	cmp	r3, #0
     2e0:	0a000005 	beq	2fc <strcmp+0x58>
     2e4:	e51b3008 	ldr	r3, [fp, #-8]
     2e8:	e5d32000 	ldrb	r2, [r3]
     2ec:	e51b300c 	ldr	r3, [fp, #-12]
     2f0:	e5d33000 	ldrb	r3, [r3]
     2f4:	e1520003 	cmp	r2, r3
     2f8:	0affffef 	beq	2bc <strcmp+0x18>
     2fc:	e51b3008 	ldr	r3, [fp, #-8]
     300:	e5d33000 	ldrb	r3, [r3]
     304:	e1a02003 	mov	r2, r3
     308:	e51b300c 	ldr	r3, [fp, #-12]
     30c:	e5d33000 	ldrb	r3, [r3]
     310:	e0423003 	sub	r3, r2, r3
     314:	e1a00003 	mov	r0, r3
     318:	e28bd000 	add	sp, fp, #0
     31c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     320:	e12fff1e 	bx	lr

00000324 <strlen>:
     324:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     328:	e28db000 	add	fp, sp, #0
     32c:	e24dd014 	sub	sp, sp, #20
     330:	e50b0010 	str	r0, [fp, #-16]
     334:	e3a03000 	mov	r3, #0
     338:	e50b3008 	str	r3, [fp, #-8]
     33c:	ea000002 	b	34c <strlen+0x28>
     340:	e51b3008 	ldr	r3, [fp, #-8]
     344:	e2833001 	add	r3, r3, #1
     348:	e50b3008 	str	r3, [fp, #-8]
     34c:	e51b3008 	ldr	r3, [fp, #-8]
     350:	e51b2010 	ldr	r2, [fp, #-16]
     354:	e0823003 	add	r3, r2, r3
     358:	e5d33000 	ldrb	r3, [r3]
     35c:	e3530000 	cmp	r3, #0
     360:	1afffff6 	bne	340 <strlen+0x1c>
     364:	e51b3008 	ldr	r3, [fp, #-8]
     368:	e1a00003 	mov	r0, r3
     36c:	e28bd000 	add	sp, fp, #0
     370:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     374:	e12fff1e 	bx	lr

00000378 <memset>:
     378:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     37c:	e28db000 	add	fp, sp, #0
     380:	e24dd024 	sub	sp, sp, #36	@ 0x24
     384:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     388:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     38c:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     390:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     394:	e50b3008 	str	r3, [fp, #-8]
     398:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     39c:	e54b300d 	strb	r3, [fp, #-13]
     3a0:	e55b200d 	ldrb	r2, [fp, #-13]
     3a4:	e1a03002 	mov	r3, r2
     3a8:	e1a03403 	lsl	r3, r3, #8
     3ac:	e0833002 	add	r3, r3, r2
     3b0:	e1a03803 	lsl	r3, r3, #16
     3b4:	e1a02003 	mov	r2, r3
     3b8:	e55b300d 	ldrb	r3, [fp, #-13]
     3bc:	e1a03403 	lsl	r3, r3, #8
     3c0:	e1822003 	orr	r2, r2, r3
     3c4:	e55b300d 	ldrb	r3, [fp, #-13]
     3c8:	e1823003 	orr	r3, r2, r3
     3cc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     3d0:	ea000008 	b	3f8 <memset+0x80>
     3d4:	e51b3008 	ldr	r3, [fp, #-8]
     3d8:	e55b200d 	ldrb	r2, [fp, #-13]
     3dc:	e5c32000 	strb	r2, [r3]
     3e0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3e4:	e2433001 	sub	r3, r3, #1
     3e8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3ec:	e51b3008 	ldr	r3, [fp, #-8]
     3f0:	e2833001 	add	r3, r3, #1
     3f4:	e50b3008 	str	r3, [fp, #-8]
     3f8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3fc:	e3530000 	cmp	r3, #0
     400:	0a000003 	beq	414 <memset+0x9c>
     404:	e51b3008 	ldr	r3, [fp, #-8]
     408:	e2033003 	and	r3, r3, #3
     40c:	e3530000 	cmp	r3, #0
     410:	1affffef 	bne	3d4 <memset+0x5c>
     414:	e51b3008 	ldr	r3, [fp, #-8]
     418:	e50b300c 	str	r3, [fp, #-12]
     41c:	ea000008 	b	444 <memset+0xcc>
     420:	e51b300c 	ldr	r3, [fp, #-12]
     424:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     428:	e5832000 	str	r2, [r3]
     42c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     430:	e2433004 	sub	r3, r3, #4
     434:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     438:	e51b300c 	ldr	r3, [fp, #-12]
     43c:	e2833004 	add	r3, r3, #4
     440:	e50b300c 	str	r3, [fp, #-12]
     444:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     448:	e3530003 	cmp	r3, #3
     44c:	8afffff3 	bhi	420 <memset+0xa8>
     450:	e51b300c 	ldr	r3, [fp, #-12]
     454:	e50b3008 	str	r3, [fp, #-8]
     458:	ea000008 	b	480 <memset+0x108>
     45c:	e51b3008 	ldr	r3, [fp, #-8]
     460:	e55b200d 	ldrb	r2, [fp, #-13]
     464:	e5c32000 	strb	r2, [r3]
     468:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     46c:	e2433001 	sub	r3, r3, #1
     470:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     474:	e51b3008 	ldr	r3, [fp, #-8]
     478:	e2833001 	add	r3, r3, #1
     47c:	e50b3008 	str	r3, [fp, #-8]
     480:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     484:	e3530000 	cmp	r3, #0
     488:	1afffff3 	bne	45c <memset+0xe4>
     48c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     490:	e1a00003 	mov	r0, r3
     494:	e28bd000 	add	sp, fp, #0
     498:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     49c:	e12fff1e 	bx	lr

000004a0 <strchr>:
     4a0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4a4:	e28db000 	add	fp, sp, #0
     4a8:	e24dd00c 	sub	sp, sp, #12
     4ac:	e50b0008 	str	r0, [fp, #-8]
     4b0:	e1a03001 	mov	r3, r1
     4b4:	e54b3009 	strb	r3, [fp, #-9]
     4b8:	ea000009 	b	4e4 <strchr+0x44>
     4bc:	e51b3008 	ldr	r3, [fp, #-8]
     4c0:	e5d33000 	ldrb	r3, [r3]
     4c4:	e55b2009 	ldrb	r2, [fp, #-9]
     4c8:	e1520003 	cmp	r2, r3
     4cc:	1a000001 	bne	4d8 <strchr+0x38>
     4d0:	e51b3008 	ldr	r3, [fp, #-8]
     4d4:	ea000007 	b	4f8 <strchr+0x58>
     4d8:	e51b3008 	ldr	r3, [fp, #-8]
     4dc:	e2833001 	add	r3, r3, #1
     4e0:	e50b3008 	str	r3, [fp, #-8]
     4e4:	e51b3008 	ldr	r3, [fp, #-8]
     4e8:	e5d33000 	ldrb	r3, [r3]
     4ec:	e3530000 	cmp	r3, #0
     4f0:	1afffff1 	bne	4bc <strchr+0x1c>
     4f4:	e3a03000 	mov	r3, #0
     4f8:	e1a00003 	mov	r0, r3
     4fc:	e28bd000 	add	sp, fp, #0
     500:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     504:	e12fff1e 	bx	lr

00000508 <gets>:
     508:	e92d4800 	push	{fp, lr}
     50c:	e28db004 	add	fp, sp, #4
     510:	e24dd018 	sub	sp, sp, #24
     514:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     518:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     51c:	e3a03000 	mov	r3, #0
     520:	e50b3008 	str	r3, [fp, #-8]
     524:	ea000016 	b	584 <gets+0x7c>
     528:	e24b300d 	sub	r3, fp, #13
     52c:	e3a02001 	mov	r2, #1
     530:	e1a01003 	mov	r1, r3
     534:	e3a00000 	mov	r0, #0
     538:	eb00009b 	bl	7ac <read>
     53c:	e50b000c 	str	r0, [fp, #-12]
     540:	e51b300c 	ldr	r3, [fp, #-12]
     544:	e3530000 	cmp	r3, #0
     548:	da000013 	ble	59c <gets+0x94>
     54c:	e51b3008 	ldr	r3, [fp, #-8]
     550:	e2832001 	add	r2, r3, #1
     554:	e50b2008 	str	r2, [fp, #-8]
     558:	e1a02003 	mov	r2, r3
     55c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     560:	e0833002 	add	r3, r3, r2
     564:	e55b200d 	ldrb	r2, [fp, #-13]
     568:	e5c32000 	strb	r2, [r3]
     56c:	e55b300d 	ldrb	r3, [fp, #-13]
     570:	e353000a 	cmp	r3, #10
     574:	0a000009 	beq	5a0 <gets+0x98>
     578:	e55b300d 	ldrb	r3, [fp, #-13]
     57c:	e353000d 	cmp	r3, #13
     580:	0a000006 	beq	5a0 <gets+0x98>
     584:	e51b3008 	ldr	r3, [fp, #-8]
     588:	e2833001 	add	r3, r3, #1
     58c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     590:	e1520003 	cmp	r2, r3
     594:	caffffe3 	bgt	528 <gets+0x20>
     598:	ea000000 	b	5a0 <gets+0x98>
     59c:	e1a00000 	nop			@ (mov r0, r0)
     5a0:	e51b3008 	ldr	r3, [fp, #-8]
     5a4:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     5a8:	e0823003 	add	r3, r2, r3
     5ac:	e3a02000 	mov	r2, #0
     5b0:	e5c32000 	strb	r2, [r3]
     5b4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     5b8:	e1a00003 	mov	r0, r3
     5bc:	e24bd004 	sub	sp, fp, #4
     5c0:	e8bd8800 	pop	{fp, pc}

000005c4 <stat>:
     5c4:	e92d4800 	push	{fp, lr}
     5c8:	e28db004 	add	fp, sp, #4
     5cc:	e24dd010 	sub	sp, sp, #16
     5d0:	e50b0010 	str	r0, [fp, #-16]
     5d4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     5d8:	e3a01000 	mov	r1, #0
     5dc:	e51b0010 	ldr	r0, [fp, #-16]
     5e0:	eb00009e 	bl	860 <open>
     5e4:	e50b0008 	str	r0, [fp, #-8]
     5e8:	e51b3008 	ldr	r3, [fp, #-8]
     5ec:	e3530000 	cmp	r3, #0
     5f0:	aa000001 	bge	5fc <stat+0x38>
     5f4:	e3e03000 	mvn	r3, #0
     5f8:	ea000006 	b	618 <stat+0x54>
     5fc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     600:	e51b0008 	ldr	r0, [fp, #-8]
     604:	eb0000b0 	bl	8cc <fstat>
     608:	e50b000c 	str	r0, [fp, #-12]
     60c:	e51b0008 	ldr	r0, [fp, #-8]
     610:	eb000077 	bl	7f4 <close>
     614:	e51b300c 	ldr	r3, [fp, #-12]
     618:	e1a00003 	mov	r0, r3
     61c:	e24bd004 	sub	sp, fp, #4
     620:	e8bd8800 	pop	{fp, pc}

00000624 <atoi>:
     624:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     628:	e28db000 	add	fp, sp, #0
     62c:	e24dd014 	sub	sp, sp, #20
     630:	e50b0010 	str	r0, [fp, #-16]
     634:	e3a03000 	mov	r3, #0
     638:	e50b3008 	str	r3, [fp, #-8]
     63c:	ea00000c 	b	674 <atoi+0x50>
     640:	e51b2008 	ldr	r2, [fp, #-8]
     644:	e1a03002 	mov	r3, r2
     648:	e1a03103 	lsl	r3, r3, #2
     64c:	e0833002 	add	r3, r3, r2
     650:	e1a03083 	lsl	r3, r3, #1
     654:	e1a01003 	mov	r1, r3
     658:	e51b3010 	ldr	r3, [fp, #-16]
     65c:	e2832001 	add	r2, r3, #1
     660:	e50b2010 	str	r2, [fp, #-16]
     664:	e5d33000 	ldrb	r3, [r3]
     668:	e0813003 	add	r3, r1, r3
     66c:	e2433030 	sub	r3, r3, #48	@ 0x30
     670:	e50b3008 	str	r3, [fp, #-8]
     674:	e51b3010 	ldr	r3, [fp, #-16]
     678:	e5d33000 	ldrb	r3, [r3]
     67c:	e353002f 	cmp	r3, #47	@ 0x2f
     680:	9a000003 	bls	694 <atoi+0x70>
     684:	e51b3010 	ldr	r3, [fp, #-16]
     688:	e5d33000 	ldrb	r3, [r3]
     68c:	e3530039 	cmp	r3, #57	@ 0x39
     690:	9affffea 	bls	640 <atoi+0x1c>
     694:	e51b3008 	ldr	r3, [fp, #-8]
     698:	e1a00003 	mov	r0, r3
     69c:	e28bd000 	add	sp, fp, #0
     6a0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6a4:	e12fff1e 	bx	lr

000006a8 <memmove>:
     6a8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6ac:	e28db000 	add	fp, sp, #0
     6b0:	e24dd01c 	sub	sp, sp, #28
     6b4:	e50b0010 	str	r0, [fp, #-16]
     6b8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     6bc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     6c0:	e51b3010 	ldr	r3, [fp, #-16]
     6c4:	e50b3008 	str	r3, [fp, #-8]
     6c8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     6cc:	e50b300c 	str	r3, [fp, #-12]
     6d0:	ea000007 	b	6f4 <memmove+0x4c>
     6d4:	e51b200c 	ldr	r2, [fp, #-12]
     6d8:	e2823001 	add	r3, r2, #1
     6dc:	e50b300c 	str	r3, [fp, #-12]
     6e0:	e51b3008 	ldr	r3, [fp, #-8]
     6e4:	e2831001 	add	r1, r3, #1
     6e8:	e50b1008 	str	r1, [fp, #-8]
     6ec:	e5d22000 	ldrb	r2, [r2]
     6f0:	e5c32000 	strb	r2, [r3]
     6f4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6f8:	e2432001 	sub	r2, r3, #1
     6fc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     700:	e3530000 	cmp	r3, #0
     704:	cafffff2 	bgt	6d4 <memmove+0x2c>
     708:	e51b3010 	ldr	r3, [fp, #-16]
     70c:	e1a00003 	mov	r0, r3
     710:	e28bd000 	add	sp, fp, #0
     714:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     718:	e12fff1e 	bx	lr

0000071c <fork>:
     71c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     720:	e1a04003 	mov	r4, r3
     724:	e1a03002 	mov	r3, r2
     728:	e1a02001 	mov	r2, r1
     72c:	e1a01000 	mov	r1, r0
     730:	e3a00001 	mov	r0, #1
     734:	ef000000 	svc	0x00000000
     738:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     73c:	e12fff1e 	bx	lr

00000740 <exit>:
     740:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     744:	e1a04003 	mov	r4, r3
     748:	e1a03002 	mov	r3, r2
     74c:	e1a02001 	mov	r2, r1
     750:	e1a01000 	mov	r1, r0
     754:	e3a00002 	mov	r0, #2
     758:	ef000000 	svc	0x00000000
     75c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     760:	e12fff1e 	bx	lr

00000764 <wait>:
     764:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     768:	e1a04003 	mov	r4, r3
     76c:	e1a03002 	mov	r3, r2
     770:	e1a02001 	mov	r2, r1
     774:	e1a01000 	mov	r1, r0
     778:	e3a00003 	mov	r0, #3
     77c:	ef000000 	svc	0x00000000
     780:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     784:	e12fff1e 	bx	lr

00000788 <pipe>:
     788:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     78c:	e1a04003 	mov	r4, r3
     790:	e1a03002 	mov	r3, r2
     794:	e1a02001 	mov	r2, r1
     798:	e1a01000 	mov	r1, r0
     79c:	e3a00004 	mov	r0, #4
     7a0:	ef000000 	svc	0x00000000
     7a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7a8:	e12fff1e 	bx	lr

000007ac <read>:
     7ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7b0:	e1a04003 	mov	r4, r3
     7b4:	e1a03002 	mov	r3, r2
     7b8:	e1a02001 	mov	r2, r1
     7bc:	e1a01000 	mov	r1, r0
     7c0:	e3a00005 	mov	r0, #5
     7c4:	ef000000 	svc	0x00000000
     7c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7cc:	e12fff1e 	bx	lr

000007d0 <write>:
     7d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7d4:	e1a04003 	mov	r4, r3
     7d8:	e1a03002 	mov	r3, r2
     7dc:	e1a02001 	mov	r2, r1
     7e0:	e1a01000 	mov	r1, r0
     7e4:	e3a00010 	mov	r0, #16
     7e8:	ef000000 	svc	0x00000000
     7ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7f0:	e12fff1e 	bx	lr

000007f4 <close>:
     7f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7f8:	e1a04003 	mov	r4, r3
     7fc:	e1a03002 	mov	r3, r2
     800:	e1a02001 	mov	r2, r1
     804:	e1a01000 	mov	r1, r0
     808:	e3a00015 	mov	r0, #21
     80c:	ef000000 	svc	0x00000000
     810:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     814:	e12fff1e 	bx	lr

00000818 <kill>:
     818:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     81c:	e1a04003 	mov	r4, r3
     820:	e1a03002 	mov	r3, r2
     824:	e1a02001 	mov	r2, r1
     828:	e1a01000 	mov	r1, r0
     82c:	e3a00006 	mov	r0, #6
     830:	ef000000 	svc	0x00000000
     834:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     838:	e12fff1e 	bx	lr

0000083c <exec>:
     83c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     840:	e1a04003 	mov	r4, r3
     844:	e1a03002 	mov	r3, r2
     848:	e1a02001 	mov	r2, r1
     84c:	e1a01000 	mov	r1, r0
     850:	e3a00007 	mov	r0, #7
     854:	ef000000 	svc	0x00000000
     858:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     85c:	e12fff1e 	bx	lr

00000860 <open>:
     860:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     864:	e1a04003 	mov	r4, r3
     868:	e1a03002 	mov	r3, r2
     86c:	e1a02001 	mov	r2, r1
     870:	e1a01000 	mov	r1, r0
     874:	e3a0000f 	mov	r0, #15
     878:	ef000000 	svc	0x00000000
     87c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     880:	e12fff1e 	bx	lr

00000884 <mknod>:
     884:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     888:	e1a04003 	mov	r4, r3
     88c:	e1a03002 	mov	r3, r2
     890:	e1a02001 	mov	r2, r1
     894:	e1a01000 	mov	r1, r0
     898:	e3a00011 	mov	r0, #17
     89c:	ef000000 	svc	0x00000000
     8a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8a4:	e12fff1e 	bx	lr

000008a8 <unlink>:
     8a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8ac:	e1a04003 	mov	r4, r3
     8b0:	e1a03002 	mov	r3, r2
     8b4:	e1a02001 	mov	r2, r1
     8b8:	e1a01000 	mov	r1, r0
     8bc:	e3a00012 	mov	r0, #18
     8c0:	ef000000 	svc	0x00000000
     8c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8c8:	e12fff1e 	bx	lr

000008cc <fstat>:
     8cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8d0:	e1a04003 	mov	r4, r3
     8d4:	e1a03002 	mov	r3, r2
     8d8:	e1a02001 	mov	r2, r1
     8dc:	e1a01000 	mov	r1, r0
     8e0:	e3a00008 	mov	r0, #8
     8e4:	ef000000 	svc	0x00000000
     8e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8ec:	e12fff1e 	bx	lr

000008f0 <link>:
     8f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8f4:	e1a04003 	mov	r4, r3
     8f8:	e1a03002 	mov	r3, r2
     8fc:	e1a02001 	mov	r2, r1
     900:	e1a01000 	mov	r1, r0
     904:	e3a00013 	mov	r0, #19
     908:	ef000000 	svc	0x00000000
     90c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     910:	e12fff1e 	bx	lr

00000914 <mkdir>:
     914:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     918:	e1a04003 	mov	r4, r3
     91c:	e1a03002 	mov	r3, r2
     920:	e1a02001 	mov	r2, r1
     924:	e1a01000 	mov	r1, r0
     928:	e3a00014 	mov	r0, #20
     92c:	ef000000 	svc	0x00000000
     930:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     934:	e12fff1e 	bx	lr

00000938 <chdir>:
     938:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     93c:	e1a04003 	mov	r4, r3
     940:	e1a03002 	mov	r3, r2
     944:	e1a02001 	mov	r2, r1
     948:	e1a01000 	mov	r1, r0
     94c:	e3a00009 	mov	r0, #9
     950:	ef000000 	svc	0x00000000
     954:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     958:	e12fff1e 	bx	lr

0000095c <dup>:
     95c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     960:	e1a04003 	mov	r4, r3
     964:	e1a03002 	mov	r3, r2
     968:	e1a02001 	mov	r2, r1
     96c:	e1a01000 	mov	r1, r0
     970:	e3a0000a 	mov	r0, #10
     974:	ef000000 	svc	0x00000000
     978:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     97c:	e12fff1e 	bx	lr

00000980 <getpid>:
     980:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     984:	e1a04003 	mov	r4, r3
     988:	e1a03002 	mov	r3, r2
     98c:	e1a02001 	mov	r2, r1
     990:	e1a01000 	mov	r1, r0
     994:	e3a0000b 	mov	r0, #11
     998:	ef000000 	svc	0x00000000
     99c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9a0:	e12fff1e 	bx	lr

000009a4 <sbrk>:
     9a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9a8:	e1a04003 	mov	r4, r3
     9ac:	e1a03002 	mov	r3, r2
     9b0:	e1a02001 	mov	r2, r1
     9b4:	e1a01000 	mov	r1, r0
     9b8:	e3a0000c 	mov	r0, #12
     9bc:	ef000000 	svc	0x00000000
     9c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9c4:	e12fff1e 	bx	lr

000009c8 <sleep>:
     9c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9cc:	e1a04003 	mov	r4, r3
     9d0:	e1a03002 	mov	r3, r2
     9d4:	e1a02001 	mov	r2, r1
     9d8:	e1a01000 	mov	r1, r0
     9dc:	e3a0000d 	mov	r0, #13
     9e0:	ef000000 	svc	0x00000000
     9e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9e8:	e12fff1e 	bx	lr

000009ec <uptime>:
     9ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9f0:	e1a04003 	mov	r4, r3
     9f4:	e1a03002 	mov	r3, r2
     9f8:	e1a02001 	mov	r2, r1
     9fc:	e1a01000 	mov	r1, r0
     a00:	e3a0000e 	mov	r0, #14
     a04:	ef000000 	svc	0x00000000
     a08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a0c:	e12fff1e 	bx	lr

00000a10 <getprocs>:
     a10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a14:	e1a04003 	mov	r4, r3
     a18:	e1a03002 	mov	r3, r2
     a1c:	e1a02001 	mov	r2, r1
     a20:	e1a01000 	mov	r1, r0
     a24:	e3a00016 	mov	r0, #22
     a28:	ef000000 	svc	0x00000000
     a2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a30:	e12fff1e 	bx	lr

00000a34 <getpinfo>:
     a34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a38:	e1a04003 	mov	r4, r3
     a3c:	e1a03002 	mov	r3, r2
     a40:	e1a02001 	mov	r2, r1
     a44:	e1a01000 	mov	r1, r0
     a48:	e3a00018 	mov	r0, #24
     a4c:	ef000000 	svc	0x00000000
     a50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a54:	e12fff1e 	bx	lr

00000a58 <settickets>:
     a58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a5c:	e1a04003 	mov	r4, r3
     a60:	e1a03002 	mov	r3, r2
     a64:	e1a02001 	mov	r2, r1
     a68:	e1a01000 	mov	r1, r0
     a6c:	e3a00017 	mov	r0, #23
     a70:	ef000000 	svc	0x00000000
     a74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a78:	e12fff1e 	bx	lr

00000a7c <srand>:
     a7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a80:	e1a04003 	mov	r4, r3
     a84:	e1a03002 	mov	r3, r2
     a88:	e1a02001 	mov	r2, r1
     a8c:	e1a01000 	mov	r1, r0
     a90:	e3a00019 	mov	r0, #25
     a94:	ef000000 	svc	0x00000000
     a98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a9c:	e12fff1e 	bx	lr

00000aa0 <test>:
     aa0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aa4:	e1a04003 	mov	r4, r3
     aa8:	e1a03002 	mov	r3, r2
     aac:	e1a02001 	mov	r2, r1
     ab0:	e1a01000 	mov	r1, r0
     ab4:	e3a0001a 	mov	r0, #26
     ab8:	ef000000 	svc	0x00000000
     abc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ac0:	e12fff1e 	bx	lr

00000ac4 <putc>:
     ac4:	e92d4800 	push	{fp, lr}
     ac8:	e28db004 	add	fp, sp, #4
     acc:	e24dd008 	sub	sp, sp, #8
     ad0:	e50b0008 	str	r0, [fp, #-8]
     ad4:	e1a03001 	mov	r3, r1
     ad8:	e54b3009 	strb	r3, [fp, #-9]
     adc:	e24b3009 	sub	r3, fp, #9
     ae0:	e3a02001 	mov	r2, #1
     ae4:	e1a01003 	mov	r1, r3
     ae8:	e51b0008 	ldr	r0, [fp, #-8]
     aec:	ebffff37 	bl	7d0 <write>
     af0:	e1a00000 	nop			@ (mov r0, r0)
     af4:	e24bd004 	sub	sp, fp, #4
     af8:	e8bd8800 	pop	{fp, pc}

00000afc <printint>:
     afc:	e92d4800 	push	{fp, lr}
     b00:	e28db004 	add	fp, sp, #4
     b04:	e24dd030 	sub	sp, sp, #48	@ 0x30
     b08:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     b0c:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     b10:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     b14:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     b18:	e3a03000 	mov	r3, #0
     b1c:	e50b300c 	str	r3, [fp, #-12]
     b20:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     b24:	e3530000 	cmp	r3, #0
     b28:	0a000008 	beq	b50 <printint+0x54>
     b2c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     b30:	e3530000 	cmp	r3, #0
     b34:	aa000005 	bge	b50 <printint+0x54>
     b38:	e3a03001 	mov	r3, #1
     b3c:	e50b300c 	str	r3, [fp, #-12]
     b40:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     b44:	e2633000 	rsb	r3, r3, #0
     b48:	e50b3010 	str	r3, [fp, #-16]
     b4c:	ea000001 	b	b58 <printint+0x5c>
     b50:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     b54:	e50b3010 	str	r3, [fp, #-16]
     b58:	e3a03000 	mov	r3, #0
     b5c:	e50b3008 	str	r3, [fp, #-8]
     b60:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     b64:	e51b3010 	ldr	r3, [fp, #-16]
     b68:	e1a01002 	mov	r1, r2
     b6c:	e1a00003 	mov	r0, r3
     b70:	eb0001d5 	bl	12cc <__aeabi_uidivmod>
     b74:	e1a03001 	mov	r3, r1
     b78:	e1a01003 	mov	r1, r3
     b7c:	e51b3008 	ldr	r3, [fp, #-8]
     b80:	e2832001 	add	r2, r3, #1
     b84:	e50b2008 	str	r2, [fp, #-8]
     b88:	e59f20a0 	ldr	r2, [pc, #160]	@ c30 <printint+0x134>
     b8c:	e7d22001 	ldrb	r2, [r2, r1]
     b90:	e2433004 	sub	r3, r3, #4
     b94:	e083300b 	add	r3, r3, fp
     b98:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     b9c:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     ba0:	e1a01003 	mov	r1, r3
     ba4:	e51b0010 	ldr	r0, [fp, #-16]
     ba8:	eb00018a 	bl	11d8 <__udivsi3>
     bac:	e1a03000 	mov	r3, r0
     bb0:	e50b3010 	str	r3, [fp, #-16]
     bb4:	e51b3010 	ldr	r3, [fp, #-16]
     bb8:	e3530000 	cmp	r3, #0
     bbc:	1affffe7 	bne	b60 <printint+0x64>
     bc0:	e51b300c 	ldr	r3, [fp, #-12]
     bc4:	e3530000 	cmp	r3, #0
     bc8:	0a00000e 	beq	c08 <printint+0x10c>
     bcc:	e51b3008 	ldr	r3, [fp, #-8]
     bd0:	e2832001 	add	r2, r3, #1
     bd4:	e50b2008 	str	r2, [fp, #-8]
     bd8:	e2433004 	sub	r3, r3, #4
     bdc:	e083300b 	add	r3, r3, fp
     be0:	e3a0202d 	mov	r2, #45	@ 0x2d
     be4:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     be8:	ea000006 	b	c08 <printint+0x10c>
     bec:	e24b2020 	sub	r2, fp, #32
     bf0:	e51b3008 	ldr	r3, [fp, #-8]
     bf4:	e0823003 	add	r3, r2, r3
     bf8:	e5d33000 	ldrb	r3, [r3]
     bfc:	e1a01003 	mov	r1, r3
     c00:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     c04:	ebffffae 	bl	ac4 <putc>
     c08:	e51b3008 	ldr	r3, [fp, #-8]
     c0c:	e2433001 	sub	r3, r3, #1
     c10:	e50b3008 	str	r3, [fp, #-8]
     c14:	e51b3008 	ldr	r3, [fp, #-8]
     c18:	e3530000 	cmp	r3, #0
     c1c:	aafffff2 	bge	bec <printint+0xf0>
     c20:	e1a00000 	nop			@ (mov r0, r0)
     c24:	e1a00000 	nop			@ (mov r0, r0)
     c28:	e24bd004 	sub	sp, fp, #4
     c2c:	e8bd8800 	pop	{fp, pc}
     c30:	00001338 	.word	0x00001338

00000c34 <printf>:
     c34:	e92d000e 	push	{r1, r2, r3}
     c38:	e92d4800 	push	{fp, lr}
     c3c:	e28db004 	add	fp, sp, #4
     c40:	e24dd024 	sub	sp, sp, #36	@ 0x24
     c44:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     c48:	e3a03000 	mov	r3, #0
     c4c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c50:	e28b3008 	add	r3, fp, #8
     c54:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c58:	e3a03000 	mov	r3, #0
     c5c:	e50b3010 	str	r3, [fp, #-16]
     c60:	ea000074 	b	e38 <printf+0x204>
     c64:	e59b2004 	ldr	r2, [fp, #4]
     c68:	e51b3010 	ldr	r3, [fp, #-16]
     c6c:	e0823003 	add	r3, r2, r3
     c70:	e5d33000 	ldrb	r3, [r3]
     c74:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     c78:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     c7c:	e3530000 	cmp	r3, #0
     c80:	1a00000b 	bne	cb4 <printf+0x80>
     c84:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c88:	e3530025 	cmp	r3, #37	@ 0x25
     c8c:	1a000002 	bne	c9c <printf+0x68>
     c90:	e3a03025 	mov	r3, #37	@ 0x25
     c94:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c98:	ea000063 	b	e2c <printf+0x1f8>
     c9c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ca0:	e6ef3073 	uxtb	r3, r3
     ca4:	e1a01003 	mov	r1, r3
     ca8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cac:	ebffff84 	bl	ac4 <putc>
     cb0:	ea00005d 	b	e2c <printf+0x1f8>
     cb4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     cb8:	e3530025 	cmp	r3, #37	@ 0x25
     cbc:	1a00005a 	bne	e2c <printf+0x1f8>
     cc0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cc4:	e3530064 	cmp	r3, #100	@ 0x64
     cc8:	1a00000a 	bne	cf8 <printf+0xc4>
     ccc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     cd0:	e5933000 	ldr	r3, [r3]
     cd4:	e1a01003 	mov	r1, r3
     cd8:	e3a03001 	mov	r3, #1
     cdc:	e3a0200a 	mov	r2, #10
     ce0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ce4:	ebffff84 	bl	afc <printint>
     ce8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     cec:	e2833004 	add	r3, r3, #4
     cf0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     cf4:	ea00004a 	b	e24 <printf+0x1f0>
     cf8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cfc:	e3530078 	cmp	r3, #120	@ 0x78
     d00:	0a000002 	beq	d10 <printf+0xdc>
     d04:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d08:	e3530070 	cmp	r3, #112	@ 0x70
     d0c:	1a00000a 	bne	d3c <printf+0x108>
     d10:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d14:	e5933000 	ldr	r3, [r3]
     d18:	e1a01003 	mov	r1, r3
     d1c:	e3a03000 	mov	r3, #0
     d20:	e3a02010 	mov	r2, #16
     d24:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d28:	ebffff73 	bl	afc <printint>
     d2c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d30:	e2833004 	add	r3, r3, #4
     d34:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d38:	ea000039 	b	e24 <printf+0x1f0>
     d3c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d40:	e3530073 	cmp	r3, #115	@ 0x73
     d44:	1a000018 	bne	dac <printf+0x178>
     d48:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d4c:	e5933000 	ldr	r3, [r3]
     d50:	e50b300c 	str	r3, [fp, #-12]
     d54:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d58:	e2833004 	add	r3, r3, #4
     d5c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d60:	e51b300c 	ldr	r3, [fp, #-12]
     d64:	e3530000 	cmp	r3, #0
     d68:	1a00000a 	bne	d98 <printf+0x164>
     d6c:	e59f30f4 	ldr	r3, [pc, #244]	@ e68 <printf+0x234>
     d70:	e50b300c 	str	r3, [fp, #-12]
     d74:	ea000007 	b	d98 <printf+0x164>
     d78:	e51b300c 	ldr	r3, [fp, #-12]
     d7c:	e5d33000 	ldrb	r3, [r3]
     d80:	e1a01003 	mov	r1, r3
     d84:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d88:	ebffff4d 	bl	ac4 <putc>
     d8c:	e51b300c 	ldr	r3, [fp, #-12]
     d90:	e2833001 	add	r3, r3, #1
     d94:	e50b300c 	str	r3, [fp, #-12]
     d98:	e51b300c 	ldr	r3, [fp, #-12]
     d9c:	e5d33000 	ldrb	r3, [r3]
     da0:	e3530000 	cmp	r3, #0
     da4:	1afffff3 	bne	d78 <printf+0x144>
     da8:	ea00001d 	b	e24 <printf+0x1f0>
     dac:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     db0:	e3530063 	cmp	r3, #99	@ 0x63
     db4:	1a000009 	bne	de0 <printf+0x1ac>
     db8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     dbc:	e5933000 	ldr	r3, [r3]
     dc0:	e6ef3073 	uxtb	r3, r3
     dc4:	e1a01003 	mov	r1, r3
     dc8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     dcc:	ebffff3c 	bl	ac4 <putc>
     dd0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     dd4:	e2833004 	add	r3, r3, #4
     dd8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ddc:	ea000010 	b	e24 <printf+0x1f0>
     de0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     de4:	e3530025 	cmp	r3, #37	@ 0x25
     de8:	1a000005 	bne	e04 <printf+0x1d0>
     dec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     df0:	e6ef3073 	uxtb	r3, r3
     df4:	e1a01003 	mov	r1, r3
     df8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     dfc:	ebffff30 	bl	ac4 <putc>
     e00:	ea000007 	b	e24 <printf+0x1f0>
     e04:	e3a01025 	mov	r1, #37	@ 0x25
     e08:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e0c:	ebffff2c 	bl	ac4 <putc>
     e10:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e14:	e6ef3073 	uxtb	r3, r3
     e18:	e1a01003 	mov	r1, r3
     e1c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e20:	ebffff27 	bl	ac4 <putc>
     e24:	e3a03000 	mov	r3, #0
     e28:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     e2c:	e51b3010 	ldr	r3, [fp, #-16]
     e30:	e2833001 	add	r3, r3, #1
     e34:	e50b3010 	str	r3, [fp, #-16]
     e38:	e59b2004 	ldr	r2, [fp, #4]
     e3c:	e51b3010 	ldr	r3, [fp, #-16]
     e40:	e0823003 	add	r3, r2, r3
     e44:	e5d33000 	ldrb	r3, [r3]
     e48:	e3530000 	cmp	r3, #0
     e4c:	1affff84 	bne	c64 <printf+0x30>
     e50:	e1a00000 	nop			@ (mov r0, r0)
     e54:	e1a00000 	nop			@ (mov r0, r0)
     e58:	e24bd004 	sub	sp, fp, #4
     e5c:	e8bd4800 	pop	{fp, lr}
     e60:	e28dd00c 	add	sp, sp, #12
     e64:	e12fff1e 	bx	lr
     e68:	00001330 	.word	0x00001330

00000e6c <free>:
     e6c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     e70:	e28db000 	add	fp, sp, #0
     e74:	e24dd014 	sub	sp, sp, #20
     e78:	e50b0010 	str	r0, [fp, #-16]
     e7c:	e51b3010 	ldr	r3, [fp, #-16]
     e80:	e2433008 	sub	r3, r3, #8
     e84:	e50b300c 	str	r3, [fp, #-12]
     e88:	e59f3154 	ldr	r3, [pc, #340]	@ fe4 <free+0x178>
     e8c:	e5933000 	ldr	r3, [r3]
     e90:	e50b3008 	str	r3, [fp, #-8]
     e94:	ea000010 	b	edc <free+0x70>
     e98:	e51b3008 	ldr	r3, [fp, #-8]
     e9c:	e5933000 	ldr	r3, [r3]
     ea0:	e51b2008 	ldr	r2, [fp, #-8]
     ea4:	e1520003 	cmp	r2, r3
     ea8:	3a000008 	bcc	ed0 <free+0x64>
     eac:	e51b200c 	ldr	r2, [fp, #-12]
     eb0:	e51b3008 	ldr	r3, [fp, #-8]
     eb4:	e1520003 	cmp	r2, r3
     eb8:	8a000010 	bhi	f00 <free+0x94>
     ebc:	e51b3008 	ldr	r3, [fp, #-8]
     ec0:	e5933000 	ldr	r3, [r3]
     ec4:	e51b200c 	ldr	r2, [fp, #-12]
     ec8:	e1520003 	cmp	r2, r3
     ecc:	3a00000b 	bcc	f00 <free+0x94>
     ed0:	e51b3008 	ldr	r3, [fp, #-8]
     ed4:	e5933000 	ldr	r3, [r3]
     ed8:	e50b3008 	str	r3, [fp, #-8]
     edc:	e51b200c 	ldr	r2, [fp, #-12]
     ee0:	e51b3008 	ldr	r3, [fp, #-8]
     ee4:	e1520003 	cmp	r2, r3
     ee8:	9affffea 	bls	e98 <free+0x2c>
     eec:	e51b3008 	ldr	r3, [fp, #-8]
     ef0:	e5933000 	ldr	r3, [r3]
     ef4:	e51b200c 	ldr	r2, [fp, #-12]
     ef8:	e1520003 	cmp	r2, r3
     efc:	2affffe5 	bcs	e98 <free+0x2c>
     f00:	e51b300c 	ldr	r3, [fp, #-12]
     f04:	e5933004 	ldr	r3, [r3, #4]
     f08:	e1a03183 	lsl	r3, r3, #3
     f0c:	e51b200c 	ldr	r2, [fp, #-12]
     f10:	e0822003 	add	r2, r2, r3
     f14:	e51b3008 	ldr	r3, [fp, #-8]
     f18:	e5933000 	ldr	r3, [r3]
     f1c:	e1520003 	cmp	r2, r3
     f20:	1a00000d 	bne	f5c <free+0xf0>
     f24:	e51b300c 	ldr	r3, [fp, #-12]
     f28:	e5932004 	ldr	r2, [r3, #4]
     f2c:	e51b3008 	ldr	r3, [fp, #-8]
     f30:	e5933000 	ldr	r3, [r3]
     f34:	e5933004 	ldr	r3, [r3, #4]
     f38:	e0822003 	add	r2, r2, r3
     f3c:	e51b300c 	ldr	r3, [fp, #-12]
     f40:	e5832004 	str	r2, [r3, #4]
     f44:	e51b3008 	ldr	r3, [fp, #-8]
     f48:	e5933000 	ldr	r3, [r3]
     f4c:	e5932000 	ldr	r2, [r3]
     f50:	e51b300c 	ldr	r3, [fp, #-12]
     f54:	e5832000 	str	r2, [r3]
     f58:	ea000003 	b	f6c <free+0x100>
     f5c:	e51b3008 	ldr	r3, [fp, #-8]
     f60:	e5932000 	ldr	r2, [r3]
     f64:	e51b300c 	ldr	r3, [fp, #-12]
     f68:	e5832000 	str	r2, [r3]
     f6c:	e51b3008 	ldr	r3, [fp, #-8]
     f70:	e5933004 	ldr	r3, [r3, #4]
     f74:	e1a03183 	lsl	r3, r3, #3
     f78:	e51b2008 	ldr	r2, [fp, #-8]
     f7c:	e0823003 	add	r3, r2, r3
     f80:	e51b200c 	ldr	r2, [fp, #-12]
     f84:	e1520003 	cmp	r2, r3
     f88:	1a00000b 	bne	fbc <free+0x150>
     f8c:	e51b3008 	ldr	r3, [fp, #-8]
     f90:	e5932004 	ldr	r2, [r3, #4]
     f94:	e51b300c 	ldr	r3, [fp, #-12]
     f98:	e5933004 	ldr	r3, [r3, #4]
     f9c:	e0822003 	add	r2, r2, r3
     fa0:	e51b3008 	ldr	r3, [fp, #-8]
     fa4:	e5832004 	str	r2, [r3, #4]
     fa8:	e51b300c 	ldr	r3, [fp, #-12]
     fac:	e5932000 	ldr	r2, [r3]
     fb0:	e51b3008 	ldr	r3, [fp, #-8]
     fb4:	e5832000 	str	r2, [r3]
     fb8:	ea000002 	b	fc8 <free+0x15c>
     fbc:	e51b3008 	ldr	r3, [fp, #-8]
     fc0:	e51b200c 	ldr	r2, [fp, #-12]
     fc4:	e5832000 	str	r2, [r3]
     fc8:	e59f2014 	ldr	r2, [pc, #20]	@ fe4 <free+0x178>
     fcc:	e51b3008 	ldr	r3, [fp, #-8]
     fd0:	e5823000 	str	r3, [r2]
     fd4:	e1a00000 	nop			@ (mov r0, r0)
     fd8:	e28bd000 	add	sp, fp, #0
     fdc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     fe0:	e12fff1e 	bx	lr
     fe4:	00001554 	.word	0x00001554

00000fe8 <morecore>:
     fe8:	e92d4800 	push	{fp, lr}
     fec:	e28db004 	add	fp, sp, #4
     ff0:	e24dd010 	sub	sp, sp, #16
     ff4:	e50b0010 	str	r0, [fp, #-16]
     ff8:	e51b3010 	ldr	r3, [fp, #-16]
     ffc:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1000:	2a000001 	bcs	100c <morecore+0x24>
    1004:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1008:	e50b3010 	str	r3, [fp, #-16]
    100c:	e51b3010 	ldr	r3, [fp, #-16]
    1010:	e1a03183 	lsl	r3, r3, #3
    1014:	e1a00003 	mov	r0, r3
    1018:	ebfffe61 	bl	9a4 <sbrk>
    101c:	e50b0008 	str	r0, [fp, #-8]
    1020:	e51b3008 	ldr	r3, [fp, #-8]
    1024:	e3730001 	cmn	r3, #1
    1028:	1a000001 	bne	1034 <morecore+0x4c>
    102c:	e3a03000 	mov	r3, #0
    1030:	ea00000a 	b	1060 <morecore+0x78>
    1034:	e51b3008 	ldr	r3, [fp, #-8]
    1038:	e50b300c 	str	r3, [fp, #-12]
    103c:	e51b300c 	ldr	r3, [fp, #-12]
    1040:	e51b2010 	ldr	r2, [fp, #-16]
    1044:	e5832004 	str	r2, [r3, #4]
    1048:	e51b300c 	ldr	r3, [fp, #-12]
    104c:	e2833008 	add	r3, r3, #8
    1050:	e1a00003 	mov	r0, r3
    1054:	ebffff84 	bl	e6c <free>
    1058:	e59f300c 	ldr	r3, [pc, #12]	@ 106c <morecore+0x84>
    105c:	e5933000 	ldr	r3, [r3]
    1060:	e1a00003 	mov	r0, r3
    1064:	e24bd004 	sub	sp, fp, #4
    1068:	e8bd8800 	pop	{fp, pc}
    106c:	00001554 	.word	0x00001554

00001070 <malloc>:
    1070:	e92d4800 	push	{fp, lr}
    1074:	e28db004 	add	fp, sp, #4
    1078:	e24dd018 	sub	sp, sp, #24
    107c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1080:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1084:	e2833007 	add	r3, r3, #7
    1088:	e1a031a3 	lsr	r3, r3, #3
    108c:	e2833001 	add	r3, r3, #1
    1090:	e50b3010 	str	r3, [fp, #-16]
    1094:	e59f3134 	ldr	r3, [pc, #308]	@ 11d0 <malloc+0x160>
    1098:	e5933000 	ldr	r3, [r3]
    109c:	e50b300c 	str	r3, [fp, #-12]
    10a0:	e51b300c 	ldr	r3, [fp, #-12]
    10a4:	e3530000 	cmp	r3, #0
    10a8:	1a00000b 	bne	10dc <malloc+0x6c>
    10ac:	e59f3120 	ldr	r3, [pc, #288]	@ 11d4 <malloc+0x164>
    10b0:	e50b300c 	str	r3, [fp, #-12]
    10b4:	e59f2114 	ldr	r2, [pc, #276]	@ 11d0 <malloc+0x160>
    10b8:	e51b300c 	ldr	r3, [fp, #-12]
    10bc:	e5823000 	str	r3, [r2]
    10c0:	e59f3108 	ldr	r3, [pc, #264]	@ 11d0 <malloc+0x160>
    10c4:	e5933000 	ldr	r3, [r3]
    10c8:	e59f2104 	ldr	r2, [pc, #260]	@ 11d4 <malloc+0x164>
    10cc:	e5823000 	str	r3, [r2]
    10d0:	e59f30fc 	ldr	r3, [pc, #252]	@ 11d4 <malloc+0x164>
    10d4:	e3a02000 	mov	r2, #0
    10d8:	e5832004 	str	r2, [r3, #4]
    10dc:	e51b300c 	ldr	r3, [fp, #-12]
    10e0:	e5933000 	ldr	r3, [r3]
    10e4:	e50b3008 	str	r3, [fp, #-8]
    10e8:	e51b3008 	ldr	r3, [fp, #-8]
    10ec:	e5933004 	ldr	r3, [r3, #4]
    10f0:	e51b2010 	ldr	r2, [fp, #-16]
    10f4:	e1520003 	cmp	r2, r3
    10f8:	8a00001e 	bhi	1178 <malloc+0x108>
    10fc:	e51b3008 	ldr	r3, [fp, #-8]
    1100:	e5933004 	ldr	r3, [r3, #4]
    1104:	e51b2010 	ldr	r2, [fp, #-16]
    1108:	e1520003 	cmp	r2, r3
    110c:	1a000004 	bne	1124 <malloc+0xb4>
    1110:	e51b3008 	ldr	r3, [fp, #-8]
    1114:	e5932000 	ldr	r2, [r3]
    1118:	e51b300c 	ldr	r3, [fp, #-12]
    111c:	e5832000 	str	r2, [r3]
    1120:	ea00000e 	b	1160 <malloc+0xf0>
    1124:	e51b3008 	ldr	r3, [fp, #-8]
    1128:	e5932004 	ldr	r2, [r3, #4]
    112c:	e51b3010 	ldr	r3, [fp, #-16]
    1130:	e0422003 	sub	r2, r2, r3
    1134:	e51b3008 	ldr	r3, [fp, #-8]
    1138:	e5832004 	str	r2, [r3, #4]
    113c:	e51b3008 	ldr	r3, [fp, #-8]
    1140:	e5933004 	ldr	r3, [r3, #4]
    1144:	e1a03183 	lsl	r3, r3, #3
    1148:	e51b2008 	ldr	r2, [fp, #-8]
    114c:	e0823003 	add	r3, r2, r3
    1150:	e50b3008 	str	r3, [fp, #-8]
    1154:	e51b3008 	ldr	r3, [fp, #-8]
    1158:	e51b2010 	ldr	r2, [fp, #-16]
    115c:	e5832004 	str	r2, [r3, #4]
    1160:	e59f2068 	ldr	r2, [pc, #104]	@ 11d0 <malloc+0x160>
    1164:	e51b300c 	ldr	r3, [fp, #-12]
    1168:	e5823000 	str	r3, [r2]
    116c:	e51b3008 	ldr	r3, [fp, #-8]
    1170:	e2833008 	add	r3, r3, #8
    1174:	ea000012 	b	11c4 <malloc+0x154>
    1178:	e59f3050 	ldr	r3, [pc, #80]	@ 11d0 <malloc+0x160>
    117c:	e5933000 	ldr	r3, [r3]
    1180:	e51b2008 	ldr	r2, [fp, #-8]
    1184:	e1520003 	cmp	r2, r3
    1188:	1a000007 	bne	11ac <malloc+0x13c>
    118c:	e51b0010 	ldr	r0, [fp, #-16]
    1190:	ebffff94 	bl	fe8 <morecore>
    1194:	e50b0008 	str	r0, [fp, #-8]
    1198:	e51b3008 	ldr	r3, [fp, #-8]
    119c:	e3530000 	cmp	r3, #0
    11a0:	1a000001 	bne	11ac <malloc+0x13c>
    11a4:	e3a03000 	mov	r3, #0
    11a8:	ea000005 	b	11c4 <malloc+0x154>
    11ac:	e51b3008 	ldr	r3, [fp, #-8]
    11b0:	e50b300c 	str	r3, [fp, #-12]
    11b4:	e51b3008 	ldr	r3, [fp, #-8]
    11b8:	e5933000 	ldr	r3, [r3]
    11bc:	e50b3008 	str	r3, [fp, #-8]
    11c0:	eaffffc8 	b	10e8 <malloc+0x78>
    11c4:	e1a00003 	mov	r0, r3
    11c8:	e24bd004 	sub	sp, fp, #4
    11cc:	e8bd8800 	pop	{fp, pc}
    11d0:	00001554 	.word	0x00001554
    11d4:	0000154c 	.word	0x0000154c

000011d8 <__udivsi3>:
    11d8:	e2512001 	subs	r2, r1, #1
    11dc:	012fff1e 	bxeq	lr
    11e0:	3a000036 	bcc	12c0 <__udivsi3+0xe8>
    11e4:	e1500001 	cmp	r0, r1
    11e8:	9a000022 	bls	1278 <__udivsi3+0xa0>
    11ec:	e1110002 	tst	r1, r2
    11f0:	0a000023 	beq	1284 <__udivsi3+0xac>
    11f4:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    11f8:	01a01181 	lsleq	r1, r1, #3
    11fc:	03a03008 	moveq	r3, #8
    1200:	13a03001 	movne	r3, #1
    1204:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1208:	31510000 	cmpcc	r1, r0
    120c:	31a01201 	lslcc	r1, r1, #4
    1210:	31a03203 	lslcc	r3, r3, #4
    1214:	3afffffa 	bcc	1204 <__udivsi3+0x2c>
    1218:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    121c:	31510000 	cmpcc	r1, r0
    1220:	31a01081 	lslcc	r1, r1, #1
    1224:	31a03083 	lslcc	r3, r3, #1
    1228:	3afffffa 	bcc	1218 <__udivsi3+0x40>
    122c:	e3a02000 	mov	r2, #0
    1230:	e1500001 	cmp	r0, r1
    1234:	20400001 	subcs	r0, r0, r1
    1238:	21822003 	orrcs	r2, r2, r3
    123c:	e15000a1 	cmp	r0, r1, lsr #1
    1240:	204000a1 	subcs	r0, r0, r1, lsr #1
    1244:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1248:	e1500121 	cmp	r0, r1, lsr #2
    124c:	20400121 	subcs	r0, r0, r1, lsr #2
    1250:	21822123 	orrcs	r2, r2, r3, lsr #2
    1254:	e15001a1 	cmp	r0, r1, lsr #3
    1258:	204001a1 	subcs	r0, r0, r1, lsr #3
    125c:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1260:	e3500000 	cmp	r0, #0
    1264:	11b03223 	lsrsne	r3, r3, #4
    1268:	11a01221 	lsrne	r1, r1, #4
    126c:	1affffef 	bne	1230 <__udivsi3+0x58>
    1270:	e1a00002 	mov	r0, r2
    1274:	e12fff1e 	bx	lr
    1278:	03a00001 	moveq	r0, #1
    127c:	13a00000 	movne	r0, #0
    1280:	e12fff1e 	bx	lr
    1284:	e3510801 	cmp	r1, #65536	@ 0x10000
    1288:	21a01821 	lsrcs	r1, r1, #16
    128c:	23a02010 	movcs	r2, #16
    1290:	33a02000 	movcc	r2, #0
    1294:	e3510c01 	cmp	r1, #256	@ 0x100
    1298:	21a01421 	lsrcs	r1, r1, #8
    129c:	22822008 	addcs	r2, r2, #8
    12a0:	e3510010 	cmp	r1, #16
    12a4:	21a01221 	lsrcs	r1, r1, #4
    12a8:	22822004 	addcs	r2, r2, #4
    12ac:	e3510004 	cmp	r1, #4
    12b0:	82822003 	addhi	r2, r2, #3
    12b4:	908220a1 	addls	r2, r2, r1, lsr #1
    12b8:	e1a00230 	lsr	r0, r0, r2
    12bc:	e12fff1e 	bx	lr
    12c0:	e3500000 	cmp	r0, #0
    12c4:	13e00000 	mvnne	r0, #0
    12c8:	ea000007 	b	12ec <__aeabi_idiv0>

000012cc <__aeabi_uidivmod>:
    12cc:	e3510000 	cmp	r1, #0
    12d0:	0afffffa 	beq	12c0 <__udivsi3+0xe8>
    12d4:	e92d4003 	push	{r0, r1, lr}
    12d8:	ebffffbe 	bl	11d8 <__udivsi3>
    12dc:	e8bd4006 	pop	{r1, r2, lr}
    12e0:	e0030092 	mul	r3, r2, r0
    12e4:	e0411003 	sub	r1, r1, r3
    12e8:	e12fff1e 	bx	lr

000012ec <__aeabi_idiv0>:
    12ec:	e12fff1e 	bx	lr
