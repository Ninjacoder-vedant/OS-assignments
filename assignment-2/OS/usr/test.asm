
_test:     file format elf32-littlearm


Disassembly of section .text:

00000000 <busy_work>:
       0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
       4:	e28db000 	add	fp, sp, #0
       8:	e24dd00c 	sub	sp, sp, #12
       c:	e3a03000 	mov	r3, #0
      10:	e50b3008 	str	r3, [fp, #-8]
      14:	ea000002 	b	24 <busy_work+0x24>
      18:	e51b3008 	ldr	r3, [fp, #-8]
      1c:	e2833001 	add	r3, r3, #1
      20:	e50b3008 	str	r3, [fp, #-8]
      24:	e51b3008 	ldr	r3, [fp, #-8]
      28:	e59f2018 	ldr	r2, [pc, #24]	@ 48 <busy_work+0x48>
      2c:	e1530002 	cmp	r3, r2
      30:	bafffff8 	blt	18 <busy_work+0x18>
      34:	e1a00000 	nop			@ (mov r0, r0)
      38:	e1a00000 	nop			@ (mov r0, r0)
      3c:	e28bd000 	add	sp, fp, #0
      40:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      44:	e12fff1e 	bx	lr
      48:	000493e0 	.word	0x000493e0

0000004c <get_runticks_for_pid>:
      4c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      50:	e28db000 	add	fp, sp, #0
      54:	e24dd014 	sub	sp, sp, #20
      58:	e50b0010 	str	r0, [fp, #-16]
      5c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      60:	e3a03000 	mov	r3, #0
      64:	e50b3008 	str	r3, [fp, #-8]
      68:	ea000013 	b	bc <get_runticks_for_pid+0x70>
      6c:	e51b3010 	ldr	r3, [fp, #-16]
      70:	e51b2008 	ldr	r2, [fp, #-8]
      74:	e7933102 	ldr	r3, [r3, r2, lsl #2]
      78:	e3530000 	cmp	r3, #0
      7c:	0a00000b 	beq	b0 <get_runticks_for_pid+0x64>
      80:	e51b3010 	ldr	r3, [fp, #-16]
      84:	e51b2008 	ldr	r2, [fp, #-8]
      88:	e2822040 	add	r2, r2, #64	@ 0x40
      8c:	e7933102 	ldr	r3, [r3, r2, lsl #2]
      90:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      94:	e1520003 	cmp	r2, r3
      98:	1a000004 	bne	b0 <get_runticks_for_pid+0x64>
      9c:	e51b3010 	ldr	r3, [fp, #-16]
      a0:	e51b2008 	ldr	r2, [fp, #-8]
      a4:	e28220c0 	add	r2, r2, #192	@ 0xc0
      a8:	e7933102 	ldr	r3, [r3, r2, lsl #2]
      ac:	ea000006 	b	cc <get_runticks_for_pid+0x80>
      b0:	e51b3008 	ldr	r3, [fp, #-8]
      b4:	e2833001 	add	r3, r3, #1
      b8:	e50b3008 	str	r3, [fp, #-8]
      bc:	e51b3008 	ldr	r3, [fp, #-8]
      c0:	e353003f 	cmp	r3, #63	@ 0x3f
      c4:	daffffe8 	ble	6c <get_runticks_for_pid+0x20>
      c8:	e3e03000 	mvn	r3, #0
      cc:	e1a00003 	mov	r0, r3
      d0:	e28bd000 	add	sp, fp, #0
      d4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      d8:	e12fff1e 	bx	lr

000000dc <main>:
      dc:	e92d4800 	push	{fp, lr}
      e0:	e28db004 	add	fp, sp, #4
      e4:	e24ddd15 	sub	sp, sp, #1344	@ 0x540
      e8:	e24dd008 	sub	sp, sp, #8
      ec:	e50b0540 	str	r0, [fp, #-1344]	@ 0xfffffac0
      f0:	e50b1544 	str	r1, [fp, #-1348]	@ 0xfffffabc
      f4:	e3a03014 	mov	r3, #20
      f8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
      fc:	e3a03004 	mov	r3, #4
     100:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
     104:	eb0002da 	bl	c74 <getpid>
     108:	e1a03000 	mov	r3, r0
     10c:	e1a02003 	mov	r2, r3
     110:	e59f13e8 	ldr	r1, [pc, #1000]	@ 500 <main+0x424>
     114:	e3a00001 	mov	r0, #1
     118:	eb000382 	bl	f28 <printf>
     11c:	e3a02064 	mov	r2, #100	@ 0x64
     120:	e59f13dc 	ldr	r1, [pc, #988]	@ 504 <main+0x428>
     124:	e3a00001 	mov	r0, #1
     128:	eb00037e 	bl	f28 <printf>
     12c:	eb000237 	bl	a10 <fork>
     130:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     134:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
     138:	e3530000 	cmp	r3, #0
     13c:	aa000003 	bge	150 <main+0x74>
     140:	e59f13c0 	ldr	r1, [pc, #960]	@ 508 <main+0x42c>
     144:	e3a00001 	mov	r0, #1
     148:	eb000376 	bl	f28 <printf>
     14c:	eb000238 	bl	a34 <exit>
     150:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
     154:	e3530000 	cmp	r3, #0
     158:	1a000009 	bne	184 <main+0xa8>
     15c:	eb0002c4 	bl	c74 <getpid>
     160:	e1a03000 	mov	r3, r0
     164:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
     168:	e1a00003 	mov	r0, r3
     16c:	eb0002f6 	bl	d4c <settickets>
     170:	ebffffa2 	bl	0 <busy_work>
     174:	e3a00001 	mov	r0, #1
     178:	eb0002cf 	bl	cbc <sleep>
     17c:	e1a00000 	nop			@ (mov r0, r0)
     180:	eafffffa 	b	170 <main+0x94>
     184:	eb000221 	bl	a10 <fork>
     188:	e50b002c 	str	r0, [fp, #-44]	@ 0xffffffd4
     18c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     190:	e3530000 	cmp	r3, #0
     194:	aa000006 	bge	1b4 <main+0xd8>
     198:	e59f136c 	ldr	r1, [pc, #876]	@ 50c <main+0x430>
     19c:	e3a00001 	mov	r0, #1
     1a0:	eb000360 	bl	f28 <printf>
     1a4:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     1a8:	eb000257 	bl	b0c <kill>
     1ac:	eb000229 	bl	a58 <wait>
     1b0:	eb00021f 	bl	a34 <exit>
     1b4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     1b8:	e3530000 	cmp	r3, #0
     1bc:	1a000006 	bne	1dc <main+0x100>
     1c0:	eb0002ab 	bl	c74 <getpid>
     1c4:	e1a03000 	mov	r3, r0
     1c8:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
     1cc:	e1a00003 	mov	r0, r3
     1d0:	eb0002dd 	bl	d4c <settickets>
     1d4:	ebffff89 	bl	0 <busy_work>
     1d8:	eafffffd 	b	1d4 <main+0xf8>
     1dc:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
     1e0:	e58d3004 	str	r3, [sp, #4]
     1e4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     1e8:	e58d3000 	str	r3, [sp]
     1ec:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     1f0:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
     1f4:	e59f1314 	ldr	r1, [pc, #788]	@ 510 <main+0x434>
     1f8:	e3a00001 	mov	r0, #1
     1fc:	eb000349 	bl	f28 <printf>
     200:	e59f130c 	ldr	r1, [pc, #780]	@ 514 <main+0x438>
     204:	e3a00001 	mov	r0, #1
     208:	eb000346 	bl	f28 <printf>
     20c:	e3a03000 	mov	r3, #0
     210:	e50b3008 	str	r3, [fp, #-8]
     214:	ea000054 	b	36c <main+0x290>
     218:	e3a00064 	mov	r0, #100	@ 0x64
     21c:	eb0002a6 	bl	cbc <sleep>
     220:	e51b3008 	ldr	r3, [fp, #-8]
     224:	e2833064 	add	r3, r3, #100	@ 0x64
     228:	e50b3008 	str	r3, [fp, #-8]
     22c:	e24b3e53 	sub	r3, fp, #1328	@ 0x530
     230:	e2433004 	sub	r3, r3, #4
     234:	e2433008 	sub	r3, r3, #8
     238:	e1a00003 	mov	r0, r3
     23c:	eb0002b9 	bl	d28 <getpinfo>
     240:	e1a03000 	mov	r3, r0
     244:	e3530000 	cmp	r3, #0
     248:	aa000003 	bge	25c <main+0x180>
     24c:	e59f12c4 	ldr	r1, [pc, #708]	@ 518 <main+0x43c>
     250:	e3a00001 	mov	r0, #1
     254:	eb000333 	bl	f28 <printf>
     258:	ea000046 	b	378 <main+0x29c>
     25c:	e24b3e53 	sub	r3, fp, #1328	@ 0x530
     260:	e2433004 	sub	r3, r3, #4
     264:	e2433008 	sub	r3, r3, #8
     268:	e51b1028 	ldr	r1, [fp, #-40]	@ 0xffffffd8
     26c:	e1a00003 	mov	r0, r3
     270:	ebffff75 	bl	4c <get_runticks_for_pid>
     274:	e50b0030 	str	r0, [fp, #-48]	@ 0xffffffd0
     278:	e24b3e53 	sub	r3, fp, #1328	@ 0x530
     27c:	e2433004 	sub	r3, r3, #4
     280:	e2433008 	sub	r3, r3, #8
     284:	e51b102c 	ldr	r1, [fp, #-44]	@ 0xffffffd4
     288:	e1a00003 	mov	r0, r3
     28c:	ebffff6e 	bl	4c <get_runticks_for_pid>
     290:	e50b0034 	str	r0, [fp, #-52]	@ 0xffffffcc
     294:	e3a03000 	mov	r3, #0
     298:	e50b300c 	str	r3, [fp, #-12]
     29c:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     2a0:	e3530000 	cmp	r3, #0
     2a4:	ba000003 	blt	2b8 <main+0x1dc>
     2a8:	e51b200c 	ldr	r2, [fp, #-12]
     2ac:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     2b0:	e0823003 	add	r3, r2, r3
     2b4:	e50b300c 	str	r3, [fp, #-12]
     2b8:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     2bc:	e3530000 	cmp	r3, #0
     2c0:	ba000003 	blt	2d4 <main+0x1f8>
     2c4:	e51b200c 	ldr	r2, [fp, #-12]
     2c8:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     2cc:	e0823003 	add	r3, r2, r3
     2d0:	e50b300c 	str	r3, [fp, #-12]
     2d4:	e3a03000 	mov	r3, #0
     2d8:	e50b3010 	str	r3, [fp, #-16]
     2dc:	e51b300c 	ldr	r3, [fp, #-12]
     2e0:	e3530000 	cmp	r3, #0
     2e4:	da00000e 	ble	324 <main+0x248>
     2e8:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     2ec:	e3530000 	cmp	r3, #0
     2f0:	ba00000b 	blt	324 <main+0x248>
     2f4:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     2f8:	e1a03002 	mov	r3, r2
     2fc:	e1a03103 	lsl	r3, r3, #2
     300:	e0833002 	add	r3, r3, r2
     304:	e1a02103 	lsl	r2, r3, #2
     308:	e0833002 	add	r3, r3, r2
     30c:	e1a03103 	lsl	r3, r3, #2
     310:	e51b100c 	ldr	r1, [fp, #-12]
     314:	e1a00003 	mov	r0, r3
     318:	eb0004b0 	bl	15e0 <__divsi3>
     31c:	e1a03000 	mov	r3, r0
     320:	e50b3010 	str	r3, [fp, #-16]
     324:	e51b3008 	ldr	r3, [fp, #-8]
     328:	e59f21ec 	ldr	r2, [pc, #492]	@ 51c <main+0x440>
     32c:	e0c21392 	smull	r1, r2, r2, r3
     330:	e1a022c2 	asr	r2, r2, #5
     334:	e1a03fc3 	asr	r3, r3, #31
     338:	e0421003 	sub	r1, r2, r3
     33c:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     340:	e1c30fc3 	bic	r0, r3, r3, asr #31
     344:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     348:	e1c33fc3 	bic	r3, r3, r3, asr #31
     34c:	e51b2010 	ldr	r2, [fp, #-16]
     350:	e58d2004 	str	r2, [sp, #4]
     354:	e58d3000 	str	r3, [sp]
     358:	e1a03000 	mov	r3, r0
     35c:	e1a02001 	mov	r2, r1
     360:	e59f11b8 	ldr	r1, [pc, #440]	@ 520 <main+0x444>
     364:	e3a00001 	mov	r0, #1
     368:	eb0002ee 	bl	f28 <printf>
     36c:	e51b3008 	ldr	r3, [fp, #-8]
     370:	e3530e7d 	cmp	r3, #2000	@ 0x7d0
     374:	baffffa7 	blt	218 <main+0x13c>
     378:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     37c:	eb0001e2 	bl	b0c <kill>
     380:	e51b002c 	ldr	r0, [fp, #-44]	@ 0xffffffd4
     384:	eb0001e0 	bl	b0c <kill>
     388:	eb0001b2 	bl	a58 <wait>
     38c:	eb0001b1 	bl	a58 <wait>
     390:	e24b3e53 	sub	r3, fp, #1328	@ 0x530
     394:	e2433004 	sub	r3, r3, #4
     398:	e2433008 	sub	r3, r3, #8
     39c:	e1a00003 	mov	r0, r3
     3a0:	eb000260 	bl	d28 <getpinfo>
     3a4:	e1a03000 	mov	r3, r0
     3a8:	e3530000 	cmp	r3, #0
     3ac:	ba00004f 	blt	4f0 <main+0x414>
     3b0:	e24b3e53 	sub	r3, fp, #1328	@ 0x530
     3b4:	e2433004 	sub	r3, r3, #4
     3b8:	e2433008 	sub	r3, r3, #8
     3bc:	e51b1028 	ldr	r1, [fp, #-40]	@ 0xffffffd8
     3c0:	e1a00003 	mov	r0, r3
     3c4:	ebffff20 	bl	4c <get_runticks_for_pid>
     3c8:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
     3cc:	e24b3e53 	sub	r3, fp, #1328	@ 0x530
     3d0:	e2433004 	sub	r3, r3, #4
     3d4:	e2433008 	sub	r3, r3, #8
     3d8:	e51b102c 	ldr	r1, [fp, #-44]	@ 0xffffffd4
     3dc:	e1a00003 	mov	r0, r3
     3e0:	ebffff19 	bl	4c <get_runticks_for_pid>
     3e4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     3e8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     3ec:	e3530000 	cmp	r3, #0
     3f0:	aa000001 	bge	3fc <main+0x320>
     3f4:	e3a03000 	mov	r3, #0
     3f8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     3fc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     400:	e3530000 	cmp	r3, #0
     404:	aa000001 	bge	410 <main+0x334>
     408:	e3a03000 	mov	r3, #0
     40c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     410:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     414:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     418:	e0823003 	add	r3, r2, r3
     41c:	e50b3038 	str	r3, [fp, #-56]	@ 0xffffffc8
     420:	e51b3038 	ldr	r3, [fp, #-56]	@ 0xffffffc8
     424:	e3530000 	cmp	r3, #0
     428:	0a00000c 	beq	460 <main+0x384>
     42c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     430:	e1a03002 	mov	r3, r2
     434:	e1a03103 	lsl	r3, r3, #2
     438:	e0833002 	add	r3, r3, r2
     43c:	e1a02103 	lsl	r2, r3, #2
     440:	e0833002 	add	r3, r3, r2
     444:	e1a03103 	lsl	r3, r3, #2
     448:	e51b1038 	ldr	r1, [fp, #-56]	@ 0xffffffc8
     44c:	e1a00003 	mov	r0, r3
     450:	eb000462 	bl	15e0 <__divsi3>
     454:	e1a03000 	mov	r3, r0
     458:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     45c:	ea000001 	b	468 <main+0x38c>
     460:	e3a03000 	mov	r3, #0
     464:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     468:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
     46c:	e1a03002 	mov	r3, r2
     470:	e1a03103 	lsl	r3, r3, #2
     474:	e0833002 	add	r3, r3, r2
     478:	e1a02103 	lsl	r2, r3, #2
     47c:	e0833002 	add	r3, r3, r2
     480:	e1a03103 	lsl	r3, r3, #2
     484:	e1a00003 	mov	r0, r3
     488:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
     48c:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
     490:	e0823003 	add	r3, r2, r3
     494:	e1a01003 	mov	r1, r3
     498:	eb000450 	bl	15e0 <__divsi3>
     49c:	e1a03000 	mov	r3, r0
     4a0:	e50b303c 	str	r3, [fp, #-60]	@ 0xffffffc4
     4a4:	e59f1078 	ldr	r1, [pc, #120]	@ 524 <main+0x448>
     4a8:	e3a00001 	mov	r0, #1
     4ac:	eb00029d 	bl	f28 <printf>
     4b0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     4b4:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
     4b8:	e59f1068 	ldr	r1, [pc, #104]	@ 528 <main+0x44c>
     4bc:	e3a00001 	mov	r0, #1
     4c0:	eb000298 	bl	f28 <printf>
     4c4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4c8:	e51b202c 	ldr	r2, [fp, #-44]	@ 0xffffffd4
     4cc:	e59f1058 	ldr	r1, [pc, #88]	@ 52c <main+0x450>
     4d0:	e3a00001 	mov	r0, #1
     4d4:	eb000293 	bl	f28 <printf>
     4d8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     4dc:	e51b203c 	ldr	r2, [fp, #-60]	@ 0xffffffc4
     4e0:	e59f1048 	ldr	r1, [pc, #72]	@ 530 <main+0x454>
     4e4:	e3a00001 	mov	r0, #1
     4e8:	eb00028e 	bl	f28 <printf>
     4ec:	ea000002 	b	4fc <main+0x420>
     4f0:	e59f103c 	ldr	r1, [pc, #60]	@ 534 <main+0x458>
     4f4:	e3a00001 	mov	r0, #1
     4f8:	eb00028a 	bl	f28 <printf>
     4fc:	eb00014c 	bl	a34 <exit>
     500:	0000172c 	.word	0x0000172c
     504:	00001754 	.word	0x00001754
     508:	00001784 	.word	0x00001784
     50c:	00001798 	.word	0x00001798
     510:	000017ac 	.word	0x000017ac
     514:	000017ec 	.word	0x000017ec
     518:	00001814 	.word	0x00001814
     51c:	51eb851f 	.word	0x51eb851f
     520:	00001830 	.word	0x00001830
     524:	00001840 	.word	0x00001840
     528:	00001850 	.word	0x00001850
     52c:	00001864 	.word	0x00001864
     530:	00001878 	.word	0x00001878
     534:	000018ac 	.word	0x000018ac

00000538 <strcpy>:
     538:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     53c:	e28db000 	add	fp, sp, #0
     540:	e24dd014 	sub	sp, sp, #20
     544:	e50b0010 	str	r0, [fp, #-16]
     548:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     54c:	e51b3010 	ldr	r3, [fp, #-16]
     550:	e50b3008 	str	r3, [fp, #-8]
     554:	e1a00000 	nop			@ (mov r0, r0)
     558:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     55c:	e2823001 	add	r3, r2, #1
     560:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     564:	e51b3010 	ldr	r3, [fp, #-16]
     568:	e2831001 	add	r1, r3, #1
     56c:	e50b1010 	str	r1, [fp, #-16]
     570:	e5d22000 	ldrb	r2, [r2]
     574:	e5c32000 	strb	r2, [r3]
     578:	e5d33000 	ldrb	r3, [r3]
     57c:	e3530000 	cmp	r3, #0
     580:	1afffff4 	bne	558 <strcpy+0x20>
     584:	e51b3008 	ldr	r3, [fp, #-8]
     588:	e1a00003 	mov	r0, r3
     58c:	e28bd000 	add	sp, fp, #0
     590:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     594:	e12fff1e 	bx	lr

00000598 <strcmp>:
     598:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     59c:	e28db000 	add	fp, sp, #0
     5a0:	e24dd00c 	sub	sp, sp, #12
     5a4:	e50b0008 	str	r0, [fp, #-8]
     5a8:	e50b100c 	str	r1, [fp, #-12]
     5ac:	ea000005 	b	5c8 <strcmp+0x30>
     5b0:	e51b3008 	ldr	r3, [fp, #-8]
     5b4:	e2833001 	add	r3, r3, #1
     5b8:	e50b3008 	str	r3, [fp, #-8]
     5bc:	e51b300c 	ldr	r3, [fp, #-12]
     5c0:	e2833001 	add	r3, r3, #1
     5c4:	e50b300c 	str	r3, [fp, #-12]
     5c8:	e51b3008 	ldr	r3, [fp, #-8]
     5cc:	e5d33000 	ldrb	r3, [r3]
     5d0:	e3530000 	cmp	r3, #0
     5d4:	0a000005 	beq	5f0 <strcmp+0x58>
     5d8:	e51b3008 	ldr	r3, [fp, #-8]
     5dc:	e5d32000 	ldrb	r2, [r3]
     5e0:	e51b300c 	ldr	r3, [fp, #-12]
     5e4:	e5d33000 	ldrb	r3, [r3]
     5e8:	e1520003 	cmp	r2, r3
     5ec:	0affffef 	beq	5b0 <strcmp+0x18>
     5f0:	e51b3008 	ldr	r3, [fp, #-8]
     5f4:	e5d33000 	ldrb	r3, [r3]
     5f8:	e1a02003 	mov	r2, r3
     5fc:	e51b300c 	ldr	r3, [fp, #-12]
     600:	e5d33000 	ldrb	r3, [r3]
     604:	e0423003 	sub	r3, r2, r3
     608:	e1a00003 	mov	r0, r3
     60c:	e28bd000 	add	sp, fp, #0
     610:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     614:	e12fff1e 	bx	lr

00000618 <strlen>:
     618:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     61c:	e28db000 	add	fp, sp, #0
     620:	e24dd014 	sub	sp, sp, #20
     624:	e50b0010 	str	r0, [fp, #-16]
     628:	e3a03000 	mov	r3, #0
     62c:	e50b3008 	str	r3, [fp, #-8]
     630:	ea000002 	b	640 <strlen+0x28>
     634:	e51b3008 	ldr	r3, [fp, #-8]
     638:	e2833001 	add	r3, r3, #1
     63c:	e50b3008 	str	r3, [fp, #-8]
     640:	e51b3008 	ldr	r3, [fp, #-8]
     644:	e51b2010 	ldr	r2, [fp, #-16]
     648:	e0823003 	add	r3, r2, r3
     64c:	e5d33000 	ldrb	r3, [r3]
     650:	e3530000 	cmp	r3, #0
     654:	1afffff6 	bne	634 <strlen+0x1c>
     658:	e51b3008 	ldr	r3, [fp, #-8]
     65c:	e1a00003 	mov	r0, r3
     660:	e28bd000 	add	sp, fp, #0
     664:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     668:	e12fff1e 	bx	lr

0000066c <memset>:
     66c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     670:	e28db000 	add	fp, sp, #0
     674:	e24dd024 	sub	sp, sp, #36	@ 0x24
     678:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     67c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     680:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     684:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     688:	e50b3008 	str	r3, [fp, #-8]
     68c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     690:	e54b300d 	strb	r3, [fp, #-13]
     694:	e55b200d 	ldrb	r2, [fp, #-13]
     698:	e1a03002 	mov	r3, r2
     69c:	e1a03403 	lsl	r3, r3, #8
     6a0:	e0833002 	add	r3, r3, r2
     6a4:	e1a03803 	lsl	r3, r3, #16
     6a8:	e1a02003 	mov	r2, r3
     6ac:	e55b300d 	ldrb	r3, [fp, #-13]
     6b0:	e1a03403 	lsl	r3, r3, #8
     6b4:	e1822003 	orr	r2, r2, r3
     6b8:	e55b300d 	ldrb	r3, [fp, #-13]
     6bc:	e1823003 	orr	r3, r2, r3
     6c0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     6c4:	ea000008 	b	6ec <memset+0x80>
     6c8:	e51b3008 	ldr	r3, [fp, #-8]
     6cc:	e55b200d 	ldrb	r2, [fp, #-13]
     6d0:	e5c32000 	strb	r2, [r3]
     6d4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     6d8:	e2433001 	sub	r3, r3, #1
     6dc:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     6e0:	e51b3008 	ldr	r3, [fp, #-8]
     6e4:	e2833001 	add	r3, r3, #1
     6e8:	e50b3008 	str	r3, [fp, #-8]
     6ec:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     6f0:	e3530000 	cmp	r3, #0
     6f4:	0a000003 	beq	708 <memset+0x9c>
     6f8:	e51b3008 	ldr	r3, [fp, #-8]
     6fc:	e2033003 	and	r3, r3, #3
     700:	e3530000 	cmp	r3, #0
     704:	1affffef 	bne	6c8 <memset+0x5c>
     708:	e51b3008 	ldr	r3, [fp, #-8]
     70c:	e50b300c 	str	r3, [fp, #-12]
     710:	ea000008 	b	738 <memset+0xcc>
     714:	e51b300c 	ldr	r3, [fp, #-12]
     718:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     71c:	e5832000 	str	r2, [r3]
     720:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     724:	e2433004 	sub	r3, r3, #4
     728:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     72c:	e51b300c 	ldr	r3, [fp, #-12]
     730:	e2833004 	add	r3, r3, #4
     734:	e50b300c 	str	r3, [fp, #-12]
     738:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     73c:	e3530003 	cmp	r3, #3
     740:	8afffff3 	bhi	714 <memset+0xa8>
     744:	e51b300c 	ldr	r3, [fp, #-12]
     748:	e50b3008 	str	r3, [fp, #-8]
     74c:	ea000008 	b	774 <memset+0x108>
     750:	e51b3008 	ldr	r3, [fp, #-8]
     754:	e55b200d 	ldrb	r2, [fp, #-13]
     758:	e5c32000 	strb	r2, [r3]
     75c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     760:	e2433001 	sub	r3, r3, #1
     764:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     768:	e51b3008 	ldr	r3, [fp, #-8]
     76c:	e2833001 	add	r3, r3, #1
     770:	e50b3008 	str	r3, [fp, #-8]
     774:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     778:	e3530000 	cmp	r3, #0
     77c:	1afffff3 	bne	750 <memset+0xe4>
     780:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     784:	e1a00003 	mov	r0, r3
     788:	e28bd000 	add	sp, fp, #0
     78c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     790:	e12fff1e 	bx	lr

00000794 <strchr>:
     794:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     798:	e28db000 	add	fp, sp, #0
     79c:	e24dd00c 	sub	sp, sp, #12
     7a0:	e50b0008 	str	r0, [fp, #-8]
     7a4:	e1a03001 	mov	r3, r1
     7a8:	e54b3009 	strb	r3, [fp, #-9]
     7ac:	ea000009 	b	7d8 <strchr+0x44>
     7b0:	e51b3008 	ldr	r3, [fp, #-8]
     7b4:	e5d33000 	ldrb	r3, [r3]
     7b8:	e55b2009 	ldrb	r2, [fp, #-9]
     7bc:	e1520003 	cmp	r2, r3
     7c0:	1a000001 	bne	7cc <strchr+0x38>
     7c4:	e51b3008 	ldr	r3, [fp, #-8]
     7c8:	ea000007 	b	7ec <strchr+0x58>
     7cc:	e51b3008 	ldr	r3, [fp, #-8]
     7d0:	e2833001 	add	r3, r3, #1
     7d4:	e50b3008 	str	r3, [fp, #-8]
     7d8:	e51b3008 	ldr	r3, [fp, #-8]
     7dc:	e5d33000 	ldrb	r3, [r3]
     7e0:	e3530000 	cmp	r3, #0
     7e4:	1afffff1 	bne	7b0 <strchr+0x1c>
     7e8:	e3a03000 	mov	r3, #0
     7ec:	e1a00003 	mov	r0, r3
     7f0:	e28bd000 	add	sp, fp, #0
     7f4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     7f8:	e12fff1e 	bx	lr

000007fc <gets>:
     7fc:	e92d4800 	push	{fp, lr}
     800:	e28db004 	add	fp, sp, #4
     804:	e24dd018 	sub	sp, sp, #24
     808:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     80c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     810:	e3a03000 	mov	r3, #0
     814:	e50b3008 	str	r3, [fp, #-8]
     818:	ea000016 	b	878 <gets+0x7c>
     81c:	e24b300d 	sub	r3, fp, #13
     820:	e3a02001 	mov	r2, #1
     824:	e1a01003 	mov	r1, r3
     828:	e3a00000 	mov	r0, #0
     82c:	eb00009b 	bl	aa0 <read>
     830:	e50b000c 	str	r0, [fp, #-12]
     834:	e51b300c 	ldr	r3, [fp, #-12]
     838:	e3530000 	cmp	r3, #0
     83c:	da000013 	ble	890 <gets+0x94>
     840:	e51b3008 	ldr	r3, [fp, #-8]
     844:	e2832001 	add	r2, r3, #1
     848:	e50b2008 	str	r2, [fp, #-8]
     84c:	e1a02003 	mov	r2, r3
     850:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     854:	e0833002 	add	r3, r3, r2
     858:	e55b200d 	ldrb	r2, [fp, #-13]
     85c:	e5c32000 	strb	r2, [r3]
     860:	e55b300d 	ldrb	r3, [fp, #-13]
     864:	e353000a 	cmp	r3, #10
     868:	0a000009 	beq	894 <gets+0x98>
     86c:	e55b300d 	ldrb	r3, [fp, #-13]
     870:	e353000d 	cmp	r3, #13
     874:	0a000006 	beq	894 <gets+0x98>
     878:	e51b3008 	ldr	r3, [fp, #-8]
     87c:	e2833001 	add	r3, r3, #1
     880:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     884:	e1520003 	cmp	r2, r3
     888:	caffffe3 	bgt	81c <gets+0x20>
     88c:	ea000000 	b	894 <gets+0x98>
     890:	e1a00000 	nop			@ (mov r0, r0)
     894:	e51b3008 	ldr	r3, [fp, #-8]
     898:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     89c:	e0823003 	add	r3, r2, r3
     8a0:	e3a02000 	mov	r2, #0
     8a4:	e5c32000 	strb	r2, [r3]
     8a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     8ac:	e1a00003 	mov	r0, r3
     8b0:	e24bd004 	sub	sp, fp, #4
     8b4:	e8bd8800 	pop	{fp, pc}

000008b8 <stat>:
     8b8:	e92d4800 	push	{fp, lr}
     8bc:	e28db004 	add	fp, sp, #4
     8c0:	e24dd010 	sub	sp, sp, #16
     8c4:	e50b0010 	str	r0, [fp, #-16]
     8c8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     8cc:	e3a01000 	mov	r1, #0
     8d0:	e51b0010 	ldr	r0, [fp, #-16]
     8d4:	eb00009e 	bl	b54 <open>
     8d8:	e50b0008 	str	r0, [fp, #-8]
     8dc:	e51b3008 	ldr	r3, [fp, #-8]
     8e0:	e3530000 	cmp	r3, #0
     8e4:	aa000001 	bge	8f0 <stat+0x38>
     8e8:	e3e03000 	mvn	r3, #0
     8ec:	ea000006 	b	90c <stat+0x54>
     8f0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     8f4:	e51b0008 	ldr	r0, [fp, #-8]
     8f8:	eb0000b0 	bl	bc0 <fstat>
     8fc:	e50b000c 	str	r0, [fp, #-12]
     900:	e51b0008 	ldr	r0, [fp, #-8]
     904:	eb000077 	bl	ae8 <close>
     908:	e51b300c 	ldr	r3, [fp, #-12]
     90c:	e1a00003 	mov	r0, r3
     910:	e24bd004 	sub	sp, fp, #4
     914:	e8bd8800 	pop	{fp, pc}

00000918 <atoi>:
     918:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     91c:	e28db000 	add	fp, sp, #0
     920:	e24dd014 	sub	sp, sp, #20
     924:	e50b0010 	str	r0, [fp, #-16]
     928:	e3a03000 	mov	r3, #0
     92c:	e50b3008 	str	r3, [fp, #-8]
     930:	ea00000c 	b	968 <atoi+0x50>
     934:	e51b2008 	ldr	r2, [fp, #-8]
     938:	e1a03002 	mov	r3, r2
     93c:	e1a03103 	lsl	r3, r3, #2
     940:	e0833002 	add	r3, r3, r2
     944:	e1a03083 	lsl	r3, r3, #1
     948:	e1a01003 	mov	r1, r3
     94c:	e51b3010 	ldr	r3, [fp, #-16]
     950:	e2832001 	add	r2, r3, #1
     954:	e50b2010 	str	r2, [fp, #-16]
     958:	e5d33000 	ldrb	r3, [r3]
     95c:	e0813003 	add	r3, r1, r3
     960:	e2433030 	sub	r3, r3, #48	@ 0x30
     964:	e50b3008 	str	r3, [fp, #-8]
     968:	e51b3010 	ldr	r3, [fp, #-16]
     96c:	e5d33000 	ldrb	r3, [r3]
     970:	e353002f 	cmp	r3, #47	@ 0x2f
     974:	9a000003 	bls	988 <atoi+0x70>
     978:	e51b3010 	ldr	r3, [fp, #-16]
     97c:	e5d33000 	ldrb	r3, [r3]
     980:	e3530039 	cmp	r3, #57	@ 0x39
     984:	9affffea 	bls	934 <atoi+0x1c>
     988:	e51b3008 	ldr	r3, [fp, #-8]
     98c:	e1a00003 	mov	r0, r3
     990:	e28bd000 	add	sp, fp, #0
     994:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     998:	e12fff1e 	bx	lr

0000099c <memmove>:
     99c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     9a0:	e28db000 	add	fp, sp, #0
     9a4:	e24dd01c 	sub	sp, sp, #28
     9a8:	e50b0010 	str	r0, [fp, #-16]
     9ac:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     9b0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     9b4:	e51b3010 	ldr	r3, [fp, #-16]
     9b8:	e50b3008 	str	r3, [fp, #-8]
     9bc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     9c0:	e50b300c 	str	r3, [fp, #-12]
     9c4:	ea000007 	b	9e8 <memmove+0x4c>
     9c8:	e51b200c 	ldr	r2, [fp, #-12]
     9cc:	e2823001 	add	r3, r2, #1
     9d0:	e50b300c 	str	r3, [fp, #-12]
     9d4:	e51b3008 	ldr	r3, [fp, #-8]
     9d8:	e2831001 	add	r1, r3, #1
     9dc:	e50b1008 	str	r1, [fp, #-8]
     9e0:	e5d22000 	ldrb	r2, [r2]
     9e4:	e5c32000 	strb	r2, [r3]
     9e8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     9ec:	e2432001 	sub	r2, r3, #1
     9f0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     9f4:	e3530000 	cmp	r3, #0
     9f8:	cafffff2 	bgt	9c8 <memmove+0x2c>
     9fc:	e51b3010 	ldr	r3, [fp, #-16]
     a00:	e1a00003 	mov	r0, r3
     a04:	e28bd000 	add	sp, fp, #0
     a08:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     a0c:	e12fff1e 	bx	lr

00000a10 <fork>:
     a10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a14:	e1a04003 	mov	r4, r3
     a18:	e1a03002 	mov	r3, r2
     a1c:	e1a02001 	mov	r2, r1
     a20:	e1a01000 	mov	r1, r0
     a24:	e3a00001 	mov	r0, #1
     a28:	ef000000 	svc	0x00000000
     a2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a30:	e12fff1e 	bx	lr

00000a34 <exit>:
     a34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a38:	e1a04003 	mov	r4, r3
     a3c:	e1a03002 	mov	r3, r2
     a40:	e1a02001 	mov	r2, r1
     a44:	e1a01000 	mov	r1, r0
     a48:	e3a00002 	mov	r0, #2
     a4c:	ef000000 	svc	0x00000000
     a50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a54:	e12fff1e 	bx	lr

00000a58 <wait>:
     a58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a5c:	e1a04003 	mov	r4, r3
     a60:	e1a03002 	mov	r3, r2
     a64:	e1a02001 	mov	r2, r1
     a68:	e1a01000 	mov	r1, r0
     a6c:	e3a00003 	mov	r0, #3
     a70:	ef000000 	svc	0x00000000
     a74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a78:	e12fff1e 	bx	lr

00000a7c <pipe>:
     a7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a80:	e1a04003 	mov	r4, r3
     a84:	e1a03002 	mov	r3, r2
     a88:	e1a02001 	mov	r2, r1
     a8c:	e1a01000 	mov	r1, r0
     a90:	e3a00004 	mov	r0, #4
     a94:	ef000000 	svc	0x00000000
     a98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a9c:	e12fff1e 	bx	lr

00000aa0 <read>:
     aa0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aa4:	e1a04003 	mov	r4, r3
     aa8:	e1a03002 	mov	r3, r2
     aac:	e1a02001 	mov	r2, r1
     ab0:	e1a01000 	mov	r1, r0
     ab4:	e3a00005 	mov	r0, #5
     ab8:	ef000000 	svc	0x00000000
     abc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ac0:	e12fff1e 	bx	lr

00000ac4 <write>:
     ac4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ac8:	e1a04003 	mov	r4, r3
     acc:	e1a03002 	mov	r3, r2
     ad0:	e1a02001 	mov	r2, r1
     ad4:	e1a01000 	mov	r1, r0
     ad8:	e3a00010 	mov	r0, #16
     adc:	ef000000 	svc	0x00000000
     ae0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ae4:	e12fff1e 	bx	lr

00000ae8 <close>:
     ae8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aec:	e1a04003 	mov	r4, r3
     af0:	e1a03002 	mov	r3, r2
     af4:	e1a02001 	mov	r2, r1
     af8:	e1a01000 	mov	r1, r0
     afc:	e3a00015 	mov	r0, #21
     b00:	ef000000 	svc	0x00000000
     b04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b08:	e12fff1e 	bx	lr

00000b0c <kill>:
     b0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b10:	e1a04003 	mov	r4, r3
     b14:	e1a03002 	mov	r3, r2
     b18:	e1a02001 	mov	r2, r1
     b1c:	e1a01000 	mov	r1, r0
     b20:	e3a00006 	mov	r0, #6
     b24:	ef000000 	svc	0x00000000
     b28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b2c:	e12fff1e 	bx	lr

00000b30 <exec>:
     b30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b34:	e1a04003 	mov	r4, r3
     b38:	e1a03002 	mov	r3, r2
     b3c:	e1a02001 	mov	r2, r1
     b40:	e1a01000 	mov	r1, r0
     b44:	e3a00007 	mov	r0, #7
     b48:	ef000000 	svc	0x00000000
     b4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b50:	e12fff1e 	bx	lr

00000b54 <open>:
     b54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b58:	e1a04003 	mov	r4, r3
     b5c:	e1a03002 	mov	r3, r2
     b60:	e1a02001 	mov	r2, r1
     b64:	e1a01000 	mov	r1, r0
     b68:	e3a0000f 	mov	r0, #15
     b6c:	ef000000 	svc	0x00000000
     b70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b74:	e12fff1e 	bx	lr

00000b78 <mknod>:
     b78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b7c:	e1a04003 	mov	r4, r3
     b80:	e1a03002 	mov	r3, r2
     b84:	e1a02001 	mov	r2, r1
     b88:	e1a01000 	mov	r1, r0
     b8c:	e3a00011 	mov	r0, #17
     b90:	ef000000 	svc	0x00000000
     b94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b98:	e12fff1e 	bx	lr

00000b9c <unlink>:
     b9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ba0:	e1a04003 	mov	r4, r3
     ba4:	e1a03002 	mov	r3, r2
     ba8:	e1a02001 	mov	r2, r1
     bac:	e1a01000 	mov	r1, r0
     bb0:	e3a00012 	mov	r0, #18
     bb4:	ef000000 	svc	0x00000000
     bb8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bbc:	e12fff1e 	bx	lr

00000bc0 <fstat>:
     bc0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bc4:	e1a04003 	mov	r4, r3
     bc8:	e1a03002 	mov	r3, r2
     bcc:	e1a02001 	mov	r2, r1
     bd0:	e1a01000 	mov	r1, r0
     bd4:	e3a00008 	mov	r0, #8
     bd8:	ef000000 	svc	0x00000000
     bdc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     be0:	e12fff1e 	bx	lr

00000be4 <link>:
     be4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     be8:	e1a04003 	mov	r4, r3
     bec:	e1a03002 	mov	r3, r2
     bf0:	e1a02001 	mov	r2, r1
     bf4:	e1a01000 	mov	r1, r0
     bf8:	e3a00013 	mov	r0, #19
     bfc:	ef000000 	svc	0x00000000
     c00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c04:	e12fff1e 	bx	lr

00000c08 <mkdir>:
     c08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c0c:	e1a04003 	mov	r4, r3
     c10:	e1a03002 	mov	r3, r2
     c14:	e1a02001 	mov	r2, r1
     c18:	e1a01000 	mov	r1, r0
     c1c:	e3a00014 	mov	r0, #20
     c20:	ef000000 	svc	0x00000000
     c24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c28:	e12fff1e 	bx	lr

00000c2c <chdir>:
     c2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c30:	e1a04003 	mov	r4, r3
     c34:	e1a03002 	mov	r3, r2
     c38:	e1a02001 	mov	r2, r1
     c3c:	e1a01000 	mov	r1, r0
     c40:	e3a00009 	mov	r0, #9
     c44:	ef000000 	svc	0x00000000
     c48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c4c:	e12fff1e 	bx	lr

00000c50 <dup>:
     c50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c54:	e1a04003 	mov	r4, r3
     c58:	e1a03002 	mov	r3, r2
     c5c:	e1a02001 	mov	r2, r1
     c60:	e1a01000 	mov	r1, r0
     c64:	e3a0000a 	mov	r0, #10
     c68:	ef000000 	svc	0x00000000
     c6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c70:	e12fff1e 	bx	lr

00000c74 <getpid>:
     c74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c78:	e1a04003 	mov	r4, r3
     c7c:	e1a03002 	mov	r3, r2
     c80:	e1a02001 	mov	r2, r1
     c84:	e1a01000 	mov	r1, r0
     c88:	e3a0000b 	mov	r0, #11
     c8c:	ef000000 	svc	0x00000000
     c90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c94:	e12fff1e 	bx	lr

00000c98 <sbrk>:
     c98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c9c:	e1a04003 	mov	r4, r3
     ca0:	e1a03002 	mov	r3, r2
     ca4:	e1a02001 	mov	r2, r1
     ca8:	e1a01000 	mov	r1, r0
     cac:	e3a0000c 	mov	r0, #12
     cb0:	ef000000 	svc	0x00000000
     cb4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cb8:	e12fff1e 	bx	lr

00000cbc <sleep>:
     cbc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cc0:	e1a04003 	mov	r4, r3
     cc4:	e1a03002 	mov	r3, r2
     cc8:	e1a02001 	mov	r2, r1
     ccc:	e1a01000 	mov	r1, r0
     cd0:	e3a0000d 	mov	r0, #13
     cd4:	ef000000 	svc	0x00000000
     cd8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cdc:	e12fff1e 	bx	lr

00000ce0 <uptime>:
     ce0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ce4:	e1a04003 	mov	r4, r3
     ce8:	e1a03002 	mov	r3, r2
     cec:	e1a02001 	mov	r2, r1
     cf0:	e1a01000 	mov	r1, r0
     cf4:	e3a0000e 	mov	r0, #14
     cf8:	ef000000 	svc	0x00000000
     cfc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d00:	e12fff1e 	bx	lr

00000d04 <getprocs>:
     d04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d08:	e1a04003 	mov	r4, r3
     d0c:	e1a03002 	mov	r3, r2
     d10:	e1a02001 	mov	r2, r1
     d14:	e1a01000 	mov	r1, r0
     d18:	e3a00016 	mov	r0, #22
     d1c:	ef000000 	svc	0x00000000
     d20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d24:	e12fff1e 	bx	lr

00000d28 <getpinfo>:
     d28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d2c:	e1a04003 	mov	r4, r3
     d30:	e1a03002 	mov	r3, r2
     d34:	e1a02001 	mov	r2, r1
     d38:	e1a01000 	mov	r1, r0
     d3c:	e3a00018 	mov	r0, #24
     d40:	ef000000 	svc	0x00000000
     d44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d48:	e12fff1e 	bx	lr

00000d4c <settickets>:
     d4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d50:	e1a04003 	mov	r4, r3
     d54:	e1a03002 	mov	r3, r2
     d58:	e1a02001 	mov	r2, r1
     d5c:	e1a01000 	mov	r1, r0
     d60:	e3a00017 	mov	r0, #23
     d64:	ef000000 	svc	0x00000000
     d68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d6c:	e12fff1e 	bx	lr

00000d70 <srand>:
     d70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d74:	e1a04003 	mov	r4, r3
     d78:	e1a03002 	mov	r3, r2
     d7c:	e1a02001 	mov	r2, r1
     d80:	e1a01000 	mov	r1, r0
     d84:	e3a00019 	mov	r0, #25
     d88:	ef000000 	svc	0x00000000
     d8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d90:	e12fff1e 	bx	lr

00000d94 <test>:
     d94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d98:	e1a04003 	mov	r4, r3
     d9c:	e1a03002 	mov	r3, r2
     da0:	e1a02001 	mov	r2, r1
     da4:	e1a01000 	mov	r1, r0
     da8:	e3a0001a 	mov	r0, #26
     dac:	ef000000 	svc	0x00000000
     db0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     db4:	e12fff1e 	bx	lr

00000db8 <putc>:
     db8:	e92d4800 	push	{fp, lr}
     dbc:	e28db004 	add	fp, sp, #4
     dc0:	e24dd008 	sub	sp, sp, #8
     dc4:	e50b0008 	str	r0, [fp, #-8]
     dc8:	e1a03001 	mov	r3, r1
     dcc:	e54b3009 	strb	r3, [fp, #-9]
     dd0:	e24b3009 	sub	r3, fp, #9
     dd4:	e3a02001 	mov	r2, #1
     dd8:	e1a01003 	mov	r1, r3
     ddc:	e51b0008 	ldr	r0, [fp, #-8]
     de0:	ebffff37 	bl	ac4 <write>
     de4:	e1a00000 	nop			@ (mov r0, r0)
     de8:	e24bd004 	sub	sp, fp, #4
     dec:	e8bd8800 	pop	{fp, pc}

00000df0 <printint>:
     df0:	e92d4800 	push	{fp, lr}
     df4:	e28db004 	add	fp, sp, #4
     df8:	e24dd030 	sub	sp, sp, #48	@ 0x30
     dfc:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     e00:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     e04:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     e08:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     e0c:	e3a03000 	mov	r3, #0
     e10:	e50b300c 	str	r3, [fp, #-12]
     e14:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     e18:	e3530000 	cmp	r3, #0
     e1c:	0a000008 	beq	e44 <printint+0x54>
     e20:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e24:	e3530000 	cmp	r3, #0
     e28:	aa000005 	bge	e44 <printint+0x54>
     e2c:	e3a03001 	mov	r3, #1
     e30:	e50b300c 	str	r3, [fp, #-12]
     e34:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e38:	e2633000 	rsb	r3, r3, #0
     e3c:	e50b3010 	str	r3, [fp, #-16]
     e40:	ea000001 	b	e4c <printint+0x5c>
     e44:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e48:	e50b3010 	str	r3, [fp, #-16]
     e4c:	e3a03000 	mov	r3, #0
     e50:	e50b3008 	str	r3, [fp, #-8]
     e54:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     e58:	e51b3010 	ldr	r3, [fp, #-16]
     e5c:	e1a01002 	mov	r1, r2
     e60:	e1a00003 	mov	r0, r3
     e64:	eb0001d5 	bl	15c0 <__aeabi_uidivmod>
     e68:	e1a03001 	mov	r3, r1
     e6c:	e1a01003 	mov	r1, r3
     e70:	e51b3008 	ldr	r3, [fp, #-8]
     e74:	e2832001 	add	r2, r3, #1
     e78:	e50b2008 	str	r2, [fp, #-8]
     e7c:	e59f20a0 	ldr	r2, [pc, #160]	@ f24 <printint+0x134>
     e80:	e7d22001 	ldrb	r2, [r2, r1]
     e84:	e2433004 	sub	r3, r3, #4
     e88:	e083300b 	add	r3, r3, fp
     e8c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     e90:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     e94:	e1a01003 	mov	r1, r3
     e98:	e51b0010 	ldr	r0, [fp, #-16]
     e9c:	eb00018a 	bl	14cc <__udivsi3>
     ea0:	e1a03000 	mov	r3, r0
     ea4:	e50b3010 	str	r3, [fp, #-16]
     ea8:	e51b3010 	ldr	r3, [fp, #-16]
     eac:	e3530000 	cmp	r3, #0
     eb0:	1affffe7 	bne	e54 <printint+0x64>
     eb4:	e51b300c 	ldr	r3, [fp, #-12]
     eb8:	e3530000 	cmp	r3, #0
     ebc:	0a00000e 	beq	efc <printint+0x10c>
     ec0:	e51b3008 	ldr	r3, [fp, #-8]
     ec4:	e2832001 	add	r2, r3, #1
     ec8:	e50b2008 	str	r2, [fp, #-8]
     ecc:	e2433004 	sub	r3, r3, #4
     ed0:	e083300b 	add	r3, r3, fp
     ed4:	e3a0202d 	mov	r2, #45	@ 0x2d
     ed8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     edc:	ea000006 	b	efc <printint+0x10c>
     ee0:	e24b2020 	sub	r2, fp, #32
     ee4:	e51b3008 	ldr	r3, [fp, #-8]
     ee8:	e0823003 	add	r3, r2, r3
     eec:	e5d33000 	ldrb	r3, [r3]
     ef0:	e1a01003 	mov	r1, r3
     ef4:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     ef8:	ebffffae 	bl	db8 <putc>
     efc:	e51b3008 	ldr	r3, [fp, #-8]
     f00:	e2433001 	sub	r3, r3, #1
     f04:	e50b3008 	str	r3, [fp, #-8]
     f08:	e51b3008 	ldr	r3, [fp, #-8]
     f0c:	e3530000 	cmp	r3, #0
     f10:	aafffff2 	bge	ee0 <printint+0xf0>
     f14:	e1a00000 	nop			@ (mov r0, r0)
     f18:	e1a00000 	nop			@ (mov r0, r0)
     f1c:	e24bd004 	sub	sp, fp, #4
     f20:	e8bd8800 	pop	{fp, pc}
     f24:	000018e0 	.word	0x000018e0

00000f28 <printf>:
     f28:	e92d000e 	push	{r1, r2, r3}
     f2c:	e92d4800 	push	{fp, lr}
     f30:	e28db004 	add	fp, sp, #4
     f34:	e24dd024 	sub	sp, sp, #36	@ 0x24
     f38:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     f3c:	e3a03000 	mov	r3, #0
     f40:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     f44:	e28b3008 	add	r3, fp, #8
     f48:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f4c:	e3a03000 	mov	r3, #0
     f50:	e50b3010 	str	r3, [fp, #-16]
     f54:	ea000074 	b	112c <printf+0x204>
     f58:	e59b2004 	ldr	r2, [fp, #4]
     f5c:	e51b3010 	ldr	r3, [fp, #-16]
     f60:	e0823003 	add	r3, r2, r3
     f64:	e5d33000 	ldrb	r3, [r3]
     f68:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     f6c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     f70:	e3530000 	cmp	r3, #0
     f74:	1a00000b 	bne	fa8 <printf+0x80>
     f78:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f7c:	e3530025 	cmp	r3, #37	@ 0x25
     f80:	1a000002 	bne	f90 <printf+0x68>
     f84:	e3a03025 	mov	r3, #37	@ 0x25
     f88:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     f8c:	ea000063 	b	1120 <printf+0x1f8>
     f90:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f94:	e6ef3073 	uxtb	r3, r3
     f98:	e1a01003 	mov	r1, r3
     f9c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     fa0:	ebffff84 	bl	db8 <putc>
     fa4:	ea00005d 	b	1120 <printf+0x1f8>
     fa8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     fac:	e3530025 	cmp	r3, #37	@ 0x25
     fb0:	1a00005a 	bne	1120 <printf+0x1f8>
     fb4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fb8:	e3530064 	cmp	r3, #100	@ 0x64
     fbc:	1a00000a 	bne	fec <printf+0xc4>
     fc0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fc4:	e5933000 	ldr	r3, [r3]
     fc8:	e1a01003 	mov	r1, r3
     fcc:	e3a03001 	mov	r3, #1
     fd0:	e3a0200a 	mov	r2, #10
     fd4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     fd8:	ebffff84 	bl	df0 <printint>
     fdc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fe0:	e2833004 	add	r3, r3, #4
     fe4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     fe8:	ea00004a 	b	1118 <printf+0x1f0>
     fec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ff0:	e3530078 	cmp	r3, #120	@ 0x78
     ff4:	0a000002 	beq	1004 <printf+0xdc>
     ff8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ffc:	e3530070 	cmp	r3, #112	@ 0x70
    1000:	1a00000a 	bne	1030 <printf+0x108>
    1004:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1008:	e5933000 	ldr	r3, [r3]
    100c:	e1a01003 	mov	r1, r3
    1010:	e3a03000 	mov	r3, #0
    1014:	e3a02010 	mov	r2, #16
    1018:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    101c:	ebffff73 	bl	df0 <printint>
    1020:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1024:	e2833004 	add	r3, r3, #4
    1028:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    102c:	ea000039 	b	1118 <printf+0x1f0>
    1030:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1034:	e3530073 	cmp	r3, #115	@ 0x73
    1038:	1a000018 	bne	10a0 <printf+0x178>
    103c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1040:	e5933000 	ldr	r3, [r3]
    1044:	e50b300c 	str	r3, [fp, #-12]
    1048:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    104c:	e2833004 	add	r3, r3, #4
    1050:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1054:	e51b300c 	ldr	r3, [fp, #-12]
    1058:	e3530000 	cmp	r3, #0
    105c:	1a00000a 	bne	108c <printf+0x164>
    1060:	e59f30f4 	ldr	r3, [pc, #244]	@ 115c <printf+0x234>
    1064:	e50b300c 	str	r3, [fp, #-12]
    1068:	ea000007 	b	108c <printf+0x164>
    106c:	e51b300c 	ldr	r3, [fp, #-12]
    1070:	e5d33000 	ldrb	r3, [r3]
    1074:	e1a01003 	mov	r1, r3
    1078:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    107c:	ebffff4d 	bl	db8 <putc>
    1080:	e51b300c 	ldr	r3, [fp, #-12]
    1084:	e2833001 	add	r3, r3, #1
    1088:	e50b300c 	str	r3, [fp, #-12]
    108c:	e51b300c 	ldr	r3, [fp, #-12]
    1090:	e5d33000 	ldrb	r3, [r3]
    1094:	e3530000 	cmp	r3, #0
    1098:	1afffff3 	bne	106c <printf+0x144>
    109c:	ea00001d 	b	1118 <printf+0x1f0>
    10a0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10a4:	e3530063 	cmp	r3, #99	@ 0x63
    10a8:	1a000009 	bne	10d4 <printf+0x1ac>
    10ac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10b0:	e5933000 	ldr	r3, [r3]
    10b4:	e6ef3073 	uxtb	r3, r3
    10b8:	e1a01003 	mov	r1, r3
    10bc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10c0:	ebffff3c 	bl	db8 <putc>
    10c4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10c8:	e2833004 	add	r3, r3, #4
    10cc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10d0:	ea000010 	b	1118 <printf+0x1f0>
    10d4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10d8:	e3530025 	cmp	r3, #37	@ 0x25
    10dc:	1a000005 	bne	10f8 <printf+0x1d0>
    10e0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10e4:	e6ef3073 	uxtb	r3, r3
    10e8:	e1a01003 	mov	r1, r3
    10ec:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10f0:	ebffff30 	bl	db8 <putc>
    10f4:	ea000007 	b	1118 <printf+0x1f0>
    10f8:	e3a01025 	mov	r1, #37	@ 0x25
    10fc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1100:	ebffff2c 	bl	db8 <putc>
    1104:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1108:	e6ef3073 	uxtb	r3, r3
    110c:	e1a01003 	mov	r1, r3
    1110:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1114:	ebffff27 	bl	db8 <putc>
    1118:	e3a03000 	mov	r3, #0
    111c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1120:	e51b3010 	ldr	r3, [fp, #-16]
    1124:	e2833001 	add	r3, r3, #1
    1128:	e50b3010 	str	r3, [fp, #-16]
    112c:	e59b2004 	ldr	r2, [fp, #4]
    1130:	e51b3010 	ldr	r3, [fp, #-16]
    1134:	e0823003 	add	r3, r2, r3
    1138:	e5d33000 	ldrb	r3, [r3]
    113c:	e3530000 	cmp	r3, #0
    1140:	1affff84 	bne	f58 <printf+0x30>
    1144:	e1a00000 	nop			@ (mov r0, r0)
    1148:	e1a00000 	nop			@ (mov r0, r0)
    114c:	e24bd004 	sub	sp, fp, #4
    1150:	e8bd4800 	pop	{fp, lr}
    1154:	e28dd00c 	add	sp, sp, #12
    1158:	e12fff1e 	bx	lr
    115c:	000018d8 	.word	0x000018d8

00001160 <free>:
    1160:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1164:	e28db000 	add	fp, sp, #0
    1168:	e24dd014 	sub	sp, sp, #20
    116c:	e50b0010 	str	r0, [fp, #-16]
    1170:	e51b3010 	ldr	r3, [fp, #-16]
    1174:	e2433008 	sub	r3, r3, #8
    1178:	e50b300c 	str	r3, [fp, #-12]
    117c:	e59f3154 	ldr	r3, [pc, #340]	@ 12d8 <free+0x178>
    1180:	e5933000 	ldr	r3, [r3]
    1184:	e50b3008 	str	r3, [fp, #-8]
    1188:	ea000010 	b	11d0 <free+0x70>
    118c:	e51b3008 	ldr	r3, [fp, #-8]
    1190:	e5933000 	ldr	r3, [r3]
    1194:	e51b2008 	ldr	r2, [fp, #-8]
    1198:	e1520003 	cmp	r2, r3
    119c:	3a000008 	bcc	11c4 <free+0x64>
    11a0:	e51b200c 	ldr	r2, [fp, #-12]
    11a4:	e51b3008 	ldr	r3, [fp, #-8]
    11a8:	e1520003 	cmp	r2, r3
    11ac:	8a000010 	bhi	11f4 <free+0x94>
    11b0:	e51b3008 	ldr	r3, [fp, #-8]
    11b4:	e5933000 	ldr	r3, [r3]
    11b8:	e51b200c 	ldr	r2, [fp, #-12]
    11bc:	e1520003 	cmp	r2, r3
    11c0:	3a00000b 	bcc	11f4 <free+0x94>
    11c4:	e51b3008 	ldr	r3, [fp, #-8]
    11c8:	e5933000 	ldr	r3, [r3]
    11cc:	e50b3008 	str	r3, [fp, #-8]
    11d0:	e51b200c 	ldr	r2, [fp, #-12]
    11d4:	e51b3008 	ldr	r3, [fp, #-8]
    11d8:	e1520003 	cmp	r2, r3
    11dc:	9affffea 	bls	118c <free+0x2c>
    11e0:	e51b3008 	ldr	r3, [fp, #-8]
    11e4:	e5933000 	ldr	r3, [r3]
    11e8:	e51b200c 	ldr	r2, [fp, #-12]
    11ec:	e1520003 	cmp	r2, r3
    11f0:	2affffe5 	bcs	118c <free+0x2c>
    11f4:	e51b300c 	ldr	r3, [fp, #-12]
    11f8:	e5933004 	ldr	r3, [r3, #4]
    11fc:	e1a03183 	lsl	r3, r3, #3
    1200:	e51b200c 	ldr	r2, [fp, #-12]
    1204:	e0822003 	add	r2, r2, r3
    1208:	e51b3008 	ldr	r3, [fp, #-8]
    120c:	e5933000 	ldr	r3, [r3]
    1210:	e1520003 	cmp	r2, r3
    1214:	1a00000d 	bne	1250 <free+0xf0>
    1218:	e51b300c 	ldr	r3, [fp, #-12]
    121c:	e5932004 	ldr	r2, [r3, #4]
    1220:	e51b3008 	ldr	r3, [fp, #-8]
    1224:	e5933000 	ldr	r3, [r3]
    1228:	e5933004 	ldr	r3, [r3, #4]
    122c:	e0822003 	add	r2, r2, r3
    1230:	e51b300c 	ldr	r3, [fp, #-12]
    1234:	e5832004 	str	r2, [r3, #4]
    1238:	e51b3008 	ldr	r3, [fp, #-8]
    123c:	e5933000 	ldr	r3, [r3]
    1240:	e5932000 	ldr	r2, [r3]
    1244:	e51b300c 	ldr	r3, [fp, #-12]
    1248:	e5832000 	str	r2, [r3]
    124c:	ea000003 	b	1260 <free+0x100>
    1250:	e51b3008 	ldr	r3, [fp, #-8]
    1254:	e5932000 	ldr	r2, [r3]
    1258:	e51b300c 	ldr	r3, [fp, #-12]
    125c:	e5832000 	str	r2, [r3]
    1260:	e51b3008 	ldr	r3, [fp, #-8]
    1264:	e5933004 	ldr	r3, [r3, #4]
    1268:	e1a03183 	lsl	r3, r3, #3
    126c:	e51b2008 	ldr	r2, [fp, #-8]
    1270:	e0823003 	add	r3, r2, r3
    1274:	e51b200c 	ldr	r2, [fp, #-12]
    1278:	e1520003 	cmp	r2, r3
    127c:	1a00000b 	bne	12b0 <free+0x150>
    1280:	e51b3008 	ldr	r3, [fp, #-8]
    1284:	e5932004 	ldr	r2, [r3, #4]
    1288:	e51b300c 	ldr	r3, [fp, #-12]
    128c:	e5933004 	ldr	r3, [r3, #4]
    1290:	e0822003 	add	r2, r2, r3
    1294:	e51b3008 	ldr	r3, [fp, #-8]
    1298:	e5832004 	str	r2, [r3, #4]
    129c:	e51b300c 	ldr	r3, [fp, #-12]
    12a0:	e5932000 	ldr	r2, [r3]
    12a4:	e51b3008 	ldr	r3, [fp, #-8]
    12a8:	e5832000 	str	r2, [r3]
    12ac:	ea000002 	b	12bc <free+0x15c>
    12b0:	e51b3008 	ldr	r3, [fp, #-8]
    12b4:	e51b200c 	ldr	r2, [fp, #-12]
    12b8:	e5832000 	str	r2, [r3]
    12bc:	e59f2014 	ldr	r2, [pc, #20]	@ 12d8 <free+0x178>
    12c0:	e51b3008 	ldr	r3, [fp, #-8]
    12c4:	e5823000 	str	r3, [r2]
    12c8:	e1a00000 	nop			@ (mov r0, r0)
    12cc:	e28bd000 	add	sp, fp, #0
    12d0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    12d4:	e12fff1e 	bx	lr
    12d8:	000018fc 	.word	0x000018fc

000012dc <morecore>:
    12dc:	e92d4800 	push	{fp, lr}
    12e0:	e28db004 	add	fp, sp, #4
    12e4:	e24dd010 	sub	sp, sp, #16
    12e8:	e50b0010 	str	r0, [fp, #-16]
    12ec:	e51b3010 	ldr	r3, [fp, #-16]
    12f0:	e3530a01 	cmp	r3, #4096	@ 0x1000
    12f4:	2a000001 	bcs	1300 <morecore+0x24>
    12f8:	e3a03a01 	mov	r3, #4096	@ 0x1000
    12fc:	e50b3010 	str	r3, [fp, #-16]
    1300:	e51b3010 	ldr	r3, [fp, #-16]
    1304:	e1a03183 	lsl	r3, r3, #3
    1308:	e1a00003 	mov	r0, r3
    130c:	ebfffe61 	bl	c98 <sbrk>
    1310:	e50b0008 	str	r0, [fp, #-8]
    1314:	e51b3008 	ldr	r3, [fp, #-8]
    1318:	e3730001 	cmn	r3, #1
    131c:	1a000001 	bne	1328 <morecore+0x4c>
    1320:	e3a03000 	mov	r3, #0
    1324:	ea00000a 	b	1354 <morecore+0x78>
    1328:	e51b3008 	ldr	r3, [fp, #-8]
    132c:	e50b300c 	str	r3, [fp, #-12]
    1330:	e51b300c 	ldr	r3, [fp, #-12]
    1334:	e51b2010 	ldr	r2, [fp, #-16]
    1338:	e5832004 	str	r2, [r3, #4]
    133c:	e51b300c 	ldr	r3, [fp, #-12]
    1340:	e2833008 	add	r3, r3, #8
    1344:	e1a00003 	mov	r0, r3
    1348:	ebffff84 	bl	1160 <free>
    134c:	e59f300c 	ldr	r3, [pc, #12]	@ 1360 <morecore+0x84>
    1350:	e5933000 	ldr	r3, [r3]
    1354:	e1a00003 	mov	r0, r3
    1358:	e24bd004 	sub	sp, fp, #4
    135c:	e8bd8800 	pop	{fp, pc}
    1360:	000018fc 	.word	0x000018fc

00001364 <malloc>:
    1364:	e92d4800 	push	{fp, lr}
    1368:	e28db004 	add	fp, sp, #4
    136c:	e24dd018 	sub	sp, sp, #24
    1370:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1374:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1378:	e2833007 	add	r3, r3, #7
    137c:	e1a031a3 	lsr	r3, r3, #3
    1380:	e2833001 	add	r3, r3, #1
    1384:	e50b3010 	str	r3, [fp, #-16]
    1388:	e59f3134 	ldr	r3, [pc, #308]	@ 14c4 <malloc+0x160>
    138c:	e5933000 	ldr	r3, [r3]
    1390:	e50b300c 	str	r3, [fp, #-12]
    1394:	e51b300c 	ldr	r3, [fp, #-12]
    1398:	e3530000 	cmp	r3, #0
    139c:	1a00000b 	bne	13d0 <malloc+0x6c>
    13a0:	e59f3120 	ldr	r3, [pc, #288]	@ 14c8 <malloc+0x164>
    13a4:	e50b300c 	str	r3, [fp, #-12]
    13a8:	e59f2114 	ldr	r2, [pc, #276]	@ 14c4 <malloc+0x160>
    13ac:	e51b300c 	ldr	r3, [fp, #-12]
    13b0:	e5823000 	str	r3, [r2]
    13b4:	e59f3108 	ldr	r3, [pc, #264]	@ 14c4 <malloc+0x160>
    13b8:	e5933000 	ldr	r3, [r3]
    13bc:	e59f2104 	ldr	r2, [pc, #260]	@ 14c8 <malloc+0x164>
    13c0:	e5823000 	str	r3, [r2]
    13c4:	e59f30fc 	ldr	r3, [pc, #252]	@ 14c8 <malloc+0x164>
    13c8:	e3a02000 	mov	r2, #0
    13cc:	e5832004 	str	r2, [r3, #4]
    13d0:	e51b300c 	ldr	r3, [fp, #-12]
    13d4:	e5933000 	ldr	r3, [r3]
    13d8:	e50b3008 	str	r3, [fp, #-8]
    13dc:	e51b3008 	ldr	r3, [fp, #-8]
    13e0:	e5933004 	ldr	r3, [r3, #4]
    13e4:	e51b2010 	ldr	r2, [fp, #-16]
    13e8:	e1520003 	cmp	r2, r3
    13ec:	8a00001e 	bhi	146c <malloc+0x108>
    13f0:	e51b3008 	ldr	r3, [fp, #-8]
    13f4:	e5933004 	ldr	r3, [r3, #4]
    13f8:	e51b2010 	ldr	r2, [fp, #-16]
    13fc:	e1520003 	cmp	r2, r3
    1400:	1a000004 	bne	1418 <malloc+0xb4>
    1404:	e51b3008 	ldr	r3, [fp, #-8]
    1408:	e5932000 	ldr	r2, [r3]
    140c:	e51b300c 	ldr	r3, [fp, #-12]
    1410:	e5832000 	str	r2, [r3]
    1414:	ea00000e 	b	1454 <malloc+0xf0>
    1418:	e51b3008 	ldr	r3, [fp, #-8]
    141c:	e5932004 	ldr	r2, [r3, #4]
    1420:	e51b3010 	ldr	r3, [fp, #-16]
    1424:	e0422003 	sub	r2, r2, r3
    1428:	e51b3008 	ldr	r3, [fp, #-8]
    142c:	e5832004 	str	r2, [r3, #4]
    1430:	e51b3008 	ldr	r3, [fp, #-8]
    1434:	e5933004 	ldr	r3, [r3, #4]
    1438:	e1a03183 	lsl	r3, r3, #3
    143c:	e51b2008 	ldr	r2, [fp, #-8]
    1440:	e0823003 	add	r3, r2, r3
    1444:	e50b3008 	str	r3, [fp, #-8]
    1448:	e51b3008 	ldr	r3, [fp, #-8]
    144c:	e51b2010 	ldr	r2, [fp, #-16]
    1450:	e5832004 	str	r2, [r3, #4]
    1454:	e59f2068 	ldr	r2, [pc, #104]	@ 14c4 <malloc+0x160>
    1458:	e51b300c 	ldr	r3, [fp, #-12]
    145c:	e5823000 	str	r3, [r2]
    1460:	e51b3008 	ldr	r3, [fp, #-8]
    1464:	e2833008 	add	r3, r3, #8
    1468:	ea000012 	b	14b8 <malloc+0x154>
    146c:	e59f3050 	ldr	r3, [pc, #80]	@ 14c4 <malloc+0x160>
    1470:	e5933000 	ldr	r3, [r3]
    1474:	e51b2008 	ldr	r2, [fp, #-8]
    1478:	e1520003 	cmp	r2, r3
    147c:	1a000007 	bne	14a0 <malloc+0x13c>
    1480:	e51b0010 	ldr	r0, [fp, #-16]
    1484:	ebffff94 	bl	12dc <morecore>
    1488:	e50b0008 	str	r0, [fp, #-8]
    148c:	e51b3008 	ldr	r3, [fp, #-8]
    1490:	e3530000 	cmp	r3, #0
    1494:	1a000001 	bne	14a0 <malloc+0x13c>
    1498:	e3a03000 	mov	r3, #0
    149c:	ea000005 	b	14b8 <malloc+0x154>
    14a0:	e51b3008 	ldr	r3, [fp, #-8]
    14a4:	e50b300c 	str	r3, [fp, #-12]
    14a8:	e51b3008 	ldr	r3, [fp, #-8]
    14ac:	e5933000 	ldr	r3, [r3]
    14b0:	e50b3008 	str	r3, [fp, #-8]
    14b4:	eaffffc8 	b	13dc <malloc+0x78>
    14b8:	e1a00003 	mov	r0, r3
    14bc:	e24bd004 	sub	sp, fp, #4
    14c0:	e8bd8800 	pop	{fp, pc}
    14c4:	000018fc 	.word	0x000018fc
    14c8:	000018f4 	.word	0x000018f4

000014cc <__udivsi3>:
    14cc:	e2512001 	subs	r2, r1, #1
    14d0:	012fff1e 	bxeq	lr
    14d4:	3a000036 	bcc	15b4 <__udivsi3+0xe8>
    14d8:	e1500001 	cmp	r0, r1
    14dc:	9a000022 	bls	156c <__udivsi3+0xa0>
    14e0:	e1110002 	tst	r1, r2
    14e4:	0a000023 	beq	1578 <__udivsi3+0xac>
    14e8:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    14ec:	01a01181 	lsleq	r1, r1, #3
    14f0:	03a03008 	moveq	r3, #8
    14f4:	13a03001 	movne	r3, #1
    14f8:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    14fc:	31510000 	cmpcc	r1, r0
    1500:	31a01201 	lslcc	r1, r1, #4
    1504:	31a03203 	lslcc	r3, r3, #4
    1508:	3afffffa 	bcc	14f8 <__udivsi3+0x2c>
    150c:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1510:	31510000 	cmpcc	r1, r0
    1514:	31a01081 	lslcc	r1, r1, #1
    1518:	31a03083 	lslcc	r3, r3, #1
    151c:	3afffffa 	bcc	150c <__udivsi3+0x40>
    1520:	e3a02000 	mov	r2, #0
    1524:	e1500001 	cmp	r0, r1
    1528:	20400001 	subcs	r0, r0, r1
    152c:	21822003 	orrcs	r2, r2, r3
    1530:	e15000a1 	cmp	r0, r1, lsr #1
    1534:	204000a1 	subcs	r0, r0, r1, lsr #1
    1538:	218220a3 	orrcs	r2, r2, r3, lsr #1
    153c:	e1500121 	cmp	r0, r1, lsr #2
    1540:	20400121 	subcs	r0, r0, r1, lsr #2
    1544:	21822123 	orrcs	r2, r2, r3, lsr #2
    1548:	e15001a1 	cmp	r0, r1, lsr #3
    154c:	204001a1 	subcs	r0, r0, r1, lsr #3
    1550:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1554:	e3500000 	cmp	r0, #0
    1558:	11b03223 	lsrsne	r3, r3, #4
    155c:	11a01221 	lsrne	r1, r1, #4
    1560:	1affffef 	bne	1524 <__udivsi3+0x58>
    1564:	e1a00002 	mov	r0, r2
    1568:	e12fff1e 	bx	lr
    156c:	03a00001 	moveq	r0, #1
    1570:	13a00000 	movne	r0, #0
    1574:	e12fff1e 	bx	lr
    1578:	e3510801 	cmp	r1, #65536	@ 0x10000
    157c:	21a01821 	lsrcs	r1, r1, #16
    1580:	23a02010 	movcs	r2, #16
    1584:	33a02000 	movcc	r2, #0
    1588:	e3510c01 	cmp	r1, #256	@ 0x100
    158c:	21a01421 	lsrcs	r1, r1, #8
    1590:	22822008 	addcs	r2, r2, #8
    1594:	e3510010 	cmp	r1, #16
    1598:	21a01221 	lsrcs	r1, r1, #4
    159c:	22822004 	addcs	r2, r2, #4
    15a0:	e3510004 	cmp	r1, #4
    15a4:	82822003 	addhi	r2, r2, #3
    15a8:	908220a1 	addls	r2, r2, r1, lsr #1
    15ac:	e1a00230 	lsr	r0, r0, r2
    15b0:	e12fff1e 	bx	lr
    15b4:	e3500000 	cmp	r0, #0
    15b8:	13e00000 	mvnne	r0, #0
    15bc:	ea000059 	b	1728 <__aeabi_idiv0>

000015c0 <__aeabi_uidivmod>:
    15c0:	e3510000 	cmp	r1, #0
    15c4:	0afffffa 	beq	15b4 <__udivsi3+0xe8>
    15c8:	e92d4003 	push	{r0, r1, lr}
    15cc:	ebffffbe 	bl	14cc <__udivsi3>
    15d0:	e8bd4006 	pop	{r1, r2, lr}
    15d4:	e0030092 	mul	r3, r2, r0
    15d8:	e0411003 	sub	r1, r1, r3
    15dc:	e12fff1e 	bx	lr

000015e0 <__divsi3>:
    15e0:	e3510000 	cmp	r1, #0
    15e4:	0a000043 	beq	16f8 <.divsi3_skip_div0_test+0x110>

000015e8 <.divsi3_skip_div0_test>:
    15e8:	e020c001 	eor	ip, r0, r1
    15ec:	42611000 	rsbmi	r1, r1, #0
    15f0:	e2512001 	subs	r2, r1, #1
    15f4:	0a000027 	beq	1698 <.divsi3_skip_div0_test+0xb0>
    15f8:	e1b03000 	movs	r3, r0
    15fc:	42603000 	rsbmi	r3, r0, #0
    1600:	e1530001 	cmp	r3, r1
    1604:	9a000026 	bls	16a4 <.divsi3_skip_div0_test+0xbc>
    1608:	e1110002 	tst	r1, r2
    160c:	0a000028 	beq	16b4 <.divsi3_skip_div0_test+0xcc>
    1610:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1614:	01a01181 	lsleq	r1, r1, #3
    1618:	03a02008 	moveq	r2, #8
    161c:	13a02001 	movne	r2, #1
    1620:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1624:	31510003 	cmpcc	r1, r3
    1628:	31a01201 	lslcc	r1, r1, #4
    162c:	31a02202 	lslcc	r2, r2, #4
    1630:	3afffffa 	bcc	1620 <.divsi3_skip_div0_test+0x38>
    1634:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1638:	31510003 	cmpcc	r1, r3
    163c:	31a01081 	lslcc	r1, r1, #1
    1640:	31a02082 	lslcc	r2, r2, #1
    1644:	3afffffa 	bcc	1634 <.divsi3_skip_div0_test+0x4c>
    1648:	e3a00000 	mov	r0, #0
    164c:	e1530001 	cmp	r3, r1
    1650:	20433001 	subcs	r3, r3, r1
    1654:	21800002 	orrcs	r0, r0, r2
    1658:	e15300a1 	cmp	r3, r1, lsr #1
    165c:	204330a1 	subcs	r3, r3, r1, lsr #1
    1660:	218000a2 	orrcs	r0, r0, r2, lsr #1
    1664:	e1530121 	cmp	r3, r1, lsr #2
    1668:	20433121 	subcs	r3, r3, r1, lsr #2
    166c:	21800122 	orrcs	r0, r0, r2, lsr #2
    1670:	e15301a1 	cmp	r3, r1, lsr #3
    1674:	204331a1 	subcs	r3, r3, r1, lsr #3
    1678:	218001a2 	orrcs	r0, r0, r2, lsr #3
    167c:	e3530000 	cmp	r3, #0
    1680:	11b02222 	lsrsne	r2, r2, #4
    1684:	11a01221 	lsrne	r1, r1, #4
    1688:	1affffef 	bne	164c <.divsi3_skip_div0_test+0x64>
    168c:	e35c0000 	cmp	ip, #0
    1690:	42600000 	rsbmi	r0, r0, #0
    1694:	e12fff1e 	bx	lr
    1698:	e13c0000 	teq	ip, r0
    169c:	42600000 	rsbmi	r0, r0, #0
    16a0:	e12fff1e 	bx	lr
    16a4:	33a00000 	movcc	r0, #0
    16a8:	01a00fcc 	asreq	r0, ip, #31
    16ac:	03800001 	orreq	r0, r0, #1
    16b0:	e12fff1e 	bx	lr
    16b4:	e3510801 	cmp	r1, #65536	@ 0x10000
    16b8:	21a01821 	lsrcs	r1, r1, #16
    16bc:	23a02010 	movcs	r2, #16
    16c0:	33a02000 	movcc	r2, #0
    16c4:	e3510c01 	cmp	r1, #256	@ 0x100
    16c8:	21a01421 	lsrcs	r1, r1, #8
    16cc:	22822008 	addcs	r2, r2, #8
    16d0:	e3510010 	cmp	r1, #16
    16d4:	21a01221 	lsrcs	r1, r1, #4
    16d8:	22822004 	addcs	r2, r2, #4
    16dc:	e3510004 	cmp	r1, #4
    16e0:	82822003 	addhi	r2, r2, #3
    16e4:	908220a1 	addls	r2, r2, r1, lsr #1
    16e8:	e35c0000 	cmp	ip, #0
    16ec:	e1a00233 	lsr	r0, r3, r2
    16f0:	42600000 	rsbmi	r0, r0, #0
    16f4:	e12fff1e 	bx	lr
    16f8:	e3500000 	cmp	r0, #0
    16fc:	c3e00102 	mvngt	r0, #-2147483648	@ 0x80000000
    1700:	b3a00102 	movlt	r0, #-2147483648	@ 0x80000000
    1704:	ea000007 	b	1728 <__aeabi_idiv0>

00001708 <__aeabi_idivmod>:
    1708:	e3510000 	cmp	r1, #0
    170c:	0afffff9 	beq	16f8 <.divsi3_skip_div0_test+0x110>
    1710:	e92d4003 	push	{r0, r1, lr}
    1714:	ebffffb3 	bl	15e8 <.divsi3_skip_div0_test>
    1718:	e8bd4006 	pop	{r1, r2, lr}
    171c:	e0030092 	mul	r3, r2, r0
    1720:	e0411003 	sub	r1, r1, r3
    1724:	e12fff1e 	bx	lr

00001728 <__aeabi_idiv0>:
    1728:	e12fff1e 	bx	lr
