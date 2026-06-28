
_ps:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24ddec2 	sub	sp, sp, #3104	@ 0xc20
       c:	e50b0c10 	str	r0, [fp, #-3088]	@ 0xfffff3f0
      10:	e50b1c14 	str	r1, [fp, #-3092]	@ 0xfffff3ec
      14:	e24b3b03 	sub	r3, fp, #3072	@ 0xc00
      18:	e2433004 	sub	r3, r3, #4
      1c:	e2433008 	sub	r3, r3, #8
      20:	e1a00003 	mov	r0, r3
      24:	eb0002a3 	bl	ab8 <getprocs>
      28:	e50b000c 	str	r0, [fp, #-12]
      2c:	e51b300c 	ldr	r3, [fp, #-12]
      30:	e3530000 	cmp	r3, #0
      34:	aa000003 	bge	48 <main+0x48>
      38:	e59f1298 	ldr	r1, [pc, #664]	@ 2d8 <main+0x2d8>
      3c:	e3a00002 	mov	r0, #2
      40:	eb000325 	bl	cdc <printf>
      44:	eb0001e7 	bl	7e8 <exit>
      48:	e59f128c 	ldr	r1, [pc, #652]	@ 2dc <main+0x2dc>
      4c:	e3a00001 	mov	r0, #1
      50:	eb000321 	bl	cdc <printf>
      54:	e59f1284 	ldr	r1, [pc, #644]	@ 2e0 <main+0x2e0>
      58:	e3a00001 	mov	r0, #1
      5c:	eb00031e 	bl	cdc <printf>
      60:	e3a03000 	mov	r3, #0
      64:	e50b3008 	str	r3, [fp, #-8]
      68:	ea000095 	b	2c4 <main+0x2c4>
      6c:	e51b2008 	ldr	r2, [fp, #-8]
      70:	e1a03002 	mov	r3, r2
      74:	e1a03083 	lsl	r3, r3, #1
      78:	e0833002 	add	r3, r3, r2
      7c:	e1a03203 	lsl	r3, r3, #4
      80:	e2433004 	sub	r3, r3, #4
      84:	e083300b 	add	r3, r3, fp
      88:	e2433b03 	sub	r3, r3, #3072	@ 0xc00
      8c:	e2433008 	sub	r3, r3, #8
      90:	e5933000 	ldr	r3, [r3]
      94:	e3530000 	cmp	r3, #0
      98:	0a000086 	beq	2b8 <main+0x2b8>
      9c:	e24b2b03 	sub	r2, fp, #3072	@ 0xc00
      a0:	e2422004 	sub	r2, r2, #4
      a4:	e2422008 	sub	r2, r2, #8
      a8:	e51b1008 	ldr	r1, [fp, #-8]
      ac:	e1a03001 	mov	r3, r1
      b0:	e1a03083 	lsl	r3, r3, #1
      b4:	e0833001 	add	r3, r3, r1
      b8:	e1a03203 	lsl	r3, r3, #4
      bc:	e2833018 	add	r3, r3, #24
      c0:	e0823003 	add	r3, r2, r3
      c4:	e2833004 	add	r3, r3, #4
      c8:	e1a00003 	mov	r0, r3
      cc:	eb0000be 	bl	3cc <strlen>
      d0:	e1a03000 	mov	r3, r0
      d4:	e3530007 	cmp	r3, #7
      d8:	8a00003b 	bhi	1cc <main+0x1cc>
      dc:	e51b2008 	ldr	r2, [fp, #-8]
      e0:	e1a03002 	mov	r3, r2
      e4:	e1a03083 	lsl	r3, r3, #1
      e8:	e0833002 	add	r3, r3, r2
      ec:	e1a03203 	lsl	r3, r3, #4
      f0:	e2433004 	sub	r3, r3, #4
      f4:	e083300b 	add	r3, r3, fp
      f8:	e2433b03 	sub	r3, r3, #3072	@ 0xc00
      fc:	e2433004 	sub	r3, r3, #4
     100:	e593c000 	ldr	ip, [r3]
     104:	e51b2008 	ldr	r2, [fp, #-8]
     108:	e1a03002 	mov	r3, r2
     10c:	e1a03083 	lsl	r3, r3, #1
     110:	e0833002 	add	r3, r3, r2
     114:	e1a03203 	lsl	r3, r3, #4
     118:	e2433004 	sub	r3, r3, #4
     11c:	e083300b 	add	r3, r3, fp
     120:	e2433b03 	sub	r3, r3, #3072	@ 0xc00
     124:	e593e000 	ldr	lr, [r3]
     128:	e24b2b03 	sub	r2, fp, #3072	@ 0xc00
     12c:	e2422004 	sub	r2, r2, #4
     130:	e2422008 	sub	r2, r2, #8
     134:	e51b1008 	ldr	r1, [fp, #-8]
     138:	e1a03001 	mov	r3, r1
     13c:	e1a03083 	lsl	r3, r3, #1
     140:	e0833001 	add	r3, r3, r1
     144:	e1a03203 	lsl	r3, r3, #4
     148:	e2833018 	add	r3, r3, #24
     14c:	e0823003 	add	r3, r2, r3
     150:	e2830004 	add	r0, r3, #4
     154:	e24b2b03 	sub	r2, fp, #3072	@ 0xc00
     158:	e2422004 	sub	r2, r2, #4
     15c:	e2422008 	sub	r2, r2, #8
     160:	e51b1008 	ldr	r1, [fp, #-8]
     164:	e1a03001 	mov	r3, r1
     168:	e1a03083 	lsl	r3, r3, #1
     16c:	e0833001 	add	r3, r3, r1
     170:	e1a03203 	lsl	r3, r3, #4
     174:	e2833008 	add	r3, r3, #8
     178:	e0823003 	add	r3, r2, r3
     17c:	e2831004 	add	r1, r3, #4
     180:	e51b2008 	ldr	r2, [fp, #-8]
     184:	e1a03002 	mov	r3, r2
     188:	e1a03083 	lsl	r3, r3, #1
     18c:	e0833002 	add	r3, r3, r2
     190:	e1a03203 	lsl	r3, r3, #4
     194:	e2433004 	sub	r3, r3, #4
     198:	e083300b 	add	r3, r3, fp
     19c:	e2433ebd 	sub	r3, r3, #3024	@ 0xbd0
     1a0:	e243300c 	sub	r3, r3, #12
     1a4:	e5933000 	ldr	r3, [r3]
     1a8:	e58d3008 	str	r3, [sp, #8]
     1ac:	e58d1004 	str	r1, [sp, #4]
     1b0:	e58d0000 	str	r0, [sp]
     1b4:	e1a0300e 	mov	r3, lr
     1b8:	e1a0200c 	mov	r2, ip
     1bc:	e59f1120 	ldr	r1, [pc, #288]	@ 2e4 <main+0x2e4>
     1c0:	e3a00001 	mov	r0, #1
     1c4:	eb0002c4 	bl	cdc <printf>
     1c8:	ea00003a 	b	2b8 <main+0x2b8>
     1cc:	e51b2008 	ldr	r2, [fp, #-8]
     1d0:	e1a03002 	mov	r3, r2
     1d4:	e1a03083 	lsl	r3, r3, #1
     1d8:	e0833002 	add	r3, r3, r2
     1dc:	e1a03203 	lsl	r3, r3, #4
     1e0:	e2433004 	sub	r3, r3, #4
     1e4:	e083300b 	add	r3, r3, fp
     1e8:	e2433b03 	sub	r3, r3, #3072	@ 0xc00
     1ec:	e2433004 	sub	r3, r3, #4
     1f0:	e593c000 	ldr	ip, [r3]
     1f4:	e51b2008 	ldr	r2, [fp, #-8]
     1f8:	e1a03002 	mov	r3, r2
     1fc:	e1a03083 	lsl	r3, r3, #1
     200:	e0833002 	add	r3, r3, r2
     204:	e1a03203 	lsl	r3, r3, #4
     208:	e2433004 	sub	r3, r3, #4
     20c:	e083300b 	add	r3, r3, fp
     210:	e2433b03 	sub	r3, r3, #3072	@ 0xc00
     214:	e593e000 	ldr	lr, [r3]
     218:	e24b2b03 	sub	r2, fp, #3072	@ 0xc00
     21c:	e2422004 	sub	r2, r2, #4
     220:	e2422008 	sub	r2, r2, #8
     224:	e51b1008 	ldr	r1, [fp, #-8]
     228:	e1a03001 	mov	r3, r1
     22c:	e1a03083 	lsl	r3, r3, #1
     230:	e0833001 	add	r3, r3, r1
     234:	e1a03203 	lsl	r3, r3, #4
     238:	e2833018 	add	r3, r3, #24
     23c:	e0823003 	add	r3, r2, r3
     240:	e2830004 	add	r0, r3, #4
     244:	e24b2b03 	sub	r2, fp, #3072	@ 0xc00
     248:	e2422004 	sub	r2, r2, #4
     24c:	e2422008 	sub	r2, r2, #8
     250:	e51b1008 	ldr	r1, [fp, #-8]
     254:	e1a03001 	mov	r3, r1
     258:	e1a03083 	lsl	r3, r3, #1
     25c:	e0833001 	add	r3, r3, r1
     260:	e1a03203 	lsl	r3, r3, #4
     264:	e2833008 	add	r3, r3, #8
     268:	e0823003 	add	r3, r2, r3
     26c:	e2831004 	add	r1, r3, #4
     270:	e51b2008 	ldr	r2, [fp, #-8]
     274:	e1a03002 	mov	r3, r2
     278:	e1a03083 	lsl	r3, r3, #1
     27c:	e0833002 	add	r3, r3, r2
     280:	e1a03203 	lsl	r3, r3, #4
     284:	e2433004 	sub	r3, r3, #4
     288:	e083300b 	add	r3, r3, fp
     28c:	e2433ebd 	sub	r3, r3, #3024	@ 0xbd0
     290:	e243300c 	sub	r3, r3, #12
     294:	e5933000 	ldr	r3, [r3]
     298:	e58d3008 	str	r3, [sp, #8]
     29c:	e58d1004 	str	r1, [sp, #4]
     2a0:	e58d0000 	str	r0, [sp]
     2a4:	e1a0300e 	mov	r3, lr
     2a8:	e1a0200c 	mov	r2, ip
     2ac:	e59f1034 	ldr	r1, [pc, #52]	@ 2e8 <main+0x2e8>
     2b0:	e3a00001 	mov	r0, #1
     2b4:	eb000288 	bl	cdc <printf>
     2b8:	e51b3008 	ldr	r3, [fp, #-8]
     2bc:	e2833001 	add	r3, r3, #1
     2c0:	e50b3008 	str	r3, [fp, #-8]
     2c4:	e51b2008 	ldr	r2, [fp, #-8]
     2c8:	e51b300c 	ldr	r3, [fp, #-12]
     2cc:	e1520003 	cmp	r2, r3
     2d0:	baffff65 	blt	6c <main+0x6c>
     2d4:	eb000143 	bl	7e8 <exit>
     2d8:	00001398 	.word	0x00001398
     2dc:	000013bc 	.word	0x000013bc
     2e0:	000013dc 	.word	0x000013dc
     2e4:	000013fc 	.word	0x000013fc
     2e8:	00001410 	.word	0x00001410

000002ec <strcpy>:
     2ec:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2f0:	e28db000 	add	fp, sp, #0
     2f4:	e24dd014 	sub	sp, sp, #20
     2f8:	e50b0010 	str	r0, [fp, #-16]
     2fc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     300:	e51b3010 	ldr	r3, [fp, #-16]
     304:	e50b3008 	str	r3, [fp, #-8]
     308:	e1a00000 	nop			@ (mov r0, r0)
     30c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     310:	e2823001 	add	r3, r2, #1
     314:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     318:	e51b3010 	ldr	r3, [fp, #-16]
     31c:	e2831001 	add	r1, r3, #1
     320:	e50b1010 	str	r1, [fp, #-16]
     324:	e5d22000 	ldrb	r2, [r2]
     328:	e5c32000 	strb	r2, [r3]
     32c:	e5d33000 	ldrb	r3, [r3]
     330:	e3530000 	cmp	r3, #0
     334:	1afffff4 	bne	30c <strcpy+0x20>
     338:	e51b3008 	ldr	r3, [fp, #-8]
     33c:	e1a00003 	mov	r0, r3
     340:	e28bd000 	add	sp, fp, #0
     344:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     348:	e12fff1e 	bx	lr

0000034c <strcmp>:
     34c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     350:	e28db000 	add	fp, sp, #0
     354:	e24dd00c 	sub	sp, sp, #12
     358:	e50b0008 	str	r0, [fp, #-8]
     35c:	e50b100c 	str	r1, [fp, #-12]
     360:	ea000005 	b	37c <strcmp+0x30>
     364:	e51b3008 	ldr	r3, [fp, #-8]
     368:	e2833001 	add	r3, r3, #1
     36c:	e50b3008 	str	r3, [fp, #-8]
     370:	e51b300c 	ldr	r3, [fp, #-12]
     374:	e2833001 	add	r3, r3, #1
     378:	e50b300c 	str	r3, [fp, #-12]
     37c:	e51b3008 	ldr	r3, [fp, #-8]
     380:	e5d33000 	ldrb	r3, [r3]
     384:	e3530000 	cmp	r3, #0
     388:	0a000005 	beq	3a4 <strcmp+0x58>
     38c:	e51b3008 	ldr	r3, [fp, #-8]
     390:	e5d32000 	ldrb	r2, [r3]
     394:	e51b300c 	ldr	r3, [fp, #-12]
     398:	e5d33000 	ldrb	r3, [r3]
     39c:	e1520003 	cmp	r2, r3
     3a0:	0affffef 	beq	364 <strcmp+0x18>
     3a4:	e51b3008 	ldr	r3, [fp, #-8]
     3a8:	e5d33000 	ldrb	r3, [r3]
     3ac:	e1a02003 	mov	r2, r3
     3b0:	e51b300c 	ldr	r3, [fp, #-12]
     3b4:	e5d33000 	ldrb	r3, [r3]
     3b8:	e0423003 	sub	r3, r2, r3
     3bc:	e1a00003 	mov	r0, r3
     3c0:	e28bd000 	add	sp, fp, #0
     3c4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3c8:	e12fff1e 	bx	lr

000003cc <strlen>:
     3cc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     3d0:	e28db000 	add	fp, sp, #0
     3d4:	e24dd014 	sub	sp, sp, #20
     3d8:	e50b0010 	str	r0, [fp, #-16]
     3dc:	e3a03000 	mov	r3, #0
     3e0:	e50b3008 	str	r3, [fp, #-8]
     3e4:	ea000002 	b	3f4 <strlen+0x28>
     3e8:	e51b3008 	ldr	r3, [fp, #-8]
     3ec:	e2833001 	add	r3, r3, #1
     3f0:	e50b3008 	str	r3, [fp, #-8]
     3f4:	e51b3008 	ldr	r3, [fp, #-8]
     3f8:	e51b2010 	ldr	r2, [fp, #-16]
     3fc:	e0823003 	add	r3, r2, r3
     400:	e5d33000 	ldrb	r3, [r3]
     404:	e3530000 	cmp	r3, #0
     408:	1afffff6 	bne	3e8 <strlen+0x1c>
     40c:	e51b3008 	ldr	r3, [fp, #-8]
     410:	e1a00003 	mov	r0, r3
     414:	e28bd000 	add	sp, fp, #0
     418:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     41c:	e12fff1e 	bx	lr

00000420 <memset>:
     420:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     424:	e28db000 	add	fp, sp, #0
     428:	e24dd024 	sub	sp, sp, #36	@ 0x24
     42c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     430:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     434:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     438:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     43c:	e50b3008 	str	r3, [fp, #-8]
     440:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     444:	e54b300d 	strb	r3, [fp, #-13]
     448:	e55b200d 	ldrb	r2, [fp, #-13]
     44c:	e1a03002 	mov	r3, r2
     450:	e1a03403 	lsl	r3, r3, #8
     454:	e0833002 	add	r3, r3, r2
     458:	e1a03803 	lsl	r3, r3, #16
     45c:	e1a02003 	mov	r2, r3
     460:	e55b300d 	ldrb	r3, [fp, #-13]
     464:	e1a03403 	lsl	r3, r3, #8
     468:	e1822003 	orr	r2, r2, r3
     46c:	e55b300d 	ldrb	r3, [fp, #-13]
     470:	e1823003 	orr	r3, r2, r3
     474:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     478:	ea000008 	b	4a0 <memset+0x80>
     47c:	e51b3008 	ldr	r3, [fp, #-8]
     480:	e55b200d 	ldrb	r2, [fp, #-13]
     484:	e5c32000 	strb	r2, [r3]
     488:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     48c:	e2433001 	sub	r3, r3, #1
     490:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     494:	e51b3008 	ldr	r3, [fp, #-8]
     498:	e2833001 	add	r3, r3, #1
     49c:	e50b3008 	str	r3, [fp, #-8]
     4a0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     4a4:	e3530000 	cmp	r3, #0
     4a8:	0a000003 	beq	4bc <memset+0x9c>
     4ac:	e51b3008 	ldr	r3, [fp, #-8]
     4b0:	e2033003 	and	r3, r3, #3
     4b4:	e3530000 	cmp	r3, #0
     4b8:	1affffef 	bne	47c <memset+0x5c>
     4bc:	e51b3008 	ldr	r3, [fp, #-8]
     4c0:	e50b300c 	str	r3, [fp, #-12]
     4c4:	ea000008 	b	4ec <memset+0xcc>
     4c8:	e51b300c 	ldr	r3, [fp, #-12]
     4cc:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     4d0:	e5832000 	str	r2, [r3]
     4d4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     4d8:	e2433004 	sub	r3, r3, #4
     4dc:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     4e0:	e51b300c 	ldr	r3, [fp, #-12]
     4e4:	e2833004 	add	r3, r3, #4
     4e8:	e50b300c 	str	r3, [fp, #-12]
     4ec:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     4f0:	e3530003 	cmp	r3, #3
     4f4:	8afffff3 	bhi	4c8 <memset+0xa8>
     4f8:	e51b300c 	ldr	r3, [fp, #-12]
     4fc:	e50b3008 	str	r3, [fp, #-8]
     500:	ea000008 	b	528 <memset+0x108>
     504:	e51b3008 	ldr	r3, [fp, #-8]
     508:	e55b200d 	ldrb	r2, [fp, #-13]
     50c:	e5c32000 	strb	r2, [r3]
     510:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     514:	e2433001 	sub	r3, r3, #1
     518:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     51c:	e51b3008 	ldr	r3, [fp, #-8]
     520:	e2833001 	add	r3, r3, #1
     524:	e50b3008 	str	r3, [fp, #-8]
     528:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     52c:	e3530000 	cmp	r3, #0
     530:	1afffff3 	bne	504 <memset+0xe4>
     534:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     538:	e1a00003 	mov	r0, r3
     53c:	e28bd000 	add	sp, fp, #0
     540:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     544:	e12fff1e 	bx	lr

00000548 <strchr>:
     548:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     54c:	e28db000 	add	fp, sp, #0
     550:	e24dd00c 	sub	sp, sp, #12
     554:	e50b0008 	str	r0, [fp, #-8]
     558:	e1a03001 	mov	r3, r1
     55c:	e54b3009 	strb	r3, [fp, #-9]
     560:	ea000009 	b	58c <strchr+0x44>
     564:	e51b3008 	ldr	r3, [fp, #-8]
     568:	e5d33000 	ldrb	r3, [r3]
     56c:	e55b2009 	ldrb	r2, [fp, #-9]
     570:	e1520003 	cmp	r2, r3
     574:	1a000001 	bne	580 <strchr+0x38>
     578:	e51b3008 	ldr	r3, [fp, #-8]
     57c:	ea000007 	b	5a0 <strchr+0x58>
     580:	e51b3008 	ldr	r3, [fp, #-8]
     584:	e2833001 	add	r3, r3, #1
     588:	e50b3008 	str	r3, [fp, #-8]
     58c:	e51b3008 	ldr	r3, [fp, #-8]
     590:	e5d33000 	ldrb	r3, [r3]
     594:	e3530000 	cmp	r3, #0
     598:	1afffff1 	bne	564 <strchr+0x1c>
     59c:	e3a03000 	mov	r3, #0
     5a0:	e1a00003 	mov	r0, r3
     5a4:	e28bd000 	add	sp, fp, #0
     5a8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5ac:	e12fff1e 	bx	lr

000005b0 <gets>:
     5b0:	e92d4800 	push	{fp, lr}
     5b4:	e28db004 	add	fp, sp, #4
     5b8:	e24dd018 	sub	sp, sp, #24
     5bc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     5c0:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     5c4:	e3a03000 	mov	r3, #0
     5c8:	e50b3008 	str	r3, [fp, #-8]
     5cc:	ea000016 	b	62c <gets+0x7c>
     5d0:	e24b300d 	sub	r3, fp, #13
     5d4:	e3a02001 	mov	r2, #1
     5d8:	e1a01003 	mov	r1, r3
     5dc:	e3a00000 	mov	r0, #0
     5e0:	eb00009b 	bl	854 <read>
     5e4:	e50b000c 	str	r0, [fp, #-12]
     5e8:	e51b300c 	ldr	r3, [fp, #-12]
     5ec:	e3530000 	cmp	r3, #0
     5f0:	da000013 	ble	644 <gets+0x94>
     5f4:	e51b3008 	ldr	r3, [fp, #-8]
     5f8:	e2832001 	add	r2, r3, #1
     5fc:	e50b2008 	str	r2, [fp, #-8]
     600:	e1a02003 	mov	r2, r3
     604:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     608:	e0833002 	add	r3, r3, r2
     60c:	e55b200d 	ldrb	r2, [fp, #-13]
     610:	e5c32000 	strb	r2, [r3]
     614:	e55b300d 	ldrb	r3, [fp, #-13]
     618:	e353000a 	cmp	r3, #10
     61c:	0a000009 	beq	648 <gets+0x98>
     620:	e55b300d 	ldrb	r3, [fp, #-13]
     624:	e353000d 	cmp	r3, #13
     628:	0a000006 	beq	648 <gets+0x98>
     62c:	e51b3008 	ldr	r3, [fp, #-8]
     630:	e2833001 	add	r3, r3, #1
     634:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     638:	e1520003 	cmp	r2, r3
     63c:	caffffe3 	bgt	5d0 <gets+0x20>
     640:	ea000000 	b	648 <gets+0x98>
     644:	e1a00000 	nop			@ (mov r0, r0)
     648:	e51b3008 	ldr	r3, [fp, #-8]
     64c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     650:	e0823003 	add	r3, r2, r3
     654:	e3a02000 	mov	r2, #0
     658:	e5c32000 	strb	r2, [r3]
     65c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     660:	e1a00003 	mov	r0, r3
     664:	e24bd004 	sub	sp, fp, #4
     668:	e8bd8800 	pop	{fp, pc}

0000066c <stat>:
     66c:	e92d4800 	push	{fp, lr}
     670:	e28db004 	add	fp, sp, #4
     674:	e24dd010 	sub	sp, sp, #16
     678:	e50b0010 	str	r0, [fp, #-16]
     67c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     680:	e3a01000 	mov	r1, #0
     684:	e51b0010 	ldr	r0, [fp, #-16]
     688:	eb00009e 	bl	908 <open>
     68c:	e50b0008 	str	r0, [fp, #-8]
     690:	e51b3008 	ldr	r3, [fp, #-8]
     694:	e3530000 	cmp	r3, #0
     698:	aa000001 	bge	6a4 <stat+0x38>
     69c:	e3e03000 	mvn	r3, #0
     6a0:	ea000006 	b	6c0 <stat+0x54>
     6a4:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     6a8:	e51b0008 	ldr	r0, [fp, #-8]
     6ac:	eb0000b0 	bl	974 <fstat>
     6b0:	e50b000c 	str	r0, [fp, #-12]
     6b4:	e51b0008 	ldr	r0, [fp, #-8]
     6b8:	eb000077 	bl	89c <close>
     6bc:	e51b300c 	ldr	r3, [fp, #-12]
     6c0:	e1a00003 	mov	r0, r3
     6c4:	e24bd004 	sub	sp, fp, #4
     6c8:	e8bd8800 	pop	{fp, pc}

000006cc <atoi>:
     6cc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6d0:	e28db000 	add	fp, sp, #0
     6d4:	e24dd014 	sub	sp, sp, #20
     6d8:	e50b0010 	str	r0, [fp, #-16]
     6dc:	e3a03000 	mov	r3, #0
     6e0:	e50b3008 	str	r3, [fp, #-8]
     6e4:	ea00000c 	b	71c <atoi+0x50>
     6e8:	e51b2008 	ldr	r2, [fp, #-8]
     6ec:	e1a03002 	mov	r3, r2
     6f0:	e1a03103 	lsl	r3, r3, #2
     6f4:	e0833002 	add	r3, r3, r2
     6f8:	e1a03083 	lsl	r3, r3, #1
     6fc:	e1a01003 	mov	r1, r3
     700:	e51b3010 	ldr	r3, [fp, #-16]
     704:	e2832001 	add	r2, r3, #1
     708:	e50b2010 	str	r2, [fp, #-16]
     70c:	e5d33000 	ldrb	r3, [r3]
     710:	e0813003 	add	r3, r1, r3
     714:	e2433030 	sub	r3, r3, #48	@ 0x30
     718:	e50b3008 	str	r3, [fp, #-8]
     71c:	e51b3010 	ldr	r3, [fp, #-16]
     720:	e5d33000 	ldrb	r3, [r3]
     724:	e353002f 	cmp	r3, #47	@ 0x2f
     728:	9a000003 	bls	73c <atoi+0x70>
     72c:	e51b3010 	ldr	r3, [fp, #-16]
     730:	e5d33000 	ldrb	r3, [r3]
     734:	e3530039 	cmp	r3, #57	@ 0x39
     738:	9affffea 	bls	6e8 <atoi+0x1c>
     73c:	e51b3008 	ldr	r3, [fp, #-8]
     740:	e1a00003 	mov	r0, r3
     744:	e28bd000 	add	sp, fp, #0
     748:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     74c:	e12fff1e 	bx	lr

00000750 <memmove>:
     750:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     754:	e28db000 	add	fp, sp, #0
     758:	e24dd01c 	sub	sp, sp, #28
     75c:	e50b0010 	str	r0, [fp, #-16]
     760:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     764:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     768:	e51b3010 	ldr	r3, [fp, #-16]
     76c:	e50b3008 	str	r3, [fp, #-8]
     770:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     774:	e50b300c 	str	r3, [fp, #-12]
     778:	ea000007 	b	79c <memmove+0x4c>
     77c:	e51b200c 	ldr	r2, [fp, #-12]
     780:	e2823001 	add	r3, r2, #1
     784:	e50b300c 	str	r3, [fp, #-12]
     788:	e51b3008 	ldr	r3, [fp, #-8]
     78c:	e2831001 	add	r1, r3, #1
     790:	e50b1008 	str	r1, [fp, #-8]
     794:	e5d22000 	ldrb	r2, [r2]
     798:	e5c32000 	strb	r2, [r3]
     79c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     7a0:	e2432001 	sub	r2, r3, #1
     7a4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     7a8:	e3530000 	cmp	r3, #0
     7ac:	cafffff2 	bgt	77c <memmove+0x2c>
     7b0:	e51b3010 	ldr	r3, [fp, #-16]
     7b4:	e1a00003 	mov	r0, r3
     7b8:	e28bd000 	add	sp, fp, #0
     7bc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     7c0:	e12fff1e 	bx	lr

000007c4 <fork>:
     7c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7c8:	e1a04003 	mov	r4, r3
     7cc:	e1a03002 	mov	r3, r2
     7d0:	e1a02001 	mov	r2, r1
     7d4:	e1a01000 	mov	r1, r0
     7d8:	e3a00001 	mov	r0, #1
     7dc:	ef000000 	svc	0x00000000
     7e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7e4:	e12fff1e 	bx	lr

000007e8 <exit>:
     7e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7ec:	e1a04003 	mov	r4, r3
     7f0:	e1a03002 	mov	r3, r2
     7f4:	e1a02001 	mov	r2, r1
     7f8:	e1a01000 	mov	r1, r0
     7fc:	e3a00002 	mov	r0, #2
     800:	ef000000 	svc	0x00000000
     804:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     808:	e12fff1e 	bx	lr

0000080c <wait>:
     80c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     810:	e1a04003 	mov	r4, r3
     814:	e1a03002 	mov	r3, r2
     818:	e1a02001 	mov	r2, r1
     81c:	e1a01000 	mov	r1, r0
     820:	e3a00003 	mov	r0, #3
     824:	ef000000 	svc	0x00000000
     828:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     82c:	e12fff1e 	bx	lr

00000830 <pipe>:
     830:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     834:	e1a04003 	mov	r4, r3
     838:	e1a03002 	mov	r3, r2
     83c:	e1a02001 	mov	r2, r1
     840:	e1a01000 	mov	r1, r0
     844:	e3a00004 	mov	r0, #4
     848:	ef000000 	svc	0x00000000
     84c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     850:	e12fff1e 	bx	lr

00000854 <read>:
     854:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     858:	e1a04003 	mov	r4, r3
     85c:	e1a03002 	mov	r3, r2
     860:	e1a02001 	mov	r2, r1
     864:	e1a01000 	mov	r1, r0
     868:	e3a00005 	mov	r0, #5
     86c:	ef000000 	svc	0x00000000
     870:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     874:	e12fff1e 	bx	lr

00000878 <write>:
     878:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     87c:	e1a04003 	mov	r4, r3
     880:	e1a03002 	mov	r3, r2
     884:	e1a02001 	mov	r2, r1
     888:	e1a01000 	mov	r1, r0
     88c:	e3a00010 	mov	r0, #16
     890:	ef000000 	svc	0x00000000
     894:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     898:	e12fff1e 	bx	lr

0000089c <close>:
     89c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8a0:	e1a04003 	mov	r4, r3
     8a4:	e1a03002 	mov	r3, r2
     8a8:	e1a02001 	mov	r2, r1
     8ac:	e1a01000 	mov	r1, r0
     8b0:	e3a00015 	mov	r0, #21
     8b4:	ef000000 	svc	0x00000000
     8b8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8bc:	e12fff1e 	bx	lr

000008c0 <kill>:
     8c0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8c4:	e1a04003 	mov	r4, r3
     8c8:	e1a03002 	mov	r3, r2
     8cc:	e1a02001 	mov	r2, r1
     8d0:	e1a01000 	mov	r1, r0
     8d4:	e3a00006 	mov	r0, #6
     8d8:	ef000000 	svc	0x00000000
     8dc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8e0:	e12fff1e 	bx	lr

000008e4 <exec>:
     8e4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8e8:	e1a04003 	mov	r4, r3
     8ec:	e1a03002 	mov	r3, r2
     8f0:	e1a02001 	mov	r2, r1
     8f4:	e1a01000 	mov	r1, r0
     8f8:	e3a00007 	mov	r0, #7
     8fc:	ef000000 	svc	0x00000000
     900:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     904:	e12fff1e 	bx	lr

00000908 <open>:
     908:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     90c:	e1a04003 	mov	r4, r3
     910:	e1a03002 	mov	r3, r2
     914:	e1a02001 	mov	r2, r1
     918:	e1a01000 	mov	r1, r0
     91c:	e3a0000f 	mov	r0, #15
     920:	ef000000 	svc	0x00000000
     924:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     928:	e12fff1e 	bx	lr

0000092c <mknod>:
     92c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     930:	e1a04003 	mov	r4, r3
     934:	e1a03002 	mov	r3, r2
     938:	e1a02001 	mov	r2, r1
     93c:	e1a01000 	mov	r1, r0
     940:	e3a00011 	mov	r0, #17
     944:	ef000000 	svc	0x00000000
     948:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     94c:	e12fff1e 	bx	lr

00000950 <unlink>:
     950:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     954:	e1a04003 	mov	r4, r3
     958:	e1a03002 	mov	r3, r2
     95c:	e1a02001 	mov	r2, r1
     960:	e1a01000 	mov	r1, r0
     964:	e3a00012 	mov	r0, #18
     968:	ef000000 	svc	0x00000000
     96c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     970:	e12fff1e 	bx	lr

00000974 <fstat>:
     974:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     978:	e1a04003 	mov	r4, r3
     97c:	e1a03002 	mov	r3, r2
     980:	e1a02001 	mov	r2, r1
     984:	e1a01000 	mov	r1, r0
     988:	e3a00008 	mov	r0, #8
     98c:	ef000000 	svc	0x00000000
     990:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     994:	e12fff1e 	bx	lr

00000998 <link>:
     998:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     99c:	e1a04003 	mov	r4, r3
     9a0:	e1a03002 	mov	r3, r2
     9a4:	e1a02001 	mov	r2, r1
     9a8:	e1a01000 	mov	r1, r0
     9ac:	e3a00013 	mov	r0, #19
     9b0:	ef000000 	svc	0x00000000
     9b4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9b8:	e12fff1e 	bx	lr

000009bc <mkdir>:
     9bc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9c0:	e1a04003 	mov	r4, r3
     9c4:	e1a03002 	mov	r3, r2
     9c8:	e1a02001 	mov	r2, r1
     9cc:	e1a01000 	mov	r1, r0
     9d0:	e3a00014 	mov	r0, #20
     9d4:	ef000000 	svc	0x00000000
     9d8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9dc:	e12fff1e 	bx	lr

000009e0 <chdir>:
     9e0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9e4:	e1a04003 	mov	r4, r3
     9e8:	e1a03002 	mov	r3, r2
     9ec:	e1a02001 	mov	r2, r1
     9f0:	e1a01000 	mov	r1, r0
     9f4:	e3a00009 	mov	r0, #9
     9f8:	ef000000 	svc	0x00000000
     9fc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a00:	e12fff1e 	bx	lr

00000a04 <dup>:
     a04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a08:	e1a04003 	mov	r4, r3
     a0c:	e1a03002 	mov	r3, r2
     a10:	e1a02001 	mov	r2, r1
     a14:	e1a01000 	mov	r1, r0
     a18:	e3a0000a 	mov	r0, #10
     a1c:	ef000000 	svc	0x00000000
     a20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a24:	e12fff1e 	bx	lr

00000a28 <getpid>:
     a28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a2c:	e1a04003 	mov	r4, r3
     a30:	e1a03002 	mov	r3, r2
     a34:	e1a02001 	mov	r2, r1
     a38:	e1a01000 	mov	r1, r0
     a3c:	e3a0000b 	mov	r0, #11
     a40:	ef000000 	svc	0x00000000
     a44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a48:	e12fff1e 	bx	lr

00000a4c <sbrk>:
     a4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a50:	e1a04003 	mov	r4, r3
     a54:	e1a03002 	mov	r3, r2
     a58:	e1a02001 	mov	r2, r1
     a5c:	e1a01000 	mov	r1, r0
     a60:	e3a0000c 	mov	r0, #12
     a64:	ef000000 	svc	0x00000000
     a68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a6c:	e12fff1e 	bx	lr

00000a70 <sleep>:
     a70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a74:	e1a04003 	mov	r4, r3
     a78:	e1a03002 	mov	r3, r2
     a7c:	e1a02001 	mov	r2, r1
     a80:	e1a01000 	mov	r1, r0
     a84:	e3a0000d 	mov	r0, #13
     a88:	ef000000 	svc	0x00000000
     a8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a90:	e12fff1e 	bx	lr

00000a94 <uptime>:
     a94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a98:	e1a04003 	mov	r4, r3
     a9c:	e1a03002 	mov	r3, r2
     aa0:	e1a02001 	mov	r2, r1
     aa4:	e1a01000 	mov	r1, r0
     aa8:	e3a0000e 	mov	r0, #14
     aac:	ef000000 	svc	0x00000000
     ab0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ab4:	e12fff1e 	bx	lr

00000ab8 <getprocs>:
     ab8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     abc:	e1a04003 	mov	r4, r3
     ac0:	e1a03002 	mov	r3, r2
     ac4:	e1a02001 	mov	r2, r1
     ac8:	e1a01000 	mov	r1, r0
     acc:	e3a00016 	mov	r0, #22
     ad0:	ef000000 	svc	0x00000000
     ad4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ad8:	e12fff1e 	bx	lr

00000adc <getpinfo>:
     adc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ae0:	e1a04003 	mov	r4, r3
     ae4:	e1a03002 	mov	r3, r2
     ae8:	e1a02001 	mov	r2, r1
     aec:	e1a01000 	mov	r1, r0
     af0:	e3a00018 	mov	r0, #24
     af4:	ef000000 	svc	0x00000000
     af8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     afc:	e12fff1e 	bx	lr

00000b00 <settickets>:
     b00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b04:	e1a04003 	mov	r4, r3
     b08:	e1a03002 	mov	r3, r2
     b0c:	e1a02001 	mov	r2, r1
     b10:	e1a01000 	mov	r1, r0
     b14:	e3a00017 	mov	r0, #23
     b18:	ef000000 	svc	0x00000000
     b1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b20:	e12fff1e 	bx	lr

00000b24 <srand>:
     b24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b28:	e1a04003 	mov	r4, r3
     b2c:	e1a03002 	mov	r3, r2
     b30:	e1a02001 	mov	r2, r1
     b34:	e1a01000 	mov	r1, r0
     b38:	e3a00019 	mov	r0, #25
     b3c:	ef000000 	svc	0x00000000
     b40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b44:	e12fff1e 	bx	lr

00000b48 <test>:
     b48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b4c:	e1a04003 	mov	r4, r3
     b50:	e1a03002 	mov	r3, r2
     b54:	e1a02001 	mov	r2, r1
     b58:	e1a01000 	mov	r1, r0
     b5c:	e3a0001a 	mov	r0, #26
     b60:	ef000000 	svc	0x00000000
     b64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b68:	e12fff1e 	bx	lr

00000b6c <putc>:
     b6c:	e92d4800 	push	{fp, lr}
     b70:	e28db004 	add	fp, sp, #4
     b74:	e24dd008 	sub	sp, sp, #8
     b78:	e50b0008 	str	r0, [fp, #-8]
     b7c:	e1a03001 	mov	r3, r1
     b80:	e54b3009 	strb	r3, [fp, #-9]
     b84:	e24b3009 	sub	r3, fp, #9
     b88:	e3a02001 	mov	r2, #1
     b8c:	e1a01003 	mov	r1, r3
     b90:	e51b0008 	ldr	r0, [fp, #-8]
     b94:	ebffff37 	bl	878 <write>
     b98:	e1a00000 	nop			@ (mov r0, r0)
     b9c:	e24bd004 	sub	sp, fp, #4
     ba0:	e8bd8800 	pop	{fp, pc}

00000ba4 <printint>:
     ba4:	e92d4800 	push	{fp, lr}
     ba8:	e28db004 	add	fp, sp, #4
     bac:	e24dd030 	sub	sp, sp, #48	@ 0x30
     bb0:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     bb4:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     bb8:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     bbc:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     bc0:	e3a03000 	mov	r3, #0
     bc4:	e50b300c 	str	r3, [fp, #-12]
     bc8:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     bcc:	e3530000 	cmp	r3, #0
     bd0:	0a000008 	beq	bf8 <printint+0x54>
     bd4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     bd8:	e3530000 	cmp	r3, #0
     bdc:	aa000005 	bge	bf8 <printint+0x54>
     be0:	e3a03001 	mov	r3, #1
     be4:	e50b300c 	str	r3, [fp, #-12]
     be8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     bec:	e2633000 	rsb	r3, r3, #0
     bf0:	e50b3010 	str	r3, [fp, #-16]
     bf4:	ea000001 	b	c00 <printint+0x5c>
     bf8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     bfc:	e50b3010 	str	r3, [fp, #-16]
     c00:	e3a03000 	mov	r3, #0
     c04:	e50b3008 	str	r3, [fp, #-8]
     c08:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     c0c:	e51b3010 	ldr	r3, [fp, #-16]
     c10:	e1a01002 	mov	r1, r2
     c14:	e1a00003 	mov	r0, r3
     c18:	eb0001d5 	bl	1374 <__aeabi_uidivmod>
     c1c:	e1a03001 	mov	r3, r1
     c20:	e1a01003 	mov	r1, r3
     c24:	e51b3008 	ldr	r3, [fp, #-8]
     c28:	e2832001 	add	r2, r3, #1
     c2c:	e50b2008 	str	r2, [fp, #-8]
     c30:	e59f20a0 	ldr	r2, [pc, #160]	@ cd8 <printint+0x134>
     c34:	e7d22001 	ldrb	r2, [r2, r1]
     c38:	e2433004 	sub	r3, r3, #4
     c3c:	e083300b 	add	r3, r3, fp
     c40:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     c44:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     c48:	e1a01003 	mov	r1, r3
     c4c:	e51b0010 	ldr	r0, [fp, #-16]
     c50:	eb00018a 	bl	1280 <__udivsi3>
     c54:	e1a03000 	mov	r3, r0
     c58:	e50b3010 	str	r3, [fp, #-16]
     c5c:	e51b3010 	ldr	r3, [fp, #-16]
     c60:	e3530000 	cmp	r3, #0
     c64:	1affffe7 	bne	c08 <printint+0x64>
     c68:	e51b300c 	ldr	r3, [fp, #-12]
     c6c:	e3530000 	cmp	r3, #0
     c70:	0a00000e 	beq	cb0 <printint+0x10c>
     c74:	e51b3008 	ldr	r3, [fp, #-8]
     c78:	e2832001 	add	r2, r3, #1
     c7c:	e50b2008 	str	r2, [fp, #-8]
     c80:	e2433004 	sub	r3, r3, #4
     c84:	e083300b 	add	r3, r3, fp
     c88:	e3a0202d 	mov	r2, #45	@ 0x2d
     c8c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     c90:	ea000006 	b	cb0 <printint+0x10c>
     c94:	e24b2020 	sub	r2, fp, #32
     c98:	e51b3008 	ldr	r3, [fp, #-8]
     c9c:	e0823003 	add	r3, r2, r3
     ca0:	e5d33000 	ldrb	r3, [r3]
     ca4:	e1a01003 	mov	r1, r3
     ca8:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     cac:	ebffffae 	bl	b6c <putc>
     cb0:	e51b3008 	ldr	r3, [fp, #-8]
     cb4:	e2433001 	sub	r3, r3, #1
     cb8:	e50b3008 	str	r3, [fp, #-8]
     cbc:	e51b3008 	ldr	r3, [fp, #-8]
     cc0:	e3530000 	cmp	r3, #0
     cc4:	aafffff2 	bge	c94 <printint+0xf0>
     cc8:	e1a00000 	nop			@ (mov r0, r0)
     ccc:	e1a00000 	nop			@ (mov r0, r0)
     cd0:	e24bd004 	sub	sp, fp, #4
     cd4:	e8bd8800 	pop	{fp, pc}
     cd8:	00001428 	.word	0x00001428

00000cdc <printf>:
     cdc:	e92d000e 	push	{r1, r2, r3}
     ce0:	e92d4800 	push	{fp, lr}
     ce4:	e28db004 	add	fp, sp, #4
     ce8:	e24dd024 	sub	sp, sp, #36	@ 0x24
     cec:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     cf0:	e3a03000 	mov	r3, #0
     cf4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     cf8:	e28b3008 	add	r3, fp, #8
     cfc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d00:	e3a03000 	mov	r3, #0
     d04:	e50b3010 	str	r3, [fp, #-16]
     d08:	ea000074 	b	ee0 <printf+0x204>
     d0c:	e59b2004 	ldr	r2, [fp, #4]
     d10:	e51b3010 	ldr	r3, [fp, #-16]
     d14:	e0823003 	add	r3, r2, r3
     d18:	e5d33000 	ldrb	r3, [r3]
     d1c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     d20:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     d24:	e3530000 	cmp	r3, #0
     d28:	1a00000b 	bne	d5c <printf+0x80>
     d2c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d30:	e3530025 	cmp	r3, #37	@ 0x25
     d34:	1a000002 	bne	d44 <printf+0x68>
     d38:	e3a03025 	mov	r3, #37	@ 0x25
     d3c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     d40:	ea000063 	b	ed4 <printf+0x1f8>
     d44:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d48:	e6ef3073 	uxtb	r3, r3
     d4c:	e1a01003 	mov	r1, r3
     d50:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d54:	ebffff84 	bl	b6c <putc>
     d58:	ea00005d 	b	ed4 <printf+0x1f8>
     d5c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     d60:	e3530025 	cmp	r3, #37	@ 0x25
     d64:	1a00005a 	bne	ed4 <printf+0x1f8>
     d68:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d6c:	e3530064 	cmp	r3, #100	@ 0x64
     d70:	1a00000a 	bne	da0 <printf+0xc4>
     d74:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d78:	e5933000 	ldr	r3, [r3]
     d7c:	e1a01003 	mov	r1, r3
     d80:	e3a03001 	mov	r3, #1
     d84:	e3a0200a 	mov	r2, #10
     d88:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d8c:	ebffff84 	bl	ba4 <printint>
     d90:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d94:	e2833004 	add	r3, r3, #4
     d98:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d9c:	ea00004a 	b	ecc <printf+0x1f0>
     da0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     da4:	e3530078 	cmp	r3, #120	@ 0x78
     da8:	0a000002 	beq	db8 <printf+0xdc>
     dac:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     db0:	e3530070 	cmp	r3, #112	@ 0x70
     db4:	1a00000a 	bne	de4 <printf+0x108>
     db8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     dbc:	e5933000 	ldr	r3, [r3]
     dc0:	e1a01003 	mov	r1, r3
     dc4:	e3a03000 	mov	r3, #0
     dc8:	e3a02010 	mov	r2, #16
     dcc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     dd0:	ebffff73 	bl	ba4 <printint>
     dd4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     dd8:	e2833004 	add	r3, r3, #4
     ddc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     de0:	ea000039 	b	ecc <printf+0x1f0>
     de4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     de8:	e3530073 	cmp	r3, #115	@ 0x73
     dec:	1a000018 	bne	e54 <printf+0x178>
     df0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     df4:	e5933000 	ldr	r3, [r3]
     df8:	e50b300c 	str	r3, [fp, #-12]
     dfc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e00:	e2833004 	add	r3, r3, #4
     e04:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e08:	e51b300c 	ldr	r3, [fp, #-12]
     e0c:	e3530000 	cmp	r3, #0
     e10:	1a00000a 	bne	e40 <printf+0x164>
     e14:	e59f30f4 	ldr	r3, [pc, #244]	@ f10 <printf+0x234>
     e18:	e50b300c 	str	r3, [fp, #-12]
     e1c:	ea000007 	b	e40 <printf+0x164>
     e20:	e51b300c 	ldr	r3, [fp, #-12]
     e24:	e5d33000 	ldrb	r3, [r3]
     e28:	e1a01003 	mov	r1, r3
     e2c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e30:	ebffff4d 	bl	b6c <putc>
     e34:	e51b300c 	ldr	r3, [fp, #-12]
     e38:	e2833001 	add	r3, r3, #1
     e3c:	e50b300c 	str	r3, [fp, #-12]
     e40:	e51b300c 	ldr	r3, [fp, #-12]
     e44:	e5d33000 	ldrb	r3, [r3]
     e48:	e3530000 	cmp	r3, #0
     e4c:	1afffff3 	bne	e20 <printf+0x144>
     e50:	ea00001d 	b	ecc <printf+0x1f0>
     e54:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e58:	e3530063 	cmp	r3, #99	@ 0x63
     e5c:	1a000009 	bne	e88 <printf+0x1ac>
     e60:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e64:	e5933000 	ldr	r3, [r3]
     e68:	e6ef3073 	uxtb	r3, r3
     e6c:	e1a01003 	mov	r1, r3
     e70:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e74:	ebffff3c 	bl	b6c <putc>
     e78:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e7c:	e2833004 	add	r3, r3, #4
     e80:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e84:	ea000010 	b	ecc <printf+0x1f0>
     e88:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e8c:	e3530025 	cmp	r3, #37	@ 0x25
     e90:	1a000005 	bne	eac <printf+0x1d0>
     e94:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e98:	e6ef3073 	uxtb	r3, r3
     e9c:	e1a01003 	mov	r1, r3
     ea0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ea4:	ebffff30 	bl	b6c <putc>
     ea8:	ea000007 	b	ecc <printf+0x1f0>
     eac:	e3a01025 	mov	r1, #37	@ 0x25
     eb0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     eb4:	ebffff2c 	bl	b6c <putc>
     eb8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ebc:	e6ef3073 	uxtb	r3, r3
     ec0:	e1a01003 	mov	r1, r3
     ec4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ec8:	ebffff27 	bl	b6c <putc>
     ecc:	e3a03000 	mov	r3, #0
     ed0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     ed4:	e51b3010 	ldr	r3, [fp, #-16]
     ed8:	e2833001 	add	r3, r3, #1
     edc:	e50b3010 	str	r3, [fp, #-16]
     ee0:	e59b2004 	ldr	r2, [fp, #4]
     ee4:	e51b3010 	ldr	r3, [fp, #-16]
     ee8:	e0823003 	add	r3, r2, r3
     eec:	e5d33000 	ldrb	r3, [r3]
     ef0:	e3530000 	cmp	r3, #0
     ef4:	1affff84 	bne	d0c <printf+0x30>
     ef8:	e1a00000 	nop			@ (mov r0, r0)
     efc:	e1a00000 	nop			@ (mov r0, r0)
     f00:	e24bd004 	sub	sp, fp, #4
     f04:	e8bd4800 	pop	{fp, lr}
     f08:	e28dd00c 	add	sp, sp, #12
     f0c:	e12fff1e 	bx	lr
     f10:	00001420 	.word	0x00001420

00000f14 <free>:
     f14:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     f18:	e28db000 	add	fp, sp, #0
     f1c:	e24dd014 	sub	sp, sp, #20
     f20:	e50b0010 	str	r0, [fp, #-16]
     f24:	e51b3010 	ldr	r3, [fp, #-16]
     f28:	e2433008 	sub	r3, r3, #8
     f2c:	e50b300c 	str	r3, [fp, #-12]
     f30:	e59f3154 	ldr	r3, [pc, #340]	@ 108c <free+0x178>
     f34:	e5933000 	ldr	r3, [r3]
     f38:	e50b3008 	str	r3, [fp, #-8]
     f3c:	ea000010 	b	f84 <free+0x70>
     f40:	e51b3008 	ldr	r3, [fp, #-8]
     f44:	e5933000 	ldr	r3, [r3]
     f48:	e51b2008 	ldr	r2, [fp, #-8]
     f4c:	e1520003 	cmp	r2, r3
     f50:	3a000008 	bcc	f78 <free+0x64>
     f54:	e51b200c 	ldr	r2, [fp, #-12]
     f58:	e51b3008 	ldr	r3, [fp, #-8]
     f5c:	e1520003 	cmp	r2, r3
     f60:	8a000010 	bhi	fa8 <free+0x94>
     f64:	e51b3008 	ldr	r3, [fp, #-8]
     f68:	e5933000 	ldr	r3, [r3]
     f6c:	e51b200c 	ldr	r2, [fp, #-12]
     f70:	e1520003 	cmp	r2, r3
     f74:	3a00000b 	bcc	fa8 <free+0x94>
     f78:	e51b3008 	ldr	r3, [fp, #-8]
     f7c:	e5933000 	ldr	r3, [r3]
     f80:	e50b3008 	str	r3, [fp, #-8]
     f84:	e51b200c 	ldr	r2, [fp, #-12]
     f88:	e51b3008 	ldr	r3, [fp, #-8]
     f8c:	e1520003 	cmp	r2, r3
     f90:	9affffea 	bls	f40 <free+0x2c>
     f94:	e51b3008 	ldr	r3, [fp, #-8]
     f98:	e5933000 	ldr	r3, [r3]
     f9c:	e51b200c 	ldr	r2, [fp, #-12]
     fa0:	e1520003 	cmp	r2, r3
     fa4:	2affffe5 	bcs	f40 <free+0x2c>
     fa8:	e51b300c 	ldr	r3, [fp, #-12]
     fac:	e5933004 	ldr	r3, [r3, #4]
     fb0:	e1a03183 	lsl	r3, r3, #3
     fb4:	e51b200c 	ldr	r2, [fp, #-12]
     fb8:	e0822003 	add	r2, r2, r3
     fbc:	e51b3008 	ldr	r3, [fp, #-8]
     fc0:	e5933000 	ldr	r3, [r3]
     fc4:	e1520003 	cmp	r2, r3
     fc8:	1a00000d 	bne	1004 <free+0xf0>
     fcc:	e51b300c 	ldr	r3, [fp, #-12]
     fd0:	e5932004 	ldr	r2, [r3, #4]
     fd4:	e51b3008 	ldr	r3, [fp, #-8]
     fd8:	e5933000 	ldr	r3, [r3]
     fdc:	e5933004 	ldr	r3, [r3, #4]
     fe0:	e0822003 	add	r2, r2, r3
     fe4:	e51b300c 	ldr	r3, [fp, #-12]
     fe8:	e5832004 	str	r2, [r3, #4]
     fec:	e51b3008 	ldr	r3, [fp, #-8]
     ff0:	e5933000 	ldr	r3, [r3]
     ff4:	e5932000 	ldr	r2, [r3]
     ff8:	e51b300c 	ldr	r3, [fp, #-12]
     ffc:	e5832000 	str	r2, [r3]
    1000:	ea000003 	b	1014 <free+0x100>
    1004:	e51b3008 	ldr	r3, [fp, #-8]
    1008:	e5932000 	ldr	r2, [r3]
    100c:	e51b300c 	ldr	r3, [fp, #-12]
    1010:	e5832000 	str	r2, [r3]
    1014:	e51b3008 	ldr	r3, [fp, #-8]
    1018:	e5933004 	ldr	r3, [r3, #4]
    101c:	e1a03183 	lsl	r3, r3, #3
    1020:	e51b2008 	ldr	r2, [fp, #-8]
    1024:	e0823003 	add	r3, r2, r3
    1028:	e51b200c 	ldr	r2, [fp, #-12]
    102c:	e1520003 	cmp	r2, r3
    1030:	1a00000b 	bne	1064 <free+0x150>
    1034:	e51b3008 	ldr	r3, [fp, #-8]
    1038:	e5932004 	ldr	r2, [r3, #4]
    103c:	e51b300c 	ldr	r3, [fp, #-12]
    1040:	e5933004 	ldr	r3, [r3, #4]
    1044:	e0822003 	add	r2, r2, r3
    1048:	e51b3008 	ldr	r3, [fp, #-8]
    104c:	e5832004 	str	r2, [r3, #4]
    1050:	e51b300c 	ldr	r3, [fp, #-12]
    1054:	e5932000 	ldr	r2, [r3]
    1058:	e51b3008 	ldr	r3, [fp, #-8]
    105c:	e5832000 	str	r2, [r3]
    1060:	ea000002 	b	1070 <free+0x15c>
    1064:	e51b3008 	ldr	r3, [fp, #-8]
    1068:	e51b200c 	ldr	r2, [fp, #-12]
    106c:	e5832000 	str	r2, [r3]
    1070:	e59f2014 	ldr	r2, [pc, #20]	@ 108c <free+0x178>
    1074:	e51b3008 	ldr	r3, [fp, #-8]
    1078:	e5823000 	str	r3, [r2]
    107c:	e1a00000 	nop			@ (mov r0, r0)
    1080:	e28bd000 	add	sp, fp, #0
    1084:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1088:	e12fff1e 	bx	lr
    108c:	00001444 	.word	0x00001444

00001090 <morecore>:
    1090:	e92d4800 	push	{fp, lr}
    1094:	e28db004 	add	fp, sp, #4
    1098:	e24dd010 	sub	sp, sp, #16
    109c:	e50b0010 	str	r0, [fp, #-16]
    10a0:	e51b3010 	ldr	r3, [fp, #-16]
    10a4:	e3530a01 	cmp	r3, #4096	@ 0x1000
    10a8:	2a000001 	bcs	10b4 <morecore+0x24>
    10ac:	e3a03a01 	mov	r3, #4096	@ 0x1000
    10b0:	e50b3010 	str	r3, [fp, #-16]
    10b4:	e51b3010 	ldr	r3, [fp, #-16]
    10b8:	e1a03183 	lsl	r3, r3, #3
    10bc:	e1a00003 	mov	r0, r3
    10c0:	ebfffe61 	bl	a4c <sbrk>
    10c4:	e50b0008 	str	r0, [fp, #-8]
    10c8:	e51b3008 	ldr	r3, [fp, #-8]
    10cc:	e3730001 	cmn	r3, #1
    10d0:	1a000001 	bne	10dc <morecore+0x4c>
    10d4:	e3a03000 	mov	r3, #0
    10d8:	ea00000a 	b	1108 <morecore+0x78>
    10dc:	e51b3008 	ldr	r3, [fp, #-8]
    10e0:	e50b300c 	str	r3, [fp, #-12]
    10e4:	e51b300c 	ldr	r3, [fp, #-12]
    10e8:	e51b2010 	ldr	r2, [fp, #-16]
    10ec:	e5832004 	str	r2, [r3, #4]
    10f0:	e51b300c 	ldr	r3, [fp, #-12]
    10f4:	e2833008 	add	r3, r3, #8
    10f8:	e1a00003 	mov	r0, r3
    10fc:	ebffff84 	bl	f14 <free>
    1100:	e59f300c 	ldr	r3, [pc, #12]	@ 1114 <morecore+0x84>
    1104:	e5933000 	ldr	r3, [r3]
    1108:	e1a00003 	mov	r0, r3
    110c:	e24bd004 	sub	sp, fp, #4
    1110:	e8bd8800 	pop	{fp, pc}
    1114:	00001444 	.word	0x00001444

00001118 <malloc>:
    1118:	e92d4800 	push	{fp, lr}
    111c:	e28db004 	add	fp, sp, #4
    1120:	e24dd018 	sub	sp, sp, #24
    1124:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1128:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    112c:	e2833007 	add	r3, r3, #7
    1130:	e1a031a3 	lsr	r3, r3, #3
    1134:	e2833001 	add	r3, r3, #1
    1138:	e50b3010 	str	r3, [fp, #-16]
    113c:	e59f3134 	ldr	r3, [pc, #308]	@ 1278 <malloc+0x160>
    1140:	e5933000 	ldr	r3, [r3]
    1144:	e50b300c 	str	r3, [fp, #-12]
    1148:	e51b300c 	ldr	r3, [fp, #-12]
    114c:	e3530000 	cmp	r3, #0
    1150:	1a00000b 	bne	1184 <malloc+0x6c>
    1154:	e59f3120 	ldr	r3, [pc, #288]	@ 127c <malloc+0x164>
    1158:	e50b300c 	str	r3, [fp, #-12]
    115c:	e59f2114 	ldr	r2, [pc, #276]	@ 1278 <malloc+0x160>
    1160:	e51b300c 	ldr	r3, [fp, #-12]
    1164:	e5823000 	str	r3, [r2]
    1168:	e59f3108 	ldr	r3, [pc, #264]	@ 1278 <malloc+0x160>
    116c:	e5933000 	ldr	r3, [r3]
    1170:	e59f2104 	ldr	r2, [pc, #260]	@ 127c <malloc+0x164>
    1174:	e5823000 	str	r3, [r2]
    1178:	e59f30fc 	ldr	r3, [pc, #252]	@ 127c <malloc+0x164>
    117c:	e3a02000 	mov	r2, #0
    1180:	e5832004 	str	r2, [r3, #4]
    1184:	e51b300c 	ldr	r3, [fp, #-12]
    1188:	e5933000 	ldr	r3, [r3]
    118c:	e50b3008 	str	r3, [fp, #-8]
    1190:	e51b3008 	ldr	r3, [fp, #-8]
    1194:	e5933004 	ldr	r3, [r3, #4]
    1198:	e51b2010 	ldr	r2, [fp, #-16]
    119c:	e1520003 	cmp	r2, r3
    11a0:	8a00001e 	bhi	1220 <malloc+0x108>
    11a4:	e51b3008 	ldr	r3, [fp, #-8]
    11a8:	e5933004 	ldr	r3, [r3, #4]
    11ac:	e51b2010 	ldr	r2, [fp, #-16]
    11b0:	e1520003 	cmp	r2, r3
    11b4:	1a000004 	bne	11cc <malloc+0xb4>
    11b8:	e51b3008 	ldr	r3, [fp, #-8]
    11bc:	e5932000 	ldr	r2, [r3]
    11c0:	e51b300c 	ldr	r3, [fp, #-12]
    11c4:	e5832000 	str	r2, [r3]
    11c8:	ea00000e 	b	1208 <malloc+0xf0>
    11cc:	e51b3008 	ldr	r3, [fp, #-8]
    11d0:	e5932004 	ldr	r2, [r3, #4]
    11d4:	e51b3010 	ldr	r3, [fp, #-16]
    11d8:	e0422003 	sub	r2, r2, r3
    11dc:	e51b3008 	ldr	r3, [fp, #-8]
    11e0:	e5832004 	str	r2, [r3, #4]
    11e4:	e51b3008 	ldr	r3, [fp, #-8]
    11e8:	e5933004 	ldr	r3, [r3, #4]
    11ec:	e1a03183 	lsl	r3, r3, #3
    11f0:	e51b2008 	ldr	r2, [fp, #-8]
    11f4:	e0823003 	add	r3, r2, r3
    11f8:	e50b3008 	str	r3, [fp, #-8]
    11fc:	e51b3008 	ldr	r3, [fp, #-8]
    1200:	e51b2010 	ldr	r2, [fp, #-16]
    1204:	e5832004 	str	r2, [r3, #4]
    1208:	e59f2068 	ldr	r2, [pc, #104]	@ 1278 <malloc+0x160>
    120c:	e51b300c 	ldr	r3, [fp, #-12]
    1210:	e5823000 	str	r3, [r2]
    1214:	e51b3008 	ldr	r3, [fp, #-8]
    1218:	e2833008 	add	r3, r3, #8
    121c:	ea000012 	b	126c <malloc+0x154>
    1220:	e59f3050 	ldr	r3, [pc, #80]	@ 1278 <malloc+0x160>
    1224:	e5933000 	ldr	r3, [r3]
    1228:	e51b2008 	ldr	r2, [fp, #-8]
    122c:	e1520003 	cmp	r2, r3
    1230:	1a000007 	bne	1254 <malloc+0x13c>
    1234:	e51b0010 	ldr	r0, [fp, #-16]
    1238:	ebffff94 	bl	1090 <morecore>
    123c:	e50b0008 	str	r0, [fp, #-8]
    1240:	e51b3008 	ldr	r3, [fp, #-8]
    1244:	e3530000 	cmp	r3, #0
    1248:	1a000001 	bne	1254 <malloc+0x13c>
    124c:	e3a03000 	mov	r3, #0
    1250:	ea000005 	b	126c <malloc+0x154>
    1254:	e51b3008 	ldr	r3, [fp, #-8]
    1258:	e50b300c 	str	r3, [fp, #-12]
    125c:	e51b3008 	ldr	r3, [fp, #-8]
    1260:	e5933000 	ldr	r3, [r3]
    1264:	e50b3008 	str	r3, [fp, #-8]
    1268:	eaffffc8 	b	1190 <malloc+0x78>
    126c:	e1a00003 	mov	r0, r3
    1270:	e24bd004 	sub	sp, fp, #4
    1274:	e8bd8800 	pop	{fp, pc}
    1278:	00001444 	.word	0x00001444
    127c:	0000143c 	.word	0x0000143c

00001280 <__udivsi3>:
    1280:	e2512001 	subs	r2, r1, #1
    1284:	012fff1e 	bxeq	lr
    1288:	3a000036 	bcc	1368 <__udivsi3+0xe8>
    128c:	e1500001 	cmp	r0, r1
    1290:	9a000022 	bls	1320 <__udivsi3+0xa0>
    1294:	e1110002 	tst	r1, r2
    1298:	0a000023 	beq	132c <__udivsi3+0xac>
    129c:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    12a0:	01a01181 	lsleq	r1, r1, #3
    12a4:	03a03008 	moveq	r3, #8
    12a8:	13a03001 	movne	r3, #1
    12ac:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    12b0:	31510000 	cmpcc	r1, r0
    12b4:	31a01201 	lslcc	r1, r1, #4
    12b8:	31a03203 	lslcc	r3, r3, #4
    12bc:	3afffffa 	bcc	12ac <__udivsi3+0x2c>
    12c0:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    12c4:	31510000 	cmpcc	r1, r0
    12c8:	31a01081 	lslcc	r1, r1, #1
    12cc:	31a03083 	lslcc	r3, r3, #1
    12d0:	3afffffa 	bcc	12c0 <__udivsi3+0x40>
    12d4:	e3a02000 	mov	r2, #0
    12d8:	e1500001 	cmp	r0, r1
    12dc:	20400001 	subcs	r0, r0, r1
    12e0:	21822003 	orrcs	r2, r2, r3
    12e4:	e15000a1 	cmp	r0, r1, lsr #1
    12e8:	204000a1 	subcs	r0, r0, r1, lsr #1
    12ec:	218220a3 	orrcs	r2, r2, r3, lsr #1
    12f0:	e1500121 	cmp	r0, r1, lsr #2
    12f4:	20400121 	subcs	r0, r0, r1, lsr #2
    12f8:	21822123 	orrcs	r2, r2, r3, lsr #2
    12fc:	e15001a1 	cmp	r0, r1, lsr #3
    1300:	204001a1 	subcs	r0, r0, r1, lsr #3
    1304:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1308:	e3500000 	cmp	r0, #0
    130c:	11b03223 	lsrsne	r3, r3, #4
    1310:	11a01221 	lsrne	r1, r1, #4
    1314:	1affffef 	bne	12d8 <__udivsi3+0x58>
    1318:	e1a00002 	mov	r0, r2
    131c:	e12fff1e 	bx	lr
    1320:	03a00001 	moveq	r0, #1
    1324:	13a00000 	movne	r0, #0
    1328:	e12fff1e 	bx	lr
    132c:	e3510801 	cmp	r1, #65536	@ 0x10000
    1330:	21a01821 	lsrcs	r1, r1, #16
    1334:	23a02010 	movcs	r2, #16
    1338:	33a02000 	movcc	r2, #0
    133c:	e3510c01 	cmp	r1, #256	@ 0x100
    1340:	21a01421 	lsrcs	r1, r1, #8
    1344:	22822008 	addcs	r2, r2, #8
    1348:	e3510010 	cmp	r1, #16
    134c:	21a01221 	lsrcs	r1, r1, #4
    1350:	22822004 	addcs	r2, r2, #4
    1354:	e3510004 	cmp	r1, #4
    1358:	82822003 	addhi	r2, r2, #3
    135c:	908220a1 	addls	r2, r2, r1, lsr #1
    1360:	e1a00230 	lsr	r0, r0, r2
    1364:	e12fff1e 	bx	lr
    1368:	e3500000 	cmp	r0, #0
    136c:	13e00000 	mvnne	r0, #0
    1370:	ea000007 	b	1394 <__aeabi_idiv0>

00001374 <__aeabi_uidivmod>:
    1374:	e3510000 	cmp	r1, #0
    1378:	0afffffa 	beq	1368 <__udivsi3+0xe8>
    137c:	e92d4003 	push	{r0, r1, lr}
    1380:	ebffffbe 	bl	1280 <__udivsi3>
    1384:	e8bd4006 	pop	{r1, r2, lr}
    1388:	e0030092 	mul	r3, r2, r0
    138c:	e0411003 	sub	r1, r1, r3
    1390:	e12fff1e 	bx	lr

00001394 <__aeabi_idiv0>:
    1394:	e12fff1e 	bx	lr
