
_sh:     file format elf32-littlearm


Disassembly of section .text:

00000000 <runcmd>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd028 	sub	sp, sp, #40	@ 0x28
       c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
      10:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
      14:	e3530000 	cmp	r3, #0
      18:	1a000000 	bne	20 <runcmd+0x20>
      1c:	eb00054a 	bl	154c <exit>
      20:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
      24:	e5933000 	ldr	r3, [r3]
      28:	e3530005 	cmp	r3, #5
      2c:	0a000087 	beq	250 <runcmd+0x250>
      30:	e3530005 	cmp	r3, #5
      34:	ca00000b 	bgt	68 <runcmd+0x68>
      38:	e3530004 	cmp	r3, #4
      3c:	0a00003b 	beq	130 <runcmd+0x130>
      40:	e3530004 	cmp	r3, #4
      44:	ca000007 	bgt	68 <runcmd+0x68>
      48:	e3530003 	cmp	r3, #3
      4c:	0a000046 	beq	16c <runcmd+0x16c>
      50:	e3530003 	cmp	r3, #3
      54:	ca000003 	bgt	68 <runcmd+0x68>
      58:	e3530001 	cmp	r3, #1
      5c:	0a000003 	beq	70 <runcmd+0x70>
      60:	e3530002 	cmp	r3, #2
      64:	0a000016 	beq	c4 <runcmd+0xc4>
      68:	e59f0210 	ldr	r0, [pc, #528]	@ 280 <runcmd+0x280>
      6c:	eb0000ea 	bl	41c <panic>
      70:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
      74:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
      78:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      7c:	e5933004 	ldr	r3, [r3, #4]
      80:	e3530000 	cmp	r3, #0
      84:	1a000000 	bne	8c <runcmd+0x8c>
      88:	eb00052f 	bl	154c <exit>
      8c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      90:	e5932004 	ldr	r2, [r3, #4]
      94:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      98:	e2833004 	add	r3, r3, #4
      9c:	e1a01003 	mov	r1, r3
      a0:	e1a00002 	mov	r0, r2
      a4:	eb000567 	bl	1648 <exec>
      a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      ac:	e5933004 	ldr	r3, [r3, #4]
      b0:	e1a02003 	mov	r2, r3
      b4:	e59f11c8 	ldr	r1, [pc, #456]	@ 284 <runcmd+0x284>
      b8:	e3a00002 	mov	r0, #2
      bc:	eb00065f 	bl	1a40 <printf>
      c0:	ea00006d 	b	27c <runcmd+0x27c>
      c4:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
      c8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      cc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      d0:	e5933014 	ldr	r3, [r3, #20]
      d4:	e1a00003 	mov	r0, r3
      d8:	eb000548 	bl	1600 <close>
      dc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      e0:	e5932008 	ldr	r2, [r3, #8]
      e4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      e8:	e5933010 	ldr	r3, [r3, #16]
      ec:	e1a01003 	mov	r1, r3
      f0:	e1a00002 	mov	r0, r2
      f4:	eb00055c 	bl	166c <open>
      f8:	e1a03000 	mov	r3, r0
      fc:	e3530000 	cmp	r3, #0
     100:	aa000006 	bge	120 <runcmd+0x120>
     104:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     108:	e5933008 	ldr	r3, [r3, #8]
     10c:	e1a02003 	mov	r2, r3
     110:	e59f1170 	ldr	r1, [pc, #368]	@ 288 <runcmd+0x288>
     114:	e3a00002 	mov	r0, #2
     118:	eb000648 	bl	1a40 <printf>
     11c:	eb00050a 	bl	154c <exit>
     120:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     124:	e5933004 	ldr	r3, [r3, #4]
     128:	e1a00003 	mov	r0, r3
     12c:	ebffffb3 	bl	0 <runcmd>
     130:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
     134:	e50b300c 	str	r3, [fp, #-12]
     138:	eb0000c1 	bl	444 <fork1>
     13c:	e1a03000 	mov	r3, r0
     140:	e3530000 	cmp	r3, #0
     144:	1a000003 	bne	158 <runcmd+0x158>
     148:	e51b300c 	ldr	r3, [fp, #-12]
     14c:	e5933004 	ldr	r3, [r3, #4]
     150:	e1a00003 	mov	r0, r3
     154:	ebffffa9 	bl	0 <runcmd>
     158:	eb000504 	bl	1570 <wait>
     15c:	e51b300c 	ldr	r3, [fp, #-12]
     160:	e5933008 	ldr	r3, [r3, #8]
     164:	e1a00003 	mov	r0, r3
     168:	ebffffa4 	bl	0 <runcmd>
     16c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
     170:	e50b3010 	str	r3, [fp, #-16]
     174:	e24b3020 	sub	r3, fp, #32
     178:	e1a00003 	mov	r0, r3
     17c:	eb000504 	bl	1594 <pipe>
     180:	e1a03000 	mov	r3, r0
     184:	e3530000 	cmp	r3, #0
     188:	aa000001 	bge	194 <runcmd+0x194>
     18c:	e59f00f8 	ldr	r0, [pc, #248]	@ 28c <runcmd+0x28c>
     190:	eb0000a1 	bl	41c <panic>
     194:	eb0000aa 	bl	444 <fork1>
     198:	e1a03000 	mov	r3, r0
     19c:	e3530000 	cmp	r3, #0
     1a0:	1a00000e 	bne	1e0 <runcmd+0x1e0>
     1a4:	e3a00001 	mov	r0, #1
     1a8:	eb000514 	bl	1600 <close>
     1ac:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     1b0:	e1a00003 	mov	r0, r3
     1b4:	eb00056b 	bl	1768 <dup>
     1b8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     1bc:	e1a00003 	mov	r0, r3
     1c0:	eb00050e 	bl	1600 <close>
     1c4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     1c8:	e1a00003 	mov	r0, r3
     1cc:	eb00050b 	bl	1600 <close>
     1d0:	e51b3010 	ldr	r3, [fp, #-16]
     1d4:	e5933004 	ldr	r3, [r3, #4]
     1d8:	e1a00003 	mov	r0, r3
     1dc:	ebffff87 	bl	0 <runcmd>
     1e0:	eb000097 	bl	444 <fork1>
     1e4:	e1a03000 	mov	r3, r0
     1e8:	e3530000 	cmp	r3, #0
     1ec:	1a00000e 	bne	22c <runcmd+0x22c>
     1f0:	e3a00000 	mov	r0, #0
     1f4:	eb000501 	bl	1600 <close>
     1f8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     1fc:	e1a00003 	mov	r0, r3
     200:	eb000558 	bl	1768 <dup>
     204:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     208:	e1a00003 	mov	r0, r3
     20c:	eb0004fb 	bl	1600 <close>
     210:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     214:	e1a00003 	mov	r0, r3
     218:	eb0004f8 	bl	1600 <close>
     21c:	e51b3010 	ldr	r3, [fp, #-16]
     220:	e5933008 	ldr	r3, [r3, #8]
     224:	e1a00003 	mov	r0, r3
     228:	ebffff74 	bl	0 <runcmd>
     22c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     230:	e1a00003 	mov	r0, r3
     234:	eb0004f1 	bl	1600 <close>
     238:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     23c:	e1a00003 	mov	r0, r3
     240:	eb0004ee 	bl	1600 <close>
     244:	eb0004c9 	bl	1570 <wait>
     248:	eb0004c8 	bl	1570 <wait>
     24c:	ea00000a 	b	27c <runcmd+0x27c>
     250:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
     254:	e50b3008 	str	r3, [fp, #-8]
     258:	eb000079 	bl	444 <fork1>
     25c:	e1a03000 	mov	r3, r0
     260:	e3530000 	cmp	r3, #0
     264:	1a000003 	bne	278 <runcmd+0x278>
     268:	e51b3008 	ldr	r3, [fp, #-8]
     26c:	e5933004 	ldr	r3, [r3, #4]
     270:	e1a00003 	mov	r0, r3
     274:	ebffff61 	bl	0 <runcmd>
     278:	e1a00000 	nop			@ (mov r0, r0)
     27c:	eb0004b2 	bl	154c <exit>
     280:	000020fc 	.word	0x000020fc
     284:	00002104 	.word	0x00002104
     288:	00002114 	.word	0x00002114
     28c:	00002124 	.word	0x00002124

00000290 <getcmd>:
     290:	e92d4800 	push	{fp, lr}
     294:	e28db004 	add	fp, sp, #4
     298:	e24dd008 	sub	sp, sp, #8
     29c:	e50b0008 	str	r0, [fp, #-8]
     2a0:	e50b100c 	str	r1, [fp, #-12]
     2a4:	e59f104c 	ldr	r1, [pc, #76]	@ 2f8 <getcmd+0x68>
     2a8:	e3a00002 	mov	r0, #2
     2ac:	eb0005e3 	bl	1a40 <printf>
     2b0:	e51b300c 	ldr	r3, [fp, #-12]
     2b4:	e1a02003 	mov	r2, r3
     2b8:	e3a01000 	mov	r1, #0
     2bc:	e51b0008 	ldr	r0, [fp, #-8]
     2c0:	eb0003af 	bl	1184 <memset>
     2c4:	e51b100c 	ldr	r1, [fp, #-12]
     2c8:	e51b0008 	ldr	r0, [fp, #-8]
     2cc:	eb000410 	bl	1314 <gets>
     2d0:	e51b3008 	ldr	r3, [fp, #-8]
     2d4:	e5d33000 	ldrb	r3, [r3]
     2d8:	e3530000 	cmp	r3, #0
     2dc:	1a000001 	bne	2e8 <getcmd+0x58>
     2e0:	e3e03000 	mvn	r3, #0
     2e4:	ea000000 	b	2ec <getcmd+0x5c>
     2e8:	e3a03000 	mov	r3, #0
     2ec:	e1a00003 	mov	r0, r3
     2f0:	e24bd004 	sub	sp, fp, #4
     2f4:	e8bd8800 	pop	{fp, pc}
     2f8:	0000212c 	.word	0x0000212c

000002fc <main>:
     2fc:	e92d4800 	push	{fp, lr}
     300:	e28db004 	add	fp, sp, #4
     304:	e24dd008 	sub	sp, sp, #8
     308:	ea000005 	b	324 <main+0x28>
     30c:	e51b3008 	ldr	r3, [fp, #-8]
     310:	e3530002 	cmp	r3, #2
     314:	da000002 	ble	324 <main+0x28>
     318:	e51b0008 	ldr	r0, [fp, #-8]
     31c:	eb0004b7 	bl	1600 <close>
     320:	ea000006 	b	340 <main+0x44>
     324:	e3a01002 	mov	r1, #2
     328:	e59f00dc 	ldr	r0, [pc, #220]	@ 40c <main+0x110>
     32c:	eb0004ce 	bl	166c <open>
     330:	e50b0008 	str	r0, [fp, #-8]
     334:	e51b3008 	ldr	r3, [fp, #-8]
     338:	e3530000 	cmp	r3, #0
     33c:	aafffff2 	bge	30c <main+0x10>
     340:	ea00002a 	b	3f0 <main+0xf4>
     344:	e59f30c4 	ldr	r3, [pc, #196]	@ 410 <main+0x114>
     348:	e5d33000 	ldrb	r3, [r3]
     34c:	e3530063 	cmp	r3, #99	@ 0x63
     350:	1a00001a 	bne	3c0 <main+0xc4>
     354:	e59f30b4 	ldr	r3, [pc, #180]	@ 410 <main+0x114>
     358:	e5d33001 	ldrb	r3, [r3, #1]
     35c:	e3530064 	cmp	r3, #100	@ 0x64
     360:	1a000016 	bne	3c0 <main+0xc4>
     364:	e59f30a4 	ldr	r3, [pc, #164]	@ 410 <main+0x114>
     368:	e5d33002 	ldrb	r3, [r3, #2]
     36c:	e3530020 	cmp	r3, #32
     370:	1a000012 	bne	3c0 <main+0xc4>
     374:	e59f0094 	ldr	r0, [pc, #148]	@ 410 <main+0x114>
     378:	eb00036c 	bl	1130 <strlen>
     37c:	e1a03000 	mov	r3, r0
     380:	e2433001 	sub	r3, r3, #1
     384:	e59f2084 	ldr	r2, [pc, #132]	@ 410 <main+0x114>
     388:	e3a01000 	mov	r1, #0
     38c:	e7c21003 	strb	r1, [r2, r3]
     390:	e59f307c 	ldr	r3, [pc, #124]	@ 414 <main+0x118>
     394:	e1a00003 	mov	r0, r3
     398:	eb0004e9 	bl	1744 <chdir>
     39c:	e1a03000 	mov	r3, r0
     3a0:	e3530000 	cmp	r3, #0
     3a4:	aa000010 	bge	3ec <main+0xf0>
     3a8:	e59f3064 	ldr	r3, [pc, #100]	@ 414 <main+0x118>
     3ac:	e1a02003 	mov	r2, r3
     3b0:	e59f1060 	ldr	r1, [pc, #96]	@ 418 <main+0x11c>
     3b4:	e3a00002 	mov	r0, #2
     3b8:	eb0005a0 	bl	1a40 <printf>
     3bc:	ea00000a 	b	3ec <main+0xf0>
     3c0:	eb00001f 	bl	444 <fork1>
     3c4:	e1a03000 	mov	r3, r0
     3c8:	e3530000 	cmp	r3, #0
     3cc:	1a000004 	bne	3e4 <main+0xe8>
     3d0:	e59f0038 	ldr	r0, [pc, #56]	@ 410 <main+0x114>
     3d4:	eb00015d 	bl	950 <parsecmd>
     3d8:	e1a03000 	mov	r3, r0
     3dc:	e1a00003 	mov	r0, r3
     3e0:	ebffff06 	bl	0 <runcmd>
     3e4:	eb000461 	bl	1570 <wait>
     3e8:	ea000000 	b	3f0 <main+0xf4>
     3ec:	e1a00000 	nop			@ (mov r0, r0)
     3f0:	e3a01064 	mov	r1, #100	@ 0x64
     3f4:	e59f0014 	ldr	r0, [pc, #20]	@ 410 <main+0x114>
     3f8:	ebffffa4 	bl	290 <getcmd>
     3fc:	e1a03000 	mov	r3, r0
     400:	e3530000 	cmp	r3, #0
     404:	aaffffce 	bge	344 <main+0x48>
     408:	eb00044f 	bl	154c <exit>
     40c:	00002130 	.word	0x00002130
     410:	0000220c 	.word	0x0000220c
     414:	0000220f 	.word	0x0000220f
     418:	00002138 	.word	0x00002138

0000041c <panic>:
     41c:	e92d4800 	push	{fp, lr}
     420:	e28db004 	add	fp, sp, #4
     424:	e24dd008 	sub	sp, sp, #8
     428:	e50b0008 	str	r0, [fp, #-8]
     42c:	e51b2008 	ldr	r2, [fp, #-8]
     430:	e59f1008 	ldr	r1, [pc, #8]	@ 440 <panic+0x24>
     434:	e3a00002 	mov	r0, #2
     438:	eb000580 	bl	1a40 <printf>
     43c:	eb000442 	bl	154c <exit>
     440:	00002148 	.word	0x00002148

00000444 <fork1>:
     444:	e92d4800 	push	{fp, lr}
     448:	e28db004 	add	fp, sp, #4
     44c:	e24dd008 	sub	sp, sp, #8
     450:	eb000434 	bl	1528 <fork>
     454:	e50b0008 	str	r0, [fp, #-8]
     458:	e51b3008 	ldr	r3, [fp, #-8]
     45c:	e3730001 	cmn	r3, #1
     460:	1a000001 	bne	46c <fork1+0x28>
     464:	e59f0010 	ldr	r0, [pc, #16]	@ 47c <fork1+0x38>
     468:	ebffffeb 	bl	41c <panic>
     46c:	e51b3008 	ldr	r3, [fp, #-8]
     470:	e1a00003 	mov	r0, r3
     474:	e24bd004 	sub	sp, fp, #4
     478:	e8bd8800 	pop	{fp, pc}
     47c:	0000214c 	.word	0x0000214c

00000480 <execcmd>:
     480:	e92d4800 	push	{fp, lr}
     484:	e28db004 	add	fp, sp, #4
     488:	e24dd008 	sub	sp, sp, #8
     48c:	e3a00054 	mov	r0, #84	@ 0x54
     490:	eb000679 	bl	1e7c <malloc>
     494:	e50b0008 	str	r0, [fp, #-8]
     498:	e3a02054 	mov	r2, #84	@ 0x54
     49c:	e3a01000 	mov	r1, #0
     4a0:	e51b0008 	ldr	r0, [fp, #-8]
     4a4:	eb000336 	bl	1184 <memset>
     4a8:	e51b3008 	ldr	r3, [fp, #-8]
     4ac:	e3a02001 	mov	r2, #1
     4b0:	e5832000 	str	r2, [r3]
     4b4:	e51b3008 	ldr	r3, [fp, #-8]
     4b8:	e1a00003 	mov	r0, r3
     4bc:	e24bd004 	sub	sp, fp, #4
     4c0:	e8bd8800 	pop	{fp, pc}

000004c4 <redircmd>:
     4c4:	e92d4800 	push	{fp, lr}
     4c8:	e28db004 	add	fp, sp, #4
     4cc:	e24dd018 	sub	sp, sp, #24
     4d0:	e50b0010 	str	r0, [fp, #-16]
     4d4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     4d8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     4dc:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     4e0:	e3a00018 	mov	r0, #24
     4e4:	eb000664 	bl	1e7c <malloc>
     4e8:	e50b0008 	str	r0, [fp, #-8]
     4ec:	e3a02018 	mov	r2, #24
     4f0:	e3a01000 	mov	r1, #0
     4f4:	e51b0008 	ldr	r0, [fp, #-8]
     4f8:	eb000321 	bl	1184 <memset>
     4fc:	e51b3008 	ldr	r3, [fp, #-8]
     500:	e3a02002 	mov	r2, #2
     504:	e5832000 	str	r2, [r3]
     508:	e51b3008 	ldr	r3, [fp, #-8]
     50c:	e51b2010 	ldr	r2, [fp, #-16]
     510:	e5832004 	str	r2, [r3, #4]
     514:	e51b3008 	ldr	r3, [fp, #-8]
     518:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     51c:	e5832008 	str	r2, [r3, #8]
     520:	e51b3008 	ldr	r3, [fp, #-8]
     524:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     528:	e583200c 	str	r2, [r3, #12]
     52c:	e51b3008 	ldr	r3, [fp, #-8]
     530:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     534:	e5832010 	str	r2, [r3, #16]
     538:	e51b3008 	ldr	r3, [fp, #-8]
     53c:	e59b2004 	ldr	r2, [fp, #4]
     540:	e5832014 	str	r2, [r3, #20]
     544:	e51b3008 	ldr	r3, [fp, #-8]
     548:	e1a00003 	mov	r0, r3
     54c:	e24bd004 	sub	sp, fp, #4
     550:	e8bd8800 	pop	{fp, pc}

00000554 <pipecmd>:
     554:	e92d4800 	push	{fp, lr}
     558:	e28db004 	add	fp, sp, #4
     55c:	e24dd010 	sub	sp, sp, #16
     560:	e50b0010 	str	r0, [fp, #-16]
     564:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     568:	e3a0000c 	mov	r0, #12
     56c:	eb000642 	bl	1e7c <malloc>
     570:	e50b0008 	str	r0, [fp, #-8]
     574:	e3a0200c 	mov	r2, #12
     578:	e3a01000 	mov	r1, #0
     57c:	e51b0008 	ldr	r0, [fp, #-8]
     580:	eb0002ff 	bl	1184 <memset>
     584:	e51b3008 	ldr	r3, [fp, #-8]
     588:	e3a02003 	mov	r2, #3
     58c:	e5832000 	str	r2, [r3]
     590:	e51b3008 	ldr	r3, [fp, #-8]
     594:	e51b2010 	ldr	r2, [fp, #-16]
     598:	e5832004 	str	r2, [r3, #4]
     59c:	e51b3008 	ldr	r3, [fp, #-8]
     5a0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     5a4:	e5832008 	str	r2, [r3, #8]
     5a8:	e51b3008 	ldr	r3, [fp, #-8]
     5ac:	e1a00003 	mov	r0, r3
     5b0:	e24bd004 	sub	sp, fp, #4
     5b4:	e8bd8800 	pop	{fp, pc}

000005b8 <listcmd>:
     5b8:	e92d4800 	push	{fp, lr}
     5bc:	e28db004 	add	fp, sp, #4
     5c0:	e24dd010 	sub	sp, sp, #16
     5c4:	e50b0010 	str	r0, [fp, #-16]
     5c8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     5cc:	e3a0000c 	mov	r0, #12
     5d0:	eb000629 	bl	1e7c <malloc>
     5d4:	e50b0008 	str	r0, [fp, #-8]
     5d8:	e3a0200c 	mov	r2, #12
     5dc:	e3a01000 	mov	r1, #0
     5e0:	e51b0008 	ldr	r0, [fp, #-8]
     5e4:	eb0002e6 	bl	1184 <memset>
     5e8:	e51b3008 	ldr	r3, [fp, #-8]
     5ec:	e3a02004 	mov	r2, #4
     5f0:	e5832000 	str	r2, [r3]
     5f4:	e51b3008 	ldr	r3, [fp, #-8]
     5f8:	e51b2010 	ldr	r2, [fp, #-16]
     5fc:	e5832004 	str	r2, [r3, #4]
     600:	e51b3008 	ldr	r3, [fp, #-8]
     604:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     608:	e5832008 	str	r2, [r3, #8]
     60c:	e51b3008 	ldr	r3, [fp, #-8]
     610:	e1a00003 	mov	r0, r3
     614:	e24bd004 	sub	sp, fp, #4
     618:	e8bd8800 	pop	{fp, pc}

0000061c <backcmd>:
     61c:	e92d4800 	push	{fp, lr}
     620:	e28db004 	add	fp, sp, #4
     624:	e24dd010 	sub	sp, sp, #16
     628:	e50b0010 	str	r0, [fp, #-16]
     62c:	e3a00008 	mov	r0, #8
     630:	eb000611 	bl	1e7c <malloc>
     634:	e50b0008 	str	r0, [fp, #-8]
     638:	e3a02008 	mov	r2, #8
     63c:	e3a01000 	mov	r1, #0
     640:	e51b0008 	ldr	r0, [fp, #-8]
     644:	eb0002ce 	bl	1184 <memset>
     648:	e51b3008 	ldr	r3, [fp, #-8]
     64c:	e3a02005 	mov	r2, #5
     650:	e5832000 	str	r2, [r3]
     654:	e51b3008 	ldr	r3, [fp, #-8]
     658:	e51b2010 	ldr	r2, [fp, #-16]
     65c:	e5832004 	str	r2, [r3, #4]
     660:	e51b3008 	ldr	r3, [fp, #-8]
     664:	e1a00003 	mov	r0, r3
     668:	e24bd004 	sub	sp, fp, #4
     66c:	e8bd8800 	pop	{fp, pc}

00000670 <gettoken>:
     670:	e92d4800 	push	{fp, lr}
     674:	e28db004 	add	fp, sp, #4
     678:	e24dd018 	sub	sp, sp, #24
     67c:	e50b0010 	str	r0, [fp, #-16]
     680:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     684:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     688:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     68c:	e51b3010 	ldr	r3, [fp, #-16]
     690:	e5933000 	ldr	r3, [r3]
     694:	e50b3008 	str	r3, [fp, #-8]
     698:	ea000002 	b	6a8 <gettoken+0x38>
     69c:	e51b3008 	ldr	r3, [fp, #-8]
     6a0:	e2833001 	add	r3, r3, #1
     6a4:	e50b3008 	str	r3, [fp, #-8]
     6a8:	e51b2008 	ldr	r2, [fp, #-8]
     6ac:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     6b0:	e1520003 	cmp	r2, r3
     6b4:	2a000007 	bcs	6d8 <gettoken+0x68>
     6b8:	e51b3008 	ldr	r3, [fp, #-8]
     6bc:	e5d33000 	ldrb	r3, [r3]
     6c0:	e1a01003 	mov	r1, r3
     6c4:	e59f01c0 	ldr	r0, [pc, #448]	@ 88c <gettoken+0x21c>
     6c8:	eb0002f7 	bl	12ac <strchr>
     6cc:	e1a03000 	mov	r3, r0
     6d0:	e3530000 	cmp	r3, #0
     6d4:	1afffff0 	bne	69c <gettoken+0x2c>
     6d8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6dc:	e3530000 	cmp	r3, #0
     6e0:	0a000002 	beq	6f0 <gettoken+0x80>
     6e4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6e8:	e51b2008 	ldr	r2, [fp, #-8]
     6ec:	e5832000 	str	r2, [r3]
     6f0:	e51b3008 	ldr	r3, [fp, #-8]
     6f4:	e5d33000 	ldrb	r3, [r3]
     6f8:	e50b300c 	str	r3, [fp, #-12]
     6fc:	e51b3008 	ldr	r3, [fp, #-8]
     700:	e5d33000 	ldrb	r3, [r3]
     704:	e353007c 	cmp	r3, #124	@ 0x7c
     708:	0a000011 	beq	754 <gettoken+0xe4>
     70c:	e353007c 	cmp	r3, #124	@ 0x7c
     710:	ca000020 	bgt	798 <gettoken+0x128>
     714:	e353003e 	cmp	r3, #62	@ 0x3e
     718:	0a000011 	beq	764 <gettoken+0xf4>
     71c:	e353003e 	cmp	r3, #62	@ 0x3e
     720:	ca00001c 	bgt	798 <gettoken+0x128>
     724:	e353003c 	cmp	r3, #60	@ 0x3c
     728:	ca00001a 	bgt	798 <gettoken+0x128>
     72c:	e353003b 	cmp	r3, #59	@ 0x3b
     730:	aa000007 	bge	754 <gettoken+0xe4>
     734:	e3530029 	cmp	r3, #41	@ 0x29
     738:	ca000016 	bgt	798 <gettoken+0x128>
     73c:	e3530028 	cmp	r3, #40	@ 0x28
     740:	aa000003 	bge	754 <gettoken+0xe4>
     744:	e3530000 	cmp	r3, #0
     748:	0a00002d 	beq	804 <gettoken+0x194>
     74c:	e3530026 	cmp	r3, #38	@ 0x26
     750:	1a000010 	bne	798 <gettoken+0x128>
     754:	e51b3008 	ldr	r3, [fp, #-8]
     758:	e2833001 	add	r3, r3, #1
     75c:	e50b3008 	str	r3, [fp, #-8]
     760:	ea00002c 	b	818 <gettoken+0x1a8>
     764:	e51b3008 	ldr	r3, [fp, #-8]
     768:	e2833001 	add	r3, r3, #1
     76c:	e50b3008 	str	r3, [fp, #-8]
     770:	e51b3008 	ldr	r3, [fp, #-8]
     774:	e5d33000 	ldrb	r3, [r3]
     778:	e353003e 	cmp	r3, #62	@ 0x3e
     77c:	1a000022 	bne	80c <gettoken+0x19c>
     780:	e3a0302b 	mov	r3, #43	@ 0x2b
     784:	e50b300c 	str	r3, [fp, #-12]
     788:	e51b3008 	ldr	r3, [fp, #-8]
     78c:	e2833001 	add	r3, r3, #1
     790:	e50b3008 	str	r3, [fp, #-8]
     794:	ea00001c 	b	80c <gettoken+0x19c>
     798:	e3a03061 	mov	r3, #97	@ 0x61
     79c:	e50b300c 	str	r3, [fp, #-12]
     7a0:	ea000002 	b	7b0 <gettoken+0x140>
     7a4:	e51b3008 	ldr	r3, [fp, #-8]
     7a8:	e2833001 	add	r3, r3, #1
     7ac:	e50b3008 	str	r3, [fp, #-8]
     7b0:	e51b2008 	ldr	r2, [fp, #-8]
     7b4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     7b8:	e1520003 	cmp	r2, r3
     7bc:	2a000014 	bcs	814 <gettoken+0x1a4>
     7c0:	e51b3008 	ldr	r3, [fp, #-8]
     7c4:	e5d33000 	ldrb	r3, [r3]
     7c8:	e1a01003 	mov	r1, r3
     7cc:	e59f00b8 	ldr	r0, [pc, #184]	@ 88c <gettoken+0x21c>
     7d0:	eb0002b5 	bl	12ac <strchr>
     7d4:	e1a03000 	mov	r3, r0
     7d8:	e3530000 	cmp	r3, #0
     7dc:	1a00000c 	bne	814 <gettoken+0x1a4>
     7e0:	e51b3008 	ldr	r3, [fp, #-8]
     7e4:	e5d33000 	ldrb	r3, [r3]
     7e8:	e1a01003 	mov	r1, r3
     7ec:	e59f009c 	ldr	r0, [pc, #156]	@ 890 <gettoken+0x220>
     7f0:	eb0002ad 	bl	12ac <strchr>
     7f4:	e1a03000 	mov	r3, r0
     7f8:	e3530000 	cmp	r3, #0
     7fc:	0affffe8 	beq	7a4 <gettoken+0x134>
     800:	ea000003 	b	814 <gettoken+0x1a4>
     804:	e1a00000 	nop			@ (mov r0, r0)
     808:	ea000002 	b	818 <gettoken+0x1a8>
     80c:	e1a00000 	nop			@ (mov r0, r0)
     810:	ea000000 	b	818 <gettoken+0x1a8>
     814:	e1a00000 	nop			@ (mov r0, r0)
     818:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     81c:	e3530000 	cmp	r3, #0
     820:	0a000006 	beq	840 <gettoken+0x1d0>
     824:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     828:	e51b2008 	ldr	r2, [fp, #-8]
     82c:	e5832000 	str	r2, [r3]
     830:	ea000002 	b	840 <gettoken+0x1d0>
     834:	e51b3008 	ldr	r3, [fp, #-8]
     838:	e2833001 	add	r3, r3, #1
     83c:	e50b3008 	str	r3, [fp, #-8]
     840:	e51b2008 	ldr	r2, [fp, #-8]
     844:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     848:	e1520003 	cmp	r2, r3
     84c:	2a000007 	bcs	870 <gettoken+0x200>
     850:	e51b3008 	ldr	r3, [fp, #-8]
     854:	e5d33000 	ldrb	r3, [r3]
     858:	e1a01003 	mov	r1, r3
     85c:	e59f0028 	ldr	r0, [pc, #40]	@ 88c <gettoken+0x21c>
     860:	eb000291 	bl	12ac <strchr>
     864:	e1a03000 	mov	r3, r0
     868:	e3530000 	cmp	r3, #0
     86c:	1afffff0 	bne	834 <gettoken+0x1c4>
     870:	e51b3010 	ldr	r3, [fp, #-16]
     874:	e51b2008 	ldr	r2, [fp, #-8]
     878:	e5832000 	str	r2, [r3]
     87c:	e51b300c 	ldr	r3, [fp, #-12]
     880:	e1a00003 	mov	r0, r3
     884:	e24bd004 	sub	sp, fp, #4
     888:	e8bd8800 	pop	{fp, pc}
     88c:	000021e8 	.word	0x000021e8
     890:	000021f0 	.word	0x000021f0

00000894 <peek>:
     894:	e92d4800 	push	{fp, lr}
     898:	e28db004 	add	fp, sp, #4
     89c:	e24dd018 	sub	sp, sp, #24
     8a0:	e50b0010 	str	r0, [fp, #-16]
     8a4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     8a8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     8ac:	e51b3010 	ldr	r3, [fp, #-16]
     8b0:	e5933000 	ldr	r3, [r3]
     8b4:	e50b3008 	str	r3, [fp, #-8]
     8b8:	ea000002 	b	8c8 <peek+0x34>
     8bc:	e51b3008 	ldr	r3, [fp, #-8]
     8c0:	e2833001 	add	r3, r3, #1
     8c4:	e50b3008 	str	r3, [fp, #-8]
     8c8:	e51b2008 	ldr	r2, [fp, #-8]
     8cc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     8d0:	e1520003 	cmp	r2, r3
     8d4:	2a000007 	bcs	8f8 <peek+0x64>
     8d8:	e51b3008 	ldr	r3, [fp, #-8]
     8dc:	e5d33000 	ldrb	r3, [r3]
     8e0:	e1a01003 	mov	r1, r3
     8e4:	e59f0060 	ldr	r0, [pc, #96]	@ 94c <peek+0xb8>
     8e8:	eb00026f 	bl	12ac <strchr>
     8ec:	e1a03000 	mov	r3, r0
     8f0:	e3530000 	cmp	r3, #0
     8f4:	1afffff0 	bne	8bc <peek+0x28>
     8f8:	e51b3010 	ldr	r3, [fp, #-16]
     8fc:	e51b2008 	ldr	r2, [fp, #-8]
     900:	e5832000 	str	r2, [r3]
     904:	e51b3008 	ldr	r3, [fp, #-8]
     908:	e5d33000 	ldrb	r3, [r3]
     90c:	e3530000 	cmp	r3, #0
     910:	0a000009 	beq	93c <peek+0xa8>
     914:	e51b3008 	ldr	r3, [fp, #-8]
     918:	e5d33000 	ldrb	r3, [r3]
     91c:	e1a01003 	mov	r1, r3
     920:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
     924:	eb000260 	bl	12ac <strchr>
     928:	e1a03000 	mov	r3, r0
     92c:	e3530000 	cmp	r3, #0
     930:	0a000001 	beq	93c <peek+0xa8>
     934:	e3a03001 	mov	r3, #1
     938:	ea000000 	b	940 <peek+0xac>
     93c:	e3a03000 	mov	r3, #0
     940:	e1a00003 	mov	r0, r3
     944:	e24bd004 	sub	sp, fp, #4
     948:	e8bd8800 	pop	{fp, pc}
     94c:	000021e8 	.word	0x000021e8

00000950 <parsecmd>:
     950:	e92d4810 	push	{r4, fp, lr}
     954:	e28db008 	add	fp, sp, #8
     958:	e24dd014 	sub	sp, sp, #20
     95c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     960:	e51b4018 	ldr	r4, [fp, #-24]	@ 0xffffffe8
     964:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     968:	e1a00003 	mov	r0, r3
     96c:	eb0001ef 	bl	1130 <strlen>
     970:	e1a03000 	mov	r3, r0
     974:	e0843003 	add	r3, r4, r3
     978:	e50b3010 	str	r3, [fp, #-16]
     97c:	e24b3018 	sub	r3, fp, #24
     980:	e51b1010 	ldr	r1, [fp, #-16]
     984:	e1a00003 	mov	r0, r3
     988:	eb000019 	bl	9f4 <parseline>
     98c:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
     990:	e24b3018 	sub	r3, fp, #24
     994:	e59f204c 	ldr	r2, [pc, #76]	@ 9e8 <parsecmd+0x98>
     998:	e51b1010 	ldr	r1, [fp, #-16]
     99c:	e1a00003 	mov	r0, r3
     9a0:	ebffffbb 	bl	894 <peek>
     9a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     9a8:	e51b2010 	ldr	r2, [fp, #-16]
     9ac:	e1520003 	cmp	r2, r3
     9b0:	0a000006 	beq	9d0 <parsecmd+0x80>
     9b4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     9b8:	e1a02003 	mov	r2, r3
     9bc:	e59f1028 	ldr	r1, [pc, #40]	@ 9ec <parsecmd+0x9c>
     9c0:	e3a00002 	mov	r0, #2
     9c4:	eb00041d 	bl	1a40 <printf>
     9c8:	e59f0020 	ldr	r0, [pc, #32]	@ 9f0 <parsecmd+0xa0>
     9cc:	ebfffe92 	bl	41c <panic>
     9d0:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
     9d4:	eb00013d 	bl	ed0 <nulterminate>
     9d8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     9dc:	e1a00003 	mov	r0, r3
     9e0:	e24bd008 	sub	sp, fp, #8
     9e4:	e8bd8810 	pop	{r4, fp, pc}
     9e8:	00002154 	.word	0x00002154
     9ec:	00002158 	.word	0x00002158
     9f0:	00002168 	.word	0x00002168

000009f4 <parseline>:
     9f4:	e92d4800 	push	{fp, lr}
     9f8:	e28db004 	add	fp, sp, #4
     9fc:	e24dd010 	sub	sp, sp, #16
     a00:	e50b0010 	str	r0, [fp, #-16]
     a04:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     a08:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     a0c:	e51b0010 	ldr	r0, [fp, #-16]
     a10:	eb00002a 	bl	ac0 <parsepipe>
     a14:	e50b0008 	str	r0, [fp, #-8]
     a18:	ea000007 	b	a3c <parseline+0x48>
     a1c:	e3a03000 	mov	r3, #0
     a20:	e3a02000 	mov	r2, #0
     a24:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     a28:	e51b0010 	ldr	r0, [fp, #-16]
     a2c:	ebffff0f 	bl	670 <gettoken>
     a30:	e51b0008 	ldr	r0, [fp, #-8]
     a34:	ebfffef8 	bl	61c <backcmd>
     a38:	e50b0008 	str	r0, [fp, #-8]
     a3c:	e59f2074 	ldr	r2, [pc, #116]	@ ab8 <parseline+0xc4>
     a40:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     a44:	e51b0010 	ldr	r0, [fp, #-16]
     a48:	ebffff91 	bl	894 <peek>
     a4c:	e1a03000 	mov	r3, r0
     a50:	e3530000 	cmp	r3, #0
     a54:	1afffff0 	bne	a1c <parseline+0x28>
     a58:	e59f205c 	ldr	r2, [pc, #92]	@ abc <parseline+0xc8>
     a5c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     a60:	e51b0010 	ldr	r0, [fp, #-16]
     a64:	ebffff8a 	bl	894 <peek>
     a68:	e1a03000 	mov	r3, r0
     a6c:	e3530000 	cmp	r3, #0
     a70:	0a00000c 	beq	aa8 <parseline+0xb4>
     a74:	e3a03000 	mov	r3, #0
     a78:	e3a02000 	mov	r2, #0
     a7c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     a80:	e51b0010 	ldr	r0, [fp, #-16]
     a84:	ebfffef9 	bl	670 <gettoken>
     a88:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     a8c:	e51b0010 	ldr	r0, [fp, #-16]
     a90:	ebffffd7 	bl	9f4 <parseline>
     a94:	e1a03000 	mov	r3, r0
     a98:	e1a01003 	mov	r1, r3
     a9c:	e51b0008 	ldr	r0, [fp, #-8]
     aa0:	ebfffec4 	bl	5b8 <listcmd>
     aa4:	e50b0008 	str	r0, [fp, #-8]
     aa8:	e51b3008 	ldr	r3, [fp, #-8]
     aac:	e1a00003 	mov	r0, r3
     ab0:	e24bd004 	sub	sp, fp, #4
     ab4:	e8bd8800 	pop	{fp, pc}
     ab8:	00002170 	.word	0x00002170
     abc:	00002174 	.word	0x00002174

00000ac0 <parsepipe>:
     ac0:	e92d4800 	push	{fp, lr}
     ac4:	e28db004 	add	fp, sp, #4
     ac8:	e24dd010 	sub	sp, sp, #16
     acc:	e50b0010 	str	r0, [fp, #-16]
     ad0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     ad4:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     ad8:	e51b0010 	ldr	r0, [fp, #-16]
     adc:	eb000098 	bl	d44 <parseexec>
     ae0:	e50b0008 	str	r0, [fp, #-8]
     ae4:	e59f2058 	ldr	r2, [pc, #88]	@ b44 <parsepipe+0x84>
     ae8:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     aec:	e51b0010 	ldr	r0, [fp, #-16]
     af0:	ebffff67 	bl	894 <peek>
     af4:	e1a03000 	mov	r3, r0
     af8:	e3530000 	cmp	r3, #0
     afc:	0a00000c 	beq	b34 <parsepipe+0x74>
     b00:	e3a03000 	mov	r3, #0
     b04:	e3a02000 	mov	r2, #0
     b08:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     b0c:	e51b0010 	ldr	r0, [fp, #-16]
     b10:	ebfffed6 	bl	670 <gettoken>
     b14:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     b18:	e51b0010 	ldr	r0, [fp, #-16]
     b1c:	ebffffe7 	bl	ac0 <parsepipe>
     b20:	e1a03000 	mov	r3, r0
     b24:	e1a01003 	mov	r1, r3
     b28:	e51b0008 	ldr	r0, [fp, #-8]
     b2c:	ebfffe88 	bl	554 <pipecmd>
     b30:	e50b0008 	str	r0, [fp, #-8]
     b34:	e51b3008 	ldr	r3, [fp, #-8]
     b38:	e1a00003 	mov	r0, r3
     b3c:	e24bd004 	sub	sp, fp, #4
     b40:	e8bd8800 	pop	{fp, pc}
     b44:	00002178 	.word	0x00002178

00000b48 <parseredirs>:
     b48:	e92d4800 	push	{fp, lr}
     b4c:	e28db004 	add	fp, sp, #4
     b50:	e24dd028 	sub	sp, sp, #40	@ 0x28
     b54:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     b58:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     b5c:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     b60:	ea000037 	b	c44 <parseredirs+0xfc>
     b64:	e3a03000 	mov	r3, #0
     b68:	e3a02000 	mov	r2, #0
     b6c:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
     b70:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
     b74:	ebfffebd 	bl	670 <gettoken>
     b78:	e50b0008 	str	r0, [fp, #-8]
     b7c:	e24b3010 	sub	r3, fp, #16
     b80:	e24b200c 	sub	r2, fp, #12
     b84:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
     b88:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
     b8c:	ebfffeb7 	bl	670 <gettoken>
     b90:	e1a03000 	mov	r3, r0
     b94:	e3530061 	cmp	r3, #97	@ 0x61
     b98:	0a000001 	beq	ba4 <parseredirs+0x5c>
     b9c:	e59f00cc 	ldr	r0, [pc, #204]	@ c70 <parseredirs+0x128>
     ba0:	ebfffe1d 	bl	41c <panic>
     ba4:	e51b3008 	ldr	r3, [fp, #-8]
     ba8:	e353003e 	cmp	r3, #62	@ 0x3e
     bac:	0a000012 	beq	bfc <parseredirs+0xb4>
     bb0:	e51b3008 	ldr	r3, [fp, #-8]
     bb4:	e353003e 	cmp	r3, #62	@ 0x3e
     bb8:	ca000021 	bgt	c44 <parseredirs+0xfc>
     bbc:	e51b3008 	ldr	r3, [fp, #-8]
     bc0:	e353002b 	cmp	r3, #43	@ 0x2b
     bc4:	0a000015 	beq	c20 <parseredirs+0xd8>
     bc8:	e51b3008 	ldr	r3, [fp, #-8]
     bcc:	e353003c 	cmp	r3, #60	@ 0x3c
     bd0:	0a000000 	beq	bd8 <parseredirs+0x90>
     bd4:	ea00001a 	b	c44 <parseredirs+0xfc>
     bd8:	e51b100c 	ldr	r1, [fp, #-12]
     bdc:	e51b2010 	ldr	r2, [fp, #-16]
     be0:	e3a03000 	mov	r3, #0
     be4:	e58d3000 	str	r3, [sp]
     be8:	e3a03000 	mov	r3, #0
     bec:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
     bf0:	ebfffe33 	bl	4c4 <redircmd>
     bf4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     bf8:	ea000011 	b	c44 <parseredirs+0xfc>
     bfc:	e51b100c 	ldr	r1, [fp, #-12]
     c00:	e51b2010 	ldr	r2, [fp, #-16]
     c04:	e3a03001 	mov	r3, #1
     c08:	e58d3000 	str	r3, [sp]
     c0c:	e59f3060 	ldr	r3, [pc, #96]	@ c74 <parseredirs+0x12c>
     c10:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
     c14:	ebfffe2a 	bl	4c4 <redircmd>
     c18:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     c1c:	ea000008 	b	c44 <parseredirs+0xfc>
     c20:	e51b100c 	ldr	r1, [fp, #-12]
     c24:	e51b2010 	ldr	r2, [fp, #-16]
     c28:	e3a03001 	mov	r3, #1
     c2c:	e58d3000 	str	r3, [sp]
     c30:	e59f303c 	ldr	r3, [pc, #60]	@ c74 <parseredirs+0x12c>
     c34:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
     c38:	ebfffe21 	bl	4c4 <redircmd>
     c3c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     c40:	e1a00000 	nop			@ (mov r0, r0)
     c44:	e59f202c 	ldr	r2, [pc, #44]	@ c78 <parseredirs+0x130>
     c48:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
     c4c:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
     c50:	ebffff0f 	bl	894 <peek>
     c54:	e1a03000 	mov	r3, r0
     c58:	e3530000 	cmp	r3, #0
     c5c:	1affffc0 	bne	b64 <parseredirs+0x1c>
     c60:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c64:	e1a00003 	mov	r0, r3
     c68:	e24bd004 	sub	sp, fp, #4
     c6c:	e8bd8800 	pop	{fp, pc}
     c70:	0000217c 	.word	0x0000217c
     c74:	00000201 	.word	0x00000201
     c78:	0000219c 	.word	0x0000219c

00000c7c <parseblock>:
     c7c:	e92d4800 	push	{fp, lr}
     c80:	e28db004 	add	fp, sp, #4
     c84:	e24dd010 	sub	sp, sp, #16
     c88:	e50b0010 	str	r0, [fp, #-16]
     c8c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     c90:	e59f209c 	ldr	r2, [pc, #156]	@ d34 <parseblock+0xb8>
     c94:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     c98:	e51b0010 	ldr	r0, [fp, #-16]
     c9c:	ebfffefc 	bl	894 <peek>
     ca0:	e1a03000 	mov	r3, r0
     ca4:	e3530000 	cmp	r3, #0
     ca8:	1a000001 	bne	cb4 <parseblock+0x38>
     cac:	e59f0084 	ldr	r0, [pc, #132]	@ d38 <parseblock+0xbc>
     cb0:	ebfffdd9 	bl	41c <panic>
     cb4:	e3a03000 	mov	r3, #0
     cb8:	e3a02000 	mov	r2, #0
     cbc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     cc0:	e51b0010 	ldr	r0, [fp, #-16]
     cc4:	ebfffe69 	bl	670 <gettoken>
     cc8:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     ccc:	e51b0010 	ldr	r0, [fp, #-16]
     cd0:	ebffff47 	bl	9f4 <parseline>
     cd4:	e50b0008 	str	r0, [fp, #-8]
     cd8:	e59f205c 	ldr	r2, [pc, #92]	@ d3c <parseblock+0xc0>
     cdc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     ce0:	e51b0010 	ldr	r0, [fp, #-16]
     ce4:	ebfffeea 	bl	894 <peek>
     ce8:	e1a03000 	mov	r3, r0
     cec:	e3530000 	cmp	r3, #0
     cf0:	1a000001 	bne	cfc <parseblock+0x80>
     cf4:	e59f0044 	ldr	r0, [pc, #68]	@ d40 <parseblock+0xc4>
     cf8:	ebfffdc7 	bl	41c <panic>
     cfc:	e3a03000 	mov	r3, #0
     d00:	e3a02000 	mov	r2, #0
     d04:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     d08:	e51b0010 	ldr	r0, [fp, #-16]
     d0c:	ebfffe57 	bl	670 <gettoken>
     d10:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     d14:	e51b1010 	ldr	r1, [fp, #-16]
     d18:	e51b0008 	ldr	r0, [fp, #-8]
     d1c:	ebffff89 	bl	b48 <parseredirs>
     d20:	e50b0008 	str	r0, [fp, #-8]
     d24:	e51b3008 	ldr	r3, [fp, #-8]
     d28:	e1a00003 	mov	r0, r3
     d2c:	e24bd004 	sub	sp, fp, #4
     d30:	e8bd8800 	pop	{fp, pc}
     d34:	000021a0 	.word	0x000021a0
     d38:	000021a4 	.word	0x000021a4
     d3c:	000021b0 	.word	0x000021b0
     d40:	000021b4 	.word	0x000021b4

00000d44 <parseexec>:
     d44:	e92d4800 	push	{fp, lr}
     d48:	e28db004 	add	fp, sp, #4
     d4c:	e24dd020 	sub	sp, sp, #32
     d50:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
     d54:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
     d58:	e59f2160 	ldr	r2, [pc, #352]	@ ec0 <parseexec+0x17c>
     d5c:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
     d60:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
     d64:	ebfffeca 	bl	894 <peek>
     d68:	e1a03000 	mov	r3, r0
     d6c:	e3530000 	cmp	r3, #0
     d70:	0a000004 	beq	d88 <parseexec+0x44>
     d74:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
     d78:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
     d7c:	ebffffbe 	bl	c7c <parseblock>
     d80:	e1a03000 	mov	r3, r0
     d84:	ea00004a 	b	eb4 <parseexec+0x170>
     d88:	ebfffdbc 	bl	480 <execcmd>
     d8c:	e50b000c 	str	r0, [fp, #-12]
     d90:	e51b300c 	ldr	r3, [fp, #-12]
     d94:	e50b3010 	str	r3, [fp, #-16]
     d98:	e3a03000 	mov	r3, #0
     d9c:	e50b3008 	str	r3, [fp, #-8]
     da0:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
     da4:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
     da8:	e51b000c 	ldr	r0, [fp, #-12]
     dac:	ebffff65 	bl	b48 <parseredirs>
     db0:	e50b000c 	str	r0, [fp, #-12]
     db4:	ea000027 	b	e58 <parseexec+0x114>
     db8:	e24b301c 	sub	r3, fp, #28
     dbc:	e24b2018 	sub	r2, fp, #24
     dc0:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
     dc4:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
     dc8:	ebfffe28 	bl	670 <gettoken>
     dcc:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
     dd0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     dd4:	e3530000 	cmp	r3, #0
     dd8:	0a000026 	beq	e78 <parseexec+0x134>
     ddc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     de0:	e3530061 	cmp	r3, #97	@ 0x61
     de4:	0a000001 	beq	df0 <parseexec+0xac>
     de8:	e59f00d4 	ldr	r0, [pc, #212]	@ ec4 <parseexec+0x180>
     dec:	ebfffd8a 	bl	41c <panic>
     df0:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     df4:	e51b1010 	ldr	r1, [fp, #-16]
     df8:	e51b3008 	ldr	r3, [fp, #-8]
     dfc:	e1a03103 	lsl	r3, r3, #2
     e00:	e0813003 	add	r3, r1, r3
     e04:	e5832004 	str	r2, [r3, #4]
     e08:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     e0c:	e51b1010 	ldr	r1, [fp, #-16]
     e10:	e51b3008 	ldr	r3, [fp, #-8]
     e14:	e283300a 	add	r3, r3, #10
     e18:	e1a03103 	lsl	r3, r3, #2
     e1c:	e0813003 	add	r3, r1, r3
     e20:	e5832004 	str	r2, [r3, #4]
     e24:	e51b3008 	ldr	r3, [fp, #-8]
     e28:	e2833001 	add	r3, r3, #1
     e2c:	e50b3008 	str	r3, [fp, #-8]
     e30:	e51b3008 	ldr	r3, [fp, #-8]
     e34:	e3530009 	cmp	r3, #9
     e38:	da000001 	ble	e44 <parseexec+0x100>
     e3c:	e59f0084 	ldr	r0, [pc, #132]	@ ec8 <parseexec+0x184>
     e40:	ebfffd75 	bl	41c <panic>
     e44:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
     e48:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
     e4c:	e51b000c 	ldr	r0, [fp, #-12]
     e50:	ebffff3c 	bl	b48 <parseredirs>
     e54:	e50b000c 	str	r0, [fp, #-12]
     e58:	e59f206c 	ldr	r2, [pc, #108]	@ ecc <parseexec+0x188>
     e5c:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
     e60:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
     e64:	ebfffe8a 	bl	894 <peek>
     e68:	e1a03000 	mov	r3, r0
     e6c:	e3530000 	cmp	r3, #0
     e70:	0affffd0 	beq	db8 <parseexec+0x74>
     e74:	ea000000 	b	e7c <parseexec+0x138>
     e78:	e1a00000 	nop			@ (mov r0, r0)
     e7c:	e51b2010 	ldr	r2, [fp, #-16]
     e80:	e51b3008 	ldr	r3, [fp, #-8]
     e84:	e1a03103 	lsl	r3, r3, #2
     e88:	e0823003 	add	r3, r2, r3
     e8c:	e3a02000 	mov	r2, #0
     e90:	e5832004 	str	r2, [r3, #4]
     e94:	e51b2010 	ldr	r2, [fp, #-16]
     e98:	e51b3008 	ldr	r3, [fp, #-8]
     e9c:	e283300a 	add	r3, r3, #10
     ea0:	e1a03103 	lsl	r3, r3, #2
     ea4:	e0823003 	add	r3, r2, r3
     ea8:	e3a02000 	mov	r2, #0
     eac:	e5832004 	str	r2, [r3, #4]
     eb0:	e51b300c 	ldr	r3, [fp, #-12]
     eb4:	e1a00003 	mov	r0, r3
     eb8:	e24bd004 	sub	sp, fp, #4
     ebc:	e8bd8800 	pop	{fp, pc}
     ec0:	000021a0 	.word	0x000021a0
     ec4:	00002168 	.word	0x00002168
     ec8:	000021c8 	.word	0x000021c8
     ecc:	000021d8 	.word	0x000021d8

00000ed0 <nulterminate>:
     ed0:	e92d4800 	push	{fp, lr}
     ed4:	e28db004 	add	fp, sp, #4
     ed8:	e24dd020 	sub	sp, sp, #32
     edc:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
     ee0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     ee4:	e3530000 	cmp	r3, #0
     ee8:	1a000001 	bne	ef4 <nulterminate+0x24>
     eec:	e3a03000 	mov	r3, #0
     ef0:	ea000053 	b	1044 <nulterminate+0x174>
     ef4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     ef8:	e5933000 	ldr	r3, [r3]
     efc:	e3530005 	cmp	r3, #5
     f00:	0a000047 	beq	1024 <nulterminate+0x154>
     f04:	e3530005 	cmp	r3, #5
     f08:	ca00004c 	bgt	1040 <nulterminate+0x170>
     f0c:	e3530004 	cmp	r3, #4
     f10:	0a000038 	beq	ff8 <nulterminate+0x128>
     f14:	e3530004 	cmp	r3, #4
     f18:	ca000048 	bgt	1040 <nulterminate+0x170>
     f1c:	e3530003 	cmp	r3, #3
     f20:	0a000029 	beq	fcc <nulterminate+0xfc>
     f24:	e3530003 	cmp	r3, #3
     f28:	ca000044 	bgt	1040 <nulterminate+0x170>
     f2c:	e3530001 	cmp	r3, #1
     f30:	0a000002 	beq	f40 <nulterminate+0x70>
     f34:	e3530002 	cmp	r3, #2
     f38:	0a000018 	beq	fa0 <nulterminate+0xd0>
     f3c:	ea00003f 	b	1040 <nulterminate+0x170>
     f40:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     f44:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     f48:	e3a03000 	mov	r3, #0
     f4c:	e50b3008 	str	r3, [fp, #-8]
     f50:	ea00000a 	b	f80 <nulterminate+0xb0>
     f54:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     f58:	e51b3008 	ldr	r3, [fp, #-8]
     f5c:	e283300a 	add	r3, r3, #10
     f60:	e1a03103 	lsl	r3, r3, #2
     f64:	e0823003 	add	r3, r2, r3
     f68:	e5933004 	ldr	r3, [r3, #4]
     f6c:	e3a02000 	mov	r2, #0
     f70:	e5c32000 	strb	r2, [r3]
     f74:	e51b3008 	ldr	r3, [fp, #-8]
     f78:	e2833001 	add	r3, r3, #1
     f7c:	e50b3008 	str	r3, [fp, #-8]
     f80:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     f84:	e51b3008 	ldr	r3, [fp, #-8]
     f88:	e1a03103 	lsl	r3, r3, #2
     f8c:	e0823003 	add	r3, r2, r3
     f90:	e5933004 	ldr	r3, [r3, #4]
     f94:	e3530000 	cmp	r3, #0
     f98:	1affffed 	bne	f54 <nulterminate+0x84>
     f9c:	ea000027 	b	1040 <nulterminate+0x170>
     fa0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     fa4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     fa8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fac:	e5933004 	ldr	r3, [r3, #4]
     fb0:	e1a00003 	mov	r0, r3
     fb4:	ebffffc5 	bl	ed0 <nulterminate>
     fb8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fbc:	e593300c 	ldr	r3, [r3, #12]
     fc0:	e3a02000 	mov	r2, #0
     fc4:	e5c32000 	strb	r2, [r3]
     fc8:	ea00001c 	b	1040 <nulterminate+0x170>
     fcc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     fd0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     fd4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     fd8:	e5933004 	ldr	r3, [r3, #4]
     fdc:	e1a00003 	mov	r0, r3
     fe0:	ebffffba 	bl	ed0 <nulterminate>
     fe4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     fe8:	e5933008 	ldr	r3, [r3, #8]
     fec:	e1a00003 	mov	r0, r3
     ff0:	ebffffb6 	bl	ed0 <nulterminate>
     ff4:	ea000011 	b	1040 <nulterminate+0x170>
     ff8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     ffc:	e50b3010 	str	r3, [fp, #-16]
    1000:	e51b3010 	ldr	r3, [fp, #-16]
    1004:	e5933004 	ldr	r3, [r3, #4]
    1008:	e1a00003 	mov	r0, r3
    100c:	ebffffaf 	bl	ed0 <nulterminate>
    1010:	e51b3010 	ldr	r3, [fp, #-16]
    1014:	e5933008 	ldr	r3, [r3, #8]
    1018:	e1a00003 	mov	r0, r3
    101c:	ebffffab 	bl	ed0 <nulterminate>
    1020:	ea000006 	b	1040 <nulterminate+0x170>
    1024:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1028:	e50b300c 	str	r3, [fp, #-12]
    102c:	e51b300c 	ldr	r3, [fp, #-12]
    1030:	e5933004 	ldr	r3, [r3, #4]
    1034:	e1a00003 	mov	r0, r3
    1038:	ebffffa4 	bl	ed0 <nulterminate>
    103c:	e1a00000 	nop			@ (mov r0, r0)
    1040:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1044:	e1a00003 	mov	r0, r3
    1048:	e24bd004 	sub	sp, fp, #4
    104c:	e8bd8800 	pop	{fp, pc}

00001050 <strcpy>:
    1050:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1054:	e28db000 	add	fp, sp, #0
    1058:	e24dd014 	sub	sp, sp, #20
    105c:	e50b0010 	str	r0, [fp, #-16]
    1060:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
    1064:	e51b3010 	ldr	r3, [fp, #-16]
    1068:	e50b3008 	str	r3, [fp, #-8]
    106c:	e1a00000 	nop			@ (mov r0, r0)
    1070:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
    1074:	e2823001 	add	r3, r2, #1
    1078:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    107c:	e51b3010 	ldr	r3, [fp, #-16]
    1080:	e2831001 	add	r1, r3, #1
    1084:	e50b1010 	str	r1, [fp, #-16]
    1088:	e5d22000 	ldrb	r2, [r2]
    108c:	e5c32000 	strb	r2, [r3]
    1090:	e5d33000 	ldrb	r3, [r3]
    1094:	e3530000 	cmp	r3, #0
    1098:	1afffff4 	bne	1070 <strcpy+0x20>
    109c:	e51b3008 	ldr	r3, [fp, #-8]
    10a0:	e1a00003 	mov	r0, r3
    10a4:	e28bd000 	add	sp, fp, #0
    10a8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    10ac:	e12fff1e 	bx	lr

000010b0 <strcmp>:
    10b0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    10b4:	e28db000 	add	fp, sp, #0
    10b8:	e24dd00c 	sub	sp, sp, #12
    10bc:	e50b0008 	str	r0, [fp, #-8]
    10c0:	e50b100c 	str	r1, [fp, #-12]
    10c4:	ea000005 	b	10e0 <strcmp+0x30>
    10c8:	e51b3008 	ldr	r3, [fp, #-8]
    10cc:	e2833001 	add	r3, r3, #1
    10d0:	e50b3008 	str	r3, [fp, #-8]
    10d4:	e51b300c 	ldr	r3, [fp, #-12]
    10d8:	e2833001 	add	r3, r3, #1
    10dc:	e50b300c 	str	r3, [fp, #-12]
    10e0:	e51b3008 	ldr	r3, [fp, #-8]
    10e4:	e5d33000 	ldrb	r3, [r3]
    10e8:	e3530000 	cmp	r3, #0
    10ec:	0a000005 	beq	1108 <strcmp+0x58>
    10f0:	e51b3008 	ldr	r3, [fp, #-8]
    10f4:	e5d32000 	ldrb	r2, [r3]
    10f8:	e51b300c 	ldr	r3, [fp, #-12]
    10fc:	e5d33000 	ldrb	r3, [r3]
    1100:	e1520003 	cmp	r2, r3
    1104:	0affffef 	beq	10c8 <strcmp+0x18>
    1108:	e51b3008 	ldr	r3, [fp, #-8]
    110c:	e5d33000 	ldrb	r3, [r3]
    1110:	e1a02003 	mov	r2, r3
    1114:	e51b300c 	ldr	r3, [fp, #-12]
    1118:	e5d33000 	ldrb	r3, [r3]
    111c:	e0423003 	sub	r3, r2, r3
    1120:	e1a00003 	mov	r0, r3
    1124:	e28bd000 	add	sp, fp, #0
    1128:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    112c:	e12fff1e 	bx	lr

00001130 <strlen>:
    1130:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1134:	e28db000 	add	fp, sp, #0
    1138:	e24dd014 	sub	sp, sp, #20
    113c:	e50b0010 	str	r0, [fp, #-16]
    1140:	e3a03000 	mov	r3, #0
    1144:	e50b3008 	str	r3, [fp, #-8]
    1148:	ea000002 	b	1158 <strlen+0x28>
    114c:	e51b3008 	ldr	r3, [fp, #-8]
    1150:	e2833001 	add	r3, r3, #1
    1154:	e50b3008 	str	r3, [fp, #-8]
    1158:	e51b3008 	ldr	r3, [fp, #-8]
    115c:	e51b2010 	ldr	r2, [fp, #-16]
    1160:	e0823003 	add	r3, r2, r3
    1164:	e5d33000 	ldrb	r3, [r3]
    1168:	e3530000 	cmp	r3, #0
    116c:	1afffff6 	bne	114c <strlen+0x1c>
    1170:	e51b3008 	ldr	r3, [fp, #-8]
    1174:	e1a00003 	mov	r0, r3
    1178:	e28bd000 	add	sp, fp, #0
    117c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1180:	e12fff1e 	bx	lr

00001184 <memset>:
    1184:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1188:	e28db000 	add	fp, sp, #0
    118c:	e24dd024 	sub	sp, sp, #36	@ 0x24
    1190:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1194:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
    1198:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
    119c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11a0:	e50b3008 	str	r3, [fp, #-8]
    11a4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11a8:	e54b300d 	strb	r3, [fp, #-13]
    11ac:	e55b200d 	ldrb	r2, [fp, #-13]
    11b0:	e1a03002 	mov	r3, r2
    11b4:	e1a03403 	lsl	r3, r3, #8
    11b8:	e0833002 	add	r3, r3, r2
    11bc:	e1a03803 	lsl	r3, r3, #16
    11c0:	e1a02003 	mov	r2, r3
    11c4:	e55b300d 	ldrb	r3, [fp, #-13]
    11c8:	e1a03403 	lsl	r3, r3, #8
    11cc:	e1822003 	orr	r2, r2, r3
    11d0:	e55b300d 	ldrb	r3, [fp, #-13]
    11d4:	e1823003 	orr	r3, r2, r3
    11d8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    11dc:	ea000008 	b	1204 <memset+0x80>
    11e0:	e51b3008 	ldr	r3, [fp, #-8]
    11e4:	e55b200d 	ldrb	r2, [fp, #-13]
    11e8:	e5c32000 	strb	r2, [r3]
    11ec:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    11f0:	e2433001 	sub	r3, r3, #1
    11f4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
    11f8:	e51b3008 	ldr	r3, [fp, #-8]
    11fc:	e2833001 	add	r3, r3, #1
    1200:	e50b3008 	str	r3, [fp, #-8]
    1204:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1208:	e3530000 	cmp	r3, #0
    120c:	0a000003 	beq	1220 <memset+0x9c>
    1210:	e51b3008 	ldr	r3, [fp, #-8]
    1214:	e2033003 	and	r3, r3, #3
    1218:	e3530000 	cmp	r3, #0
    121c:	1affffef 	bne	11e0 <memset+0x5c>
    1220:	e51b3008 	ldr	r3, [fp, #-8]
    1224:	e50b300c 	str	r3, [fp, #-12]
    1228:	ea000008 	b	1250 <memset+0xcc>
    122c:	e51b300c 	ldr	r3, [fp, #-12]
    1230:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
    1234:	e5832000 	str	r2, [r3]
    1238:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    123c:	e2433004 	sub	r3, r3, #4
    1240:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
    1244:	e51b300c 	ldr	r3, [fp, #-12]
    1248:	e2833004 	add	r3, r3, #4
    124c:	e50b300c 	str	r3, [fp, #-12]
    1250:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1254:	e3530003 	cmp	r3, #3
    1258:	8afffff3 	bhi	122c <memset+0xa8>
    125c:	e51b300c 	ldr	r3, [fp, #-12]
    1260:	e50b3008 	str	r3, [fp, #-8]
    1264:	ea000008 	b	128c <memset+0x108>
    1268:	e51b3008 	ldr	r3, [fp, #-8]
    126c:	e55b200d 	ldrb	r2, [fp, #-13]
    1270:	e5c32000 	strb	r2, [r3]
    1274:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1278:	e2433001 	sub	r3, r3, #1
    127c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
    1280:	e51b3008 	ldr	r3, [fp, #-8]
    1284:	e2833001 	add	r3, r3, #1
    1288:	e50b3008 	str	r3, [fp, #-8]
    128c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1290:	e3530000 	cmp	r3, #0
    1294:	1afffff3 	bne	1268 <memset+0xe4>
    1298:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    129c:	e1a00003 	mov	r0, r3
    12a0:	e28bd000 	add	sp, fp, #0
    12a4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    12a8:	e12fff1e 	bx	lr

000012ac <strchr>:
    12ac:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    12b0:	e28db000 	add	fp, sp, #0
    12b4:	e24dd00c 	sub	sp, sp, #12
    12b8:	e50b0008 	str	r0, [fp, #-8]
    12bc:	e1a03001 	mov	r3, r1
    12c0:	e54b3009 	strb	r3, [fp, #-9]
    12c4:	ea000009 	b	12f0 <strchr+0x44>
    12c8:	e51b3008 	ldr	r3, [fp, #-8]
    12cc:	e5d33000 	ldrb	r3, [r3]
    12d0:	e55b2009 	ldrb	r2, [fp, #-9]
    12d4:	e1520003 	cmp	r2, r3
    12d8:	1a000001 	bne	12e4 <strchr+0x38>
    12dc:	e51b3008 	ldr	r3, [fp, #-8]
    12e0:	ea000007 	b	1304 <strchr+0x58>
    12e4:	e51b3008 	ldr	r3, [fp, #-8]
    12e8:	e2833001 	add	r3, r3, #1
    12ec:	e50b3008 	str	r3, [fp, #-8]
    12f0:	e51b3008 	ldr	r3, [fp, #-8]
    12f4:	e5d33000 	ldrb	r3, [r3]
    12f8:	e3530000 	cmp	r3, #0
    12fc:	1afffff1 	bne	12c8 <strchr+0x1c>
    1300:	e3a03000 	mov	r3, #0
    1304:	e1a00003 	mov	r0, r3
    1308:	e28bd000 	add	sp, fp, #0
    130c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1310:	e12fff1e 	bx	lr

00001314 <gets>:
    1314:	e92d4800 	push	{fp, lr}
    1318:	e28db004 	add	fp, sp, #4
    131c:	e24dd018 	sub	sp, sp, #24
    1320:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1324:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
    1328:	e3a03000 	mov	r3, #0
    132c:	e50b3008 	str	r3, [fp, #-8]
    1330:	ea000016 	b	1390 <gets+0x7c>
    1334:	e24b300d 	sub	r3, fp, #13
    1338:	e3a02001 	mov	r2, #1
    133c:	e1a01003 	mov	r1, r3
    1340:	e3a00000 	mov	r0, #0
    1344:	eb00009b 	bl	15b8 <read>
    1348:	e50b000c 	str	r0, [fp, #-12]
    134c:	e51b300c 	ldr	r3, [fp, #-12]
    1350:	e3530000 	cmp	r3, #0
    1354:	da000013 	ble	13a8 <gets+0x94>
    1358:	e51b3008 	ldr	r3, [fp, #-8]
    135c:	e2832001 	add	r2, r3, #1
    1360:	e50b2008 	str	r2, [fp, #-8]
    1364:	e1a02003 	mov	r2, r3
    1368:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    136c:	e0833002 	add	r3, r3, r2
    1370:	e55b200d 	ldrb	r2, [fp, #-13]
    1374:	e5c32000 	strb	r2, [r3]
    1378:	e55b300d 	ldrb	r3, [fp, #-13]
    137c:	e353000a 	cmp	r3, #10
    1380:	0a000009 	beq	13ac <gets+0x98>
    1384:	e55b300d 	ldrb	r3, [fp, #-13]
    1388:	e353000d 	cmp	r3, #13
    138c:	0a000006 	beq	13ac <gets+0x98>
    1390:	e51b3008 	ldr	r3, [fp, #-8]
    1394:	e2833001 	add	r3, r3, #1
    1398:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
    139c:	e1520003 	cmp	r2, r3
    13a0:	caffffe3 	bgt	1334 <gets+0x20>
    13a4:	ea000000 	b	13ac <gets+0x98>
    13a8:	e1a00000 	nop			@ (mov r0, r0)
    13ac:	e51b3008 	ldr	r3, [fp, #-8]
    13b0:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
    13b4:	e0823003 	add	r3, r2, r3
    13b8:	e3a02000 	mov	r2, #0
    13bc:	e5c32000 	strb	r2, [r3]
    13c0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13c4:	e1a00003 	mov	r0, r3
    13c8:	e24bd004 	sub	sp, fp, #4
    13cc:	e8bd8800 	pop	{fp, pc}

000013d0 <stat>:
    13d0:	e92d4800 	push	{fp, lr}
    13d4:	e28db004 	add	fp, sp, #4
    13d8:	e24dd010 	sub	sp, sp, #16
    13dc:	e50b0010 	str	r0, [fp, #-16]
    13e0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
    13e4:	e3a01000 	mov	r1, #0
    13e8:	e51b0010 	ldr	r0, [fp, #-16]
    13ec:	eb00009e 	bl	166c <open>
    13f0:	e50b0008 	str	r0, [fp, #-8]
    13f4:	e51b3008 	ldr	r3, [fp, #-8]
    13f8:	e3530000 	cmp	r3, #0
    13fc:	aa000001 	bge	1408 <stat+0x38>
    1400:	e3e03000 	mvn	r3, #0
    1404:	ea000006 	b	1424 <stat+0x54>
    1408:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
    140c:	e51b0008 	ldr	r0, [fp, #-8]
    1410:	eb0000b0 	bl	16d8 <fstat>
    1414:	e50b000c 	str	r0, [fp, #-12]
    1418:	e51b0008 	ldr	r0, [fp, #-8]
    141c:	eb000077 	bl	1600 <close>
    1420:	e51b300c 	ldr	r3, [fp, #-12]
    1424:	e1a00003 	mov	r0, r3
    1428:	e24bd004 	sub	sp, fp, #4
    142c:	e8bd8800 	pop	{fp, pc}

00001430 <atoi>:
    1430:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1434:	e28db000 	add	fp, sp, #0
    1438:	e24dd014 	sub	sp, sp, #20
    143c:	e50b0010 	str	r0, [fp, #-16]
    1440:	e3a03000 	mov	r3, #0
    1444:	e50b3008 	str	r3, [fp, #-8]
    1448:	ea00000c 	b	1480 <atoi+0x50>
    144c:	e51b2008 	ldr	r2, [fp, #-8]
    1450:	e1a03002 	mov	r3, r2
    1454:	e1a03103 	lsl	r3, r3, #2
    1458:	e0833002 	add	r3, r3, r2
    145c:	e1a03083 	lsl	r3, r3, #1
    1460:	e1a01003 	mov	r1, r3
    1464:	e51b3010 	ldr	r3, [fp, #-16]
    1468:	e2832001 	add	r2, r3, #1
    146c:	e50b2010 	str	r2, [fp, #-16]
    1470:	e5d33000 	ldrb	r3, [r3]
    1474:	e0813003 	add	r3, r1, r3
    1478:	e2433030 	sub	r3, r3, #48	@ 0x30
    147c:	e50b3008 	str	r3, [fp, #-8]
    1480:	e51b3010 	ldr	r3, [fp, #-16]
    1484:	e5d33000 	ldrb	r3, [r3]
    1488:	e353002f 	cmp	r3, #47	@ 0x2f
    148c:	9a000003 	bls	14a0 <atoi+0x70>
    1490:	e51b3010 	ldr	r3, [fp, #-16]
    1494:	e5d33000 	ldrb	r3, [r3]
    1498:	e3530039 	cmp	r3, #57	@ 0x39
    149c:	9affffea 	bls	144c <atoi+0x1c>
    14a0:	e51b3008 	ldr	r3, [fp, #-8]
    14a4:	e1a00003 	mov	r0, r3
    14a8:	e28bd000 	add	sp, fp, #0
    14ac:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    14b0:	e12fff1e 	bx	lr

000014b4 <memmove>:
    14b4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    14b8:	e28db000 	add	fp, sp, #0
    14bc:	e24dd01c 	sub	sp, sp, #28
    14c0:	e50b0010 	str	r0, [fp, #-16]
    14c4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
    14c8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
    14cc:	e51b3010 	ldr	r3, [fp, #-16]
    14d0:	e50b3008 	str	r3, [fp, #-8]
    14d4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    14d8:	e50b300c 	str	r3, [fp, #-12]
    14dc:	ea000007 	b	1500 <memmove+0x4c>
    14e0:	e51b200c 	ldr	r2, [fp, #-12]
    14e4:	e2823001 	add	r3, r2, #1
    14e8:	e50b300c 	str	r3, [fp, #-12]
    14ec:	e51b3008 	ldr	r3, [fp, #-8]
    14f0:	e2831001 	add	r1, r3, #1
    14f4:	e50b1008 	str	r1, [fp, #-8]
    14f8:	e5d22000 	ldrb	r2, [r2]
    14fc:	e5c32000 	strb	r2, [r3]
    1500:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1504:	e2432001 	sub	r2, r3, #1
    1508:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
    150c:	e3530000 	cmp	r3, #0
    1510:	cafffff2 	bgt	14e0 <memmove+0x2c>
    1514:	e51b3010 	ldr	r3, [fp, #-16]
    1518:	e1a00003 	mov	r0, r3
    151c:	e28bd000 	add	sp, fp, #0
    1520:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1524:	e12fff1e 	bx	lr

00001528 <fork>:
    1528:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    152c:	e1a04003 	mov	r4, r3
    1530:	e1a03002 	mov	r3, r2
    1534:	e1a02001 	mov	r2, r1
    1538:	e1a01000 	mov	r1, r0
    153c:	e3a00001 	mov	r0, #1
    1540:	ef000000 	svc	0x00000000
    1544:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1548:	e12fff1e 	bx	lr

0000154c <exit>:
    154c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1550:	e1a04003 	mov	r4, r3
    1554:	e1a03002 	mov	r3, r2
    1558:	e1a02001 	mov	r2, r1
    155c:	e1a01000 	mov	r1, r0
    1560:	e3a00002 	mov	r0, #2
    1564:	ef000000 	svc	0x00000000
    1568:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    156c:	e12fff1e 	bx	lr

00001570 <wait>:
    1570:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1574:	e1a04003 	mov	r4, r3
    1578:	e1a03002 	mov	r3, r2
    157c:	e1a02001 	mov	r2, r1
    1580:	e1a01000 	mov	r1, r0
    1584:	e3a00003 	mov	r0, #3
    1588:	ef000000 	svc	0x00000000
    158c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1590:	e12fff1e 	bx	lr

00001594 <pipe>:
    1594:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1598:	e1a04003 	mov	r4, r3
    159c:	e1a03002 	mov	r3, r2
    15a0:	e1a02001 	mov	r2, r1
    15a4:	e1a01000 	mov	r1, r0
    15a8:	e3a00004 	mov	r0, #4
    15ac:	ef000000 	svc	0x00000000
    15b0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    15b4:	e12fff1e 	bx	lr

000015b8 <read>:
    15b8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    15bc:	e1a04003 	mov	r4, r3
    15c0:	e1a03002 	mov	r3, r2
    15c4:	e1a02001 	mov	r2, r1
    15c8:	e1a01000 	mov	r1, r0
    15cc:	e3a00005 	mov	r0, #5
    15d0:	ef000000 	svc	0x00000000
    15d4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    15d8:	e12fff1e 	bx	lr

000015dc <write>:
    15dc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    15e0:	e1a04003 	mov	r4, r3
    15e4:	e1a03002 	mov	r3, r2
    15e8:	e1a02001 	mov	r2, r1
    15ec:	e1a01000 	mov	r1, r0
    15f0:	e3a00010 	mov	r0, #16
    15f4:	ef000000 	svc	0x00000000
    15f8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    15fc:	e12fff1e 	bx	lr

00001600 <close>:
    1600:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1604:	e1a04003 	mov	r4, r3
    1608:	e1a03002 	mov	r3, r2
    160c:	e1a02001 	mov	r2, r1
    1610:	e1a01000 	mov	r1, r0
    1614:	e3a00015 	mov	r0, #21
    1618:	ef000000 	svc	0x00000000
    161c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1620:	e12fff1e 	bx	lr

00001624 <kill>:
    1624:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1628:	e1a04003 	mov	r4, r3
    162c:	e1a03002 	mov	r3, r2
    1630:	e1a02001 	mov	r2, r1
    1634:	e1a01000 	mov	r1, r0
    1638:	e3a00006 	mov	r0, #6
    163c:	ef000000 	svc	0x00000000
    1640:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1644:	e12fff1e 	bx	lr

00001648 <exec>:
    1648:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    164c:	e1a04003 	mov	r4, r3
    1650:	e1a03002 	mov	r3, r2
    1654:	e1a02001 	mov	r2, r1
    1658:	e1a01000 	mov	r1, r0
    165c:	e3a00007 	mov	r0, #7
    1660:	ef000000 	svc	0x00000000
    1664:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1668:	e12fff1e 	bx	lr

0000166c <open>:
    166c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1670:	e1a04003 	mov	r4, r3
    1674:	e1a03002 	mov	r3, r2
    1678:	e1a02001 	mov	r2, r1
    167c:	e1a01000 	mov	r1, r0
    1680:	e3a0000f 	mov	r0, #15
    1684:	ef000000 	svc	0x00000000
    1688:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    168c:	e12fff1e 	bx	lr

00001690 <mknod>:
    1690:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1694:	e1a04003 	mov	r4, r3
    1698:	e1a03002 	mov	r3, r2
    169c:	e1a02001 	mov	r2, r1
    16a0:	e1a01000 	mov	r1, r0
    16a4:	e3a00011 	mov	r0, #17
    16a8:	ef000000 	svc	0x00000000
    16ac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    16b0:	e12fff1e 	bx	lr

000016b4 <unlink>:
    16b4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    16b8:	e1a04003 	mov	r4, r3
    16bc:	e1a03002 	mov	r3, r2
    16c0:	e1a02001 	mov	r2, r1
    16c4:	e1a01000 	mov	r1, r0
    16c8:	e3a00012 	mov	r0, #18
    16cc:	ef000000 	svc	0x00000000
    16d0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    16d4:	e12fff1e 	bx	lr

000016d8 <fstat>:
    16d8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    16dc:	e1a04003 	mov	r4, r3
    16e0:	e1a03002 	mov	r3, r2
    16e4:	e1a02001 	mov	r2, r1
    16e8:	e1a01000 	mov	r1, r0
    16ec:	e3a00008 	mov	r0, #8
    16f0:	ef000000 	svc	0x00000000
    16f4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    16f8:	e12fff1e 	bx	lr

000016fc <link>:
    16fc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1700:	e1a04003 	mov	r4, r3
    1704:	e1a03002 	mov	r3, r2
    1708:	e1a02001 	mov	r2, r1
    170c:	e1a01000 	mov	r1, r0
    1710:	e3a00013 	mov	r0, #19
    1714:	ef000000 	svc	0x00000000
    1718:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    171c:	e12fff1e 	bx	lr

00001720 <mkdir>:
    1720:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1724:	e1a04003 	mov	r4, r3
    1728:	e1a03002 	mov	r3, r2
    172c:	e1a02001 	mov	r2, r1
    1730:	e1a01000 	mov	r1, r0
    1734:	e3a00014 	mov	r0, #20
    1738:	ef000000 	svc	0x00000000
    173c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1740:	e12fff1e 	bx	lr

00001744 <chdir>:
    1744:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1748:	e1a04003 	mov	r4, r3
    174c:	e1a03002 	mov	r3, r2
    1750:	e1a02001 	mov	r2, r1
    1754:	e1a01000 	mov	r1, r0
    1758:	e3a00009 	mov	r0, #9
    175c:	ef000000 	svc	0x00000000
    1760:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1764:	e12fff1e 	bx	lr

00001768 <dup>:
    1768:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    176c:	e1a04003 	mov	r4, r3
    1770:	e1a03002 	mov	r3, r2
    1774:	e1a02001 	mov	r2, r1
    1778:	e1a01000 	mov	r1, r0
    177c:	e3a0000a 	mov	r0, #10
    1780:	ef000000 	svc	0x00000000
    1784:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1788:	e12fff1e 	bx	lr

0000178c <getpid>:
    178c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1790:	e1a04003 	mov	r4, r3
    1794:	e1a03002 	mov	r3, r2
    1798:	e1a02001 	mov	r2, r1
    179c:	e1a01000 	mov	r1, r0
    17a0:	e3a0000b 	mov	r0, #11
    17a4:	ef000000 	svc	0x00000000
    17a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    17ac:	e12fff1e 	bx	lr

000017b0 <sbrk>:
    17b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    17b4:	e1a04003 	mov	r4, r3
    17b8:	e1a03002 	mov	r3, r2
    17bc:	e1a02001 	mov	r2, r1
    17c0:	e1a01000 	mov	r1, r0
    17c4:	e3a0000c 	mov	r0, #12
    17c8:	ef000000 	svc	0x00000000
    17cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    17d0:	e12fff1e 	bx	lr

000017d4 <sleep>:
    17d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    17d8:	e1a04003 	mov	r4, r3
    17dc:	e1a03002 	mov	r3, r2
    17e0:	e1a02001 	mov	r2, r1
    17e4:	e1a01000 	mov	r1, r0
    17e8:	e3a0000d 	mov	r0, #13
    17ec:	ef000000 	svc	0x00000000
    17f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    17f4:	e12fff1e 	bx	lr

000017f8 <uptime>:
    17f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    17fc:	e1a04003 	mov	r4, r3
    1800:	e1a03002 	mov	r3, r2
    1804:	e1a02001 	mov	r2, r1
    1808:	e1a01000 	mov	r1, r0
    180c:	e3a0000e 	mov	r0, #14
    1810:	ef000000 	svc	0x00000000
    1814:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1818:	e12fff1e 	bx	lr

0000181c <getprocs>:
    181c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1820:	e1a04003 	mov	r4, r3
    1824:	e1a03002 	mov	r3, r2
    1828:	e1a02001 	mov	r2, r1
    182c:	e1a01000 	mov	r1, r0
    1830:	e3a00016 	mov	r0, #22
    1834:	ef000000 	svc	0x00000000
    1838:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    183c:	e12fff1e 	bx	lr

00001840 <getpinfo>:
    1840:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1844:	e1a04003 	mov	r4, r3
    1848:	e1a03002 	mov	r3, r2
    184c:	e1a02001 	mov	r2, r1
    1850:	e1a01000 	mov	r1, r0
    1854:	e3a00018 	mov	r0, #24
    1858:	ef000000 	svc	0x00000000
    185c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1860:	e12fff1e 	bx	lr

00001864 <settickets>:
    1864:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1868:	e1a04003 	mov	r4, r3
    186c:	e1a03002 	mov	r3, r2
    1870:	e1a02001 	mov	r2, r1
    1874:	e1a01000 	mov	r1, r0
    1878:	e3a00017 	mov	r0, #23
    187c:	ef000000 	svc	0x00000000
    1880:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1884:	e12fff1e 	bx	lr

00001888 <srand>:
    1888:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    188c:	e1a04003 	mov	r4, r3
    1890:	e1a03002 	mov	r3, r2
    1894:	e1a02001 	mov	r2, r1
    1898:	e1a01000 	mov	r1, r0
    189c:	e3a00019 	mov	r0, #25
    18a0:	ef000000 	svc	0x00000000
    18a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    18a8:	e12fff1e 	bx	lr

000018ac <test>:
    18ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    18b0:	e1a04003 	mov	r4, r3
    18b4:	e1a03002 	mov	r3, r2
    18b8:	e1a02001 	mov	r2, r1
    18bc:	e1a01000 	mov	r1, r0
    18c0:	e3a0001a 	mov	r0, #26
    18c4:	ef000000 	svc	0x00000000
    18c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    18cc:	e12fff1e 	bx	lr

000018d0 <putc>:
    18d0:	e92d4800 	push	{fp, lr}
    18d4:	e28db004 	add	fp, sp, #4
    18d8:	e24dd008 	sub	sp, sp, #8
    18dc:	e50b0008 	str	r0, [fp, #-8]
    18e0:	e1a03001 	mov	r3, r1
    18e4:	e54b3009 	strb	r3, [fp, #-9]
    18e8:	e24b3009 	sub	r3, fp, #9
    18ec:	e3a02001 	mov	r2, #1
    18f0:	e1a01003 	mov	r1, r3
    18f4:	e51b0008 	ldr	r0, [fp, #-8]
    18f8:	ebffff37 	bl	15dc <write>
    18fc:	e1a00000 	nop			@ (mov r0, r0)
    1900:	e24bd004 	sub	sp, fp, #4
    1904:	e8bd8800 	pop	{fp, pc}

00001908 <printint>:
    1908:	e92d4800 	push	{fp, lr}
    190c:	e28db004 	add	fp, sp, #4
    1910:	e24dd030 	sub	sp, sp, #48	@ 0x30
    1914:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    1918:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    191c:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    1920:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    1924:	e3a03000 	mov	r3, #0
    1928:	e50b300c 	str	r3, [fp, #-12]
    192c:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    1930:	e3530000 	cmp	r3, #0
    1934:	0a000008 	beq	195c <printint+0x54>
    1938:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    193c:	e3530000 	cmp	r3, #0
    1940:	aa000005 	bge	195c <printint+0x54>
    1944:	e3a03001 	mov	r3, #1
    1948:	e50b300c 	str	r3, [fp, #-12]
    194c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1950:	e2633000 	rsb	r3, r3, #0
    1954:	e50b3010 	str	r3, [fp, #-16]
    1958:	ea000001 	b	1964 <printint+0x5c>
    195c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1960:	e50b3010 	str	r3, [fp, #-16]
    1964:	e3a03000 	mov	r3, #0
    1968:	e50b3008 	str	r3, [fp, #-8]
    196c:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    1970:	e51b3010 	ldr	r3, [fp, #-16]
    1974:	e1a01002 	mov	r1, r2
    1978:	e1a00003 	mov	r0, r3
    197c:	eb0001d5 	bl	20d8 <__aeabi_uidivmod>
    1980:	e1a03001 	mov	r3, r1
    1984:	e1a01003 	mov	r1, r3
    1988:	e51b3008 	ldr	r3, [fp, #-8]
    198c:	e2832001 	add	r2, r3, #1
    1990:	e50b2008 	str	r2, [fp, #-8]
    1994:	e59f20a0 	ldr	r2, [pc, #160]	@ 1a3c <printint+0x134>
    1998:	e7d22001 	ldrb	r2, [r2, r1]
    199c:	e2433004 	sub	r3, r3, #4
    19a0:	e083300b 	add	r3, r3, fp
    19a4:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    19a8:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    19ac:	e1a01003 	mov	r1, r3
    19b0:	e51b0010 	ldr	r0, [fp, #-16]
    19b4:	eb00018a 	bl	1fe4 <__udivsi3>
    19b8:	e1a03000 	mov	r3, r0
    19bc:	e50b3010 	str	r3, [fp, #-16]
    19c0:	e51b3010 	ldr	r3, [fp, #-16]
    19c4:	e3530000 	cmp	r3, #0
    19c8:	1affffe7 	bne	196c <printint+0x64>
    19cc:	e51b300c 	ldr	r3, [fp, #-12]
    19d0:	e3530000 	cmp	r3, #0
    19d4:	0a00000e 	beq	1a14 <printint+0x10c>
    19d8:	e51b3008 	ldr	r3, [fp, #-8]
    19dc:	e2832001 	add	r2, r3, #1
    19e0:	e50b2008 	str	r2, [fp, #-8]
    19e4:	e2433004 	sub	r3, r3, #4
    19e8:	e083300b 	add	r3, r3, fp
    19ec:	e3a0202d 	mov	r2, #45	@ 0x2d
    19f0:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    19f4:	ea000006 	b	1a14 <printint+0x10c>
    19f8:	e24b2020 	sub	r2, fp, #32
    19fc:	e51b3008 	ldr	r3, [fp, #-8]
    1a00:	e0823003 	add	r3, r2, r3
    1a04:	e5d33000 	ldrb	r3, [r3]
    1a08:	e1a01003 	mov	r1, r3
    1a0c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    1a10:	ebffffae 	bl	18d0 <putc>
    1a14:	e51b3008 	ldr	r3, [fp, #-8]
    1a18:	e2433001 	sub	r3, r3, #1
    1a1c:	e50b3008 	str	r3, [fp, #-8]
    1a20:	e51b3008 	ldr	r3, [fp, #-8]
    1a24:	e3530000 	cmp	r3, #0
    1a28:	aafffff2 	bge	19f8 <printint+0xf0>
    1a2c:	e1a00000 	nop			@ (mov r0, r0)
    1a30:	e1a00000 	nop			@ (mov r0, r0)
    1a34:	e24bd004 	sub	sp, fp, #4
    1a38:	e8bd8800 	pop	{fp, pc}
    1a3c:	000021f8 	.word	0x000021f8

00001a40 <printf>:
    1a40:	e92d000e 	push	{r1, r2, r3}
    1a44:	e92d4800 	push	{fp, lr}
    1a48:	e28db004 	add	fp, sp, #4
    1a4c:	e24dd024 	sub	sp, sp, #36	@ 0x24
    1a50:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    1a54:	e3a03000 	mov	r3, #0
    1a58:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1a5c:	e28b3008 	add	r3, fp, #8
    1a60:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1a64:	e3a03000 	mov	r3, #0
    1a68:	e50b3010 	str	r3, [fp, #-16]
    1a6c:	ea000074 	b	1c44 <printf+0x204>
    1a70:	e59b2004 	ldr	r2, [fp, #4]
    1a74:	e51b3010 	ldr	r3, [fp, #-16]
    1a78:	e0823003 	add	r3, r2, r3
    1a7c:	e5d33000 	ldrb	r3, [r3]
    1a80:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    1a84:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1a88:	e3530000 	cmp	r3, #0
    1a8c:	1a00000b 	bne	1ac0 <printf+0x80>
    1a90:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1a94:	e3530025 	cmp	r3, #37	@ 0x25
    1a98:	1a000002 	bne	1aa8 <printf+0x68>
    1a9c:	e3a03025 	mov	r3, #37	@ 0x25
    1aa0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1aa4:	ea000063 	b	1c38 <printf+0x1f8>
    1aa8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1aac:	e6ef3073 	uxtb	r3, r3
    1ab0:	e1a01003 	mov	r1, r3
    1ab4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1ab8:	ebffff84 	bl	18d0 <putc>
    1abc:	ea00005d 	b	1c38 <printf+0x1f8>
    1ac0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1ac4:	e3530025 	cmp	r3, #37	@ 0x25
    1ac8:	1a00005a 	bne	1c38 <printf+0x1f8>
    1acc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1ad0:	e3530064 	cmp	r3, #100	@ 0x64
    1ad4:	1a00000a 	bne	1b04 <printf+0xc4>
    1ad8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1adc:	e5933000 	ldr	r3, [r3]
    1ae0:	e1a01003 	mov	r1, r3
    1ae4:	e3a03001 	mov	r3, #1
    1ae8:	e3a0200a 	mov	r2, #10
    1aec:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1af0:	ebffff84 	bl	1908 <printint>
    1af4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1af8:	e2833004 	add	r3, r3, #4
    1afc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1b00:	ea00004a 	b	1c30 <printf+0x1f0>
    1b04:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1b08:	e3530078 	cmp	r3, #120	@ 0x78
    1b0c:	0a000002 	beq	1b1c <printf+0xdc>
    1b10:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1b14:	e3530070 	cmp	r3, #112	@ 0x70
    1b18:	1a00000a 	bne	1b48 <printf+0x108>
    1b1c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1b20:	e5933000 	ldr	r3, [r3]
    1b24:	e1a01003 	mov	r1, r3
    1b28:	e3a03000 	mov	r3, #0
    1b2c:	e3a02010 	mov	r2, #16
    1b30:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1b34:	ebffff73 	bl	1908 <printint>
    1b38:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1b3c:	e2833004 	add	r3, r3, #4
    1b40:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1b44:	ea000039 	b	1c30 <printf+0x1f0>
    1b48:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1b4c:	e3530073 	cmp	r3, #115	@ 0x73
    1b50:	1a000018 	bne	1bb8 <printf+0x178>
    1b54:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1b58:	e5933000 	ldr	r3, [r3]
    1b5c:	e50b300c 	str	r3, [fp, #-12]
    1b60:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1b64:	e2833004 	add	r3, r3, #4
    1b68:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1b6c:	e51b300c 	ldr	r3, [fp, #-12]
    1b70:	e3530000 	cmp	r3, #0
    1b74:	1a00000a 	bne	1ba4 <printf+0x164>
    1b78:	e59f30f4 	ldr	r3, [pc, #244]	@ 1c74 <printf+0x234>
    1b7c:	e50b300c 	str	r3, [fp, #-12]
    1b80:	ea000007 	b	1ba4 <printf+0x164>
    1b84:	e51b300c 	ldr	r3, [fp, #-12]
    1b88:	e5d33000 	ldrb	r3, [r3]
    1b8c:	e1a01003 	mov	r1, r3
    1b90:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1b94:	ebffff4d 	bl	18d0 <putc>
    1b98:	e51b300c 	ldr	r3, [fp, #-12]
    1b9c:	e2833001 	add	r3, r3, #1
    1ba0:	e50b300c 	str	r3, [fp, #-12]
    1ba4:	e51b300c 	ldr	r3, [fp, #-12]
    1ba8:	e5d33000 	ldrb	r3, [r3]
    1bac:	e3530000 	cmp	r3, #0
    1bb0:	1afffff3 	bne	1b84 <printf+0x144>
    1bb4:	ea00001d 	b	1c30 <printf+0x1f0>
    1bb8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1bbc:	e3530063 	cmp	r3, #99	@ 0x63
    1bc0:	1a000009 	bne	1bec <printf+0x1ac>
    1bc4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1bc8:	e5933000 	ldr	r3, [r3]
    1bcc:	e6ef3073 	uxtb	r3, r3
    1bd0:	e1a01003 	mov	r1, r3
    1bd4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1bd8:	ebffff3c 	bl	18d0 <putc>
    1bdc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1be0:	e2833004 	add	r3, r3, #4
    1be4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1be8:	ea000010 	b	1c30 <printf+0x1f0>
    1bec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1bf0:	e3530025 	cmp	r3, #37	@ 0x25
    1bf4:	1a000005 	bne	1c10 <printf+0x1d0>
    1bf8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1bfc:	e6ef3073 	uxtb	r3, r3
    1c00:	e1a01003 	mov	r1, r3
    1c04:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1c08:	ebffff30 	bl	18d0 <putc>
    1c0c:	ea000007 	b	1c30 <printf+0x1f0>
    1c10:	e3a01025 	mov	r1, #37	@ 0x25
    1c14:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1c18:	ebffff2c 	bl	18d0 <putc>
    1c1c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1c20:	e6ef3073 	uxtb	r3, r3
    1c24:	e1a01003 	mov	r1, r3
    1c28:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1c2c:	ebffff27 	bl	18d0 <putc>
    1c30:	e3a03000 	mov	r3, #0
    1c34:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1c38:	e51b3010 	ldr	r3, [fp, #-16]
    1c3c:	e2833001 	add	r3, r3, #1
    1c40:	e50b3010 	str	r3, [fp, #-16]
    1c44:	e59b2004 	ldr	r2, [fp, #4]
    1c48:	e51b3010 	ldr	r3, [fp, #-16]
    1c4c:	e0823003 	add	r3, r2, r3
    1c50:	e5d33000 	ldrb	r3, [r3]
    1c54:	e3530000 	cmp	r3, #0
    1c58:	1affff84 	bne	1a70 <printf+0x30>
    1c5c:	e1a00000 	nop			@ (mov r0, r0)
    1c60:	e1a00000 	nop			@ (mov r0, r0)
    1c64:	e24bd004 	sub	sp, fp, #4
    1c68:	e8bd4800 	pop	{fp, lr}
    1c6c:	e28dd00c 	add	sp, sp, #12
    1c70:	e12fff1e 	bx	lr
    1c74:	000021e0 	.word	0x000021e0

00001c78 <free>:
    1c78:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1c7c:	e28db000 	add	fp, sp, #0
    1c80:	e24dd014 	sub	sp, sp, #20
    1c84:	e50b0010 	str	r0, [fp, #-16]
    1c88:	e51b3010 	ldr	r3, [fp, #-16]
    1c8c:	e2433008 	sub	r3, r3, #8
    1c90:	e50b300c 	str	r3, [fp, #-12]
    1c94:	e59f3154 	ldr	r3, [pc, #340]	@ 1df0 <free+0x178>
    1c98:	e5933000 	ldr	r3, [r3]
    1c9c:	e50b3008 	str	r3, [fp, #-8]
    1ca0:	ea000010 	b	1ce8 <free+0x70>
    1ca4:	e51b3008 	ldr	r3, [fp, #-8]
    1ca8:	e5933000 	ldr	r3, [r3]
    1cac:	e51b2008 	ldr	r2, [fp, #-8]
    1cb0:	e1520003 	cmp	r2, r3
    1cb4:	3a000008 	bcc	1cdc <free+0x64>
    1cb8:	e51b200c 	ldr	r2, [fp, #-12]
    1cbc:	e51b3008 	ldr	r3, [fp, #-8]
    1cc0:	e1520003 	cmp	r2, r3
    1cc4:	8a000010 	bhi	1d0c <free+0x94>
    1cc8:	e51b3008 	ldr	r3, [fp, #-8]
    1ccc:	e5933000 	ldr	r3, [r3]
    1cd0:	e51b200c 	ldr	r2, [fp, #-12]
    1cd4:	e1520003 	cmp	r2, r3
    1cd8:	3a00000b 	bcc	1d0c <free+0x94>
    1cdc:	e51b3008 	ldr	r3, [fp, #-8]
    1ce0:	e5933000 	ldr	r3, [r3]
    1ce4:	e50b3008 	str	r3, [fp, #-8]
    1ce8:	e51b200c 	ldr	r2, [fp, #-12]
    1cec:	e51b3008 	ldr	r3, [fp, #-8]
    1cf0:	e1520003 	cmp	r2, r3
    1cf4:	9affffea 	bls	1ca4 <free+0x2c>
    1cf8:	e51b3008 	ldr	r3, [fp, #-8]
    1cfc:	e5933000 	ldr	r3, [r3]
    1d00:	e51b200c 	ldr	r2, [fp, #-12]
    1d04:	e1520003 	cmp	r2, r3
    1d08:	2affffe5 	bcs	1ca4 <free+0x2c>
    1d0c:	e51b300c 	ldr	r3, [fp, #-12]
    1d10:	e5933004 	ldr	r3, [r3, #4]
    1d14:	e1a03183 	lsl	r3, r3, #3
    1d18:	e51b200c 	ldr	r2, [fp, #-12]
    1d1c:	e0822003 	add	r2, r2, r3
    1d20:	e51b3008 	ldr	r3, [fp, #-8]
    1d24:	e5933000 	ldr	r3, [r3]
    1d28:	e1520003 	cmp	r2, r3
    1d2c:	1a00000d 	bne	1d68 <free+0xf0>
    1d30:	e51b300c 	ldr	r3, [fp, #-12]
    1d34:	e5932004 	ldr	r2, [r3, #4]
    1d38:	e51b3008 	ldr	r3, [fp, #-8]
    1d3c:	e5933000 	ldr	r3, [r3]
    1d40:	e5933004 	ldr	r3, [r3, #4]
    1d44:	e0822003 	add	r2, r2, r3
    1d48:	e51b300c 	ldr	r3, [fp, #-12]
    1d4c:	e5832004 	str	r2, [r3, #4]
    1d50:	e51b3008 	ldr	r3, [fp, #-8]
    1d54:	e5933000 	ldr	r3, [r3]
    1d58:	e5932000 	ldr	r2, [r3]
    1d5c:	e51b300c 	ldr	r3, [fp, #-12]
    1d60:	e5832000 	str	r2, [r3]
    1d64:	ea000003 	b	1d78 <free+0x100>
    1d68:	e51b3008 	ldr	r3, [fp, #-8]
    1d6c:	e5932000 	ldr	r2, [r3]
    1d70:	e51b300c 	ldr	r3, [fp, #-12]
    1d74:	e5832000 	str	r2, [r3]
    1d78:	e51b3008 	ldr	r3, [fp, #-8]
    1d7c:	e5933004 	ldr	r3, [r3, #4]
    1d80:	e1a03183 	lsl	r3, r3, #3
    1d84:	e51b2008 	ldr	r2, [fp, #-8]
    1d88:	e0823003 	add	r3, r2, r3
    1d8c:	e51b200c 	ldr	r2, [fp, #-12]
    1d90:	e1520003 	cmp	r2, r3
    1d94:	1a00000b 	bne	1dc8 <free+0x150>
    1d98:	e51b3008 	ldr	r3, [fp, #-8]
    1d9c:	e5932004 	ldr	r2, [r3, #4]
    1da0:	e51b300c 	ldr	r3, [fp, #-12]
    1da4:	e5933004 	ldr	r3, [r3, #4]
    1da8:	e0822003 	add	r2, r2, r3
    1dac:	e51b3008 	ldr	r3, [fp, #-8]
    1db0:	e5832004 	str	r2, [r3, #4]
    1db4:	e51b300c 	ldr	r3, [fp, #-12]
    1db8:	e5932000 	ldr	r2, [r3]
    1dbc:	e51b3008 	ldr	r3, [fp, #-8]
    1dc0:	e5832000 	str	r2, [r3]
    1dc4:	ea000002 	b	1dd4 <free+0x15c>
    1dc8:	e51b3008 	ldr	r3, [fp, #-8]
    1dcc:	e51b200c 	ldr	r2, [fp, #-12]
    1dd0:	e5832000 	str	r2, [r3]
    1dd4:	e59f2014 	ldr	r2, [pc, #20]	@ 1df0 <free+0x178>
    1dd8:	e51b3008 	ldr	r3, [fp, #-8]
    1ddc:	e5823000 	str	r3, [r2]
    1de0:	e1a00000 	nop			@ (mov r0, r0)
    1de4:	e28bd000 	add	sp, fp, #0
    1de8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1dec:	e12fff1e 	bx	lr
    1df0:	00002278 	.word	0x00002278

00001df4 <morecore>:
    1df4:	e92d4800 	push	{fp, lr}
    1df8:	e28db004 	add	fp, sp, #4
    1dfc:	e24dd010 	sub	sp, sp, #16
    1e00:	e50b0010 	str	r0, [fp, #-16]
    1e04:	e51b3010 	ldr	r3, [fp, #-16]
    1e08:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1e0c:	2a000001 	bcs	1e18 <morecore+0x24>
    1e10:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1e14:	e50b3010 	str	r3, [fp, #-16]
    1e18:	e51b3010 	ldr	r3, [fp, #-16]
    1e1c:	e1a03183 	lsl	r3, r3, #3
    1e20:	e1a00003 	mov	r0, r3
    1e24:	ebfffe61 	bl	17b0 <sbrk>
    1e28:	e50b0008 	str	r0, [fp, #-8]
    1e2c:	e51b3008 	ldr	r3, [fp, #-8]
    1e30:	e3730001 	cmn	r3, #1
    1e34:	1a000001 	bne	1e40 <morecore+0x4c>
    1e38:	e3a03000 	mov	r3, #0
    1e3c:	ea00000a 	b	1e6c <morecore+0x78>
    1e40:	e51b3008 	ldr	r3, [fp, #-8]
    1e44:	e50b300c 	str	r3, [fp, #-12]
    1e48:	e51b300c 	ldr	r3, [fp, #-12]
    1e4c:	e51b2010 	ldr	r2, [fp, #-16]
    1e50:	e5832004 	str	r2, [r3, #4]
    1e54:	e51b300c 	ldr	r3, [fp, #-12]
    1e58:	e2833008 	add	r3, r3, #8
    1e5c:	e1a00003 	mov	r0, r3
    1e60:	ebffff84 	bl	1c78 <free>
    1e64:	e59f300c 	ldr	r3, [pc, #12]	@ 1e78 <morecore+0x84>
    1e68:	e5933000 	ldr	r3, [r3]
    1e6c:	e1a00003 	mov	r0, r3
    1e70:	e24bd004 	sub	sp, fp, #4
    1e74:	e8bd8800 	pop	{fp, pc}
    1e78:	00002278 	.word	0x00002278

00001e7c <malloc>:
    1e7c:	e92d4800 	push	{fp, lr}
    1e80:	e28db004 	add	fp, sp, #4
    1e84:	e24dd018 	sub	sp, sp, #24
    1e88:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1e8c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1e90:	e2833007 	add	r3, r3, #7
    1e94:	e1a031a3 	lsr	r3, r3, #3
    1e98:	e2833001 	add	r3, r3, #1
    1e9c:	e50b3010 	str	r3, [fp, #-16]
    1ea0:	e59f3134 	ldr	r3, [pc, #308]	@ 1fdc <malloc+0x160>
    1ea4:	e5933000 	ldr	r3, [r3]
    1ea8:	e50b300c 	str	r3, [fp, #-12]
    1eac:	e51b300c 	ldr	r3, [fp, #-12]
    1eb0:	e3530000 	cmp	r3, #0
    1eb4:	1a00000b 	bne	1ee8 <malloc+0x6c>
    1eb8:	e59f3120 	ldr	r3, [pc, #288]	@ 1fe0 <malloc+0x164>
    1ebc:	e50b300c 	str	r3, [fp, #-12]
    1ec0:	e59f2114 	ldr	r2, [pc, #276]	@ 1fdc <malloc+0x160>
    1ec4:	e51b300c 	ldr	r3, [fp, #-12]
    1ec8:	e5823000 	str	r3, [r2]
    1ecc:	e59f3108 	ldr	r3, [pc, #264]	@ 1fdc <malloc+0x160>
    1ed0:	e5933000 	ldr	r3, [r3]
    1ed4:	e59f2104 	ldr	r2, [pc, #260]	@ 1fe0 <malloc+0x164>
    1ed8:	e5823000 	str	r3, [r2]
    1edc:	e59f30fc 	ldr	r3, [pc, #252]	@ 1fe0 <malloc+0x164>
    1ee0:	e3a02000 	mov	r2, #0
    1ee4:	e5832004 	str	r2, [r3, #4]
    1ee8:	e51b300c 	ldr	r3, [fp, #-12]
    1eec:	e5933000 	ldr	r3, [r3]
    1ef0:	e50b3008 	str	r3, [fp, #-8]
    1ef4:	e51b3008 	ldr	r3, [fp, #-8]
    1ef8:	e5933004 	ldr	r3, [r3, #4]
    1efc:	e51b2010 	ldr	r2, [fp, #-16]
    1f00:	e1520003 	cmp	r2, r3
    1f04:	8a00001e 	bhi	1f84 <malloc+0x108>
    1f08:	e51b3008 	ldr	r3, [fp, #-8]
    1f0c:	e5933004 	ldr	r3, [r3, #4]
    1f10:	e51b2010 	ldr	r2, [fp, #-16]
    1f14:	e1520003 	cmp	r2, r3
    1f18:	1a000004 	bne	1f30 <malloc+0xb4>
    1f1c:	e51b3008 	ldr	r3, [fp, #-8]
    1f20:	e5932000 	ldr	r2, [r3]
    1f24:	e51b300c 	ldr	r3, [fp, #-12]
    1f28:	e5832000 	str	r2, [r3]
    1f2c:	ea00000e 	b	1f6c <malloc+0xf0>
    1f30:	e51b3008 	ldr	r3, [fp, #-8]
    1f34:	e5932004 	ldr	r2, [r3, #4]
    1f38:	e51b3010 	ldr	r3, [fp, #-16]
    1f3c:	e0422003 	sub	r2, r2, r3
    1f40:	e51b3008 	ldr	r3, [fp, #-8]
    1f44:	e5832004 	str	r2, [r3, #4]
    1f48:	e51b3008 	ldr	r3, [fp, #-8]
    1f4c:	e5933004 	ldr	r3, [r3, #4]
    1f50:	e1a03183 	lsl	r3, r3, #3
    1f54:	e51b2008 	ldr	r2, [fp, #-8]
    1f58:	e0823003 	add	r3, r2, r3
    1f5c:	e50b3008 	str	r3, [fp, #-8]
    1f60:	e51b3008 	ldr	r3, [fp, #-8]
    1f64:	e51b2010 	ldr	r2, [fp, #-16]
    1f68:	e5832004 	str	r2, [r3, #4]
    1f6c:	e59f2068 	ldr	r2, [pc, #104]	@ 1fdc <malloc+0x160>
    1f70:	e51b300c 	ldr	r3, [fp, #-12]
    1f74:	e5823000 	str	r3, [r2]
    1f78:	e51b3008 	ldr	r3, [fp, #-8]
    1f7c:	e2833008 	add	r3, r3, #8
    1f80:	ea000012 	b	1fd0 <malloc+0x154>
    1f84:	e59f3050 	ldr	r3, [pc, #80]	@ 1fdc <malloc+0x160>
    1f88:	e5933000 	ldr	r3, [r3]
    1f8c:	e51b2008 	ldr	r2, [fp, #-8]
    1f90:	e1520003 	cmp	r2, r3
    1f94:	1a000007 	bne	1fb8 <malloc+0x13c>
    1f98:	e51b0010 	ldr	r0, [fp, #-16]
    1f9c:	ebffff94 	bl	1df4 <morecore>
    1fa0:	e50b0008 	str	r0, [fp, #-8]
    1fa4:	e51b3008 	ldr	r3, [fp, #-8]
    1fa8:	e3530000 	cmp	r3, #0
    1fac:	1a000001 	bne	1fb8 <malloc+0x13c>
    1fb0:	e3a03000 	mov	r3, #0
    1fb4:	ea000005 	b	1fd0 <malloc+0x154>
    1fb8:	e51b3008 	ldr	r3, [fp, #-8]
    1fbc:	e50b300c 	str	r3, [fp, #-12]
    1fc0:	e51b3008 	ldr	r3, [fp, #-8]
    1fc4:	e5933000 	ldr	r3, [r3]
    1fc8:	e50b3008 	str	r3, [fp, #-8]
    1fcc:	eaffffc8 	b	1ef4 <malloc+0x78>
    1fd0:	e1a00003 	mov	r0, r3
    1fd4:	e24bd004 	sub	sp, fp, #4
    1fd8:	e8bd8800 	pop	{fp, pc}
    1fdc:	00002278 	.word	0x00002278
    1fe0:	00002270 	.word	0x00002270

00001fe4 <__udivsi3>:
    1fe4:	e2512001 	subs	r2, r1, #1
    1fe8:	012fff1e 	bxeq	lr
    1fec:	3a000036 	bcc	20cc <__udivsi3+0xe8>
    1ff0:	e1500001 	cmp	r0, r1
    1ff4:	9a000022 	bls	2084 <__udivsi3+0xa0>
    1ff8:	e1110002 	tst	r1, r2
    1ffc:	0a000023 	beq	2090 <__udivsi3+0xac>
    2000:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    2004:	01a01181 	lsleq	r1, r1, #3
    2008:	03a03008 	moveq	r3, #8
    200c:	13a03001 	movne	r3, #1
    2010:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    2014:	31510000 	cmpcc	r1, r0
    2018:	31a01201 	lslcc	r1, r1, #4
    201c:	31a03203 	lslcc	r3, r3, #4
    2020:	3afffffa 	bcc	2010 <__udivsi3+0x2c>
    2024:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    2028:	31510000 	cmpcc	r1, r0
    202c:	31a01081 	lslcc	r1, r1, #1
    2030:	31a03083 	lslcc	r3, r3, #1
    2034:	3afffffa 	bcc	2024 <__udivsi3+0x40>
    2038:	e3a02000 	mov	r2, #0
    203c:	e1500001 	cmp	r0, r1
    2040:	20400001 	subcs	r0, r0, r1
    2044:	21822003 	orrcs	r2, r2, r3
    2048:	e15000a1 	cmp	r0, r1, lsr #1
    204c:	204000a1 	subcs	r0, r0, r1, lsr #1
    2050:	218220a3 	orrcs	r2, r2, r3, lsr #1
    2054:	e1500121 	cmp	r0, r1, lsr #2
    2058:	20400121 	subcs	r0, r0, r1, lsr #2
    205c:	21822123 	orrcs	r2, r2, r3, lsr #2
    2060:	e15001a1 	cmp	r0, r1, lsr #3
    2064:	204001a1 	subcs	r0, r0, r1, lsr #3
    2068:	218221a3 	orrcs	r2, r2, r3, lsr #3
    206c:	e3500000 	cmp	r0, #0
    2070:	11b03223 	lsrsne	r3, r3, #4
    2074:	11a01221 	lsrne	r1, r1, #4
    2078:	1affffef 	bne	203c <__udivsi3+0x58>
    207c:	e1a00002 	mov	r0, r2
    2080:	e12fff1e 	bx	lr
    2084:	03a00001 	moveq	r0, #1
    2088:	13a00000 	movne	r0, #0
    208c:	e12fff1e 	bx	lr
    2090:	e3510801 	cmp	r1, #65536	@ 0x10000
    2094:	21a01821 	lsrcs	r1, r1, #16
    2098:	23a02010 	movcs	r2, #16
    209c:	33a02000 	movcc	r2, #0
    20a0:	e3510c01 	cmp	r1, #256	@ 0x100
    20a4:	21a01421 	lsrcs	r1, r1, #8
    20a8:	22822008 	addcs	r2, r2, #8
    20ac:	e3510010 	cmp	r1, #16
    20b0:	21a01221 	lsrcs	r1, r1, #4
    20b4:	22822004 	addcs	r2, r2, #4
    20b8:	e3510004 	cmp	r1, #4
    20bc:	82822003 	addhi	r2, r2, #3
    20c0:	908220a1 	addls	r2, r2, r1, lsr #1
    20c4:	e1a00230 	lsr	r0, r0, r2
    20c8:	e12fff1e 	bx	lr
    20cc:	e3500000 	cmp	r0, #0
    20d0:	13e00000 	mvnne	r0, #0
    20d4:	ea000007 	b	20f8 <__aeabi_idiv0>

000020d8 <__aeabi_uidivmod>:
    20d8:	e3510000 	cmp	r1, #0
    20dc:	0afffffa 	beq	20cc <__udivsi3+0xe8>
    20e0:	e92d4003 	push	{r0, r1, lr}
    20e4:	ebffffbe 	bl	1fe4 <__udivsi3>
    20e8:	e8bd4006 	pop	{r1, r2, lr}
    20ec:	e0030092 	mul	r3, r2, r0
    20f0:	e0411003 	sub	r1, r1, r3
    20f4:	e12fff1e 	bx	lr

000020f8 <__aeabi_idiv0>:
    20f8:	e12fff1e 	bx	lr
