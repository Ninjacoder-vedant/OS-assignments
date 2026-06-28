
kernel.elf:     file format elf32-littlearm


Disassembly of section .start_sec:

00010000 <_start>:
   10000:	e59f1030 	ldr	r1, [pc, #48]	@ 10038 <jump_stack+0x10>
   10004:	e59f2030 	ldr	r2, [pc, #48]	@ 1003c <jump_stack+0x14>
   10008:	e3a03000 	mov	r3, #0
   1000c:	e1510002 	cmp	r1, r2
   10010:	b8a10008 	stmialt	r1!, {r3}
   10014:	bafffffc 	blt	1000c <_start+0xc>
   10018:	e32ff0d3 	msr	CPSR_fsxc, #211	@ 0xd3
   1001c:	e59fd01c 	ldr	sp, [pc, #28]	@ 10040 <jump_stack+0x18>
   10020:	eb0000f9 	bl	1040c <start>
   10024:	eafffffe 	b	10024 <_start+0x24>

00010028 <jump_stack>:
   10028:	e1a0000d 	mov	r0, sp
   1002c:	e2800102 	add	r0, r0, #-2147483648	@ 0x80000000
   10030:	e1a0d000 	mov	sp, r0
   10034:	e1a0f00e 	mov	pc, lr
   10038:	00010570 	.word	0x00010570
   1003c:	00019000 	.word	0x00019000
   10040:	00012000 	.word	0x00012000

00010044 <_uart_putc>:
   10044:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
   10048:	e28db000 	add	fp, sp, #0
   1004c:	e24dd014 	sub	sp, sp, #20
   10050:	e50b0010 	str	r0, [fp, #-16]
   10054:	e59f3020 	ldr	r3, [pc, #32]	@ 1007c <_uart_putc+0x38>
   10058:	e50b3008 	str	r3, [fp, #-8]
   1005c:	e51b3010 	ldr	r3, [fp, #-16]
   10060:	e6ef2073 	uxtb	r2, r3
   10064:	e51b3008 	ldr	r3, [fp, #-8]
   10068:	e5c32000 	strb	r2, [r3]
   1006c:	e1a00000 	nop			@ (mov r0, r0)
   10070:	e28bd000 	add	sp, fp, #0
   10074:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
   10078:	e12fff1e 	bx	lr
   1007c:	101f1000 	.word	0x101f1000

00010080 <_puts>:
   10080:	e92d4800 	push	{fp, lr}
   10084:	e28db004 	add	fp, sp, #4
   10088:	e24dd008 	sub	sp, sp, #8
   1008c:	e50b0008 	str	r0, [fp, #-8]
   10090:	ea000006 	b	100b0 <_puts+0x30>
   10094:	e51b3008 	ldr	r3, [fp, #-8]
   10098:	e5d33000 	ldrb	r3, [r3]
   1009c:	e1a00003 	mov	r0, r3
   100a0:	ebffffe7 	bl	10044 <_uart_putc>
   100a4:	e51b3008 	ldr	r3, [fp, #-8]
   100a8:	e2833001 	add	r3, r3, #1
   100ac:	e50b3008 	str	r3, [fp, #-8]
   100b0:	e51b3008 	ldr	r3, [fp, #-8]
   100b4:	e5d33000 	ldrb	r3, [r3]
   100b8:	e3530000 	cmp	r3, #0
   100bc:	1afffff4 	bne	10094 <_puts+0x14>
   100c0:	e1a00000 	nop			@ (mov r0, r0)
   100c4:	e1a00000 	nop			@ (mov r0, r0)
   100c8:	e24bd004 	sub	sp, fp, #4
   100cc:	e8bd8800 	pop	{fp, pc}

000100d0 <_putint>:
   100d0:	e92d4800 	push	{fp, lr}
   100d4:	e28db004 	add	fp, sp, #4
   100d8:	e24dd018 	sub	sp, sp, #24
   100dc:	e50b0010 	str	r0, [fp, #-16]
   100e0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
   100e4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
   100e8:	e59f307c 	ldr	r3, [pc, #124]	@ 1016c <_putint+0x9c>
   100ec:	e50b300c 	str	r3, [fp, #-12]
   100f0:	e51b3010 	ldr	r3, [fp, #-16]
   100f4:	e3530000 	cmp	r3, #0
   100f8:	0a000001 	beq	10104 <_putint+0x34>
   100fc:	e51b0010 	ldr	r0, [fp, #-16]
   10100:	ebffffde 	bl	10080 <_puts>
   10104:	e3a0301c 	mov	r3, #28
   10108:	e50b3008 	str	r3, [fp, #-8]
   1010c:	ea00000b 	b	10140 <_putint+0x70>
   10110:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
   10114:	e51b3008 	ldr	r3, [fp, #-8]
   10118:	e1a03332 	lsr	r3, r2, r3
   1011c:	e203300f 	and	r3, r3, #15
   10120:	e51b200c 	ldr	r2, [fp, #-12]
   10124:	e0823003 	add	r3, r2, r3
   10128:	e5d33000 	ldrb	r3, [r3]
   1012c:	e1a00003 	mov	r0, r3
   10130:	ebffffc3 	bl	10044 <_uart_putc>
   10134:	e51b3008 	ldr	r3, [fp, #-8]
   10138:	e2433004 	sub	r3, r3, #4
   1013c:	e50b3008 	str	r3, [fp, #-8]
   10140:	e51b3008 	ldr	r3, [fp, #-8]
   10144:	e3530000 	cmp	r3, #0
   10148:	aafffff0 	bge	10110 <_putint+0x40>
   1014c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
   10150:	e3530000 	cmp	r3, #0
   10154:	0a000001 	beq	10160 <_putint+0x90>
   10158:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
   1015c:	ebffffc7 	bl	10080 <_puts>
   10160:	e1a00000 	nop			@ (mov r0, r0)
   10164:	e24bd004 	sub	sp, fp, #4
   10168:	e8bd8800 	pop	{fp, pc}
   1016c:	000104f8 	.word	0x000104f8

00010170 <get_pde>:
   10170:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
   10174:	e28db000 	add	fp, sp, #0
   10178:	e24dd00c 	sub	sp, sp, #12
   1017c:	e50b0008 	str	r0, [fp, #-8]
   10180:	e51b3008 	ldr	r3, [fp, #-8]
   10184:	e1a03a23 	lsr	r3, r3, #20
   10188:	e50b3008 	str	r3, [fp, #-8]
   1018c:	e59f3020 	ldr	r3, [pc, #32]	@ 101b4 <get_pde+0x44>
   10190:	e5932000 	ldr	r2, [r3]
   10194:	e51b3008 	ldr	r3, [fp, #-8]
   10198:	e1a03103 	lsl	r3, r3, #2
   1019c:	e0823003 	add	r3, r2, r3
   101a0:	e5933000 	ldr	r3, [r3]
   101a4:	e1a00003 	mov	r0, r3
   101a8:	e28bd000 	add	sp, fp, #0
   101ac:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
   101b0:	e12fff1e 	bx	lr
   101b4:	00010568 	.word	0x00010568

000101b8 <set_bootpgtbl>:
   101b8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
   101bc:	e28db000 	add	fp, sp, #0
   101c0:	e24dd01c 	sub	sp, sp, #28
   101c4:	e50b0010 	str	r0, [fp, #-16]
   101c8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
   101cc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
   101d0:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
   101d4:	e51b3010 	ldr	r3, [fp, #-16]
   101d8:	e1a03a23 	lsr	r3, r3, #20
   101dc:	e50b3010 	str	r3, [fp, #-16]
   101e0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
   101e4:	e1a03a23 	lsr	r3, r3, #20
   101e8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
   101ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
   101f0:	e1a03a23 	lsr	r3, r3, #20
   101f4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
   101f8:	e3a03000 	mov	r3, #0
   101fc:	e50b300c 	str	r3, [fp, #-12]
   10200:	ea000029 	b	102ac <set_bootpgtbl+0xf4>
   10204:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
   10208:	e1a03a03 	lsl	r3, r3, #20
   1020c:	e50b3008 	str	r3, [fp, #-8]
   10210:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
   10214:	e3530000 	cmp	r3, #0
   10218:	1a000004 	bne	10230 <set_bootpgtbl+0x78>
   1021c:	e51b3008 	ldr	r3, [fp, #-8]
   10220:	e3833b01 	orr	r3, r3, #1024	@ 0x400
   10224:	e383300e 	orr	r3, r3, #14
   10228:	e50b3008 	str	r3, [fp, #-8]
   1022c:	ea000003 	b	10240 <set_bootpgtbl+0x88>
   10230:	e51b3008 	ldr	r3, [fp, #-8]
   10234:	e3833b01 	orr	r3, r3, #1024	@ 0x400
   10238:	e3833002 	orr	r3, r3, #2
   1023c:	e50b3008 	str	r3, [fp, #-8]
   10240:	e51b3010 	ldr	r3, [fp, #-16]
   10244:	e35300ff 	cmp	r3, #255	@ 0xff
   10248:	8a000007 	bhi	1026c <set_bootpgtbl+0xb4>
   1024c:	e59f307c 	ldr	r3, [pc, #124]	@ 102d0 <set_bootpgtbl+0x118>
   10250:	e5932000 	ldr	r2, [r3]
   10254:	e51b3010 	ldr	r3, [fp, #-16]
   10258:	e1a03103 	lsl	r3, r3, #2
   1025c:	e0823003 	add	r3, r2, r3
   10260:	e51b2008 	ldr	r2, [fp, #-8]
   10264:	e5832000 	str	r2, [r3]
   10268:	ea000006 	b	10288 <set_bootpgtbl+0xd0>
   1026c:	e59f3060 	ldr	r3, [pc, #96]	@ 102d4 <set_bootpgtbl+0x11c>
   10270:	e5932000 	ldr	r2, [r3]
   10274:	e51b3010 	ldr	r3, [fp, #-16]
   10278:	e1a03103 	lsl	r3, r3, #2
   1027c:	e0823003 	add	r3, r2, r3
   10280:	e51b2008 	ldr	r2, [fp, #-8]
   10284:	e5832000 	str	r2, [r3]
   10288:	e51b3010 	ldr	r3, [fp, #-16]
   1028c:	e2833001 	add	r3, r3, #1
   10290:	e50b3010 	str	r3, [fp, #-16]
   10294:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
   10298:	e2833001 	add	r3, r3, #1
   1029c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
   102a0:	e51b300c 	ldr	r3, [fp, #-12]
   102a4:	e2833001 	add	r3, r3, #1
   102a8:	e50b300c 	str	r3, [fp, #-12]
   102ac:	e51b300c 	ldr	r3, [fp, #-12]
   102b0:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
   102b4:	e1520003 	cmp	r2, r3
   102b8:	8affffd1 	bhi	10204 <set_bootpgtbl+0x4c>
   102bc:	e1a00000 	nop			@ (mov r0, r0)
   102c0:	e1a00000 	nop			@ (mov r0, r0)
   102c4:	e28bd000 	add	sp, fp, #0
   102c8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
   102cc:	e12fff1e 	bx	lr
   102d0:	0001056c 	.word	0x0001056c
   102d4:	00010568 	.word	0x00010568

000102d8 <_flush_all>:
   102d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
   102dc:	e28db000 	add	fp, sp, #0
   102e0:	e24dd00c 	sub	sp, sp, #12
   102e4:	e3a03000 	mov	r3, #0
   102e8:	e50b3008 	str	r3, [fp, #-8]
   102ec:	e51b3008 	ldr	r3, [fp, #-8]
   102f0:	ee083f17 	mcr	15, 0, r3, cr8, cr7, {0}
   102f4:	e1a00000 	nop			@ (mov r0, r0)
   102f8:	e28bd000 	add	sp, fp, #0
   102fc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
   10300:	e12fff1e 	bx	lr

00010304 <load_pgtlb>:
   10304:	e92d4800 	push	{fp, lr}
   10308:	e28db004 	add	fp, sp, #4
   1030c:	e24dd018 	sub	sp, sp, #24
   10310:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
   10314:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
   10318:	ee103f10 	mrc	15, 0, r3, cr0, cr0, {0}
   1031c:	e50b3008 	str	r3, [fp, #-8]
   10320:	e51b3008 	ldr	r3, [fp, #-8]
   10324:	e1a03823 	lsr	r3, r3, #16
   10328:	e6ef3073 	uxtb	r3, r3
   1032c:	e203300f 	and	r3, r3, #15
   10330:	e54b3009 	strb	r3, [fp, #-9]
   10334:	e55b3009 	ldrb	r3, [fp, #-9]
   10338:	e3530007 	cmp	r3, #7
   1033c:	0a000004 	beq	10354 <load_pgtlb+0x50>
   10340:	e55b3009 	ldrb	r3, [fp, #-9]
   10344:	e353000f 	cmp	r3, #15
   10348:	0a000001 	beq	10354 <load_pgtlb+0x50>
   1034c:	e59f0074 	ldr	r0, [pc, #116]	@ 103c8 <load_pgtlb+0xc4>
   10350:	ebffff4a 	bl	10080 <_puts>
   10354:	e59f3070 	ldr	r3, [pc, #112]	@ 103cc <load_pgtlb+0xc8>
   10358:	e50b3010 	str	r3, [fp, #-16]
   1035c:	e51b3010 	ldr	r3, [fp, #-16]
   10360:	ee033f10 	mcr	15, 0, r3, cr3, cr0, {0}
   10364:	e3a03004 	mov	r3, #4
   10368:	e50b3010 	str	r3, [fp, #-16]
   1036c:	e51b3010 	ldr	r3, [fp, #-16]
   10370:	ee023f50 	mcr	15, 0, r3, cr2, cr0, {2}
   10374:	e59f3054 	ldr	r3, [pc, #84]	@ 103d0 <load_pgtlb+0xcc>
   10378:	e5933000 	ldr	r3, [r3]
   1037c:	e50b3010 	str	r3, [fp, #-16]
   10380:	e51b3010 	ldr	r3, [fp, #-16]
   10384:	ee023f30 	mcr	15, 0, r3, cr2, cr0, {1}
   10388:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
   1038c:	e50b3010 	str	r3, [fp, #-16]
   10390:	e51b3010 	ldr	r3, [fp, #-16]
   10394:	ee023f10 	mcr	15, 0, r3, cr2, cr0, {0}
   10398:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
   1039c:	e50b3010 	str	r3, [fp, #-16]
   103a0:	e51b2010 	ldr	r2, [fp, #-16]
   103a4:	e59f3028 	ldr	r3, [pc, #40]	@ 103d4 <load_pgtlb+0xd0>
   103a8:	e1823003 	orr	r3, r2, r3
   103ac:	e50b3010 	str	r3, [fp, #-16]
   103b0:	e51b3010 	ldr	r3, [fp, #-16]
   103b4:	ee013f10 	mcr	15, 0, r3, cr1, cr0, {0}
   103b8:	ebffffc6 	bl	102d8 <_flush_all>
   103bc:	e1a00000 	nop			@ (mov r0, r0)
   103c0:	e24bd004 	sub	sp, fp, #4
   103c4:	e8bd8800 	pop	{fp, pc}
   103c8:	0001050c 	.word	0x0001050c
   103cc:	55555555 	.word	0x55555555
   103d0:	00010568 	.word	0x00010568
   103d4:	0080300d 	.word	0x0080300d

000103d8 <clear_bss>:
   103d8:	e92d4800 	push	{fp, lr}
   103dc:	e28db004 	add	fp, sp, #4
   103e0:	e59f201c 	ldr	r2, [pc, #28]	@ 10404 <clear_bss+0x2c>
   103e4:	e59f301c 	ldr	r3, [pc, #28]	@ 10408 <clear_bss+0x30>
   103e8:	e0423003 	sub	r3, r2, r3
   103ec:	e1a02003 	mov	r2, r3
   103f0:	e3a01000 	mov	r1, #0
   103f4:	e59f000c 	ldr	r0, [pc, #12]	@ 10408 <clear_bss+0x30>
   103f8:	eb000038 	bl	104e0 <__memset_veneer>
   103fc:	e1a00000 	nop			@ (mov r0, r0)
   10400:	e8bd8800 	pop	{fp, pc}
   10404:	800b2000 	.word	0x800b2000
   10408:	800ab0d4 	.word	0x800ab0d4

0001040c <start>:
   1040c:	e92d4800 	push	{fp, lr}
   10410:	e28db004 	add	fp, sp, #4
   10414:	e24dd008 	sub	sp, sp, #8
   10418:	e59f00a4 	ldr	r0, [pc, #164]	@ 104c4 <start+0xb8>
   1041c:	ebffff17 	bl	10080 <_puts>
   10420:	e3a03000 	mov	r3, #0
   10424:	e3a02601 	mov	r2, #1048576	@ 0x100000
   10428:	e3a01000 	mov	r1, #0
   1042c:	e3a00000 	mov	r0, #0
   10430:	ebffff60 	bl	101b8 <set_bootpgtbl>
   10434:	e3a03000 	mov	r3, #0
   10438:	e3a02601 	mov	r2, #1048576	@ 0x100000
   1043c:	e3a01000 	mov	r1, #0
   10440:	e3a00102 	mov	r0, #-2147483648	@ 0x80000000
   10444:	ebffff5b 	bl	101b8 <set_bootpgtbl>
   10448:	e59f3078 	ldr	r3, [pc, #120]	@ 104c8 <start+0xbc>
   1044c:	e50b3008 	str	r3, [fp, #-8]
   10450:	e59f2074 	ldr	r2, [pc, #116]	@ 104cc <start+0xc0>
   10454:	e51b3008 	ldr	r3, [fp, #-8]
   10458:	e1530002 	cmp	r3, r2
   1045c:	8a000001 	bhi	10468 <start+0x5c>
   10460:	e59f0068 	ldr	r0, [pc, #104]	@ 104d0 <start+0xc4>
   10464:	eb00001f 	bl	104e8 <__cprintf_veneer>
   10468:	e3a03000 	mov	r3, #0
   1046c:	e3a02601 	mov	r2, #1048576	@ 0x100000
   10470:	e3a01000 	mov	r1, #0
   10474:	e59f0058 	ldr	r0, [pc, #88]	@ 104d4 <start+0xc8>
   10478:	ebffff4e 	bl	101b8 <set_bootpgtbl>
   1047c:	e3a03001 	mov	r3, #1
   10480:	e3a02302 	mov	r2, #134217728	@ 0x8000000
   10484:	e3a01201 	mov	r1, #268435456	@ 0x10000000
   10488:	e3a00209 	mov	r0, #-1879048192	@ 0x90000000
   1048c:	ebffff49 	bl	101b8 <set_bootpgtbl>
   10490:	e59f3040 	ldr	r3, [pc, #64]	@ 104d8 <start+0xcc>
   10494:	e5933000 	ldr	r3, [r3]
   10498:	e59f203c 	ldr	r2, [pc, #60]	@ 104dc <start+0xd0>
   1049c:	e5922000 	ldr	r2, [r2]
   104a0:	e1a01002 	mov	r1, r2
   104a4:	e1a00003 	mov	r0, r3
   104a8:	ebffff95 	bl	10304 <load_pgtlb>
   104ac:	ebfffedd 	bl	10028 <jump_stack>
   104b0:	ebffffc8 	bl	103d8 <clear_bss>
   104b4:	eb00000d 	bl	104f0 <__kmain_veneer>
   104b8:	e1a00000 	nop			@ (mov r0, r0)
   104bc:	e24bd004 	sub	sp, fp, #4
   104c0:	e8bd8800 	pop	{fp, pc}
   104c4:	00010524 	.word	0x00010524
   104c8:	800f0000 	.word	0x800f0000
   104cc:	800b2000 	.word	0x800b2000
   104d0:	00010540 	.word	0x00010540
   104d4:	ffff0000 	.word	0xffff0000
   104d8:	00010568 	.word	0x00010568
   104dc:	0001056c 	.word	0x0001056c

000104e0 <__memset_veneer>:
   104e0:	e51ff004 	ldr	pc, [pc, #-4]	@ 104e4 <__memset_veneer+0x4>
   104e4:	80020000 	.word	0x80020000

000104e8 <__cprintf_veneer>:
   104e8:	e51ff004 	ldr	pc, [pc, #-4]	@ 104ec <__cprintf_veneer+0x4>
   104ec:	80021894 	.word	0x80021894

000104f0 <__kmain_veneer>:
   104f0:	e51ff004 	ldr	pc, [pc, #-4]	@ 104f4 <__kmain_veneer+0x4>
   104f4:	80024a78 	.word	0x80024a78
   104f8:	33323130 	.word	0x33323130
   104fc:	37363534 	.word	0x37363534
   10500:	42413938 	.word	0x42413938
   10504:	46454443 	.word	0x46454443
   10508:	00000000 	.word	0x00000000
   1050c:	6465656e 	.word	0x6465656e
   10510:	52414120 	.word	0x52414120
   10514:	3676204d 	.word	0x3676204d
   10518:	20726f20 	.word	0x20726f20
   1051c:	68676968 	.word	0x68676968
   10520:	000a7265 	.word	0x000a7265
   10524:	72617473 	.word	0x72617473
   10528:	676e6974 	.word	0x676e6974
   1052c:	36767820 	.word	0x36767820
   10530:	726f6620 	.word	0x726f6620
   10534:	4d524120 	.word	0x4d524120
   10538:	0a2e2e2e 	.word	0x0a2e2e2e
   1053c:	00000000 	.word	0x00000000
   10540:	6f727265 	.word	0x6f727265
   10544:	76203a72 	.word	0x76203a72
   10548:	6f746365 	.word	0x6f746365
   1054c:	61742072 	.word	0x61742072
   10550:	20656c62 	.word	0x20656c62
   10554:	7265766f 	.word	0x7265766f
   10558:	7370616c 	.word	0x7370616c
   1055c:	72656b20 	.word	0x72656b20
   10560:	0a6c656e 	.word	0x0a6c656e
   10564:	00000000 	.word	0x00000000

00010568 <kernel_pgtbl>:
   10568:	00014000                                .@..

0001056c <user_pgtbl>:
   1056c:	00018000                                ....

00010570 <edata_entry>:
	...

00012000 <svc_stktop>:
	...

00014000 <_kernel_pgtbl>:
	...

00018000 <_user_pgtbl>:
	...

Disassembly of section .text:

80020000 <memset>:
80020000:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020004:	e28db000 	add	fp, sp, #0
80020008:	e24dd024 	sub	sp, sp, #36	@ 0x24
8002000c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80020010:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80020014:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80020018:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002001c:	e50b3008 	str	r3, [fp, #-8]
80020020:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80020024:	e54b300d 	strb	r3, [fp, #-13]
80020028:	e55b200d 	ldrb	r2, [fp, #-13]
8002002c:	e1a03002 	mov	r3, r2
80020030:	e1a03403 	lsl	r3, r3, #8
80020034:	e0833002 	add	r3, r3, r2
80020038:	e1a03803 	lsl	r3, r3, #16
8002003c:	e1a02003 	mov	r2, r3
80020040:	e55b300d 	ldrb	r3, [fp, #-13]
80020044:	e1a03403 	lsl	r3, r3, #8
80020048:	e1822003 	orr	r2, r2, r3
8002004c:	e55b300d 	ldrb	r3, [fp, #-13]
80020050:	e1823003 	orr	r3, r2, r3
80020054:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80020058:	ea000008 	b	80020080 <memset+0x80>
8002005c:	e51b3008 	ldr	r3, [fp, #-8]
80020060:	e55b200d 	ldrb	r2, [fp, #-13]
80020064:	e5c32000 	strb	r2, [r3]
80020068:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002006c:	e2433001 	sub	r3, r3, #1
80020070:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
80020074:	e51b3008 	ldr	r3, [fp, #-8]
80020078:	e2833001 	add	r3, r3, #1
8002007c:	e50b3008 	str	r3, [fp, #-8]
80020080:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80020084:	e3530000 	cmp	r3, #0
80020088:	da000003 	ble	8002009c <memset+0x9c>
8002008c:	e51b3008 	ldr	r3, [fp, #-8]
80020090:	e2033003 	and	r3, r3, #3
80020094:	e3530000 	cmp	r3, #0
80020098:	1affffef 	bne	8002005c <memset+0x5c>
8002009c:	e51b3008 	ldr	r3, [fp, #-8]
800200a0:	e50b300c 	str	r3, [fp, #-12]
800200a4:	ea000008 	b	800200cc <memset+0xcc>
800200a8:	e51b300c 	ldr	r3, [fp, #-12]
800200ac:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800200b0:	e5832000 	str	r2, [r3]
800200b4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800200b8:	e2433004 	sub	r3, r3, #4
800200bc:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
800200c0:	e51b300c 	ldr	r3, [fp, #-12]
800200c4:	e2833004 	add	r3, r3, #4
800200c8:	e50b300c 	str	r3, [fp, #-12]
800200cc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800200d0:	e3530003 	cmp	r3, #3
800200d4:	cafffff3 	bgt	800200a8 <memset+0xa8>
800200d8:	e51b300c 	ldr	r3, [fp, #-12]
800200dc:	e50b3008 	str	r3, [fp, #-8]
800200e0:	ea000008 	b	80020108 <memset+0x108>
800200e4:	e51b3008 	ldr	r3, [fp, #-8]
800200e8:	e55b200d 	ldrb	r2, [fp, #-13]
800200ec:	e5c32000 	strb	r2, [r3]
800200f0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800200f4:	e2433001 	sub	r3, r3, #1
800200f8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
800200fc:	e51b3008 	ldr	r3, [fp, #-8]
80020100:	e2833001 	add	r3, r3, #1
80020104:	e50b3008 	str	r3, [fp, #-8]
80020108:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002010c:	e3530000 	cmp	r3, #0
80020110:	cafffff3 	bgt	800200e4 <memset+0xe4>
80020114:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020118:	e1a00003 	mov	r0, r3
8002011c:	e28bd000 	add	sp, fp, #0
80020120:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020124:	e12fff1e 	bx	lr

80020128 <memcmp>:
80020128:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002012c:	e28db000 	add	fp, sp, #0
80020130:	e24dd01c 	sub	sp, sp, #28
80020134:	e50b0010 	str	r0, [fp, #-16]
80020138:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
8002013c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80020140:	e51b3010 	ldr	r3, [fp, #-16]
80020144:	e50b3008 	str	r3, [fp, #-8]
80020148:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002014c:	e50b300c 	str	r3, [fp, #-12]
80020150:	ea000012 	b	800201a0 <memcmp+0x78>
80020154:	e51b3008 	ldr	r3, [fp, #-8]
80020158:	e5d32000 	ldrb	r2, [r3]
8002015c:	e51b300c 	ldr	r3, [fp, #-12]
80020160:	e5d33000 	ldrb	r3, [r3]
80020164:	e1520003 	cmp	r2, r3
80020168:	0a000006 	beq	80020188 <memcmp+0x60>
8002016c:	e51b3008 	ldr	r3, [fp, #-8]
80020170:	e5d33000 	ldrb	r3, [r3]
80020174:	e1a02003 	mov	r2, r3
80020178:	e51b300c 	ldr	r3, [fp, #-12]
8002017c:	e5d33000 	ldrb	r3, [r3]
80020180:	e0423003 	sub	r3, r2, r3
80020184:	ea00000b 	b	800201b8 <memcmp+0x90>
80020188:	e51b3008 	ldr	r3, [fp, #-8]
8002018c:	e2833001 	add	r3, r3, #1
80020190:	e50b3008 	str	r3, [fp, #-8]
80020194:	e51b300c 	ldr	r3, [fp, #-12]
80020198:	e2833001 	add	r3, r3, #1
8002019c:	e50b300c 	str	r3, [fp, #-12]
800201a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800201a4:	e2432001 	sub	r2, r3, #1
800201a8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800201ac:	e3530000 	cmp	r3, #0
800201b0:	1affffe7 	bne	80020154 <memcmp+0x2c>
800201b4:	e3a03000 	mov	r3, #0
800201b8:	e1a00003 	mov	r0, r3
800201bc:	e28bd000 	add	sp, fp, #0
800201c0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800201c4:	e12fff1e 	bx	lr

800201c8 <memmove>:
800201c8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800201cc:	e28db000 	add	fp, sp, #0
800201d0:	e24dd01c 	sub	sp, sp, #28
800201d4:	e50b0010 	str	r0, [fp, #-16]
800201d8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800201dc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800201e0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800201e4:	e50b3008 	str	r3, [fp, #-8]
800201e8:	e51b3010 	ldr	r3, [fp, #-16]
800201ec:	e50b300c 	str	r3, [fp, #-12]
800201f0:	e51b2008 	ldr	r2, [fp, #-8]
800201f4:	e51b300c 	ldr	r3, [fp, #-12]
800201f8:	e1520003 	cmp	r2, r3
800201fc:	2a000026 	bcs	8002029c <memmove+0xd4>
80020200:	e51b2008 	ldr	r2, [fp, #-8]
80020204:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020208:	e0823003 	add	r3, r2, r3
8002020c:	e51b200c 	ldr	r2, [fp, #-12]
80020210:	e1520003 	cmp	r2, r3
80020214:	2a000020 	bcs	8002029c <memmove+0xd4>
80020218:	e51b2008 	ldr	r2, [fp, #-8]
8002021c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020220:	e0823003 	add	r3, r2, r3
80020224:	e50b3008 	str	r3, [fp, #-8]
80020228:	e51b200c 	ldr	r2, [fp, #-12]
8002022c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020230:	e0823003 	add	r3, r2, r3
80020234:	e50b300c 	str	r3, [fp, #-12]
80020238:	ea000009 	b	80020264 <memmove+0x9c>
8002023c:	e51b3008 	ldr	r3, [fp, #-8]
80020240:	e2433001 	sub	r3, r3, #1
80020244:	e50b3008 	str	r3, [fp, #-8]
80020248:	e51b300c 	ldr	r3, [fp, #-12]
8002024c:	e2433001 	sub	r3, r3, #1
80020250:	e50b300c 	str	r3, [fp, #-12]
80020254:	e51b3008 	ldr	r3, [fp, #-8]
80020258:	e5d32000 	ldrb	r2, [r3]
8002025c:	e51b300c 	ldr	r3, [fp, #-12]
80020260:	e5c32000 	strb	r2, [r3]
80020264:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020268:	e2432001 	sub	r2, r3, #1
8002026c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80020270:	e3530000 	cmp	r3, #0
80020274:	1afffff0 	bne	8002023c <memmove+0x74>
80020278:	ea00000c 	b	800202b0 <memmove+0xe8>
8002027c:	e51b2008 	ldr	r2, [fp, #-8]
80020280:	e2823001 	add	r3, r2, #1
80020284:	e50b3008 	str	r3, [fp, #-8]
80020288:	e51b300c 	ldr	r3, [fp, #-12]
8002028c:	e2831001 	add	r1, r3, #1
80020290:	e50b100c 	str	r1, [fp, #-12]
80020294:	e5d22000 	ldrb	r2, [r2]
80020298:	e5c32000 	strb	r2, [r3]
8002029c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800202a0:	e2432001 	sub	r2, r3, #1
800202a4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800202a8:	e3530000 	cmp	r3, #0
800202ac:	1afffff2 	bne	8002027c <memmove+0xb4>
800202b0:	e51b3010 	ldr	r3, [fp, #-16]
800202b4:	e1a00003 	mov	r0, r3
800202b8:	e28bd000 	add	sp, fp, #0
800202bc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800202c0:	e12fff1e 	bx	lr

800202c4 <memcpy>:
800202c4:	e92d4800 	push	{fp, lr}
800202c8:	e28db004 	add	fp, sp, #4
800202cc:	e24dd010 	sub	sp, sp, #16
800202d0:	e50b0008 	str	r0, [fp, #-8]
800202d4:	e50b100c 	str	r1, [fp, #-12]
800202d8:	e50b2010 	str	r2, [fp, #-16]
800202dc:	e51b2010 	ldr	r2, [fp, #-16]
800202e0:	e51b100c 	ldr	r1, [fp, #-12]
800202e4:	e51b0008 	ldr	r0, [fp, #-8]
800202e8:	ebffffb6 	bl	800201c8 <memmove>
800202ec:	e1a03000 	mov	r3, r0
800202f0:	e1a00003 	mov	r0, r3
800202f4:	e24bd004 	sub	sp, fp, #4
800202f8:	e8bd8800 	pop	{fp, pc}

800202fc <strncmp>:
800202fc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020300:	e28db000 	add	fp, sp, #0
80020304:	e24dd014 	sub	sp, sp, #20
80020308:	e50b0008 	str	r0, [fp, #-8]
8002030c:	e50b100c 	str	r1, [fp, #-12]
80020310:	e50b2010 	str	r2, [fp, #-16]
80020314:	ea000008 	b	8002033c <strncmp+0x40>
80020318:	e51b3010 	ldr	r3, [fp, #-16]
8002031c:	e2433001 	sub	r3, r3, #1
80020320:	e50b3010 	str	r3, [fp, #-16]
80020324:	e51b3008 	ldr	r3, [fp, #-8]
80020328:	e2833001 	add	r3, r3, #1
8002032c:	e50b3008 	str	r3, [fp, #-8]
80020330:	e51b300c 	ldr	r3, [fp, #-12]
80020334:	e2833001 	add	r3, r3, #1
80020338:	e50b300c 	str	r3, [fp, #-12]
8002033c:	e51b3010 	ldr	r3, [fp, #-16]
80020340:	e3530000 	cmp	r3, #0
80020344:	0a000009 	beq	80020370 <strncmp+0x74>
80020348:	e51b3008 	ldr	r3, [fp, #-8]
8002034c:	e5d33000 	ldrb	r3, [r3]
80020350:	e3530000 	cmp	r3, #0
80020354:	0a000005 	beq	80020370 <strncmp+0x74>
80020358:	e51b3008 	ldr	r3, [fp, #-8]
8002035c:	e5d32000 	ldrb	r2, [r3]
80020360:	e51b300c 	ldr	r3, [fp, #-12]
80020364:	e5d33000 	ldrb	r3, [r3]
80020368:	e1520003 	cmp	r2, r3
8002036c:	0affffe9 	beq	80020318 <strncmp+0x1c>
80020370:	e51b3010 	ldr	r3, [fp, #-16]
80020374:	e3530000 	cmp	r3, #0
80020378:	1a000001 	bne	80020384 <strncmp+0x88>
8002037c:	e3a03000 	mov	r3, #0
80020380:	ea000005 	b	8002039c <strncmp+0xa0>
80020384:	e51b3008 	ldr	r3, [fp, #-8]
80020388:	e5d33000 	ldrb	r3, [r3]
8002038c:	e1a02003 	mov	r2, r3
80020390:	e51b300c 	ldr	r3, [fp, #-12]
80020394:	e5d33000 	ldrb	r3, [r3]
80020398:	e0423003 	sub	r3, r2, r3
8002039c:	e1a00003 	mov	r0, r3
800203a0:	e28bd000 	add	sp, fp, #0
800203a4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800203a8:	e12fff1e 	bx	lr

800203ac <strncpy>:
800203ac:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800203b0:	e28db000 	add	fp, sp, #0
800203b4:	e24dd01c 	sub	sp, sp, #28
800203b8:	e50b0010 	str	r0, [fp, #-16]
800203bc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800203c0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800203c4:	e51b3010 	ldr	r3, [fp, #-16]
800203c8:	e50b3008 	str	r3, [fp, #-8]
800203cc:	e1a00000 	nop			@ (mov r0, r0)
800203d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800203d4:	e2432001 	sub	r2, r3, #1
800203d8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800203dc:	e3530000 	cmp	r3, #0
800203e0:	da000010 	ble	80020428 <strncpy+0x7c>
800203e4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800203e8:	e2823001 	add	r3, r2, #1
800203ec:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
800203f0:	e51b3010 	ldr	r3, [fp, #-16]
800203f4:	e2831001 	add	r1, r3, #1
800203f8:	e50b1010 	str	r1, [fp, #-16]
800203fc:	e5d22000 	ldrb	r2, [r2]
80020400:	e5c32000 	strb	r2, [r3]
80020404:	e5d33000 	ldrb	r3, [r3]
80020408:	e3530000 	cmp	r3, #0
8002040c:	1affffef 	bne	800203d0 <strncpy+0x24>
80020410:	ea000004 	b	80020428 <strncpy+0x7c>
80020414:	e51b3010 	ldr	r3, [fp, #-16]
80020418:	e2832001 	add	r2, r3, #1
8002041c:	e50b2010 	str	r2, [fp, #-16]
80020420:	e3a02000 	mov	r2, #0
80020424:	e5c32000 	strb	r2, [r3]
80020428:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002042c:	e2432001 	sub	r2, r3, #1
80020430:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80020434:	e3530000 	cmp	r3, #0
80020438:	cafffff5 	bgt	80020414 <strncpy+0x68>
8002043c:	e51b3008 	ldr	r3, [fp, #-8]
80020440:	e1a00003 	mov	r0, r3
80020444:	e28bd000 	add	sp, fp, #0
80020448:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002044c:	e12fff1e 	bx	lr

80020450 <safestrcpy>:
80020450:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020454:	e28db000 	add	fp, sp, #0
80020458:	e24dd01c 	sub	sp, sp, #28
8002045c:	e50b0010 	str	r0, [fp, #-16]
80020460:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80020464:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80020468:	e51b3010 	ldr	r3, [fp, #-16]
8002046c:	e50b3008 	str	r3, [fp, #-8]
80020470:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020474:	e3530000 	cmp	r3, #0
80020478:	ca000001 	bgt	80020484 <safestrcpy+0x34>
8002047c:	e51b3008 	ldr	r3, [fp, #-8]
80020480:	ea000015 	b	800204dc <safestrcpy+0x8c>
80020484:	e1a00000 	nop			@ (mov r0, r0)
80020488:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002048c:	e2433001 	sub	r3, r3, #1
80020490:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80020494:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020498:	e3530000 	cmp	r3, #0
8002049c:	da00000a 	ble	800204cc <safestrcpy+0x7c>
800204a0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800204a4:	e2823001 	add	r3, r2, #1
800204a8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
800204ac:	e51b3010 	ldr	r3, [fp, #-16]
800204b0:	e2831001 	add	r1, r3, #1
800204b4:	e50b1010 	str	r1, [fp, #-16]
800204b8:	e5d22000 	ldrb	r2, [r2]
800204bc:	e5c32000 	strb	r2, [r3]
800204c0:	e5d33000 	ldrb	r3, [r3]
800204c4:	e3530000 	cmp	r3, #0
800204c8:	1affffee 	bne	80020488 <safestrcpy+0x38>
800204cc:	e51b3010 	ldr	r3, [fp, #-16]
800204d0:	e3a02000 	mov	r2, #0
800204d4:	e5c32000 	strb	r2, [r3]
800204d8:	e51b3008 	ldr	r3, [fp, #-8]
800204dc:	e1a00003 	mov	r0, r3
800204e0:	e28bd000 	add	sp, fp, #0
800204e4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800204e8:	e12fff1e 	bx	lr

800204ec <strlen>:
800204ec:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800204f0:	e28db000 	add	fp, sp, #0
800204f4:	e24dd014 	sub	sp, sp, #20
800204f8:	e50b0010 	str	r0, [fp, #-16]
800204fc:	e3a03000 	mov	r3, #0
80020500:	e50b3008 	str	r3, [fp, #-8]
80020504:	ea000002 	b	80020514 <strlen+0x28>
80020508:	e51b3008 	ldr	r3, [fp, #-8]
8002050c:	e2833001 	add	r3, r3, #1
80020510:	e50b3008 	str	r3, [fp, #-8]
80020514:	e51b3008 	ldr	r3, [fp, #-8]
80020518:	e51b2010 	ldr	r2, [fp, #-16]
8002051c:	e0823003 	add	r3, r2, r3
80020520:	e5d33000 	ldrb	r3, [r3]
80020524:	e3530000 	cmp	r3, #0
80020528:	1afffff6 	bne	80020508 <strlen+0x1c>
8002052c:	e51b3008 	ldr	r3, [fp, #-8]
80020530:	e1a00003 	mov	r0, r3
80020534:	e28bd000 	add	sp, fp, #0
80020538:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002053c:	e12fff1e 	bx	lr

80020540 <cli>:
80020540:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020544:	e28db000 	add	fp, sp, #0
80020548:	e24dd00c 	sub	sp, sp, #12
8002054c:	e10f3000 	mrs	r3, CPSR
80020550:	e50b3008 	str	r3, [fp, #-8]
80020554:	e51b3008 	ldr	r3, [fp, #-8]
80020558:	e3833080 	orr	r3, r3, #128	@ 0x80
8002055c:	e50b3008 	str	r3, [fp, #-8]
80020560:	e51b3008 	ldr	r3, [fp, #-8]
80020564:	e12ff003 	msr	CPSR_fsxc, r3
80020568:	e1a00000 	nop			@ (mov r0, r0)
8002056c:	e28bd000 	add	sp, fp, #0
80020570:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020574:	e12fff1e 	bx	lr

80020578 <sti>:
80020578:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002057c:	e28db000 	add	fp, sp, #0
80020580:	e24dd00c 	sub	sp, sp, #12
80020584:	e10f3000 	mrs	r3, CPSR
80020588:	e50b3008 	str	r3, [fp, #-8]
8002058c:	e51b3008 	ldr	r3, [fp, #-8]
80020590:	e3c33080 	bic	r3, r3, #128	@ 0x80
80020594:	e50b3008 	str	r3, [fp, #-8]
80020598:	e51b3008 	ldr	r3, [fp, #-8]
8002059c:	e12ff003 	msr	CPSR_fsxc, r3
800205a0:	e1a00000 	nop			@ (mov r0, r0)
800205a4:	e28bd000 	add	sp, fp, #0
800205a8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800205ac:	e12fff1e 	bx	lr

800205b0 <spsr_usr>:
800205b0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800205b4:	e28db000 	add	fp, sp, #0
800205b8:	e24dd00c 	sub	sp, sp, #12
800205bc:	e10f3000 	mrs	r3, CPSR
800205c0:	e50b3008 	str	r3, [fp, #-8]
800205c4:	e51b3008 	ldr	r3, [fp, #-8]
800205c8:	e3c3301f 	bic	r3, r3, #31
800205cc:	e50b3008 	str	r3, [fp, #-8]
800205d0:	e51b3008 	ldr	r3, [fp, #-8]
800205d4:	e3833010 	orr	r3, r3, #16
800205d8:	e50b3008 	str	r3, [fp, #-8]
800205dc:	e51b3008 	ldr	r3, [fp, #-8]
800205e0:	e1a00003 	mov	r0, r3
800205e4:	e28bd000 	add	sp, fp, #0
800205e8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800205ec:	e12fff1e 	bx	lr

800205f0 <int_enabled>:
800205f0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800205f4:	e28db000 	add	fp, sp, #0
800205f8:	e24dd00c 	sub	sp, sp, #12
800205fc:	e10f3000 	mrs	r3, CPSR
80020600:	e50b3008 	str	r3, [fp, #-8]
80020604:	e51b3008 	ldr	r3, [fp, #-8]
80020608:	e2033080 	and	r3, r3, #128	@ 0x80
8002060c:	e1a033a3 	lsr	r3, r3, #7
80020610:	e2033001 	and	r3, r3, #1
80020614:	e2233001 	eor	r3, r3, #1
80020618:	e6ef3073 	uxtb	r3, r3
8002061c:	e1a00003 	mov	r0, r3
80020620:	e28bd000 	add	sp, fp, #0
80020624:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020628:	e12fff1e 	bx	lr

8002062c <pushcli>:
8002062c:	e92d4800 	push	{fp, lr}
80020630:	e28db004 	add	fp, sp, #4
80020634:	e24dd008 	sub	sp, sp, #8
80020638:	ebffffec 	bl	800205f0 <int_enabled>
8002063c:	e50b0008 	str	r0, [fp, #-8]
80020640:	ebffffbe 	bl	80020540 <cli>
80020644:	e59f3030 	ldr	r3, [pc, #48]	@ 8002067c <pushcli+0x50>
80020648:	e5932000 	ldr	r2, [r3]
8002064c:	e592300c 	ldr	r3, [r2, #12]
80020650:	e2831001 	add	r1, r3, #1
80020654:	e582100c 	str	r1, [r2, #12]
80020658:	e3530000 	cmp	r3, #0
8002065c:	1a000003 	bne	80020670 <pushcli+0x44>
80020660:	e59f3014 	ldr	r3, [pc, #20]	@ 8002067c <pushcli+0x50>
80020664:	e5933000 	ldr	r3, [r3]
80020668:	e51b2008 	ldr	r2, [fp, #-8]
8002066c:	e5832010 	str	r2, [r3, #16]
80020670:	e1a00000 	nop			@ (mov r0, r0)
80020674:	e24bd004 	sub	sp, fp, #4
80020678:	e8bd8800 	pop	{fp, pc}
8002067c:	800aea10 	.word	0x800aea10

80020680 <popcli>:
80020680:	e92d4800 	push	{fp, lr}
80020684:	e28db004 	add	fp, sp, #4
80020688:	ebffffd8 	bl	800205f0 <int_enabled>
8002068c:	e1a03000 	mov	r3, r0
80020690:	e3530000 	cmp	r3, #0
80020694:	0a000001 	beq	800206a0 <popcli+0x20>
80020698:	e59f007c 	ldr	r0, [pc, #124]	@ 8002071c <popcli+0x9c>
8002069c:	eb000506 	bl	80021abc <panic>
800206a0:	e59f3078 	ldr	r3, [pc, #120]	@ 80020720 <popcli+0xa0>
800206a4:	e5933000 	ldr	r3, [r3]
800206a8:	e593200c 	ldr	r2, [r3, #12]
800206ac:	e2422001 	sub	r2, r2, #1
800206b0:	e583200c 	str	r2, [r3, #12]
800206b4:	e593300c 	ldr	r3, [r3, #12]
800206b8:	e3530000 	cmp	r3, #0
800206bc:	aa000009 	bge	800206e8 <popcli+0x68>
800206c0:	e59f3058 	ldr	r3, [pc, #88]	@ 80020720 <popcli+0xa0>
800206c4:	e5931000 	ldr	r1, [r3]
800206c8:	e59f3050 	ldr	r3, [pc, #80]	@ 80020720 <popcli+0xa0>
800206cc:	e5933000 	ldr	r3, [r3]
800206d0:	e593300c 	ldr	r3, [r3, #12]
800206d4:	e1a02003 	mov	r2, r3
800206d8:	e59f0044 	ldr	r0, [pc, #68]	@ 80020724 <popcli+0xa4>
800206dc:	eb00046c 	bl	80021894 <cprintf>
800206e0:	e59f0040 	ldr	r0, [pc, #64]	@ 80020728 <popcli+0xa8>
800206e4:	eb0004f4 	bl	80021abc <panic>
800206e8:	e59f3030 	ldr	r3, [pc, #48]	@ 80020720 <popcli+0xa0>
800206ec:	e5933000 	ldr	r3, [r3]
800206f0:	e593300c 	ldr	r3, [r3, #12]
800206f4:	e3530000 	cmp	r3, #0
800206f8:	1a000005 	bne	80020714 <popcli+0x94>
800206fc:	e59f301c 	ldr	r3, [pc, #28]	@ 80020720 <popcli+0xa0>
80020700:	e5933000 	ldr	r3, [r3]
80020704:	e5933010 	ldr	r3, [r3, #16]
80020708:	e3530000 	cmp	r3, #0
8002070c:	0a000000 	beq	80020714 <popcli+0x94>
80020710:	ebffff98 	bl	80020578 <sti>
80020714:	e1a00000 	nop			@ (mov r0, r0)
80020718:	e8bd8800 	pop	{fp, pc}
8002071c:	80029ae0 	.word	0x80029ae0
80020720:	800aea10 	.word	0x800aea10
80020724:	80029af8 	.word	0x80029af8
80020728:	80029b0c 	.word	0x80029b0c

8002072c <getcallerpcs>:
8002072c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020730:	e28db000 	add	fp, sp, #0
80020734:	e24dd014 	sub	sp, sp, #20
80020738:	e50b0010 	str	r0, [fp, #-16]
8002073c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80020740:	e51b3010 	ldr	r3, [fp, #-16]
80020744:	e50b3008 	str	r3, [fp, #-8]
80020748:	e3a03000 	mov	r3, #0
8002074c:	e50b300c 	str	r3, [fp, #-12]
80020750:	ea000018 	b	800207b8 <getcallerpcs+0x8c>
80020754:	e51b3008 	ldr	r3, [fp, #-8]
80020758:	e3530000 	cmp	r3, #0
8002075c:	0a000022 	beq	800207ec <getcallerpcs+0xc0>
80020760:	e51b3008 	ldr	r3, [fp, #-8]
80020764:	e3730106 	cmn	r3, #-2147483647	@ 0x80000001
80020768:	9a00001f 	bls	800207ec <getcallerpcs+0xc0>
8002076c:	e51b3008 	ldr	r3, [fp, #-8]
80020770:	e3730001 	cmn	r3, #1
80020774:	0a00001c 	beq	800207ec <getcallerpcs+0xc0>
80020778:	e51b3008 	ldr	r3, [fp, #-8]
8002077c:	e2433004 	sub	r3, r3, #4
80020780:	e50b3008 	str	r3, [fp, #-8]
80020784:	e51b300c 	ldr	r3, [fp, #-12]
80020788:	e1a03103 	lsl	r3, r3, #2
8002078c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80020790:	e0823003 	add	r3, r2, r3
80020794:	e51b2008 	ldr	r2, [fp, #-8]
80020798:	e5922004 	ldr	r2, [r2, #4]
8002079c:	e5832000 	str	r2, [r3]
800207a0:	e51b3008 	ldr	r3, [fp, #-8]
800207a4:	e5933000 	ldr	r3, [r3]
800207a8:	e50b3008 	str	r3, [fp, #-8]
800207ac:	e51b300c 	ldr	r3, [fp, #-12]
800207b0:	e2833001 	add	r3, r3, #1
800207b4:	e50b300c 	str	r3, [fp, #-12]
800207b8:	e51b300c 	ldr	r3, [fp, #-12]
800207bc:	e353000e 	cmp	r3, #14
800207c0:	daffffe3 	ble	80020754 <getcallerpcs+0x28>
800207c4:	ea000008 	b	800207ec <getcallerpcs+0xc0>
800207c8:	e51b300c 	ldr	r3, [fp, #-12]
800207cc:	e1a03103 	lsl	r3, r3, #2
800207d0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800207d4:	e0823003 	add	r3, r2, r3
800207d8:	e3a02000 	mov	r2, #0
800207dc:	e5832000 	str	r2, [r3]
800207e0:	e51b300c 	ldr	r3, [fp, #-12]
800207e4:	e2833001 	add	r3, r3, #1
800207e8:	e50b300c 	str	r3, [fp, #-12]
800207ec:	e51b300c 	ldr	r3, [fp, #-12]
800207f0:	e353000e 	cmp	r3, #14
800207f4:	dafffff3 	ble	800207c8 <getcallerpcs+0x9c>
800207f8:	e1a00000 	nop			@ (mov r0, r0)
800207fc:	e1a00000 	nop			@ (mov r0, r0)
80020800:	e28bd000 	add	sp, fp, #0
80020804:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020808:	e12fff1e 	bx	lr

8002080c <show_callstk>:
8002080c:	e92d4800 	push	{fp, lr}
80020810:	e28db004 	add	fp, sp, #4
80020814:	e24dd048 	sub	sp, sp, #72	@ 0x48
80020818:	e50b0048 	str	r0, [fp, #-72]	@ 0xffffffb8
8002081c:	e51b1048 	ldr	r1, [fp, #-72]	@ 0xffffffb8
80020820:	e59f0074 	ldr	r0, [pc, #116]	@ 8002089c <show_callstk+0x90>
80020824:	eb00041a 	bl	80021894 <cprintf>
80020828:	eb000026 	bl	800208c8 <get_fp>
8002082c:	e1a02000 	mov	r2, r0
80020830:	e24b3044 	sub	r3, fp, #68	@ 0x44
80020834:	e1a01003 	mov	r1, r3
80020838:	e1a00002 	mov	r0, r2
8002083c:	ebffffba 	bl	8002072c <getcallerpcs>
80020840:	e3a0300e 	mov	r3, #14
80020844:	e50b3008 	str	r3, [fp, #-8]
80020848:	ea00000c 	b	80020880 <show_callstk+0x74>
8002084c:	e51b3008 	ldr	r3, [fp, #-8]
80020850:	e2831001 	add	r1, r3, #1
80020854:	e51b3008 	ldr	r3, [fp, #-8]
80020858:	e1a03103 	lsl	r3, r3, #2
8002085c:	e2433004 	sub	r3, r3, #4
80020860:	e083300b 	add	r3, r3, fp
80020864:	e5133040 	ldr	r3, [r3, #-64]	@ 0xffffffc0
80020868:	e1a02003 	mov	r2, r3
8002086c:	e59f002c 	ldr	r0, [pc, #44]	@ 800208a0 <show_callstk+0x94>
80020870:	eb000407 	bl	80021894 <cprintf>
80020874:	e51b3008 	ldr	r3, [fp, #-8]
80020878:	e2433001 	sub	r3, r3, #1
8002087c:	e50b3008 	str	r3, [fp, #-8]
80020880:	e51b3008 	ldr	r3, [fp, #-8]
80020884:	e3530000 	cmp	r3, #0
80020888:	aaffffef 	bge	8002084c <show_callstk+0x40>
8002088c:	e1a00000 	nop			@ (mov r0, r0)
80020890:	e1a00000 	nop			@ (mov r0, r0)
80020894:	e24bd004 	sub	sp, fp, #4
80020898:	e8bd8800 	pop	{fp, pc}
8002089c:	80029b20 	.word	0x80029b20
800208a0:	80029b24 	.word	0x80029b24

800208a4 <set_stk>:
800208a4:	e10f2000 	mrs	r2, CPSR
800208a8:	e3c2201f 	bic	r2, r2, #31
800208ac:	e1822000 	orr	r2, r2, r0
800208b0:	e12ff002 	msr	CPSR_fsxc, r2
800208b4:	e1a0d001 	mov	sp, r1
800208b8:	e3c2201f 	bic	r2, r2, #31
800208bc:	e3822013 	orr	r2, r2, #19
800208c0:	e12ff002 	msr	CPSR_fsxc, r2
800208c4:	e12fff1e 	bx	lr

800208c8 <get_fp>:
800208c8:	e1a0000b 	mov	r0, fp
800208cc:	e12fff1e 	bx	lr

800208d0 <binit>:
800208d0:	e92d4800 	push	{fp, lr}
800208d4:	e28db004 	add	fp, sp, #4
800208d8:	e24dd008 	sub	sp, sp, #8
800208dc:	e59f10b8 	ldr	r1, [pc, #184]	@ 8002099c <binit+0xcc>
800208e0:	e59f00b8 	ldr	r0, [pc, #184]	@ 800209a0 <binit+0xd0>
800208e4:	eb001776 	bl	800266c4 <initlock>
800208e8:	e59f30b0 	ldr	r3, [pc, #176]	@ 800209a0 <binit+0xd0>
800208ec:	e2833a01 	add	r3, r3, #4096	@ 0x1000
800208f0:	e1a02003 	mov	r2, r3
800208f4:	e59f30a8 	ldr	r3, [pc, #168]	@ 800209a4 <binit+0xd4>
800208f8:	e5823530 	str	r3, [r2, #1328]	@ 0x530
800208fc:	e59f309c 	ldr	r3, [pc, #156]	@ 800209a0 <binit+0xd0>
80020900:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020904:	e1a02003 	mov	r2, r3
80020908:	e59f3094 	ldr	r3, [pc, #148]	@ 800209a4 <binit+0xd4>
8002090c:	e5823534 	str	r3, [r2, #1332]	@ 0x534
80020910:	e59f3090 	ldr	r3, [pc, #144]	@ 800209a8 <binit+0xd8>
80020914:	e50b3008 	str	r3, [fp, #-8]
80020918:	ea000017 	b	8002097c <binit+0xac>
8002091c:	e59f307c 	ldr	r3, [pc, #124]	@ 800209a0 <binit+0xd0>
80020920:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020924:	e5932534 	ldr	r2, [r3, #1332]	@ 0x534
80020928:	e51b3008 	ldr	r3, [fp, #-8]
8002092c:	e5832010 	str	r2, [r3, #16]
80020930:	e51b3008 	ldr	r3, [fp, #-8]
80020934:	e59f2068 	ldr	r2, [pc, #104]	@ 800209a4 <binit+0xd4>
80020938:	e583200c 	str	r2, [r3, #12]
8002093c:	e51b3008 	ldr	r3, [fp, #-8]
80020940:	e3e02000 	mvn	r2, #0
80020944:	e5832004 	str	r2, [r3, #4]
80020948:	e59f3050 	ldr	r3, [pc, #80]	@ 800209a0 <binit+0xd0>
8002094c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020950:	e5933534 	ldr	r3, [r3, #1332]	@ 0x534
80020954:	e51b2008 	ldr	r2, [fp, #-8]
80020958:	e583200c 	str	r2, [r3, #12]
8002095c:	e59f303c 	ldr	r3, [pc, #60]	@ 800209a0 <binit+0xd0>
80020960:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020964:	e1a02003 	mov	r2, r3
80020968:	e51b3008 	ldr	r3, [fp, #-8]
8002096c:	e5823534 	str	r3, [r2, #1332]	@ 0x534
80020970:	e51b3008 	ldr	r3, [fp, #-8]
80020974:	e2833f86 	add	r3, r3, #536	@ 0x218
80020978:	e50b3008 	str	r3, [fp, #-8]
8002097c:	e59f2020 	ldr	r2, [pc, #32]	@ 800209a4 <binit+0xd4>
80020980:	e51b3008 	ldr	r3, [fp, #-8]
80020984:	e1530002 	cmp	r3, r2
80020988:	3affffe3 	bcc	8002091c <binit+0x4c>
8002098c:	e1a00000 	nop			@ (mov r0, r0)
80020990:	e1a00000 	nop			@ (mov r0, r0)
80020994:	e24bd004 	sub	sp, fp, #4
80020998:	e8bd8800 	pop	{fp, pc}
8002099c:	80029b30 	.word	0x80029b30
800209a0:	800ab0d4 	.word	0x800ab0d4
800209a4:	800ac5f8 	.word	0x800ac5f8
800209a8:	800ab108 	.word	0x800ab108

800209ac <bget>:
800209ac:	e92d4800 	push	{fp, lr}
800209b0:	e28db004 	add	fp, sp, #4
800209b4:	e24dd010 	sub	sp, sp, #16
800209b8:	e50b0010 	str	r0, [fp, #-16]
800209bc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800209c0:	e59f0140 	ldr	r0, [pc, #320]	@ 80020b08 <bget+0x15c>
800209c4:	eb001750 	bl	8002670c <acquire>
800209c8:	e59f3138 	ldr	r3, [pc, #312]	@ 80020b08 <bget+0x15c>
800209cc:	e2833a01 	add	r3, r3, #4096	@ 0x1000
800209d0:	e5933534 	ldr	r3, [r3, #1332]	@ 0x534
800209d4:	e50b3008 	str	r3, [fp, #-8]
800209d8:	ea00001e 	b	80020a58 <bget+0xac>
800209dc:	e51b3008 	ldr	r3, [fp, #-8]
800209e0:	e5933004 	ldr	r3, [r3, #4]
800209e4:	e51b2010 	ldr	r2, [fp, #-16]
800209e8:	e1520003 	cmp	r2, r3
800209ec:	1a000016 	bne	80020a4c <bget+0xa0>
800209f0:	e51b3008 	ldr	r3, [fp, #-8]
800209f4:	e5933008 	ldr	r3, [r3, #8]
800209f8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800209fc:	e1520003 	cmp	r2, r3
80020a00:	1a000011 	bne	80020a4c <bget+0xa0>
80020a04:	e51b3008 	ldr	r3, [fp, #-8]
80020a08:	e5933000 	ldr	r3, [r3]
80020a0c:	e2033001 	and	r3, r3, #1
80020a10:	e3530000 	cmp	r3, #0
80020a14:	1a000008 	bne	80020a3c <bget+0x90>
80020a18:	e51b3008 	ldr	r3, [fp, #-8]
80020a1c:	e5933000 	ldr	r3, [r3]
80020a20:	e3832001 	orr	r2, r3, #1
80020a24:	e51b3008 	ldr	r3, [fp, #-8]
80020a28:	e5832000 	str	r2, [r3]
80020a2c:	e59f00d4 	ldr	r0, [pc, #212]	@ 80020b08 <bget+0x15c>
80020a30:	eb001740 	bl	80026738 <release>
80020a34:	e51b3008 	ldr	r3, [fp, #-8]
80020a38:	ea00002f 	b	80020afc <bget+0x150>
80020a3c:	e59f10c4 	ldr	r1, [pc, #196]	@ 80020b08 <bget+0x15c>
80020a40:	e51b0008 	ldr	r0, [fp, #-8]
80020a44:	eb00153b 	bl	80025f38 <sleep>
80020a48:	eaffffde 	b	800209c8 <bget+0x1c>
80020a4c:	e51b3008 	ldr	r3, [fp, #-8]
80020a50:	e5933010 	ldr	r3, [r3, #16]
80020a54:	e50b3008 	str	r3, [fp, #-8]
80020a58:	e51b3008 	ldr	r3, [fp, #-8]
80020a5c:	e59f20a8 	ldr	r2, [pc, #168]	@ 80020b0c <bget+0x160>
80020a60:	e1530002 	cmp	r3, r2
80020a64:	1affffdc 	bne	800209dc <bget+0x30>
80020a68:	e59f3098 	ldr	r3, [pc, #152]	@ 80020b08 <bget+0x15c>
80020a6c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020a70:	e5933530 	ldr	r3, [r3, #1328]	@ 0x530
80020a74:	e50b3008 	str	r3, [fp, #-8]
80020a78:	ea000019 	b	80020ae4 <bget+0x138>
80020a7c:	e51b3008 	ldr	r3, [fp, #-8]
80020a80:	e5933000 	ldr	r3, [r3]
80020a84:	e2033001 	and	r3, r3, #1
80020a88:	e3530000 	cmp	r3, #0
80020a8c:	1a000011 	bne	80020ad8 <bget+0x12c>
80020a90:	e51b3008 	ldr	r3, [fp, #-8]
80020a94:	e5933000 	ldr	r3, [r3]
80020a98:	e2033004 	and	r3, r3, #4
80020a9c:	e3530000 	cmp	r3, #0
80020aa0:	1a00000c 	bne	80020ad8 <bget+0x12c>
80020aa4:	e51b3008 	ldr	r3, [fp, #-8]
80020aa8:	e51b2010 	ldr	r2, [fp, #-16]
80020aac:	e5832004 	str	r2, [r3, #4]
80020ab0:	e51b3008 	ldr	r3, [fp, #-8]
80020ab4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80020ab8:	e5832008 	str	r2, [r3, #8]
80020abc:	e51b3008 	ldr	r3, [fp, #-8]
80020ac0:	e3a02001 	mov	r2, #1
80020ac4:	e5832000 	str	r2, [r3]
80020ac8:	e59f0038 	ldr	r0, [pc, #56]	@ 80020b08 <bget+0x15c>
80020acc:	eb001719 	bl	80026738 <release>
80020ad0:	e51b3008 	ldr	r3, [fp, #-8]
80020ad4:	ea000008 	b	80020afc <bget+0x150>
80020ad8:	e51b3008 	ldr	r3, [fp, #-8]
80020adc:	e593300c 	ldr	r3, [r3, #12]
80020ae0:	e50b3008 	str	r3, [fp, #-8]
80020ae4:	e51b3008 	ldr	r3, [fp, #-8]
80020ae8:	e59f201c 	ldr	r2, [pc, #28]	@ 80020b0c <bget+0x160>
80020aec:	e1530002 	cmp	r3, r2
80020af0:	1affffe1 	bne	80020a7c <bget+0xd0>
80020af4:	e59f0014 	ldr	r0, [pc, #20]	@ 80020b10 <bget+0x164>
80020af8:	eb0003ef 	bl	80021abc <panic>
80020afc:	e1a00003 	mov	r0, r3
80020b00:	e24bd004 	sub	sp, fp, #4
80020b04:	e8bd8800 	pop	{fp, pc}
80020b08:	800ab0d4 	.word	0x800ab0d4
80020b0c:	800ac5f8 	.word	0x800ac5f8
80020b10:	80029b38 	.word	0x80029b38

80020b14 <bread>:
80020b14:	e92d4800 	push	{fp, lr}
80020b18:	e28db004 	add	fp, sp, #4
80020b1c:	e24dd010 	sub	sp, sp, #16
80020b20:	e50b0010 	str	r0, [fp, #-16]
80020b24:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80020b28:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80020b2c:	e51b0010 	ldr	r0, [fp, #-16]
80020b30:	ebffff9d 	bl	800209ac <bget>
80020b34:	e50b0008 	str	r0, [fp, #-8]
80020b38:	e51b3008 	ldr	r3, [fp, #-8]
80020b3c:	e5933000 	ldr	r3, [r3]
80020b40:	e2033002 	and	r3, r3, #2
80020b44:	e3530000 	cmp	r3, #0
80020b48:	1a000001 	bne	80020b54 <bread+0x40>
80020b4c:	e51b0008 	ldr	r0, [fp, #-8]
80020b50:	eb001015 	bl	80024bac <iderw>
80020b54:	e51b3008 	ldr	r3, [fp, #-8]
80020b58:	e1a00003 	mov	r0, r3
80020b5c:	e24bd004 	sub	sp, fp, #4
80020b60:	e8bd8800 	pop	{fp, pc}

80020b64 <bwrite>:
80020b64:	e92d4800 	push	{fp, lr}
80020b68:	e28db004 	add	fp, sp, #4
80020b6c:	e24dd008 	sub	sp, sp, #8
80020b70:	e50b0008 	str	r0, [fp, #-8]
80020b74:	e51b3008 	ldr	r3, [fp, #-8]
80020b78:	e5933000 	ldr	r3, [r3]
80020b7c:	e2033001 	and	r3, r3, #1
80020b80:	e3530000 	cmp	r3, #0
80020b84:	1a000001 	bne	80020b90 <bwrite+0x2c>
80020b88:	e59f0028 	ldr	r0, [pc, #40]	@ 80020bb8 <bwrite+0x54>
80020b8c:	eb0003ca 	bl	80021abc <panic>
80020b90:	e51b3008 	ldr	r3, [fp, #-8]
80020b94:	e5933000 	ldr	r3, [r3]
80020b98:	e3832004 	orr	r2, r3, #4
80020b9c:	e51b3008 	ldr	r3, [fp, #-8]
80020ba0:	e5832000 	str	r2, [r3]
80020ba4:	e51b0008 	ldr	r0, [fp, #-8]
80020ba8:	eb000fff 	bl	80024bac <iderw>
80020bac:	e1a00000 	nop			@ (mov r0, r0)
80020bb0:	e24bd004 	sub	sp, fp, #4
80020bb4:	e8bd8800 	pop	{fp, pc}
80020bb8:	80029b4c 	.word	0x80029b4c

80020bbc <brelse>:
80020bbc:	e92d4800 	push	{fp, lr}
80020bc0:	e28db004 	add	fp, sp, #4
80020bc4:	e24dd008 	sub	sp, sp, #8
80020bc8:	e50b0008 	str	r0, [fp, #-8]
80020bcc:	e51b3008 	ldr	r3, [fp, #-8]
80020bd0:	e5933000 	ldr	r3, [r3]
80020bd4:	e2033001 	and	r3, r3, #1
80020bd8:	e3530000 	cmp	r3, #0
80020bdc:	1a000001 	bne	80020be8 <brelse+0x2c>
80020be0:	e59f00a8 	ldr	r0, [pc, #168]	@ 80020c90 <brelse+0xd4>
80020be4:	eb0003b4 	bl	80021abc <panic>
80020be8:	e59f00a4 	ldr	r0, [pc, #164]	@ 80020c94 <brelse+0xd8>
80020bec:	eb0016c6 	bl	8002670c <acquire>
80020bf0:	e51b3008 	ldr	r3, [fp, #-8]
80020bf4:	e5933010 	ldr	r3, [r3, #16]
80020bf8:	e51b2008 	ldr	r2, [fp, #-8]
80020bfc:	e592200c 	ldr	r2, [r2, #12]
80020c00:	e583200c 	str	r2, [r3, #12]
80020c04:	e51b3008 	ldr	r3, [fp, #-8]
80020c08:	e593300c 	ldr	r3, [r3, #12]
80020c0c:	e51b2008 	ldr	r2, [fp, #-8]
80020c10:	e5922010 	ldr	r2, [r2, #16]
80020c14:	e5832010 	str	r2, [r3, #16]
80020c18:	e59f3074 	ldr	r3, [pc, #116]	@ 80020c94 <brelse+0xd8>
80020c1c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020c20:	e5932534 	ldr	r2, [r3, #1332]	@ 0x534
80020c24:	e51b3008 	ldr	r3, [fp, #-8]
80020c28:	e5832010 	str	r2, [r3, #16]
80020c2c:	e51b3008 	ldr	r3, [fp, #-8]
80020c30:	e59f2060 	ldr	r2, [pc, #96]	@ 80020c98 <brelse+0xdc>
80020c34:	e583200c 	str	r2, [r3, #12]
80020c38:	e59f3054 	ldr	r3, [pc, #84]	@ 80020c94 <brelse+0xd8>
80020c3c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020c40:	e5933534 	ldr	r3, [r3, #1332]	@ 0x534
80020c44:	e51b2008 	ldr	r2, [fp, #-8]
80020c48:	e583200c 	str	r2, [r3, #12]
80020c4c:	e59f3040 	ldr	r3, [pc, #64]	@ 80020c94 <brelse+0xd8>
80020c50:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020c54:	e1a02003 	mov	r2, r3
80020c58:	e51b3008 	ldr	r3, [fp, #-8]
80020c5c:	e5823534 	str	r3, [r2, #1332]	@ 0x534
80020c60:	e51b3008 	ldr	r3, [fp, #-8]
80020c64:	e5933000 	ldr	r3, [r3]
80020c68:	e3c32001 	bic	r2, r3, #1
80020c6c:	e51b3008 	ldr	r3, [fp, #-8]
80020c70:	e5832000 	str	r2, [r3]
80020c74:	e51b0008 	ldr	r0, [fp, #-8]
80020c78:	eb001510 	bl	800260c0 <wakeup>
80020c7c:	e59f0010 	ldr	r0, [pc, #16]	@ 80020c94 <brelse+0xd8>
80020c80:	eb0016ac 	bl	80026738 <release>
80020c84:	e1a00000 	nop			@ (mov r0, r0)
80020c88:	e24bd004 	sub	sp, fp, #4
80020c8c:	e8bd8800 	pop	{fp, pc}
80020c90:	80029b54 	.word	0x80029b54
80020c94:	800ab0d4 	.word	0x800ab0d4
80020c98:	800ac5f8 	.word	0x800ac5f8

80020c9c <get_mark>:
80020c9c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020ca0:	e28db000 	add	fp, sp, #0
80020ca4:	e24dd00c 	sub	sp, sp, #12
80020ca8:	e50b0008 	str	r0, [fp, #-8]
80020cac:	e50b100c 	str	r1, [fp, #-12]
80020cb0:	e51b3008 	ldr	r3, [fp, #-8]
80020cb4:	e2433006 	sub	r3, r3, #6
80020cb8:	e59f2034 	ldr	r2, [pc, #52]	@ 80020cf4 <get_mark+0x58>
80020cbc:	e2833008 	add	r3, r3, #8
80020cc0:	e1a03183 	lsl	r3, r3, #3
80020cc4:	e0823003 	add	r3, r2, r3
80020cc8:	e5932004 	ldr	r2, [r3, #4]
80020ccc:	e51b300c 	ldr	r3, [fp, #-12]
80020cd0:	e0823003 	add	r3, r2, r3
80020cd4:	e1a02183 	lsl	r2, r3, #3
80020cd8:	e59f3014 	ldr	r3, [pc, #20]	@ 80020cf4 <get_mark+0x58>
80020cdc:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
80020ce0:	e0823003 	add	r3, r2, r3
80020ce4:	e1a00003 	mov	r0, r3
80020ce8:	e28bd000 	add	sp, fp, #0
80020cec:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020cf0:	e12fff1e 	bx	lr
80020cf4:	800ac810 	.word	0x800ac810

80020cf8 <blkid2mem>:
80020cf8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020cfc:	e28db000 	add	fp, sp, #0
80020d00:	e24dd00c 	sub	sp, sp, #12
80020d04:	e50b0008 	str	r0, [fp, #-8]
80020d08:	e50b100c 	str	r1, [fp, #-12]
80020d0c:	e59f3020 	ldr	r3, [pc, #32]	@ 80020d34 <blkid2mem+0x3c>
80020d10:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
80020d14:	e51b100c 	ldr	r1, [fp, #-12]
80020d18:	e51b2008 	ldr	r2, [fp, #-8]
80020d1c:	e1a02211 	lsl	r2, r1, r2
80020d20:	e0833002 	add	r3, r3, r2
80020d24:	e1a00003 	mov	r0, r3
80020d28:	e28bd000 	add	sp, fp, #0
80020d2c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020d30:	e12fff1e 	bx	lr
80020d34:	800ac810 	.word	0x800ac810

80020d38 <mem2blkid>:
80020d38:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020d3c:	e28db000 	add	fp, sp, #0
80020d40:	e24dd00c 	sub	sp, sp, #12
80020d44:	e50b0008 	str	r0, [fp, #-8]
80020d48:	e50b100c 	str	r1, [fp, #-12]
80020d4c:	e51b200c 	ldr	r2, [fp, #-12]
80020d50:	e59f301c 	ldr	r3, [pc, #28]	@ 80020d74 <mem2blkid+0x3c>
80020d54:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
80020d58:	e0422003 	sub	r2, r2, r3
80020d5c:	e51b3008 	ldr	r3, [fp, #-8]
80020d60:	e1a03332 	lsr	r3, r2, r3
80020d64:	e1a00003 	mov	r0, r3
80020d68:	e28bd000 	add	sp, fp, #0
80020d6c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020d70:	e12fff1e 	bx	lr
80020d74:	800ac810 	.word	0x800ac810

80020d78 <available>:
80020d78:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020d7c:	e28db000 	add	fp, sp, #0
80020d80:	e24dd00c 	sub	sp, sp, #12
80020d84:	e50b0008 	str	r0, [fp, #-8]
80020d88:	e50b100c 	str	r1, [fp, #-12]
80020d8c:	e51b300c 	ldr	r3, [fp, #-12]
80020d90:	e203301f 	and	r3, r3, #31
80020d94:	e3a02001 	mov	r2, #1
80020d98:	e1a03312 	lsl	r3, r2, r3
80020d9c:	e1a02003 	mov	r2, r3
80020da0:	e51b3008 	ldr	r3, [fp, #-8]
80020da4:	e0033002 	and	r3, r3, r2
80020da8:	e1a00003 	mov	r0, r3
80020dac:	e28bd000 	add	sp, fp, #0
80020db0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020db4:	e12fff1e 	bx	lr

80020db8 <kmem_init>:
80020db8:	e92d4800 	push	{fp, lr}
80020dbc:	e28db004 	add	fp, sp, #4
80020dc0:	e59f100c 	ldr	r1, [pc, #12]	@ 80020dd4 <kmem_init+0x1c>
80020dc4:	e59f000c 	ldr	r0, [pc, #12]	@ 80020dd8 <kmem_init+0x20>
80020dc8:	eb00163d 	bl	800266c4 <initlock>
80020dcc:	e1a00000 	nop			@ (mov r0, r0)
80020dd0:	e8bd8800 	pop	{fp, pc}
80020dd4:	80029b5c 	.word	0x80029b5c
80020dd8:	800ac810 	.word	0x800ac810

80020ddc <kmem_init2>:
80020ddc:	e92d4800 	push	{fp, lr}
80020de0:	e28db004 	add	fp, sp, #4
80020de4:	e24dd028 	sub	sp, sp, #40	@ 0x28
80020de8:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80020dec:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
80020df0:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80020df4:	e59f217c 	ldr	r2, [pc, #380]	@ 80020f78 <kmem_init2+0x19c>
80020df8:	e5823034 	str	r3, [r2, #52]	@ 0x34
80020dfc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80020e00:	e59f2170 	ldr	r2, [pc, #368]	@ 80020f78 <kmem_init2+0x19c>
80020e04:	e582303c 	str	r3, [r2, #60]	@ 0x3c
80020e08:	e59f3168 	ldr	r3, [pc, #360]	@ 80020f78 <kmem_init2+0x19c>
80020e0c:	e593203c 	ldr	r2, [r3, #60]	@ 0x3c
80020e10:	e59f3160 	ldr	r3, [pc, #352]	@ 80020f78 <kmem_init2+0x19c>
80020e14:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
80020e18:	e0423003 	sub	r3, r2, r3
80020e1c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80020e20:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020e24:	e1a038a3 	lsr	r3, r3, #17
80020e28:	e2833001 	add	r3, r3, #1
80020e2c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80020e30:	e3a03000 	mov	r3, #0
80020e34:	e50b3010 	str	r3, [fp, #-16]
80020e38:	e3a03006 	mov	r3, #6
80020e3c:	e50b3008 	str	r3, [fp, #-8]
80020e40:	ea00002a 	b	80020ef0 <kmem_init2+0x114>
80020e44:	e51b3008 	ldr	r3, [fp, #-8]
80020e48:	e1a03183 	lsl	r3, r3, #3
80020e4c:	e59f2128 	ldr	r2, [pc, #296]	@ 80020f7c <kmem_init2+0x1a0>
80020e50:	e0833002 	add	r3, r3, r2
80020e54:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80020e58:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80020e5c:	e51b2010 	ldr	r2, [fp, #-16]
80020e60:	e5832004 	str	r2, [r3, #4]
80020e64:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80020e68:	e59f2110 	ldr	r2, [pc, #272]	@ 80020f80 <kmem_init2+0x1a4>
80020e6c:	e5832000 	str	r2, [r3]
80020e70:	e3a03000 	mov	r3, #0
80020e74:	e50b300c 	str	r3, [fp, #-12]
80020e78:	ea00000e 	b	80020eb8 <kmem_init2+0xdc>
80020e7c:	e51b3008 	ldr	r3, [fp, #-8]
80020e80:	e2833006 	add	r3, r3, #6
80020e84:	e51b100c 	ldr	r1, [fp, #-12]
80020e88:	e1a00003 	mov	r0, r3
80020e8c:	ebffff82 	bl	80020c9c <get_mark>
80020e90:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80020e94:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80020e98:	e3e02000 	mvn	r2, #0
80020e9c:	e5832000 	str	r2, [r3]
80020ea0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80020ea4:	e3a02000 	mov	r2, #0
80020ea8:	e5832004 	str	r2, [r3, #4]
80020eac:	e51b300c 	ldr	r3, [fp, #-12]
80020eb0:	e2833001 	add	r3, r3, #1
80020eb4:	e50b300c 	str	r3, [fp, #-12]
80020eb8:	e51b300c 	ldr	r3, [fp, #-12]
80020ebc:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80020ec0:	e1520003 	cmp	r2, r3
80020ec4:	8affffec 	bhi	80020e7c <kmem_init2+0xa0>
80020ec8:	e51b2010 	ldr	r2, [fp, #-16]
80020ecc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80020ed0:	e0823003 	add	r3, r2, r3
80020ed4:	e50b3010 	str	r3, [fp, #-16]
80020ed8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80020edc:	e1a03083 	lsl	r3, r3, #1
80020ee0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80020ee4:	e51b3008 	ldr	r3, [fp, #-8]
80020ee8:	e2433001 	sub	r3, r3, #1
80020eec:	e50b3008 	str	r3, [fp, #-8]
80020ef0:	e51b3008 	ldr	r3, [fp, #-8]
80020ef4:	e3530000 	cmp	r3, #0
80020ef8:	aaffffd1 	bge	80020e44 <kmem_init2+0x68>
80020efc:	e59f3074 	ldr	r3, [pc, #116]	@ 80020f78 <kmem_init2+0x19c>
80020f00:	e5932034 	ldr	r2, [r3, #52]	@ 0x34
80020f04:	e51b3010 	ldr	r3, [fp, #-16]
80020f08:	e1a03183 	lsl	r3, r3, #3
80020f0c:	e0823003 	add	r3, r2, r3
80020f10:	e2833eff 	add	r3, r3, #4080	@ 0xff0
80020f14:	e283300f 	add	r3, r3, #15
80020f18:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80020f1c:	e3c3300f 	bic	r3, r3, #15
80020f20:	e59f2050 	ldr	r2, [pc, #80]	@ 80020f78 <kmem_init2+0x19c>
80020f24:	e5823038 	str	r3, [r2, #56]	@ 0x38
80020f28:	e59f3048 	ldr	r3, [pc, #72]	@ 80020f78 <kmem_init2+0x19c>
80020f2c:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
80020f30:	e50b3008 	str	r3, [fp, #-8]
80020f34:	ea000006 	b	80020f54 <kmem_init2+0x178>
80020f38:	e51b3008 	ldr	r3, [fp, #-8]
80020f3c:	e3a0100c 	mov	r1, #12
80020f40:	e1a00003 	mov	r0, r3
80020f44:	eb00018d 	bl	80021580 <kfree>
80020f48:	e51b3008 	ldr	r3, [fp, #-8]
80020f4c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020f50:	e50b3008 	str	r3, [fp, #-8]
80020f54:	e59f301c 	ldr	r3, [pc, #28]	@ 80020f78 <kmem_init2+0x19c>
80020f58:	e593203c 	ldr	r2, [r3, #60]	@ 0x3c
80020f5c:	e51b3008 	ldr	r3, [fp, #-8]
80020f60:	e1520003 	cmp	r2, r3
80020f64:	8afffff3 	bhi	80020f38 <kmem_init2+0x15c>
80020f68:	e1a00000 	nop			@ (mov r0, r0)
80020f6c:	e1a00000 	nop			@ (mov r0, r0)
80020f70:	e24bd004 	sub	sp, fp, #4
80020f74:	e8bd8800 	pop	{fp, pc}
80020f78:	800ac810 	.word	0x800ac810
80020f7c:	800ac850 	.word	0x800ac850
80020f80:	0000ffff 	.word	0x0000ffff

80020f84 <unmark_blk>:
80020f84:	e92d4800 	push	{fp, lr}
80020f88:	e28db004 	add	fp, sp, #4
80020f8c:	e24dd020 	sub	sp, sp, #32
80020f90:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80020f94:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80020f98:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80020f9c:	e2433006 	sub	r3, r3, #6
80020fa0:	e2833008 	add	r3, r3, #8
80020fa4:	e1a03183 	lsl	r3, r3, #3
80020fa8:	e59f2168 	ldr	r2, [pc, #360]	@ 80021118 <unmark_blk+0x194>
80020fac:	e0833002 	add	r3, r3, r2
80020fb0:	e50b3008 	str	r3, [fp, #-8]
80020fb4:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80020fb8:	e1a032c3 	asr	r3, r3, #5
80020fbc:	e1a01003 	mov	r1, r3
80020fc0:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80020fc4:	ebffff34 	bl	80020c9c <get_mark>
80020fc8:	e50b000c 	str	r0, [fp, #-12]
80020fcc:	e51b300c 	ldr	r3, [fp, #-12]
80020fd0:	e5933004 	ldr	r3, [r3, #4]
80020fd4:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80020fd8:	e1a00003 	mov	r0, r3
80020fdc:	ebffff65 	bl	80020d78 <available>
80020fe0:	e1a03000 	mov	r3, r0
80020fe4:	e3530000 	cmp	r3, #0
80020fe8:	1a000001 	bne	80020ff4 <unmark_blk+0x70>
80020fec:	e59f0128 	ldr	r0, [pc, #296]	@ 8002111c <unmark_blk+0x198>
80020ff0:	eb0002b1 	bl	80021abc <panic>
80020ff4:	e51b300c 	ldr	r3, [fp, #-12]
80020ff8:	e5933004 	ldr	r3, [r3, #4]
80020ffc:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80021000:	e202201f 	and	r2, r2, #31
80021004:	e3a01001 	mov	r1, #1
80021008:	e1a02211 	lsl	r2, r1, r2
8002100c:	e1e02002 	mvn	r2, r2
80021010:	e0022003 	and	r2, r2, r3
80021014:	e51b300c 	ldr	r3, [fp, #-12]
80021018:	e5832004 	str	r2, [r3, #4]
8002101c:	e51b300c 	ldr	r3, [fp, #-12]
80021020:	e5933004 	ldr	r3, [r3, #4]
80021024:	e3530000 	cmp	r3, #0
80021028:	1a000037 	bne	8002110c <unmark_blk+0x188>
8002102c:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80021030:	e1a032c3 	asr	r3, r3, #5
80021034:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80021038:	e51b300c 	ldr	r3, [fp, #-12]
8002103c:	e5933000 	ldr	r3, [r3]
80021040:	e1a03823 	lsr	r3, r3, #16
80021044:	e50b3010 	str	r3, [fp, #-16]
80021048:	e51b300c 	ldr	r3, [fp, #-12]
8002104c:	e5933000 	ldr	r3, [r3]
80021050:	e6ff3073 	uxth	r3, r3
80021054:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80021058:	e51b3010 	ldr	r3, [fp, #-16]
8002105c:	e59f20bc 	ldr	r2, [pc, #188]	@ 80021120 <unmark_blk+0x19c>
80021060:	e1530002 	cmp	r3, r2
80021064:	0a00000d 	beq	800210a0 <unmark_blk+0x11c>
80021068:	e51b1010 	ldr	r1, [fp, #-16]
8002106c:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80021070:	ebffff09 	bl	80020c9c <get_mark>
80021074:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80021078:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002107c:	e5933000 	ldr	r3, [r3]
80021080:	e1a03823 	lsr	r3, r3, #16
80021084:	e1a03803 	lsl	r3, r3, #16
80021088:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
8002108c:	e6ff2072 	uxth	r2, r2
80021090:	e1832002 	orr	r2, r3, r2
80021094:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021098:	e5832000 	str	r2, [r3]
8002109c:	ea000007 	b	800210c0 <unmark_blk+0x13c>
800210a0:	e51b3008 	ldr	r3, [fp, #-8]
800210a4:	e5932000 	ldr	r2, [r3]
800210a8:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
800210ac:	e1520003 	cmp	r2, r3
800210b0:	1a000002 	bne	800210c0 <unmark_blk+0x13c>
800210b4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800210b8:	e51b3008 	ldr	r3, [fp, #-8]
800210bc:	e5832000 	str	r2, [r3]
800210c0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800210c4:	e59f2054 	ldr	r2, [pc, #84]	@ 80021120 <unmark_blk+0x19c>
800210c8:	e1530002 	cmp	r3, r2
800210cc:	0a00000b 	beq	80021100 <unmark_blk+0x17c>
800210d0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
800210d4:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
800210d8:	ebfffeef 	bl	80020c9c <get_mark>
800210dc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800210e0:	e51b3010 	ldr	r3, [fp, #-16]
800210e4:	e1a02803 	lsl	r2, r3, #16
800210e8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800210ec:	e5933000 	ldr	r3, [r3]
800210f0:	e6ff3073 	uxth	r3, r3
800210f4:	e1822003 	orr	r2, r2, r3
800210f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800210fc:	e5832000 	str	r2, [r3]
80021100:	e51b300c 	ldr	r3, [fp, #-12]
80021104:	e3e02000 	mvn	r2, #0
80021108:	e5832000 	str	r2, [r3]
8002110c:	e1a00000 	nop			@ (mov r0, r0)
80021110:	e24bd004 	sub	sp, fp, #4
80021114:	e8bd8800 	pop	{fp, pc}
80021118:	800ac810 	.word	0x800ac810
8002111c:	80029b64 	.word	0x80029b64
80021120:	0000ffff 	.word	0x0000ffff

80021124 <mark_blk>:
80021124:	e92d4800 	push	{fp, lr}
80021128:	e28db004 	add	fp, sp, #4
8002112c:	e24dd018 	sub	sp, sp, #24
80021130:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80021134:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80021138:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002113c:	e2433006 	sub	r3, r3, #6
80021140:	e2833008 	add	r3, r3, #8
80021144:	e1a03183 	lsl	r3, r3, #3
80021148:	e59f2118 	ldr	r2, [pc, #280]	@ 80021268 <mark_blk+0x144>
8002114c:	e0833002 	add	r3, r3, r2
80021150:	e50b3008 	str	r3, [fp, #-8]
80021154:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80021158:	e1a032c3 	asr	r3, r3, #5
8002115c:	e1a01003 	mov	r1, r3
80021160:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80021164:	ebfffecc 	bl	80020c9c <get_mark>
80021168:	e50b000c 	str	r0, [fp, #-12]
8002116c:	e51b300c 	ldr	r3, [fp, #-12]
80021170:	e5933004 	ldr	r3, [r3, #4]
80021174:	e3530000 	cmp	r3, #0
80021178:	03a03001 	moveq	r3, #1
8002117c:	13a03000 	movne	r3, #0
80021180:	e6ef3073 	uxtb	r3, r3
80021184:	e50b3010 	str	r3, [fp, #-16]
80021188:	e51b300c 	ldr	r3, [fp, #-12]
8002118c:	e5933004 	ldr	r3, [r3, #4]
80021190:	e51b101c 	ldr	r1, [fp, #-28]	@ 0xffffffe4
80021194:	e1a00003 	mov	r0, r3
80021198:	ebfffef6 	bl	80020d78 <available>
8002119c:	e1a03000 	mov	r3, r0
800211a0:	e3530000 	cmp	r3, #0
800211a4:	0a000001 	beq	800211b0 <mark_blk+0x8c>
800211a8:	e59f00bc 	ldr	r0, [pc, #188]	@ 8002126c <mark_blk+0x148>
800211ac:	eb000242 	bl	80021abc <panic>
800211b0:	e51b300c 	ldr	r3, [fp, #-12]
800211b4:	e5933004 	ldr	r3, [r3, #4]
800211b8:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
800211bc:	e202201f 	and	r2, r2, #31
800211c0:	e3a01001 	mov	r1, #1
800211c4:	e1a02211 	lsl	r2, r1, r2
800211c8:	e1832002 	orr	r2, r3, r2
800211cc:	e51b300c 	ldr	r3, [fp, #-12]
800211d0:	e5832004 	str	r2, [r3, #4]
800211d4:	e51b3010 	ldr	r3, [fp, #-16]
800211d8:	e3530000 	cmp	r3, #0
800211dc:	0a00001e 	beq	8002125c <mark_blk+0x138>
800211e0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800211e4:	e1a032c3 	asr	r3, r3, #5
800211e8:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
800211ec:	e51b3008 	ldr	r3, [fp, #-8]
800211f0:	e5933000 	ldr	r3, [r3]
800211f4:	e1e03803 	mvn	r3, r3, lsl #16
800211f8:	e1e03823 	mvn	r3, r3, lsr #16
800211fc:	e51b200c 	ldr	r2, [fp, #-12]
80021200:	e5823000 	str	r3, [r2]
80021204:	e51b3008 	ldr	r3, [fp, #-8]
80021208:	e5933000 	ldr	r3, [r3]
8002120c:	e59f205c 	ldr	r2, [pc, #92]	@ 80021270 <mark_blk+0x14c>
80021210:	e1530002 	cmp	r3, r2
80021214:	0a00000d 	beq	80021250 <mark_blk+0x12c>
80021218:	e51b3008 	ldr	r3, [fp, #-8]
8002121c:	e5933000 	ldr	r3, [r3]
80021220:	e1a01003 	mov	r1, r3
80021224:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80021228:	ebfffe9b 	bl	80020c9c <get_mark>
8002122c:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80021230:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80021234:	e1a02803 	lsl	r2, r3, #16
80021238:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002123c:	e5933000 	ldr	r3, [r3]
80021240:	e6ff3073 	uxth	r3, r3
80021244:	e1822003 	orr	r2, r2, r3
80021248:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002124c:	e5832000 	str	r2, [r3]
80021250:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80021254:	e51b3008 	ldr	r3, [fp, #-8]
80021258:	e5832000 	str	r2, [r3]
8002125c:	e1a00000 	nop			@ (mov r0, r0)
80021260:	e24bd004 	sub	sp, fp, #4
80021264:	e8bd8800 	pop	{fp, pc}
80021268:	800ac810 	.word	0x800ac810
8002126c:	80029b74 	.word	0x80029b74
80021270:	0000ffff 	.word	0x0000ffff

80021274 <get_blk>:
80021274:	e92d4800 	push	{fp, lr}
80021278:	e28db004 	add	fp, sp, #4
8002127c:	e24dd018 	sub	sp, sp, #24
80021280:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80021284:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021288:	e2433006 	sub	r3, r3, #6
8002128c:	e2833008 	add	r3, r3, #8
80021290:	e1a03183 	lsl	r3, r3, #3
80021294:	e59f20c0 	ldr	r2, [pc, #192]	@ 8002135c <get_blk+0xe8>
80021298:	e0833002 	add	r3, r3, r2
8002129c:	e50b300c 	str	r3, [fp, #-12]
800212a0:	e51b300c 	ldr	r3, [fp, #-12]
800212a4:	e5933000 	ldr	r3, [r3]
800212a8:	e1a01003 	mov	r1, r3
800212ac:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
800212b0:	ebfffe79 	bl	80020c9c <get_mark>
800212b4:	e50b0010 	str	r0, [fp, #-16]
800212b8:	e51b3010 	ldr	r3, [fp, #-16]
800212bc:	e5933004 	ldr	r3, [r3, #4]
800212c0:	e3530000 	cmp	r3, #0
800212c4:	1a000001 	bne	800212d0 <get_blk+0x5c>
800212c8:	e59f0090 	ldr	r0, [pc, #144]	@ 80021360 <get_blk+0xec>
800212cc:	eb0001fa 	bl	80021abc <panic>
800212d0:	e3a03000 	mov	r3, #0
800212d4:	e50b3008 	str	r3, [fp, #-8]
800212d8:	ea000018 	b	80021340 <get_blk+0xcc>
800212dc:	e51b3010 	ldr	r3, [fp, #-16]
800212e0:	e5933004 	ldr	r3, [r3, #4]
800212e4:	e3a01001 	mov	r1, #1
800212e8:	e51b2008 	ldr	r2, [fp, #-8]
800212ec:	e1a02211 	lsl	r2, r1, r2
800212f0:	e0033002 	and	r3, r3, r2
800212f4:	e3530000 	cmp	r3, #0
800212f8:	0a00000d 	beq	80021334 <get_blk+0xc0>
800212fc:	e51b300c 	ldr	r3, [fp, #-12]
80021300:	e5933000 	ldr	r3, [r3]
80021304:	e1a02283 	lsl	r2, r3, #5
80021308:	e51b3008 	ldr	r3, [fp, #-8]
8002130c:	e0823003 	add	r3, r2, r3
80021310:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80021314:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80021318:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
8002131c:	ebffff18 	bl	80020f84 <unmark_blk>
80021320:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80021324:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80021328:	ebfffe72 	bl	80020cf8 <blkid2mem>
8002132c:	e1a03000 	mov	r3, r0
80021330:	ea000006 	b	80021350 <get_blk+0xdc>
80021334:	e51b3008 	ldr	r3, [fp, #-8]
80021338:	e2833001 	add	r3, r3, #1
8002133c:	e50b3008 	str	r3, [fp, #-8]
80021340:	e51b3008 	ldr	r3, [fp, #-8]
80021344:	e353001f 	cmp	r3, #31
80021348:	daffffe3 	ble	800212dc <get_blk+0x68>
8002134c:	e3a03000 	mov	r3, #0
80021350:	e1a00003 	mov	r0, r3
80021354:	e24bd004 	sub	sp, fp, #4
80021358:	e8bd8800 	pop	{fp, pc}
8002135c:	800ac810 	.word	0x800ac810
80021360:	80029b84 	.word	0x80029b84

80021364 <_kmalloc>:
80021364:	e92d4800 	push	{fp, lr}
80021368:	e28db004 	add	fp, sp, #4
8002136c:	e24dd010 	sub	sp, sp, #16
80021370:	e50b0010 	str	r0, [fp, #-16]
80021374:	e51b3010 	ldr	r3, [fp, #-16]
80021378:	e2433006 	sub	r3, r3, #6
8002137c:	e2833008 	add	r3, r3, #8
80021380:	e1a03183 	lsl	r3, r3, #3
80021384:	e59f2090 	ldr	r2, [pc, #144]	@ 8002141c <_kmalloc+0xb8>
80021388:	e0833002 	add	r3, r3, r2
8002138c:	e50b300c 	str	r3, [fp, #-12]
80021390:	e3a03000 	mov	r3, #0
80021394:	e50b3008 	str	r3, [fp, #-8]
80021398:	e51b300c 	ldr	r3, [fp, #-12]
8002139c:	e5933000 	ldr	r3, [r3]
800213a0:	e59f2078 	ldr	r2, [pc, #120]	@ 80021420 <_kmalloc+0xbc>
800213a4:	e1530002 	cmp	r3, r2
800213a8:	0a000003 	beq	800213bc <_kmalloc+0x58>
800213ac:	e51b0010 	ldr	r0, [fp, #-16]
800213b0:	ebffffaf 	bl	80021274 <get_blk>
800213b4:	e50b0008 	str	r0, [fp, #-8]
800213b8:	ea000013 	b	8002140c <_kmalloc+0xa8>
800213bc:	e51b3010 	ldr	r3, [fp, #-16]
800213c0:	e353000b 	cmp	r3, #11
800213c4:	ca000010 	bgt	8002140c <_kmalloc+0xa8>
800213c8:	e51b3010 	ldr	r3, [fp, #-16]
800213cc:	e2833001 	add	r3, r3, #1
800213d0:	e1a00003 	mov	r0, r3
800213d4:	ebffffe2 	bl	80021364 <_kmalloc>
800213d8:	e50b0008 	str	r0, [fp, #-8]
800213dc:	e51b3008 	ldr	r3, [fp, #-8]
800213e0:	e3530000 	cmp	r3, #0
800213e4:	0a000008 	beq	8002140c <_kmalloc+0xa8>
800213e8:	e3a02001 	mov	r2, #1
800213ec:	e51b3010 	ldr	r3, [fp, #-16]
800213f0:	e1a03312 	lsl	r3, r2, r3
800213f4:	e1a02003 	mov	r2, r3
800213f8:	e51b3008 	ldr	r3, [fp, #-8]
800213fc:	e0833002 	add	r3, r3, r2
80021400:	e51b1010 	ldr	r1, [fp, #-16]
80021404:	e1a00003 	mov	r0, r3
80021408:	eb00001e 	bl	80021488 <_kfree>
8002140c:	e51b3008 	ldr	r3, [fp, #-8]
80021410:	e1a00003 	mov	r0, r3
80021414:	e24bd004 	sub	sp, fp, #4
80021418:	e8bd8800 	pop	{fp, pc}
8002141c:	800ac810 	.word	0x800ac810
80021420:	0000ffff 	.word	0x0000ffff

80021424 <kmalloc>:
80021424:	e92d4800 	push	{fp, lr}
80021428:	e28db004 	add	fp, sp, #4
8002142c:	e24dd010 	sub	sp, sp, #16
80021430:	e50b0010 	str	r0, [fp, #-16]
80021434:	e51b3010 	ldr	r3, [fp, #-16]
80021438:	e353000c 	cmp	r3, #12
8002143c:	ca000002 	bgt	8002144c <kmalloc+0x28>
80021440:	e51b3010 	ldr	r3, [fp, #-16]
80021444:	e3530005 	cmp	r3, #5
80021448:	ca000001 	bgt	80021454 <kmalloc+0x30>
8002144c:	e59f002c 	ldr	r0, [pc, #44]	@ 80021480 <kmalloc+0x5c>
80021450:	eb000199 	bl	80021abc <panic>
80021454:	e59f0028 	ldr	r0, [pc, #40]	@ 80021484 <kmalloc+0x60>
80021458:	eb0014ab 	bl	8002670c <acquire>
8002145c:	e51b0010 	ldr	r0, [fp, #-16]
80021460:	ebffffbf 	bl	80021364 <_kmalloc>
80021464:	e50b0008 	str	r0, [fp, #-8]
80021468:	e59f0014 	ldr	r0, [pc, #20]	@ 80021484 <kmalloc+0x60>
8002146c:	eb0014b1 	bl	80026738 <release>
80021470:	e51b3008 	ldr	r3, [fp, #-8]
80021474:	e1a00003 	mov	r0, r3
80021478:	e24bd004 	sub	sp, fp, #4
8002147c:	e8bd8800 	pop	{fp, pc}
80021480:	80029b9c 	.word	0x80029b9c
80021484:	800ac810 	.word	0x800ac810

80021488 <_kfree>:
80021488:	e92d4800 	push	{fp, lr}
8002148c:	e28db004 	add	fp, sp, #4
80021490:	e24dd018 	sub	sp, sp, #24
80021494:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80021498:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
8002149c:	e51b1018 	ldr	r1, [fp, #-24]	@ 0xffffffe8
800214a0:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
800214a4:	ebfffe23 	bl	80020d38 <mem2blkid>
800214a8:	e50b0008 	str	r0, [fp, #-8]
800214ac:	e51b3008 	ldr	r3, [fp, #-8]
800214b0:	e1a032c3 	asr	r3, r3, #5
800214b4:	e1a01003 	mov	r1, r3
800214b8:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
800214bc:	ebfffdf6 	bl	80020c9c <get_mark>
800214c0:	e50b000c 	str	r0, [fp, #-12]
800214c4:	e51b300c 	ldr	r3, [fp, #-12]
800214c8:	e5933004 	ldr	r3, [r3, #4]
800214cc:	e51b1008 	ldr	r1, [fp, #-8]
800214d0:	e1a00003 	mov	r0, r3
800214d4:	ebfffe27 	bl	80020d78 <available>
800214d8:	e1a03000 	mov	r3, r0
800214dc:	e3530000 	cmp	r3, #0
800214e0:	0a000001 	beq	800214ec <_kfree+0x64>
800214e4:	e59f0090 	ldr	r0, [pc, #144]	@ 8002157c <_kfree+0xf4>
800214e8:	eb000173 	bl	80021abc <panic>
800214ec:	e51b3008 	ldr	r3, [fp, #-8]
800214f0:	e2233001 	eor	r3, r3, #1
800214f4:	e50b3010 	str	r3, [fp, #-16]
800214f8:	e51b300c 	ldr	r3, [fp, #-12]
800214fc:	e5933004 	ldr	r3, [r3, #4]
80021500:	e51b1010 	ldr	r1, [fp, #-16]
80021504:	e1a00003 	mov	r0, r3
80021508:	ebfffe1a 	bl	80020d78 <available>
8002150c:	e1a03000 	mov	r3, r0
80021510:	e3530000 	cmp	r3, #0
80021514:	0a000002 	beq	80021524 <_kfree+0x9c>
80021518:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002151c:	e353000c 	cmp	r3, #12
80021520:	1a000003 	bne	80021534 <_kfree+0xac>
80021524:	e51b1008 	ldr	r1, [fp, #-8]
80021528:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
8002152c:	ebfffefc 	bl	80021124 <mark_blk>
80021530:	ea00000e 	b	80021570 <_kfree+0xe8>
80021534:	e51b1010 	ldr	r1, [fp, #-16]
80021538:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
8002153c:	ebfffe90 	bl	80020f84 <unmark_blk>
80021540:	e51b3008 	ldr	r3, [fp, #-8]
80021544:	e3c33001 	bic	r3, r3, #1
80021548:	e1a01003 	mov	r1, r3
8002154c:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
80021550:	ebfffde8 	bl	80020cf8 <blkid2mem>
80021554:	e1a02000 	mov	r2, r0
80021558:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002155c:	e2833001 	add	r3, r3, #1
80021560:	e1a01003 	mov	r1, r3
80021564:	e1a00002 	mov	r0, r2
80021568:	ebffffc6 	bl	80021488 <_kfree>
8002156c:	e1a00000 	nop			@ (mov r0, r0)
80021570:	e1a00000 	nop			@ (mov r0, r0)
80021574:	e24bd004 	sub	sp, fp, #4
80021578:	e8bd8800 	pop	{fp, pc}
8002157c:	80029bbc 	.word	0x80029bbc

80021580 <kfree>:
80021580:	e92d4800 	push	{fp, lr}
80021584:	e28db004 	add	fp, sp, #4
80021588:	e24dd008 	sub	sp, sp, #8
8002158c:	e50b0008 	str	r0, [fp, #-8]
80021590:	e50b100c 	str	r1, [fp, #-12]
80021594:	e51b300c 	ldr	r3, [fp, #-12]
80021598:	e353000c 	cmp	r3, #12
8002159c:	ca00000b 	bgt	800215d0 <kfree+0x50>
800215a0:	e51b300c 	ldr	r3, [fp, #-12]
800215a4:	e3530005 	cmp	r3, #5
800215a8:	da000008 	ble	800215d0 <kfree+0x50>
800215ac:	e3a02001 	mov	r2, #1
800215b0:	e51b300c 	ldr	r3, [fp, #-12]
800215b4:	e1a03312 	lsl	r3, r2, r3
800215b8:	e2433001 	sub	r3, r3, #1
800215bc:	e1a02003 	mov	r2, r3
800215c0:	e51b3008 	ldr	r3, [fp, #-8]
800215c4:	e0033002 	and	r3, r3, r2
800215c8:	e3530000 	cmp	r3, #0
800215cc:	0a000001 	beq	800215d8 <kfree+0x58>
800215d0:	e59f0028 	ldr	r0, [pc, #40]	@ 80021600 <kfree+0x80>
800215d4:	eb000138 	bl	80021abc <panic>
800215d8:	e59f0024 	ldr	r0, [pc, #36]	@ 80021604 <kfree+0x84>
800215dc:	eb00144a 	bl	8002670c <acquire>
800215e0:	e51b100c 	ldr	r1, [fp, #-12]
800215e4:	e51b0008 	ldr	r0, [fp, #-8]
800215e8:	ebffffa6 	bl	80021488 <_kfree>
800215ec:	e59f0010 	ldr	r0, [pc, #16]	@ 80021604 <kfree+0x84>
800215f0:	eb001450 	bl	80026738 <release>
800215f4:	e1a00000 	nop			@ (mov r0, r0)
800215f8:	e24bd004 	sub	sp, fp, #4
800215fc:	e8bd8800 	pop	{fp, pc}
80021600:	80029bd0 	.word	0x80029bd0
80021604:	800ac810 	.word	0x800ac810

80021608 <free_page>:
80021608:	e92d4800 	push	{fp, lr}
8002160c:	e28db004 	add	fp, sp, #4
80021610:	e24dd008 	sub	sp, sp, #8
80021614:	e50b0008 	str	r0, [fp, #-8]
80021618:	e3a0100c 	mov	r1, #12
8002161c:	e51b0008 	ldr	r0, [fp, #-8]
80021620:	ebffffd6 	bl	80021580 <kfree>
80021624:	e1a00000 	nop			@ (mov r0, r0)
80021628:	e24bd004 	sub	sp, fp, #4
8002162c:	e8bd8800 	pop	{fp, pc}

80021630 <alloc_page>:
80021630:	e92d4800 	push	{fp, lr}
80021634:	e28db004 	add	fp, sp, #4
80021638:	e3a0000c 	mov	r0, #12
8002163c:	ebffff78 	bl	80021424 <kmalloc>
80021640:	e1a03000 	mov	r3, r0
80021644:	e1a00003 	mov	r0, r3
80021648:	e8bd8800 	pop	{fp, pc}

8002164c <get_order>:
8002164c:	e92d4800 	push	{fp, lr}
80021650:	e28db004 	add	fp, sp, #4
80021654:	e24dd010 	sub	sp, sp, #16
80021658:	e50b0010 	str	r0, [fp, #-16]
8002165c:	e51b3010 	ldr	r3, [fp, #-16]
80021660:	e2433001 	sub	r3, r3, #1
80021664:	e50b3010 	str	r3, [fp, #-16]
80021668:	e51b3010 	ldr	r3, [fp, #-16]
8002166c:	e1a030a3 	lsr	r3, r3, #1
80021670:	e51b2010 	ldr	r2, [fp, #-16]
80021674:	e1823003 	orr	r3, r2, r3
80021678:	e50b3010 	str	r3, [fp, #-16]
8002167c:	e51b3010 	ldr	r3, [fp, #-16]
80021680:	e1a03123 	lsr	r3, r3, #2
80021684:	e51b2010 	ldr	r2, [fp, #-16]
80021688:	e1823003 	orr	r3, r2, r3
8002168c:	e50b3010 	str	r3, [fp, #-16]
80021690:	e51b3010 	ldr	r3, [fp, #-16]
80021694:	e1a03223 	lsr	r3, r3, #4
80021698:	e51b2010 	ldr	r2, [fp, #-16]
8002169c:	e1823003 	orr	r3, r2, r3
800216a0:	e50b3010 	str	r3, [fp, #-16]
800216a4:	e51b3010 	ldr	r3, [fp, #-16]
800216a8:	e1a03423 	lsr	r3, r3, #8
800216ac:	e51b2010 	ldr	r2, [fp, #-16]
800216b0:	e1823003 	orr	r3, r2, r3
800216b4:	e50b3010 	str	r3, [fp, #-16]
800216b8:	e51b3010 	ldr	r3, [fp, #-16]
800216bc:	e1a03823 	lsr	r3, r3, #16
800216c0:	e51b2010 	ldr	r2, [fp, #-16]
800216c4:	e1823003 	orr	r3, r2, r3
800216c8:	e50b3010 	str	r3, [fp, #-16]
800216cc:	e51b3010 	ldr	r3, [fp, #-16]
800216d0:	e2833001 	add	r3, r3, #1
800216d4:	e50b3010 	str	r3, [fp, #-16]
800216d8:	e3a03000 	mov	r3, #0
800216dc:	e50b3008 	str	r3, [fp, #-8]
800216e0:	ea00000a 	b	80021710 <get_order+0xc4>
800216e4:	e3a02001 	mov	r2, #1
800216e8:	e51b3008 	ldr	r3, [fp, #-8]
800216ec:	e1a03312 	lsl	r3, r2, r3
800216f0:	e1a02003 	mov	r2, r3
800216f4:	e51b3010 	ldr	r3, [fp, #-16]
800216f8:	e0033002 	and	r3, r3, r2
800216fc:	e3530000 	cmp	r3, #0
80021700:	1a000006 	bne	80021720 <get_order+0xd4>
80021704:	e51b3008 	ldr	r3, [fp, #-8]
80021708:	e2833001 	add	r3, r3, #1
8002170c:	e50b3008 	str	r3, [fp, #-8]
80021710:	e51b3008 	ldr	r3, [fp, #-8]
80021714:	e353001f 	cmp	r3, #31
80021718:	9afffff1 	bls	800216e4 <get_order+0x98>
8002171c:	ea000000 	b	80021724 <get_order+0xd8>
80021720:	e1a00000 	nop			@ (mov r0, r0)
80021724:	e51b3008 	ldr	r3, [fp, #-8]
80021728:	e3530005 	cmp	r3, #5
8002172c:	8a000002 	bhi	8002173c <get_order+0xf0>
80021730:	e3a03006 	mov	r3, #6
80021734:	e50b3008 	str	r3, [fp, #-8]
80021738:	ea000004 	b	80021750 <get_order+0x104>
8002173c:	e51b3008 	ldr	r3, [fp, #-8]
80021740:	e353000c 	cmp	r3, #12
80021744:	9a000001 	bls	80021750 <get_order+0x104>
80021748:	e59f0010 	ldr	r0, [pc, #16]	@ 80021760 <get_order+0x114>
8002174c:	eb0000da 	bl	80021abc <panic>
80021750:	e51b3008 	ldr	r3, [fp, #-8]
80021754:	e1a00003 	mov	r0, r3
80021758:	e24bd004 	sub	sp, fp, #4
8002175c:	e8bd8800 	pop	{fp, pc}
80021760:	80029c00 	.word	0x80029c00

80021764 <printint>:
80021764:	e92d4800 	push	{fp, lr}
80021768:	e28db004 	add	fp, sp, #4
8002176c:	e24dd028 	sub	sp, sp, #40	@ 0x28
80021770:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80021774:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80021778:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
8002177c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80021780:	e3530000 	cmp	r3, #0
80021784:	0a00000a 	beq	800217b4 <printint+0x50>
80021788:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002178c:	e1a03fa3 	lsr	r3, r3, #31
80021790:	e6ef3073 	uxtb	r3, r3
80021794:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
80021798:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
8002179c:	e3530000 	cmp	r3, #0
800217a0:	0a000003 	beq	800217b4 <printint+0x50>
800217a4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800217a8:	e2633000 	rsb	r3, r3, #0
800217ac:	e50b300c 	str	r3, [fp, #-12]
800217b0:	ea000001 	b	800217bc <printint+0x58>
800217b4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800217b8:	e50b300c 	str	r3, [fp, #-12]
800217bc:	e3a03000 	mov	r3, #0
800217c0:	e50b3008 	str	r3, [fp, #-8]
800217c4:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
800217c8:	e51b300c 	ldr	r3, [fp, #-12]
800217cc:	e1a01002 	mov	r1, r2
800217d0:	e1a00003 	mov	r0, r3
800217d4:	eb002066 	bl	80029974 <__aeabi_uidivmod>
800217d8:	e1a03001 	mov	r3, r1
800217dc:	e1a01003 	mov	r1, r3
800217e0:	e51b3008 	ldr	r3, [fp, #-8]
800217e4:	e2832001 	add	r2, r3, #1
800217e8:	e50b2008 	str	r2, [fp, #-8]
800217ec:	e59f209c 	ldr	r2, [pc, #156]	@ 80021890 <printint+0x12c>
800217f0:	e7d22001 	ldrb	r2, [r2, r1]
800217f4:	e2433004 	sub	r3, r3, #4
800217f8:	e083300b 	add	r3, r3, fp
800217fc:	e5432018 	strb	r2, [r3, #-24]	@ 0xffffffe8
80021800:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80021804:	e1a01003 	mov	r1, r3
80021808:	e51b000c 	ldr	r0, [fp, #-12]
8002180c:	eb00201b 	bl	80029880 <__udivsi3>
80021810:	e1a03000 	mov	r3, r0
80021814:	e50b300c 	str	r3, [fp, #-12]
80021818:	e51b300c 	ldr	r3, [fp, #-12]
8002181c:	e3530000 	cmp	r3, #0
80021820:	1affffe7 	bne	800217c4 <printint+0x60>
80021824:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80021828:	e3530000 	cmp	r3, #0
8002182c:	0a00000d 	beq	80021868 <printint+0x104>
80021830:	e51b3008 	ldr	r3, [fp, #-8]
80021834:	e2832001 	add	r2, r3, #1
80021838:	e50b2008 	str	r2, [fp, #-8]
8002183c:	e2433004 	sub	r3, r3, #4
80021840:	e083300b 	add	r3, r3, fp
80021844:	e3a0202d 	mov	r2, #45	@ 0x2d
80021848:	e5432018 	strb	r2, [r3, #-24]	@ 0xffffffe8
8002184c:	ea000005 	b	80021868 <printint+0x104>
80021850:	e24b201c 	sub	r2, fp, #28
80021854:	e51b3008 	ldr	r3, [fp, #-8]
80021858:	e0823003 	add	r3, r2, r3
8002185c:	e5d33000 	ldrb	r3, [r3]
80021860:	e1a00003 	mov	r0, r3
80021864:	eb0000ad 	bl	80021b20 <consputc>
80021868:	e51b3008 	ldr	r3, [fp, #-8]
8002186c:	e2433001 	sub	r3, r3, #1
80021870:	e50b3008 	str	r3, [fp, #-8]
80021874:	e51b3008 	ldr	r3, [fp, #-8]
80021878:	e3530000 	cmp	r3, #0
8002187c:	aafffff3 	bge	80021850 <printint+0xec>
80021880:	e1a00000 	nop			@ (mov r0, r0)
80021884:	e1a00000 	nop			@ (mov r0, r0)
80021888:	e24bd004 	sub	sp, fp, #4
8002188c:	e8bd8800 	pop	{fp, pc}
80021890:	8002b000 	.word	0x8002b000

80021894 <cprintf>:
80021894:	e92d000f 	push	{r0, r1, r2, r3}
80021898:	e92d4800 	push	{fp, lr}
8002189c:	e28db004 	add	fp, sp, #4
800218a0:	e24dd018 	sub	sp, sp, #24
800218a4:	e59f3204 	ldr	r3, [pc, #516]	@ 80021ab0 <cprintf+0x21c>
800218a8:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
800218ac:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
800218b0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800218b4:	e3530000 	cmp	r3, #0
800218b8:	0a000001 	beq	800218c4 <cprintf+0x30>
800218bc:	e59f01ec 	ldr	r0, [pc, #492]	@ 80021ab0 <cprintf+0x21c>
800218c0:	eb001391 	bl	8002670c <acquire>
800218c4:	e59b3004 	ldr	r3, [fp, #4]
800218c8:	e3530000 	cmp	r3, #0
800218cc:	1a000001 	bne	800218d8 <cprintf+0x44>
800218d0:	e59f01dc 	ldr	r0, [pc, #476]	@ 80021ab4 <cprintf+0x220>
800218d4:	eb000078 	bl	80021abc <panic>
800218d8:	e28b3008 	add	r3, fp, #8
800218dc:	e50b300c 	str	r3, [fp, #-12]
800218e0:	e3a03000 	mov	r3, #0
800218e4:	e50b3008 	str	r3, [fp, #-8]
800218e8:	ea00005c 	b	80021a60 <cprintf+0x1cc>
800218ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800218f0:	e3530025 	cmp	r3, #37	@ 0x25
800218f4:	0a000002 	beq	80021904 <cprintf+0x70>
800218f8:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
800218fc:	eb000087 	bl	80021b20 <consputc>
80021900:	ea000053 	b	80021a54 <cprintf+0x1c0>
80021904:	e59b2004 	ldr	r2, [fp, #4]
80021908:	e51b3008 	ldr	r3, [fp, #-8]
8002190c:	e2833001 	add	r3, r3, #1
80021910:	e50b3008 	str	r3, [fp, #-8]
80021914:	e51b3008 	ldr	r3, [fp, #-8]
80021918:	e0823003 	add	r3, r2, r3
8002191c:	e5d33000 	ldrb	r3, [r3]
80021920:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80021924:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021928:	e3530000 	cmp	r3, #0
8002192c:	0a000054 	beq	80021a84 <cprintf+0x1f0>
80021930:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021934:	e3530078 	cmp	r3, #120	@ 0x78
80021938:	0a00001d 	beq	800219b4 <cprintf+0x120>
8002193c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021940:	e3530078 	cmp	r3, #120	@ 0x78
80021944:	ca00003d 	bgt	80021a40 <cprintf+0x1ac>
80021948:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002194c:	e3530073 	cmp	r3, #115	@ 0x73
80021950:	0a000020 	beq	800219d8 <cprintf+0x144>
80021954:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021958:	e3530073 	cmp	r3, #115	@ 0x73
8002195c:	ca000037 	bgt	80021a40 <cprintf+0x1ac>
80021960:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021964:	e3530070 	cmp	r3, #112	@ 0x70
80021968:	0a000011 	beq	800219b4 <cprintf+0x120>
8002196c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021970:	e3530070 	cmp	r3, #112	@ 0x70
80021974:	ca000031 	bgt	80021a40 <cprintf+0x1ac>
80021978:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002197c:	e3530025 	cmp	r3, #37	@ 0x25
80021980:	0a00002b 	beq	80021a34 <cprintf+0x1a0>
80021984:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021988:	e3530064 	cmp	r3, #100	@ 0x64
8002198c:	1a00002b 	bne	80021a40 <cprintf+0x1ac>
80021990:	e51b300c 	ldr	r3, [fp, #-12]
80021994:	e2832004 	add	r2, r3, #4
80021998:	e50b200c 	str	r2, [fp, #-12]
8002199c:	e5933000 	ldr	r3, [r3]
800219a0:	e3a02001 	mov	r2, #1
800219a4:	e3a0100a 	mov	r1, #10
800219a8:	e1a00003 	mov	r0, r3
800219ac:	ebffff6c 	bl	80021764 <printint>
800219b0:	ea000027 	b	80021a54 <cprintf+0x1c0>
800219b4:	e51b300c 	ldr	r3, [fp, #-12]
800219b8:	e2832004 	add	r2, r3, #4
800219bc:	e50b200c 	str	r2, [fp, #-12]
800219c0:	e5933000 	ldr	r3, [r3]
800219c4:	e3a02000 	mov	r2, #0
800219c8:	e3a01010 	mov	r1, #16
800219cc:	e1a00003 	mov	r0, r3
800219d0:	ebffff63 	bl	80021764 <printint>
800219d4:	ea00001e 	b	80021a54 <cprintf+0x1c0>
800219d8:	e51b300c 	ldr	r3, [fp, #-12]
800219dc:	e2832004 	add	r2, r3, #4
800219e0:	e50b200c 	str	r2, [fp, #-12]
800219e4:	e5933000 	ldr	r3, [r3]
800219e8:	e50b3010 	str	r3, [fp, #-16]
800219ec:	e51b3010 	ldr	r3, [fp, #-16]
800219f0:	e3530000 	cmp	r3, #0
800219f4:	1a000009 	bne	80021a20 <cprintf+0x18c>
800219f8:	e59f30b8 	ldr	r3, [pc, #184]	@ 80021ab8 <cprintf+0x224>
800219fc:	e50b3010 	str	r3, [fp, #-16]
80021a00:	ea000006 	b	80021a20 <cprintf+0x18c>
80021a04:	e51b3010 	ldr	r3, [fp, #-16]
80021a08:	e5d33000 	ldrb	r3, [r3]
80021a0c:	e1a00003 	mov	r0, r3
80021a10:	eb000042 	bl	80021b20 <consputc>
80021a14:	e51b3010 	ldr	r3, [fp, #-16]
80021a18:	e2833001 	add	r3, r3, #1
80021a1c:	e50b3010 	str	r3, [fp, #-16]
80021a20:	e51b3010 	ldr	r3, [fp, #-16]
80021a24:	e5d33000 	ldrb	r3, [r3]
80021a28:	e3530000 	cmp	r3, #0
80021a2c:	1afffff4 	bne	80021a04 <cprintf+0x170>
80021a30:	ea000007 	b	80021a54 <cprintf+0x1c0>
80021a34:	e3a00025 	mov	r0, #37	@ 0x25
80021a38:	eb000038 	bl	80021b20 <consputc>
80021a3c:	ea000004 	b	80021a54 <cprintf+0x1c0>
80021a40:	e3a00025 	mov	r0, #37	@ 0x25
80021a44:	eb000035 	bl	80021b20 <consputc>
80021a48:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80021a4c:	eb000033 	bl	80021b20 <consputc>
80021a50:	e1a00000 	nop			@ (mov r0, r0)
80021a54:	e51b3008 	ldr	r3, [fp, #-8]
80021a58:	e2833001 	add	r3, r3, #1
80021a5c:	e50b3008 	str	r3, [fp, #-8]
80021a60:	e59b2004 	ldr	r2, [fp, #4]
80021a64:	e51b3008 	ldr	r3, [fp, #-8]
80021a68:	e0823003 	add	r3, r2, r3
80021a6c:	e5d33000 	ldrb	r3, [r3]
80021a70:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80021a74:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021a78:	e3530000 	cmp	r3, #0
80021a7c:	1affff9a 	bne	800218ec <cprintf+0x58>
80021a80:	ea000000 	b	80021a88 <cprintf+0x1f4>
80021a84:	e1a00000 	nop			@ (mov r0, r0)
80021a88:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80021a8c:	e3530000 	cmp	r3, #0
80021a90:	0a000001 	beq	80021a9c <cprintf+0x208>
80021a94:	e59f0014 	ldr	r0, [pc, #20]	@ 80021ab0 <cprintf+0x21c>
80021a98:	eb001326 	bl	80026738 <release>
80021a9c:	e1a00000 	nop			@ (mov r0, r0)
80021aa0:	e24bd004 	sub	sp, fp, #4
80021aa4:	e8bd4800 	pop	{fp, lr}
80021aa8:	e28dd010 	add	sp, sp, #16
80021aac:	e12fff1e 	bx	lr
80021ab0:	800ac88c 	.word	0x800ac88c
80021ab4:	80029c10 	.word	0x80029c10
80021ab8:	80029c1c 	.word	0x80029c1c

80021abc <panic>:
80021abc:	e92d4800 	push	{fp, lr}
80021ac0:	e28db004 	add	fp, sp, #4
80021ac4:	e24dd008 	sub	sp, sp, #8
80021ac8:	e50b0008 	str	r0, [fp, #-8]
80021acc:	ebfffa9b 	bl	80020540 <cli>
80021ad0:	e59f3038 	ldr	r3, [pc, #56]	@ 80021b10 <panic+0x54>
80021ad4:	e3a02000 	mov	r2, #0
80021ad8:	e5832034 	str	r2, [r3, #52]	@ 0x34
80021adc:	e59f3030 	ldr	r3, [pc, #48]	@ 80021b14 <panic+0x58>
80021ae0:	e5933000 	ldr	r3, [r3]
80021ae4:	e5d33000 	ldrb	r3, [r3]
80021ae8:	e1a01003 	mov	r1, r3
80021aec:	e59f0024 	ldr	r0, [pc, #36]	@ 80021b18 <panic+0x5c>
80021af0:	ebffff67 	bl	80021894 <cprintf>
80021af4:	e51b0008 	ldr	r0, [fp, #-8]
80021af8:	ebfffb43 	bl	8002080c <show_callstk>
80021afc:	e59f3018 	ldr	r3, [pc, #24]	@ 80021b1c <panic+0x60>
80021b00:	e3a02001 	mov	r2, #1
80021b04:	e5832000 	str	r2, [r3]
80021b08:	e1a00000 	nop			@ (mov r0, r0)
80021b0c:	eafffffd 	b	80021b08 <panic+0x4c>
80021b10:	800ac88c 	.word	0x800ac88c
80021b14:	800aea10 	.word	0x800aea10
80021b18:	80029c24 	.word	0x80029c24
80021b1c:	800ac888 	.word	0x800ac888

80021b20 <consputc>:
80021b20:	e92d4800 	push	{fp, lr}
80021b24:	e28db004 	add	fp, sp, #4
80021b28:	e24dd008 	sub	sp, sp, #8
80021b2c:	e50b0008 	str	r0, [fp, #-8]
80021b30:	e59f3050 	ldr	r3, [pc, #80]	@ 80021b88 <consputc+0x68>
80021b34:	e5933000 	ldr	r3, [r3]
80021b38:	e3530000 	cmp	r3, #0
80021b3c:	0a000002 	beq	80021b4c <consputc+0x2c>
80021b40:	ebfffa7e 	bl	80020540 <cli>
80021b44:	e1a00000 	nop			@ (mov r0, r0)
80021b48:	eafffffd 	b	80021b44 <consputc+0x24>
80021b4c:	e51b3008 	ldr	r3, [fp, #-8]
80021b50:	e3530c01 	cmp	r3, #256	@ 0x100
80021b54:	1a000006 	bne	80021b74 <consputc+0x54>
80021b58:	e3a00008 	mov	r0, #8
80021b5c:	eb001f06 	bl	8002977c <uartputc>
80021b60:	e3a00020 	mov	r0, #32
80021b64:	eb001f04 	bl	8002977c <uartputc>
80021b68:	e3a00008 	mov	r0, #8
80021b6c:	eb001f02 	bl	8002977c <uartputc>
80021b70:	ea000001 	b	80021b7c <consputc+0x5c>
80021b74:	e51b0008 	ldr	r0, [fp, #-8]
80021b78:	eb001eff 	bl	8002977c <uartputc>
80021b7c:	e1a00000 	nop			@ (mov r0, r0)
80021b80:	e24bd004 	sub	sp, fp, #4
80021b84:	e8bd8800 	pop	{fp, pc}
80021b88:	800ac888 	.word	0x800ac888

80021b8c <strcmp>:
80021b8c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80021b90:	e28db000 	add	fp, sp, #0
80021b94:	e24dd00c 	sub	sp, sp, #12
80021b98:	e50b0008 	str	r0, [fp, #-8]
80021b9c:	e50b100c 	str	r1, [fp, #-12]
80021ba0:	ea000005 	b	80021bbc <strcmp+0x30>
80021ba4:	e51b3008 	ldr	r3, [fp, #-8]
80021ba8:	e2833001 	add	r3, r3, #1
80021bac:	e50b3008 	str	r3, [fp, #-8]
80021bb0:	e51b300c 	ldr	r3, [fp, #-12]
80021bb4:	e2833001 	add	r3, r3, #1
80021bb8:	e50b300c 	str	r3, [fp, #-12]
80021bbc:	e51b3008 	ldr	r3, [fp, #-8]
80021bc0:	e5d33000 	ldrb	r3, [r3]
80021bc4:	e3530000 	cmp	r3, #0
80021bc8:	0a000005 	beq	80021be4 <strcmp+0x58>
80021bcc:	e51b3008 	ldr	r3, [fp, #-8]
80021bd0:	e5d32000 	ldrb	r2, [r3]
80021bd4:	e51b300c 	ldr	r3, [fp, #-12]
80021bd8:	e5d33000 	ldrb	r3, [r3]
80021bdc:	e1520003 	cmp	r2, r3
80021be0:	0affffef 	beq	80021ba4 <strcmp+0x18>
80021be4:	e51b3008 	ldr	r3, [fp, #-8]
80021be8:	e5d33000 	ldrb	r3, [r3]
80021bec:	e1a02003 	mov	r2, r3
80021bf0:	e51b300c 	ldr	r3, [fp, #-12]
80021bf4:	e5d33000 	ldrb	r3, [r3]
80021bf8:	e0423003 	sub	r3, r2, r3
80021bfc:	e1a00003 	mov	r0, r3
80021c00:	e28bd000 	add	sp, fp, #0
80021c04:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80021c08:	e12fff1e 	bx	lr

80021c0c <loadCommands>:
80021c0c:	e92d4800 	push	{fp, lr}
80021c10:	e28db004 	add	fp, sp, #4
80021c14:	e24dd018 	sub	sp, sp, #24
80021c18:	e59f010c 	ldr	r0, [pc, #268]	@ 80021d2c <loadCommands+0x120>
80021c1c:	eb000a2e 	bl	800244dc <namei>
80021c20:	e50b000c 	str	r0, [fp, #-12]
80021c24:	e59f3104 	ldr	r3, [pc, #260]	@ 80021d30 <loadCommands+0x124>
80021c28:	e3a02000 	mov	r2, #0
80021c2c:	e5832000 	str	r2, [r3]
80021c30:	e3a03000 	mov	r3, #0
80021c34:	e50b3008 	str	r3, [fp, #-8]
80021c38:	ea000032 	b	80021d08 <loadCommands+0xfc>
80021c3c:	e51b2008 	ldr	r2, [fp, #-8]
80021c40:	e24b101c 	sub	r1, fp, #28
80021c44:	e3a03010 	mov	r3, #16
80021c48:	e51b000c 	ldr	r0, [fp, #-12]
80021c4c:	eb0007fb 	bl	80023c40 <readi>
80021c50:	e1a03000 	mov	r3, r0
80021c54:	e3530010 	cmp	r3, #16
80021c58:	1a000022 	bne	80021ce8 <loadCommands+0xdc>
80021c5c:	e15b31bc 	ldrh	r3, [fp, #-28]	@ 0xffffffe4
80021c60:	e3530000 	cmp	r3, #0
80021c64:	0a000021 	beq	80021cf0 <loadCommands+0xe4>
80021c68:	e24b301c 	sub	r3, fp, #28
80021c6c:	e2833002 	add	r3, r3, #2
80021c70:	e59f10bc 	ldr	r1, [pc, #188]	@ 80021d34 <loadCommands+0x128>
80021c74:	e1a00003 	mov	r0, r3
80021c78:	ebffffc3 	bl	80021b8c <strcmp>
80021c7c:	e1a03000 	mov	r3, r0
80021c80:	e3530000 	cmp	r3, #0
80021c84:	0a00001b 	beq	80021cf8 <loadCommands+0xec>
80021c88:	e24b301c 	sub	r3, fp, #28
80021c8c:	e2833002 	add	r3, r3, #2
80021c90:	e59f10a0 	ldr	r1, [pc, #160]	@ 80021d38 <loadCommands+0x12c>
80021c94:	e1a00003 	mov	r0, r3
80021c98:	ebffffbb 	bl	80021b8c <strcmp>
80021c9c:	e1a03000 	mov	r3, r0
80021ca0:	e3530000 	cmp	r3, #0
80021ca4:	0a000013 	beq	80021cf8 <loadCommands+0xec>
80021ca8:	e59f3080 	ldr	r3, [pc, #128]	@ 80021d30 <loadCommands+0x124>
80021cac:	e5933000 	ldr	r3, [r3]
80021cb0:	e1a03283 	lsl	r3, r3, #5
80021cb4:	e59f2080 	ldr	r2, [pc, #128]	@ 80021d3c <loadCommands+0x130>
80021cb8:	e0830002 	add	r0, r3, r2
80021cbc:	e24b301c 	sub	r3, fp, #28
80021cc0:	e2833002 	add	r3, r3, #2
80021cc4:	e3a0200e 	mov	r2, #14
80021cc8:	e1a01003 	mov	r1, r3
80021ccc:	ebfff9df 	bl	80020450 <safestrcpy>
80021cd0:	e59f3058 	ldr	r3, [pc, #88]	@ 80021d30 <loadCommands+0x124>
80021cd4:	e5933000 	ldr	r3, [r3]
80021cd8:	e2833001 	add	r3, r3, #1
80021cdc:	e59f204c 	ldr	r2, [pc, #76]	@ 80021d30 <loadCommands+0x124>
80021ce0:	e5823000 	str	r3, [r2]
80021ce4:	ea000004 	b	80021cfc <loadCommands+0xf0>
80021ce8:	e1a00000 	nop			@ (mov r0, r0)
80021cec:	ea000002 	b	80021cfc <loadCommands+0xf0>
80021cf0:	e1a00000 	nop			@ (mov r0, r0)
80021cf4:	ea000000 	b	80021cfc <loadCommands+0xf0>
80021cf8:	e1a00000 	nop			@ (mov r0, r0)
80021cfc:	e51b3008 	ldr	r3, [fp, #-8]
80021d00:	e2833010 	add	r3, r3, #16
80021d04:	e50b3008 	str	r3, [fp, #-8]
80021d08:	e51b300c 	ldr	r3, [fp, #-12]
80021d0c:	e5932018 	ldr	r2, [r3, #24]
80021d10:	e51b3008 	ldr	r3, [fp, #-8]
80021d14:	e1520003 	cmp	r2, r3
80021d18:	8affffc7 	bhi	80021c3c <loadCommands+0x30>
80021d1c:	e1a00000 	nop			@ (mov r0, r0)
80021d20:	e1a00000 	nop			@ (mov r0, r0)
80021d24:	e24bd004 	sub	sp, fp, #4
80021d28:	e8bd8800 	pop	{fp, pc}
80021d2c:	80029c34 	.word	0x80029c34
80021d30:	800acf04 	.word	0x800acf04
80021d34:	80029c38 	.word	0x80029c38
80021d38:	80029c3c 	.word	0x80029c3c
80021d3c:	800acb04 	.word	0x800acb04

80021d40 <tabComplete>:
80021d40:	e92d49f0 	push	{r4, r5, r6, r7, r8, fp, lr}
80021d44:	e28db018 	add	fp, sp, #24
80021d48:	e24ddf89 	sub	sp, sp, #548	@ 0x224
80021d4c:	e1a0300d 	mov	r3, sp
80021d50:	e1a08003 	mov	r8, r3
80021d54:	ebffffac 	bl	80021c0c <loadCommands>
80021d58:	e59f3270 	ldr	r3, [pc, #624]	@ 80021fd0 <tabComplete+0x290>
80021d5c:	e593223c 	ldr	r2, [r3, #572]	@ 0x23c
80021d60:	e59f3268 	ldr	r3, [pc, #616]	@ 80021fd0 <tabComplete+0x290>
80021d64:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80021d68:	e0423003 	sub	r3, r2, r3
80021d6c:	e50b3030 	str	r3, [fp, #-48]	@ 0xffffffd0
80021d70:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
80021d74:	e3530000 	cmp	r3, #0
80021d78:	ca000001 	bgt	80021d84 <tabComplete+0x44>
80021d7c:	e1a0d008 	mov	sp, r8
80021d80:	ea000090 	b	80021fc8 <tabComplete+0x288>
80021d84:	e59f3244 	ldr	r3, [pc, #580]	@ 80021fd0 <tabComplete+0x290>
80021d88:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80021d8c:	e59f2240 	ldr	r2, [pc, #576]	@ 80021fd4 <tabComplete+0x294>
80021d90:	e0831002 	add	r1, r3, r2
80021d94:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
80021d98:	e24b3f8e 	sub	r3, fp, #568	@ 0x238
80021d9c:	e1a00003 	mov	r0, r3
80021da0:	ebfff908 	bl	800201c8 <memmove>
80021da4:	e24b2f8e 	sub	r2, fp, #568	@ 0x238
80021da8:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
80021dac:	e0823003 	add	r3, r2, r3
80021db0:	e3a02000 	mov	r2, #0
80021db4:	e5c32000 	strb	r2, [r3]
80021db8:	e3a03000 	mov	r3, #0
80021dbc:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
80021dc0:	e59f3210 	ldr	r3, [pc, #528]	@ 80021fd8 <tabComplete+0x298>
80021dc4:	e5931000 	ldr	r1, [r3]
80021dc8:	e2413001 	sub	r3, r1, #1
80021dcc:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
80021dd0:	e1a02001 	mov	r2, r1
80021dd4:	e3a03000 	mov	r3, #0
80021dd8:	e1a06002 	mov	r6, r2
80021ddc:	e1a07003 	mov	r7, r3
80021de0:	e3a02000 	mov	r2, #0
80021de4:	e3a03000 	mov	r3, #0
80021de8:	e1a03287 	lsl	r3, r7, #5
80021dec:	e1833da6 	orr	r3, r3, r6, lsr #27
80021df0:	e1a02286 	lsl	r2, r6, #5
80021df4:	e1a02001 	mov	r2, r1
80021df8:	e3a03000 	mov	r3, #0
80021dfc:	e1a04002 	mov	r4, r2
80021e00:	e1a05003 	mov	r5, r3
80021e04:	e3a02000 	mov	r2, #0
80021e08:	e3a03000 	mov	r3, #0
80021e0c:	e1a03285 	lsl	r3, r5, #5
80021e10:	e1833da4 	orr	r3, r3, r4, lsr #27
80021e14:	e1a02284 	lsl	r2, r4, #5
80021e18:	e1a03001 	mov	r3, r1
80021e1c:	e1a03103 	lsl	r3, r3, #2
80021e20:	e2833007 	add	r3, r3, #7
80021e24:	e1a031a3 	lsr	r3, r3, #3
80021e28:	e1a03183 	lsl	r3, r3, #3
80021e2c:	e04dd003 	sub	sp, sp, r3
80021e30:	e1a0300d 	mov	r3, sp
80021e34:	e2833003 	add	r3, r3, #3
80021e38:	e1a03123 	lsr	r3, r3, #2
80021e3c:	e1a03103 	lsl	r3, r3, #2
80021e40:	e50b3038 	str	r3, [fp, #-56]	@ 0xffffffc8
80021e44:	e3a03000 	mov	r3, #0
80021e48:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80021e4c:	ea000016 	b	80021eac <tabComplete+0x16c>
80021e50:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80021e54:	e1a03283 	lsl	r3, r3, #5
80021e58:	e59f217c 	ldr	r2, [pc, #380]	@ 80021fdc <tabComplete+0x29c>
80021e5c:	e0833002 	add	r3, r3, r2
80021e60:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
80021e64:	e24b1f8e 	sub	r1, fp, #568	@ 0x238
80021e68:	e1a00003 	mov	r0, r3
80021e6c:	ebfff922 	bl	800202fc <strncmp>
80021e70:	e1a03000 	mov	r3, r0
80021e74:	e3530000 	cmp	r3, #0
80021e78:	1a000008 	bne	80021ea0 <tabComplete+0x160>
80021e7c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80021e80:	e2832001 	add	r2, r3, #1
80021e84:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80021e88:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80021e8c:	e1a02282 	lsl	r2, r2, #5
80021e90:	e59f1144 	ldr	r1, [pc, #324]	@ 80021fdc <tabComplete+0x29c>
80021e94:	e0821001 	add	r1, r2, r1
80021e98:	e51b2038 	ldr	r2, [fp, #-56]	@ 0xffffffc8
80021e9c:	e7821103 	str	r1, [r2, r3, lsl #2]
80021ea0:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80021ea4:	e2833001 	add	r3, r3, #1
80021ea8:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80021eac:	e59f3124 	ldr	r3, [pc, #292]	@ 80021fd8 <tabComplete+0x298>
80021eb0:	e5933000 	ldr	r3, [r3]
80021eb4:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80021eb8:	e1520003 	cmp	r2, r3
80021ebc:	baffffe3 	blt	80021e50 <tabComplete+0x110>
80021ec0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80021ec4:	e3530001 	cmp	r3, #1
80021ec8:	1a000024 	bne	80021f60 <tabComplete+0x220>
80021ecc:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
80021ed0:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
80021ed4:	ea000019 	b	80021f40 <tabComplete+0x200>
80021ed8:	e51b3038 	ldr	r3, [fp, #-56]	@ 0xffffffc8
80021edc:	e5932000 	ldr	r2, [r3]
80021ee0:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80021ee4:	e0823003 	add	r3, r2, r3
80021ee8:	e5d33000 	ldrb	r3, [r3]
80021eec:	e1a00003 	mov	r0, r3
80021ef0:	ebffff0a 	bl	80021b20 <consputc>
80021ef4:	e51b3038 	ldr	r3, [fp, #-56]	@ 0xffffffc8
80021ef8:	e5932000 	ldr	r2, [r3]
80021efc:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80021f00:	e0822003 	add	r2, r2, r3
80021f04:	e59f30c4 	ldr	r3, [pc, #196]	@ 80021fd0 <tabComplete+0x290>
80021f08:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80021f0c:	e2831001 	add	r1, r3, #1
80021f10:	e59f00b8 	ldr	r0, [pc, #184]	@ 80021fd0 <tabComplete+0x290>
80021f14:	e580123c 	str	r1, [r0, #572]	@ 0x23c
80021f18:	e1a03b83 	lsl	r3, r3, #23
80021f1c:	e1a03ba3 	lsr	r3, r3, #23
80021f20:	e5d21000 	ldrb	r1, [r2]
80021f24:	e59f20a4 	ldr	r2, [pc, #164]	@ 80021fd0 <tabComplete+0x290>
80021f28:	e0823003 	add	r3, r2, r3
80021f2c:	e1a02001 	mov	r2, r1
80021f30:	e5c32034 	strb	r2, [r3, #52]	@ 0x34
80021f34:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80021f38:	e2833001 	add	r3, r3, #1
80021f3c:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
80021f40:	e51b3038 	ldr	r3, [fp, #-56]	@ 0xffffffc8
80021f44:	e5932000 	ldr	r2, [r3]
80021f48:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80021f4c:	e0823003 	add	r3, r2, r3
80021f50:	e5d33000 	ldrb	r3, [r3]
80021f54:	e3530000 	cmp	r3, #0
80021f58:	1affffde 	bne	80021ed8 <tabComplete+0x198>
80021f5c:	ea000018 	b	80021fc4 <tabComplete+0x284>
80021f60:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80021f64:	e3530001 	cmp	r3, #1
80021f68:	da000015 	ble	80021fc4 <tabComplete+0x284>
80021f6c:	e59f006c 	ldr	r0, [pc, #108]	@ 80021fe0 <tabComplete+0x2a0>
80021f70:	ebfffe47 	bl	80021894 <cprintf>
80021f74:	e3a03000 	mov	r3, #0
80021f78:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
80021f7c:	ea000008 	b	80021fa4 <tabComplete+0x264>
80021f80:	e51b3038 	ldr	r3, [fp, #-56]	@ 0xffffffc8
80021f84:	e51b202c 	ldr	r2, [fp, #-44]	@ 0xffffffd4
80021f88:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80021f8c:	e1a01003 	mov	r1, r3
80021f90:	e59f004c 	ldr	r0, [pc, #76]	@ 80021fe4 <tabComplete+0x2a4>
80021f94:	ebfffe3e 	bl	80021894 <cprintf>
80021f98:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80021f9c:	e2833001 	add	r3, r3, #1
80021fa0:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
80021fa4:	e51b202c 	ldr	r2, [fp, #-44]	@ 0xffffffd4
80021fa8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80021fac:	e1520003 	cmp	r2, r3
80021fb0:	bafffff2 	blt	80021f80 <tabComplete+0x240>
80021fb4:	e24b3f8e 	sub	r3, fp, #568	@ 0x238
80021fb8:	e1a01003 	mov	r1, r3
80021fbc:	e59f0024 	ldr	r0, [pc, #36]	@ 80021fe8 <tabComplete+0x2a8>
80021fc0:	ebfffe33 	bl	80021894 <cprintf>
80021fc4:	e1a0d008 	mov	sp, r8
80021fc8:	e24bd018 	sub	sp, fp, #24
80021fcc:	e8bd89f0 	pop	{r4, r5, r6, r7, r8, fp, pc}
80021fd0:	800ac8c4 	.word	0x800ac8c4
80021fd4:	800ac8f8 	.word	0x800ac8f8
80021fd8:	800acf04 	.word	0x800acf04
80021fdc:	800acb04 	.word	0x800acb04
80021fe0:	80029c40 	.word	0x80029c40
80021fe4:	80029c44 	.word	0x80029c44
80021fe8:	80029c4c 	.word	0x80029c4c

80021fec <consoleintr>:
80021fec:	e92d4800 	push	{fp, lr}
80021ff0:	e28db004 	add	fp, sp, #4
80021ff4:	e24dd010 	sub	sp, sp, #16
80021ff8:	e50b0010 	str	r0, [fp, #-16]
80021ffc:	e59f0220 	ldr	r0, [pc, #544]	@ 80022224 <consoleintr+0x238>
80022000:	eb0011c1 	bl	8002670c <acquire>
80022004:	ea00007b 	b	800221f8 <consoleintr+0x20c>
80022008:	e51b3008 	ldr	r3, [fp, #-8]
8002200c:	e353007f 	cmp	r3, #127	@ 0x7f
80022010:	0a000031 	beq	800220dc <consoleintr+0xf0>
80022014:	e51b3008 	ldr	r3, [fp, #-8]
80022018:	e353007f 	cmp	r3, #127	@ 0x7f
8002201c:	ca00003c 	bgt	80022114 <consoleintr+0x128>
80022020:	e51b3008 	ldr	r3, [fp, #-8]
80022024:	e3530015 	cmp	r3, #21
80022028:	0a000018 	beq	80022090 <consoleintr+0xa4>
8002202c:	e51b3008 	ldr	r3, [fp, #-8]
80022030:	e3530015 	cmp	r3, #21
80022034:	ca000036 	bgt	80022114 <consoleintr+0x128>
80022038:	e51b3008 	ldr	r3, [fp, #-8]
8002203c:	e3530010 	cmp	r3, #16
80022040:	0a000009 	beq	8002206c <consoleintr+0x80>
80022044:	e51b3008 	ldr	r3, [fp, #-8]
80022048:	e3530010 	cmp	r3, #16
8002204c:	ca000030 	bgt	80022114 <consoleintr+0x128>
80022050:	e51b3008 	ldr	r3, [fp, #-8]
80022054:	e3530008 	cmp	r3, #8
80022058:	0a00001f 	beq	800220dc <consoleintr+0xf0>
8002205c:	e51b3008 	ldr	r3, [fp, #-8]
80022060:	e3530009 	cmp	r3, #9
80022064:	0a00001a 	beq	800220d4 <consoleintr+0xe8>
80022068:	ea000029 	b	80022114 <consoleintr+0x128>
8002206c:	eb001073 	bl	80026240 <procdump>
80022070:	ea000060 	b	800221f8 <consoleintr+0x20c>
80022074:	e59f31a8 	ldr	r3, [pc, #424]	@ 80022224 <consoleintr+0x238>
80022078:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
8002207c:	e2433001 	sub	r3, r3, #1
80022080:	e59f219c 	ldr	r2, [pc, #412]	@ 80022224 <consoleintr+0x238>
80022084:	e582323c 	str	r3, [r2, #572]	@ 0x23c
80022088:	e3a00c01 	mov	r0, #256	@ 0x100
8002208c:	ebfffea3 	bl	80021b20 <consputc>
80022090:	e59f318c 	ldr	r3, [pc, #396]	@ 80022224 <consoleintr+0x238>
80022094:	e593223c 	ldr	r2, [r3, #572]	@ 0x23c
80022098:	e59f3184 	ldr	r3, [pc, #388]	@ 80022224 <consoleintr+0x238>
8002209c:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
800220a0:	e1520003 	cmp	r2, r3
800220a4:	0a00004e 	beq	800221e4 <consoleintr+0x1f8>
800220a8:	e59f3174 	ldr	r3, [pc, #372]	@ 80022224 <consoleintr+0x238>
800220ac:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
800220b0:	e2433001 	sub	r3, r3, #1
800220b4:	e1a03b83 	lsl	r3, r3, #23
800220b8:	e1a03ba3 	lsr	r3, r3, #23
800220bc:	e59f2160 	ldr	r2, [pc, #352]	@ 80022224 <consoleintr+0x238>
800220c0:	e0823003 	add	r3, r2, r3
800220c4:	e5d33034 	ldrb	r3, [r3, #52]	@ 0x34
800220c8:	e353000a 	cmp	r3, #10
800220cc:	1affffe8 	bne	80022074 <consoleintr+0x88>
800220d0:	ea000043 	b	800221e4 <consoleintr+0x1f8>
800220d4:	ebffff19 	bl	80021d40 <tabComplete>
800220d8:	ea000046 	b	800221f8 <consoleintr+0x20c>
800220dc:	e59f3140 	ldr	r3, [pc, #320]	@ 80022224 <consoleintr+0x238>
800220e0:	e593223c 	ldr	r2, [r3, #572]	@ 0x23c
800220e4:	e59f3138 	ldr	r3, [pc, #312]	@ 80022224 <consoleintr+0x238>
800220e8:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
800220ec:	e1520003 	cmp	r2, r3
800220f0:	0a00003d 	beq	800221ec <consoleintr+0x200>
800220f4:	e59f3128 	ldr	r3, [pc, #296]	@ 80022224 <consoleintr+0x238>
800220f8:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
800220fc:	e2433001 	sub	r3, r3, #1
80022100:	e59f211c 	ldr	r2, [pc, #284]	@ 80022224 <consoleintr+0x238>
80022104:	e582323c 	str	r3, [r2, #572]	@ 0x23c
80022108:	e3a00c01 	mov	r0, #256	@ 0x100
8002210c:	ebfffe83 	bl	80021b20 <consputc>
80022110:	ea000035 	b	800221ec <consoleintr+0x200>
80022114:	e51b3008 	ldr	r3, [fp, #-8]
80022118:	e3530000 	cmp	r3, #0
8002211c:	0a000034 	beq	800221f4 <consoleintr+0x208>
80022120:	e59f30fc 	ldr	r3, [pc, #252]	@ 80022224 <consoleintr+0x238>
80022124:	e593223c 	ldr	r2, [r3, #572]	@ 0x23c
80022128:	e59f30f4 	ldr	r3, [pc, #244]	@ 80022224 <consoleintr+0x238>
8002212c:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80022130:	e0423003 	sub	r3, r2, r3
80022134:	e3530c02 	cmp	r3, #512	@ 0x200
80022138:	2a00002d 	bcs	800221f4 <consoleintr+0x208>
8002213c:	e51b3008 	ldr	r3, [fp, #-8]
80022140:	e353000d 	cmp	r3, #13
80022144:	1a000002 	bne	80022154 <consoleintr+0x168>
80022148:	e3a0300a 	mov	r3, #10
8002214c:	e50b3008 	str	r3, [fp, #-8]
80022150:	ea000000 	b	80022158 <consoleintr+0x16c>
80022154:	e1a00000 	nop			@ (mov r0, r0)
80022158:	e59f30c4 	ldr	r3, [pc, #196]	@ 80022224 <consoleintr+0x238>
8002215c:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80022160:	e2832001 	add	r2, r3, #1
80022164:	e59f10b8 	ldr	r1, [pc, #184]	@ 80022224 <consoleintr+0x238>
80022168:	e581223c 	str	r2, [r1, #572]	@ 0x23c
8002216c:	e1a03b83 	lsl	r3, r3, #23
80022170:	e1a03ba3 	lsr	r3, r3, #23
80022174:	e51b2008 	ldr	r2, [fp, #-8]
80022178:	e6ef1072 	uxtb	r1, r2
8002217c:	e59f20a0 	ldr	r2, [pc, #160]	@ 80022224 <consoleintr+0x238>
80022180:	e0823003 	add	r3, r2, r3
80022184:	e1a02001 	mov	r2, r1
80022188:	e5c32034 	strb	r2, [r3, #52]	@ 0x34
8002218c:	e51b0008 	ldr	r0, [fp, #-8]
80022190:	ebfffe62 	bl	80021b20 <consputc>
80022194:	e51b3008 	ldr	r3, [fp, #-8]
80022198:	e353000a 	cmp	r3, #10
8002219c:	0a000009 	beq	800221c8 <consoleintr+0x1dc>
800221a0:	e51b3008 	ldr	r3, [fp, #-8]
800221a4:	e3530004 	cmp	r3, #4
800221a8:	0a000006 	beq	800221c8 <consoleintr+0x1dc>
800221ac:	e59f3070 	ldr	r3, [pc, #112]	@ 80022224 <consoleintr+0x238>
800221b0:	e593223c 	ldr	r2, [r3, #572]	@ 0x23c
800221b4:	e59f3068 	ldr	r3, [pc, #104]	@ 80022224 <consoleintr+0x238>
800221b8:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
800221bc:	e2833c02 	add	r3, r3, #512	@ 0x200
800221c0:	e1520003 	cmp	r2, r3
800221c4:	1a00000a 	bne	800221f4 <consoleintr+0x208>
800221c8:	e59f3054 	ldr	r3, [pc, #84]	@ 80022224 <consoleintr+0x238>
800221cc:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
800221d0:	e59f204c 	ldr	r2, [pc, #76]	@ 80022224 <consoleintr+0x238>
800221d4:	e5823238 	str	r3, [r2, #568]	@ 0x238
800221d8:	e59f0048 	ldr	r0, [pc, #72]	@ 80022228 <consoleintr+0x23c>
800221dc:	eb000fb7 	bl	800260c0 <wakeup>
800221e0:	ea000003 	b	800221f4 <consoleintr+0x208>
800221e4:	e1a00000 	nop			@ (mov r0, r0)
800221e8:	ea000002 	b	800221f8 <consoleintr+0x20c>
800221ec:	e1a00000 	nop			@ (mov r0, r0)
800221f0:	ea000000 	b	800221f8 <consoleintr+0x20c>
800221f4:	e1a00000 	nop			@ (mov r0, r0)
800221f8:	e51b3010 	ldr	r3, [fp, #-16]
800221fc:	e12fff33 	blx	r3
80022200:	e50b0008 	str	r0, [fp, #-8]
80022204:	e51b3008 	ldr	r3, [fp, #-8]
80022208:	e3530000 	cmp	r3, #0
8002220c:	aaffff7d 	bge	80022008 <consoleintr+0x1c>
80022210:	e59f000c 	ldr	r0, [pc, #12]	@ 80022224 <consoleintr+0x238>
80022214:	eb001147 	bl	80026738 <release>
80022218:	e1a00000 	nop			@ (mov r0, r0)
8002221c:	e24bd004 	sub	sp, fp, #4
80022220:	e8bd8800 	pop	{fp, pc}
80022224:	800ac8c4 	.word	0x800ac8c4
80022228:	800acaf8 	.word	0x800acaf8

8002222c <consoleread>:
8002222c:	e92d4800 	push	{fp, lr}
80022230:	e28db004 	add	fp, sp, #4
80022234:	e24dd018 	sub	sp, sp, #24
80022238:	e50b0010 	str	r0, [fp, #-16]
8002223c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80022240:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80022244:	e51b0010 	ldr	r0, [fp, #-16]
80022248:	eb000534 	bl	80023720 <iunlock>
8002224c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022250:	e50b3008 	str	r3, [fp, #-8]
80022254:	e59f0128 	ldr	r0, [pc, #296]	@ 80022384 <consoleread+0x158>
80022258:	eb00112b 	bl	8002670c <acquire>
8002225c:	ea000037 	b	80022340 <consoleread+0x114>
80022260:	e59f3120 	ldr	r3, [pc, #288]	@ 80022388 <consoleread+0x15c>
80022264:	e5933000 	ldr	r3, [r3]
80022268:	e5933030 	ldr	r3, [r3, #48]	@ 0x30
8002226c:	e3530000 	cmp	r3, #0
80022270:	0a000005 	beq	8002228c <consoleread+0x60>
80022274:	e59f0108 	ldr	r0, [pc, #264]	@ 80022384 <consoleread+0x158>
80022278:	eb00112e 	bl	80026738 <release>
8002227c:	e51b0010 	ldr	r0, [fp, #-16]
80022280:	eb0004c2 	bl	80023590 <ilock>
80022284:	e3e03000 	mvn	r3, #0
80022288:	ea00003a 	b	80022378 <consoleread+0x14c>
8002228c:	e59f10f0 	ldr	r1, [pc, #240]	@ 80022384 <consoleread+0x158>
80022290:	e59f00f4 	ldr	r0, [pc, #244]	@ 8002238c <consoleread+0x160>
80022294:	eb000f27 	bl	80025f38 <sleep>
80022298:	e59f30e4 	ldr	r3, [pc, #228]	@ 80022384 <consoleread+0x158>
8002229c:	e5932234 	ldr	r2, [r3, #564]	@ 0x234
800222a0:	e59f30dc 	ldr	r3, [pc, #220]	@ 80022384 <consoleread+0x158>
800222a4:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
800222a8:	e1520003 	cmp	r2, r3
800222ac:	0affffeb 	beq	80022260 <consoleread+0x34>
800222b0:	e59f30cc 	ldr	r3, [pc, #204]	@ 80022384 <consoleread+0x158>
800222b4:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
800222b8:	e2832001 	add	r2, r3, #1
800222bc:	e59f10c0 	ldr	r1, [pc, #192]	@ 80022384 <consoleread+0x158>
800222c0:	e5812234 	str	r2, [r1, #564]	@ 0x234
800222c4:	e1a03b83 	lsl	r3, r3, #23
800222c8:	e1a03ba3 	lsr	r3, r3, #23
800222cc:	e59f20b0 	ldr	r2, [pc, #176]	@ 80022384 <consoleread+0x158>
800222d0:	e0823003 	add	r3, r2, r3
800222d4:	e5d33034 	ldrb	r3, [r3, #52]	@ 0x34
800222d8:	e50b300c 	str	r3, [fp, #-12]
800222dc:	e51b300c 	ldr	r3, [fp, #-12]
800222e0:	e3530004 	cmp	r3, #4
800222e4:	1a000009 	bne	80022310 <consoleread+0xe4>
800222e8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800222ec:	e51b2008 	ldr	r2, [fp, #-8]
800222f0:	e1520003 	cmp	r2, r3
800222f4:	9a000015 	bls	80022350 <consoleread+0x124>
800222f8:	e59f3084 	ldr	r3, [pc, #132]	@ 80022384 <consoleread+0x158>
800222fc:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80022300:	e2433001 	sub	r3, r3, #1
80022304:	e59f2078 	ldr	r2, [pc, #120]	@ 80022384 <consoleread+0x158>
80022308:	e5823234 	str	r3, [r2, #564]	@ 0x234
8002230c:	ea00000f 	b	80022350 <consoleread+0x124>
80022310:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022314:	e2832001 	add	r2, r3, #1
80022318:	e50b2014 	str	r2, [fp, #-20]	@ 0xffffffec
8002231c:	e51b200c 	ldr	r2, [fp, #-12]
80022320:	e6ef2072 	uxtb	r2, r2
80022324:	e5c32000 	strb	r2, [r3]
80022328:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002232c:	e2433001 	sub	r3, r3, #1
80022330:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80022334:	e51b300c 	ldr	r3, [fp, #-12]
80022338:	e353000a 	cmp	r3, #10
8002233c:	0a000005 	beq	80022358 <consoleread+0x12c>
80022340:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022344:	e3530000 	cmp	r3, #0
80022348:	caffffd2 	bgt	80022298 <consoleread+0x6c>
8002234c:	ea000002 	b	8002235c <consoleread+0x130>
80022350:	e1a00000 	nop			@ (mov r0, r0)
80022354:	ea000000 	b	8002235c <consoleread+0x130>
80022358:	e1a00000 	nop			@ (mov r0, r0)
8002235c:	e59f0020 	ldr	r0, [pc, #32]	@ 80022384 <consoleread+0x158>
80022360:	eb0010f4 	bl	80026738 <release>
80022364:	e51b0010 	ldr	r0, [fp, #-16]
80022368:	eb000488 	bl	80023590 <ilock>
8002236c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022370:	e51b2008 	ldr	r2, [fp, #-8]
80022374:	e0423003 	sub	r3, r2, r3
80022378:	e1a00003 	mov	r0, r3
8002237c:	e24bd004 	sub	sp, fp, #4
80022380:	e8bd8800 	pop	{fp, pc}
80022384:	800ac8c4 	.word	0x800ac8c4
80022388:	800b0e54 	.word	0x800b0e54
8002238c:	800acaf8 	.word	0x800acaf8

80022390 <consolewrite>:
80022390:	e92d4800 	push	{fp, lr}
80022394:	e28db004 	add	fp, sp, #4
80022398:	e24dd018 	sub	sp, sp, #24
8002239c:	e50b0010 	str	r0, [fp, #-16]
800223a0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800223a4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800223a8:	e51b0010 	ldr	r0, [fp, #-16]
800223ac:	eb0004db 	bl	80023720 <iunlock>
800223b0:	e59f0060 	ldr	r0, [pc, #96]	@ 80022418 <consolewrite+0x88>
800223b4:	eb0010d4 	bl	8002670c <acquire>
800223b8:	e3a03000 	mov	r3, #0
800223bc:	e50b3008 	str	r3, [fp, #-8]
800223c0:	ea000008 	b	800223e8 <consolewrite+0x58>
800223c4:	e51b3008 	ldr	r3, [fp, #-8]
800223c8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800223cc:	e0823003 	add	r3, r2, r3
800223d0:	e5d33000 	ldrb	r3, [r3]
800223d4:	e1a00003 	mov	r0, r3
800223d8:	ebfffdd0 	bl	80021b20 <consputc>
800223dc:	e51b3008 	ldr	r3, [fp, #-8]
800223e0:	e2833001 	add	r3, r3, #1
800223e4:	e50b3008 	str	r3, [fp, #-8]
800223e8:	e51b2008 	ldr	r2, [fp, #-8]
800223ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800223f0:	e1520003 	cmp	r2, r3
800223f4:	bafffff2 	blt	800223c4 <consolewrite+0x34>
800223f8:	e59f0018 	ldr	r0, [pc, #24]	@ 80022418 <consolewrite+0x88>
800223fc:	eb0010cd 	bl	80026738 <release>
80022400:	e51b0010 	ldr	r0, [fp, #-16]
80022404:	eb000461 	bl	80023590 <ilock>
80022408:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002240c:	e1a00003 	mov	r0, r3
80022410:	e24bd004 	sub	sp, fp, #4
80022414:	e8bd8800 	pop	{fp, pc}
80022418:	800ac88c 	.word	0x800ac88c

8002241c <consoleinit>:
8002241c:	e92d4800 	push	{fp, lr}
80022420:	e28db004 	add	fp, sp, #4
80022424:	e59f103c 	ldr	r1, [pc, #60]	@ 80022468 <consoleinit+0x4c>
80022428:	e59f003c 	ldr	r0, [pc, #60]	@ 8002246c <consoleinit+0x50>
8002242c:	eb0010a4 	bl	800266c4 <initlock>
80022430:	e59f1038 	ldr	r1, [pc, #56]	@ 80022470 <consoleinit+0x54>
80022434:	e59f0038 	ldr	r0, [pc, #56]	@ 80022474 <consoleinit+0x58>
80022438:	eb0010a1 	bl	800266c4 <initlock>
8002243c:	e59f3034 	ldr	r3, [pc, #52]	@ 80022478 <consoleinit+0x5c>
80022440:	e59f2034 	ldr	r2, [pc, #52]	@ 8002247c <consoleinit+0x60>
80022444:	e583200c 	str	r2, [r3, #12]
80022448:	e59f3028 	ldr	r3, [pc, #40]	@ 80022478 <consoleinit+0x5c>
8002244c:	e59f202c 	ldr	r2, [pc, #44]	@ 80022480 <consoleinit+0x64>
80022450:	e5832008 	str	r2, [r3, #8]
80022454:	e59f3010 	ldr	r3, [pc, #16]	@ 8002246c <consoleinit+0x50>
80022458:	e3a02001 	mov	r2, #1
8002245c:	e5832034 	str	r2, [r3, #52]	@ 0x34
80022460:	e1a00000 	nop			@ (mov r0, r0)
80022464:	e8bd8800 	pop	{fp, pc}
80022468:	80029c54 	.word	0x80029c54
8002246c:	800ac88c 	.word	0x800ac88c
80022470:	80029c5c 	.word	0x80029c5c
80022474:	800ac8c4 	.word	0x800ac8c4
80022478:	800acf08 	.word	0x800acf08
8002247c:	80022390 	.word	0x80022390
80022480:	8002222c 	.word	0x8002222c

80022484 <exec>:
80022484:	e92d4810 	push	{r4, fp, lr}
80022488:	e28db008 	add	fp, sp, #8
8002248c:	e24ddf49 	sub	sp, sp, #292	@ 0x124
80022490:	e50b0120 	str	r0, [fp, #-288]	@ 0xfffffee0
80022494:	e50b1124 	str	r1, [fp, #-292]	@ 0xfffffedc
80022498:	e51b0120 	ldr	r0, [fp, #-288]	@ 0xfffffee0
8002249c:	eb00080e 	bl	800244dc <namei>
800224a0:	e50b0010 	str	r0, [fp, #-16]
800224a4:	e51b3010 	ldr	r3, [fp, #-16]
800224a8:	e3530000 	cmp	r3, #0
800224ac:	1a000001 	bne	800224b8 <exec+0x34>
800224b0:	e3e03000 	mvn	r3, #0
800224b4:	ea000120 	b	8002293c <exec+0x4b8>
800224b8:	e51b0010 	ldr	r0, [fp, #-16]
800224bc:	eb000433 	bl	80023590 <ilock>
800224c0:	e24b1068 	sub	r1, fp, #104	@ 0x68
800224c4:	e3a03034 	mov	r3, #52	@ 0x34
800224c8:	e3a02000 	mov	r2, #0
800224cc:	e51b0010 	ldr	r0, [fp, #-16]
800224d0:	eb0005da 	bl	80023c40 <readi>
800224d4:	e1a03000 	mov	r3, r0
800224d8:	e3530033 	cmp	r3, #51	@ 0x33
800224dc:	9a0000f6 	bls	800228bc <exec+0x438>
800224e0:	e51b3068 	ldr	r3, [fp, #-104]	@ 0xffffff98
800224e4:	e59f245c 	ldr	r2, [pc, #1116]	@ 80022948 <exec+0x4c4>
800224e8:	e1530002 	cmp	r3, r2
800224ec:	1a0000f4 	bne	800228c4 <exec+0x440>
800224f0:	e3a03000 	mov	r3, #0
800224f4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
800224f8:	eb0018a0 	bl	80028780 <kpt_alloc>
800224fc:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80022500:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022504:	e3530000 	cmp	r3, #0
80022508:	0a0000ef 	beq	800228cc <exec+0x448>
8002250c:	e3a03000 	mov	r3, #0
80022510:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
80022514:	e3a03000 	mov	r3, #0
80022518:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
8002251c:	e51b304c 	ldr	r3, [fp, #-76]	@ 0xffffffb4
80022520:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80022524:	ea00002e 	b	800225e4 <exec+0x160>
80022528:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
8002252c:	e24b1088 	sub	r1, fp, #136	@ 0x88
80022530:	e3a03020 	mov	r3, #32
80022534:	e51b0010 	ldr	r0, [fp, #-16]
80022538:	eb0005c0 	bl	80023c40 <readi>
8002253c:	e1a03000 	mov	r3, r0
80022540:	e3530020 	cmp	r3, #32
80022544:	1a0000e2 	bne	800228d4 <exec+0x450>
80022548:	e51b3088 	ldr	r3, [fp, #-136]	@ 0xffffff78
8002254c:	e3530001 	cmp	r3, #1
80022550:	1a00001c 	bne	800225c8 <exec+0x144>
80022554:	e51b2074 	ldr	r2, [fp, #-116]	@ 0xffffff8c
80022558:	e51b3078 	ldr	r3, [fp, #-120]	@ 0xffffff88
8002255c:	e1520003 	cmp	r2, r3
80022560:	3a0000dd 	bcc	800228dc <exec+0x458>
80022564:	e51b2080 	ldr	r2, [fp, #-128]	@ 0xffffff80
80022568:	e51b3074 	ldr	r3, [fp, #-116]	@ 0xffffff8c
8002256c:	e0823003 	add	r3, r2, r3
80022570:	e1a02003 	mov	r2, r3
80022574:	e51b102c 	ldr	r1, [fp, #-44]	@ 0xffffffd4
80022578:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
8002257c:	eb0019ab 	bl	80028c30 <allocuvm>
80022580:	e1a03000 	mov	r3, r0
80022584:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
80022588:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
8002258c:	e3530000 	cmp	r3, #0
80022590:	0a0000d3 	beq	800228e4 <exec+0x460>
80022594:	e51b3080 	ldr	r3, [fp, #-128]	@ 0xffffff80
80022598:	e1a01003 	mov	r1, r3
8002259c:	e51b2084 	ldr	r2, [fp, #-132]	@ 0xffffff7c
800225a0:	e51b3078 	ldr	r3, [fp, #-120]	@ 0xffffff88
800225a4:	e58d3000 	str	r3, [sp]
800225a8:	e1a03002 	mov	r3, r2
800225ac:	e51b2010 	ldr	r2, [fp, #-16]
800225b0:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800225b4:	eb001951 	bl	80028b00 <loaduvm>
800225b8:	e1a03000 	mov	r3, r0
800225bc:	e3530000 	cmp	r3, #0
800225c0:	ba0000c9 	blt	800228ec <exec+0x468>
800225c4:	ea000000 	b	800225cc <exec+0x148>
800225c8:	e1a00000 	nop			@ (mov r0, r0)
800225cc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800225d0:	e2833001 	add	r3, r3, #1
800225d4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
800225d8:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
800225dc:	e2833020 	add	r3, r3, #32
800225e0:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
800225e4:	e15b33bc 	ldrh	r3, [fp, #-60]	@ 0xffffffc4
800225e8:	e1a02003 	mov	r2, r3
800225ec:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800225f0:	e1530002 	cmp	r3, r2
800225f4:	baffffcb 	blt	80022528 <exec+0xa4>
800225f8:	e51b0010 	ldr	r0, [fp, #-16]
800225fc:	eb0004a4 	bl	80023894 <iunlockput>
80022600:	e3a03000 	mov	r3, #0
80022604:	e50b3010 	str	r3, [fp, #-16]
80022608:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
8002260c:	e2833eff 	add	r3, r3, #4080	@ 0xff0
80022610:	e283300f 	add	r3, r3, #15
80022614:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80022618:	e3c3300f 	bic	r3, r3, #15
8002261c:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
80022620:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80022624:	e2833a02 	add	r3, r3, #8192	@ 0x2000
80022628:	e1a02003 	mov	r2, r3
8002262c:	e51b102c 	ldr	r1, [fp, #-44]	@ 0xffffffd4
80022630:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80022634:	eb00197d 	bl	80028c30 <allocuvm>
80022638:	e1a03000 	mov	r3, r0
8002263c:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
80022640:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80022644:	e3530000 	cmp	r3, #0
80022648:	0a0000a9 	beq	800228f4 <exec+0x470>
8002264c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80022650:	e2433a02 	sub	r3, r3, #8192	@ 0x2000
80022654:	e1a01003 	mov	r1, r3
80022658:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
8002265c:	eb001a28 	bl	80028f04 <clearpteu>
80022660:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80022664:	e50b3030 	str	r3, [fp, #-48]	@ 0xffffffd0
80022668:	e3a03000 	mov	r3, #0
8002266c:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
80022670:	ea00002e 	b	80022730 <exec+0x2ac>
80022674:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022678:	e353001f 	cmp	r3, #31
8002267c:	8a00009e 	bhi	800228fc <exec+0x478>
80022680:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022684:	e1a03103 	lsl	r3, r3, #2
80022688:	e51b2124 	ldr	r2, [fp, #-292]	@ 0xfffffedc
8002268c:	e0823003 	add	r3, r2, r3
80022690:	e5933000 	ldr	r3, [r3]
80022694:	e1a00003 	mov	r0, r3
80022698:	ebfff793 	bl	800204ec <strlen>
8002269c:	e1a03000 	mov	r3, r0
800226a0:	e1a02003 	mov	r2, r3
800226a4:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
800226a8:	e0433002 	sub	r3, r3, r2
800226ac:	e2433001 	sub	r3, r3, #1
800226b0:	e3c33003 	bic	r3, r3, #3
800226b4:	e50b3030 	str	r3, [fp, #-48]	@ 0xffffffd0
800226b8:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800226bc:	e1a03103 	lsl	r3, r3, #2
800226c0:	e51b2124 	ldr	r2, [fp, #-292]	@ 0xfffffedc
800226c4:	e0823003 	add	r3, r2, r3
800226c8:	e5934000 	ldr	r4, [r3]
800226cc:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800226d0:	e1a03103 	lsl	r3, r3, #2
800226d4:	e51b2124 	ldr	r2, [fp, #-292]	@ 0xfffffedc
800226d8:	e0823003 	add	r3, r2, r3
800226dc:	e5933000 	ldr	r3, [r3]
800226e0:	e1a00003 	mov	r0, r3
800226e4:	ebfff780 	bl	800204ec <strlen>
800226e8:	e1a03000 	mov	r3, r0
800226ec:	e2833001 	add	r3, r3, #1
800226f0:	e1a02004 	mov	r2, r4
800226f4:	e51b1030 	ldr	r1, [fp, #-48]	@ 0xffffffd0
800226f8:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800226fc:	eb001a95 	bl	80029158 <copyout>
80022700:	e1a03000 	mov	r3, r0
80022704:	e3530000 	cmp	r3, #0
80022708:	ba00007d 	blt	80022904 <exec+0x480>
8002270c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022710:	e1a03103 	lsl	r3, r3, #2
80022714:	e243300c 	sub	r3, r3, #12
80022718:	e083300b 	add	r3, r3, fp
8002271c:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
80022720:	e503210c 	str	r2, [r3, #-268]	@ 0xfffffef4
80022724:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022728:	e2833001 	add	r3, r3, #1
8002272c:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
80022730:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022734:	e1a03103 	lsl	r3, r3, #2
80022738:	e51b2124 	ldr	r2, [fp, #-292]	@ 0xfffffedc
8002273c:	e0823003 	add	r3, r2, r3
80022740:	e5933000 	ldr	r3, [r3]
80022744:	e3530000 	cmp	r3, #0
80022748:	1affffc9 	bne	80022674 <exec+0x1f0>
8002274c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022750:	e1a03103 	lsl	r3, r3, #2
80022754:	e243300c 	sub	r3, r3, #12
80022758:	e083300b 	add	r3, r3, fp
8002275c:	e3a02000 	mov	r2, #0
80022760:	e503210c 	str	r2, [r3, #-268]	@ 0xfffffef4
80022764:	e59f31e0 	ldr	r3, [pc, #480]	@ 8002294c <exec+0x4c8>
80022768:	e5933000 	ldr	r3, [r3]
8002276c:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
80022770:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80022774:	e5832010 	str	r2, [r3, #16]
80022778:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
8002277c:	e2833001 	add	r3, r3, #1
80022780:	e1a02103 	lsl	r2, r3, #2
80022784:	e59f31c0 	ldr	r3, [pc, #448]	@ 8002294c <exec+0x4c8>
80022788:	e5933000 	ldr	r3, [r3]
8002278c:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
80022790:	e51b1030 	ldr	r1, [fp, #-48]	@ 0xffffffd0
80022794:	e0412002 	sub	r2, r1, r2
80022798:	e5832014 	str	r2, [r3, #20]
8002279c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800227a0:	e2833001 	add	r3, r3, #1
800227a4:	e1a03103 	lsl	r3, r3, #2
800227a8:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
800227ac:	e0423003 	sub	r3, r2, r3
800227b0:	e50b3030 	str	r3, [fp, #-48]	@ 0xffffffd0
800227b4:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800227b8:	e2833001 	add	r3, r3, #1
800227bc:	e1a03103 	lsl	r3, r3, #2
800227c0:	e24b2f46 	sub	r2, fp, #280	@ 0x118
800227c4:	e51b1030 	ldr	r1, [fp, #-48]	@ 0xffffffd0
800227c8:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800227cc:	eb001a61 	bl	80029158 <copyout>
800227d0:	e1a03000 	mov	r3, r0
800227d4:	e3530000 	cmp	r3, #0
800227d8:	ba00004b 	blt	8002290c <exec+0x488>
800227dc:	e51b3120 	ldr	r3, [fp, #-288]	@ 0xfffffee0
800227e0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
800227e4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800227e8:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
800227ec:	ea000009 	b	80022818 <exec+0x394>
800227f0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800227f4:	e5d33000 	ldrb	r3, [r3]
800227f8:	e353002f 	cmp	r3, #47	@ 0x2f
800227fc:	1a000002 	bne	8002280c <exec+0x388>
80022800:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022804:	e2833001 	add	r3, r3, #1
80022808:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
8002280c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022810:	e2833001 	add	r3, r3, #1
80022814:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80022818:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002281c:	e5d33000 	ldrb	r3, [r3]
80022820:	e3530000 	cmp	r3, #0
80022824:	1afffff1 	bne	800227f0 <exec+0x36c>
80022828:	e59f311c 	ldr	r3, [pc, #284]	@ 8002294c <exec+0x4c8>
8002282c:	e5933000 	ldr	r3, [r3]
80022830:	e2833078 	add	r3, r3, #120	@ 0x78
80022834:	e3a02010 	mov	r2, #16
80022838:	e51b101c 	ldr	r1, [fp, #-28]	@ 0xffffffe4
8002283c:	e1a00003 	mov	r0, r3
80022840:	ebfff702 	bl	80020450 <safestrcpy>
80022844:	e59f3100 	ldr	r3, [pc, #256]	@ 8002294c <exec+0x4c8>
80022848:	e5933000 	ldr	r3, [r3]
8002284c:	e5933010 	ldr	r3, [r3, #16]
80022850:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
80022854:	e59f30f0 	ldr	r3, [pc, #240]	@ 8002294c <exec+0x4c8>
80022858:	e5933000 	ldr	r3, [r3]
8002285c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80022860:	e5832010 	str	r2, [r3, #16]
80022864:	e59f30e0 	ldr	r3, [pc, #224]	@ 8002294c <exec+0x4c8>
80022868:	e5933000 	ldr	r3, [r3]
8002286c:	e51b202c 	ldr	r2, [fp, #-44]	@ 0xffffffd4
80022870:	e583200c 	str	r2, [r3, #12]
80022874:	e59f30d0 	ldr	r3, [pc, #208]	@ 8002294c <exec+0x4c8>
80022878:	e5933000 	ldr	r3, [r3]
8002287c:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
80022880:	e51b2050 	ldr	r2, [fp, #-80]	@ 0xffffffb0
80022884:	e5832044 	str	r2, [r3, #68]	@ 0x44
80022888:	e59f30bc 	ldr	r3, [pc, #188]	@ 8002294c <exec+0x4c8>
8002288c:	e5933000 	ldr	r3, [r3]
80022890:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
80022894:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
80022898:	e5832000 	str	r2, [r3]
8002289c:	e59f30a8 	ldr	r3, [pc, #168]	@ 8002294c <exec+0x4c8>
800228a0:	e5933000 	ldr	r3, [r3]
800228a4:	e1a00003 	mov	r0, r3
800228a8:	eb00185b 	bl	80028a1c <switchuvm>
800228ac:	e51b0034 	ldr	r0, [fp, #-52]	@ 0xffffffcc
800228b0:	eb001963 	bl	80028e44 <freevm>
800228b4:	e3a03000 	mov	r3, #0
800228b8:	ea00001f 	b	8002293c <exec+0x4b8>
800228bc:	e1a00000 	nop			@ (mov r0, r0)
800228c0:	ea000012 	b	80022910 <exec+0x48c>
800228c4:	e1a00000 	nop			@ (mov r0, r0)
800228c8:	ea000010 	b	80022910 <exec+0x48c>
800228cc:	e1a00000 	nop			@ (mov r0, r0)
800228d0:	ea00000e 	b	80022910 <exec+0x48c>
800228d4:	e1a00000 	nop			@ (mov r0, r0)
800228d8:	ea00000c 	b	80022910 <exec+0x48c>
800228dc:	e1a00000 	nop			@ (mov r0, r0)
800228e0:	ea00000a 	b	80022910 <exec+0x48c>
800228e4:	e1a00000 	nop			@ (mov r0, r0)
800228e8:	ea000008 	b	80022910 <exec+0x48c>
800228ec:	e1a00000 	nop			@ (mov r0, r0)
800228f0:	ea000006 	b	80022910 <exec+0x48c>
800228f4:	e1a00000 	nop			@ (mov r0, r0)
800228f8:	ea000004 	b	80022910 <exec+0x48c>
800228fc:	e1a00000 	nop			@ (mov r0, r0)
80022900:	ea000002 	b	80022910 <exec+0x48c>
80022904:	e1a00000 	nop			@ (mov r0, r0)
80022908:	ea000000 	b	80022910 <exec+0x48c>
8002290c:	e1a00000 	nop			@ (mov r0, r0)
80022910:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022914:	e3530000 	cmp	r3, #0
80022918:	0a000001 	beq	80022924 <exec+0x4a0>
8002291c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80022920:	eb001947 	bl	80028e44 <freevm>
80022924:	e51b3010 	ldr	r3, [fp, #-16]
80022928:	e3530000 	cmp	r3, #0
8002292c:	0a000001 	beq	80022938 <exec+0x4b4>
80022930:	e51b0010 	ldr	r0, [fp, #-16]
80022934:	eb0003d6 	bl	80023894 <iunlockput>
80022938:	e3e03000 	mvn	r3, #0
8002293c:	e1a00003 	mov	r0, r3
80022940:	e24bd008 	sub	sp, fp, #8
80022944:	e8bd8810 	pop	{r4, fp, pc}
80022948:	464c457f 	.word	0x464c457f
8002294c:	800b0e54 	.word	0x800b0e54

80022950 <fileinit>:
80022950:	e92d4800 	push	{fp, lr}
80022954:	e28db004 	add	fp, sp, #4
80022958:	e59f100c 	ldr	r1, [pc, #12]	@ 8002296c <fileinit+0x1c>
8002295c:	e59f000c 	ldr	r0, [pc, #12]	@ 80022970 <fileinit+0x20>
80022960:	eb000f57 	bl	800266c4 <initlock>
80022964:	e1a00000 	nop			@ (mov r0, r0)
80022968:	e8bd8800 	pop	{fp, pc}
8002296c:	80029c64 	.word	0x80029c64
80022970:	800acf58 	.word	0x800acf58

80022974 <filealloc>:
80022974:	e92d4800 	push	{fp, lr}
80022978:	e28db004 	add	fp, sp, #4
8002297c:	e24dd008 	sub	sp, sp, #8
80022980:	e59f006c 	ldr	r0, [pc, #108]	@ 800229f4 <filealloc+0x80>
80022984:	eb000f60 	bl	8002670c <acquire>
80022988:	e59f3068 	ldr	r3, [pc, #104]	@ 800229f8 <filealloc+0x84>
8002298c:	e50b3008 	str	r3, [fp, #-8]
80022990:	ea00000d 	b	800229cc <filealloc+0x58>
80022994:	e51b3008 	ldr	r3, [fp, #-8]
80022998:	e5933004 	ldr	r3, [r3, #4]
8002299c:	e3530000 	cmp	r3, #0
800229a0:	1a000006 	bne	800229c0 <filealloc+0x4c>
800229a4:	e51b3008 	ldr	r3, [fp, #-8]
800229a8:	e3a02001 	mov	r2, #1
800229ac:	e5832004 	str	r2, [r3, #4]
800229b0:	e59f003c 	ldr	r0, [pc, #60]	@ 800229f4 <filealloc+0x80>
800229b4:	eb000f5f 	bl	80026738 <release>
800229b8:	e51b3008 	ldr	r3, [fp, #-8]
800229bc:	ea000009 	b	800229e8 <filealloc+0x74>
800229c0:	e51b3008 	ldr	r3, [fp, #-8]
800229c4:	e2833018 	add	r3, r3, #24
800229c8:	e50b3008 	str	r3, [fp, #-8]
800229cc:	e59f2028 	ldr	r2, [pc, #40]	@ 800229fc <filealloc+0x88>
800229d0:	e51b3008 	ldr	r3, [fp, #-8]
800229d4:	e1530002 	cmp	r3, r2
800229d8:	3affffed 	bcc	80022994 <filealloc+0x20>
800229dc:	e59f0010 	ldr	r0, [pc, #16]	@ 800229f4 <filealloc+0x80>
800229e0:	eb000f54 	bl	80026738 <release>
800229e4:	e3a03000 	mov	r3, #0
800229e8:	e1a00003 	mov	r0, r3
800229ec:	e24bd004 	sub	sp, fp, #4
800229f0:	e8bd8800 	pop	{fp, pc}
800229f4:	800acf58 	.word	0x800acf58
800229f8:	800acf8c 	.word	0x800acf8c
800229fc:	800ad8ec 	.word	0x800ad8ec

80022a00 <filedup>:
80022a00:	e92d4800 	push	{fp, lr}
80022a04:	e28db004 	add	fp, sp, #4
80022a08:	e24dd008 	sub	sp, sp, #8
80022a0c:	e50b0008 	str	r0, [fp, #-8]
80022a10:	e59f0044 	ldr	r0, [pc, #68]	@ 80022a5c <filedup+0x5c>
80022a14:	eb000f3c 	bl	8002670c <acquire>
80022a18:	e51b3008 	ldr	r3, [fp, #-8]
80022a1c:	e5933004 	ldr	r3, [r3, #4]
80022a20:	e3530000 	cmp	r3, #0
80022a24:	ca000001 	bgt	80022a30 <filedup+0x30>
80022a28:	e59f0030 	ldr	r0, [pc, #48]	@ 80022a60 <filedup+0x60>
80022a2c:	ebfffc22 	bl	80021abc <panic>
80022a30:	e51b3008 	ldr	r3, [fp, #-8]
80022a34:	e5933004 	ldr	r3, [r3, #4]
80022a38:	e2832001 	add	r2, r3, #1
80022a3c:	e51b3008 	ldr	r3, [fp, #-8]
80022a40:	e5832004 	str	r2, [r3, #4]
80022a44:	e59f0010 	ldr	r0, [pc, #16]	@ 80022a5c <filedup+0x5c>
80022a48:	eb000f3a 	bl	80026738 <release>
80022a4c:	e51b3008 	ldr	r3, [fp, #-8]
80022a50:	e1a00003 	mov	r0, r3
80022a54:	e24bd004 	sub	sp, fp, #4
80022a58:	e8bd8800 	pop	{fp, pc}
80022a5c:	800acf58 	.word	0x800acf58
80022a60:	80029c6c 	.word	0x80029c6c

80022a64 <fileclose>:
80022a64:	e92d4800 	push	{fp, lr}
80022a68:	e28db004 	add	fp, sp, #4
80022a6c:	e24dd020 	sub	sp, sp, #32
80022a70:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80022a74:	e59f00d0 	ldr	r0, [pc, #208]	@ 80022b4c <fileclose+0xe8>
80022a78:	eb000f23 	bl	8002670c <acquire>
80022a7c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022a80:	e5933004 	ldr	r3, [r3, #4]
80022a84:	e3530000 	cmp	r3, #0
80022a88:	ca000001 	bgt	80022a94 <fileclose+0x30>
80022a8c:	e59f00bc 	ldr	r0, [pc, #188]	@ 80022b50 <fileclose+0xec>
80022a90:	ebfffc09 	bl	80021abc <panic>
80022a94:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022a98:	e5933004 	ldr	r3, [r3, #4]
80022a9c:	e2432001 	sub	r2, r3, #1
80022aa0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022aa4:	e5832004 	str	r2, [r3, #4]
80022aa8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022aac:	e5933004 	ldr	r3, [r3, #4]
80022ab0:	e3530000 	cmp	r3, #0
80022ab4:	da000002 	ble	80022ac4 <fileclose+0x60>
80022ab8:	e59f008c 	ldr	r0, [pc, #140]	@ 80022b4c <fileclose+0xe8>
80022abc:	eb000f1d 	bl	80026738 <release>
80022ac0:	ea00001f 	b	80022b44 <fileclose+0xe0>
80022ac4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022ac8:	e24bc01c 	sub	ip, fp, #28
80022acc:	e1a0e003 	mov	lr, r3
80022ad0:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
80022ad4:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
80022ad8:	e89e0003 	ldm	lr, {r0, r1}
80022adc:	e88c0003 	stm	ip, {r0, r1}
80022ae0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022ae4:	e3a02000 	mov	r2, #0
80022ae8:	e5832004 	str	r2, [r3, #4]
80022aec:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022af0:	e3a02000 	mov	r2, #0
80022af4:	e5c32000 	strb	r2, [r3]
80022af8:	e59f004c 	ldr	r0, [pc, #76]	@ 80022b4c <fileclose+0xe8>
80022afc:	eb000f0d 	bl	80026738 <release>
80022b00:	e55b301c 	ldrb	r3, [fp, #-28]	@ 0xffffffe4
80022b04:	e3530001 	cmp	r3, #1
80022b08:	1a000005 	bne	80022b24 <fileclose+0xc0>
80022b0c:	e51b3010 	ldr	r3, [fp, #-16]
80022b10:	e55b2013 	ldrb	r2, [fp, #-19]	@ 0xffffffed
80022b14:	e1a01002 	mov	r1, r2
80022b18:	e1a00003 	mov	r0, r3
80022b1c:	eb0008e8 	bl	80024ec4 <pipeclose>
80022b20:	ea000007 	b	80022b44 <fileclose+0xe0>
80022b24:	e55b301c 	ldrb	r3, [fp, #-28]	@ 0xffffffe4
80022b28:	e3530002 	cmp	r3, #2
80022b2c:	1a000004 	bne	80022b44 <fileclose+0xe0>
80022b30:	eb000742 	bl	80024840 <begin_trans>
80022b34:	e51b300c 	ldr	r3, [fp, #-12]
80022b38:	e1a00003 	mov	r0, r3
80022b3c:	eb000319 	bl	800237a8 <iput>
80022b40:	eb000752 	bl	80024890 <commit_trans>
80022b44:	e24bd004 	sub	sp, fp, #4
80022b48:	e8bd8800 	pop	{fp, pc}
80022b4c:	800acf58 	.word	0x800acf58
80022b50:	80029c74 	.word	0x80029c74

80022b54 <filestat>:
80022b54:	e92d4800 	push	{fp, lr}
80022b58:	e28db004 	add	fp, sp, #4
80022b5c:	e24dd008 	sub	sp, sp, #8
80022b60:	e50b0008 	str	r0, [fp, #-8]
80022b64:	e50b100c 	str	r1, [fp, #-12]
80022b68:	e51b3008 	ldr	r3, [fp, #-8]
80022b6c:	e5d33000 	ldrb	r3, [r3]
80022b70:	e3530002 	cmp	r3, #2
80022b74:	1a00000e 	bne	80022bb4 <filestat+0x60>
80022b78:	e51b3008 	ldr	r3, [fp, #-8]
80022b7c:	e5933010 	ldr	r3, [r3, #16]
80022b80:	e1a00003 	mov	r0, r3
80022b84:	eb000281 	bl	80023590 <ilock>
80022b88:	e51b3008 	ldr	r3, [fp, #-8]
80022b8c:	e5933010 	ldr	r3, [r3, #16]
80022b90:	e51b100c 	ldr	r1, [fp, #-12]
80022b94:	e1a00003 	mov	r0, r3
80022b98:	eb00040a 	bl	80023bc8 <stati>
80022b9c:	e51b3008 	ldr	r3, [fp, #-8]
80022ba0:	e5933010 	ldr	r3, [r3, #16]
80022ba4:	e1a00003 	mov	r0, r3
80022ba8:	eb0002dc 	bl	80023720 <iunlock>
80022bac:	e3a03000 	mov	r3, #0
80022bb0:	ea000000 	b	80022bb8 <filestat+0x64>
80022bb4:	e3e03000 	mvn	r3, #0
80022bb8:	e1a00003 	mov	r0, r3
80022bbc:	e24bd004 	sub	sp, fp, #4
80022bc0:	e8bd8800 	pop	{fp, pc}

80022bc4 <fileread>:
80022bc4:	e92d4800 	push	{fp, lr}
80022bc8:	e28db004 	add	fp, sp, #4
80022bcc:	e24dd018 	sub	sp, sp, #24
80022bd0:	e50b0010 	str	r0, [fp, #-16]
80022bd4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80022bd8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80022bdc:	e51b3010 	ldr	r3, [fp, #-16]
80022be0:	e5d33008 	ldrb	r3, [r3, #8]
80022be4:	e3530000 	cmp	r3, #0
80022be8:	1a000001 	bne	80022bf4 <fileread+0x30>
80022bec:	e3e03000 	mvn	r3, #0
80022bf0:	ea00002c 	b	80022ca8 <fileread+0xe4>
80022bf4:	e51b3010 	ldr	r3, [fp, #-16]
80022bf8:	e5d33000 	ldrb	r3, [r3]
80022bfc:	e3530001 	cmp	r3, #1
80022c00:	1a000007 	bne	80022c24 <fileread+0x60>
80022c04:	e51b3010 	ldr	r3, [fp, #-16]
80022c08:	e593300c 	ldr	r3, [r3, #12]
80022c0c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80022c10:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80022c14:	e1a00003 	mov	r0, r3
80022c18:	eb000923 	bl	800250ac <piperead>
80022c1c:	e1a03000 	mov	r3, r0
80022c20:	ea000020 	b	80022ca8 <fileread+0xe4>
80022c24:	e51b3010 	ldr	r3, [fp, #-16]
80022c28:	e5d33000 	ldrb	r3, [r3]
80022c2c:	e3530002 	cmp	r3, #2
80022c30:	1a00001a 	bne	80022ca0 <fileread+0xdc>
80022c34:	e51b3010 	ldr	r3, [fp, #-16]
80022c38:	e5933010 	ldr	r3, [r3, #16]
80022c3c:	e1a00003 	mov	r0, r3
80022c40:	eb000252 	bl	80023590 <ilock>
80022c44:	e51b3010 	ldr	r3, [fp, #-16]
80022c48:	e5930010 	ldr	r0, [r3, #16]
80022c4c:	e51b3010 	ldr	r3, [fp, #-16]
80022c50:	e5932014 	ldr	r2, [r3, #20]
80022c54:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022c58:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80022c5c:	eb0003f7 	bl	80023c40 <readi>
80022c60:	e50b0008 	str	r0, [fp, #-8]
80022c64:	e51b3008 	ldr	r3, [fp, #-8]
80022c68:	e3530000 	cmp	r3, #0
80022c6c:	da000005 	ble	80022c88 <fileread+0xc4>
80022c70:	e51b3010 	ldr	r3, [fp, #-16]
80022c74:	e5932014 	ldr	r2, [r3, #20]
80022c78:	e51b3008 	ldr	r3, [fp, #-8]
80022c7c:	e0822003 	add	r2, r2, r3
80022c80:	e51b3010 	ldr	r3, [fp, #-16]
80022c84:	e5832014 	str	r2, [r3, #20]
80022c88:	e51b3010 	ldr	r3, [fp, #-16]
80022c8c:	e5933010 	ldr	r3, [r3, #16]
80022c90:	e1a00003 	mov	r0, r3
80022c94:	eb0002a1 	bl	80023720 <iunlock>
80022c98:	e51b3008 	ldr	r3, [fp, #-8]
80022c9c:	ea000001 	b	80022ca8 <fileread+0xe4>
80022ca0:	e59f000c 	ldr	r0, [pc, #12]	@ 80022cb4 <fileread+0xf0>
80022ca4:	ebfffb84 	bl	80021abc <panic>
80022ca8:	e1a00003 	mov	r0, r3
80022cac:	e24bd004 	sub	sp, fp, #4
80022cb0:	e8bd8800 	pop	{fp, pc}
80022cb4:	80029c80 	.word	0x80029c80

80022cb8 <filewrite>:
80022cb8:	e92d4800 	push	{fp, lr}
80022cbc:	e28db004 	add	fp, sp, #4
80022cc0:	e24dd020 	sub	sp, sp, #32
80022cc4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80022cc8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80022ccc:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80022cd0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022cd4:	e5d33009 	ldrb	r3, [r3, #9]
80022cd8:	e3530000 	cmp	r3, #0
80022cdc:	1a000001 	bne	80022ce8 <filewrite+0x30>
80022ce0:	e3e03000 	mvn	r3, #0
80022ce4:	ea000058 	b	80022e4c <filewrite+0x194>
80022ce8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022cec:	e5d33000 	ldrb	r3, [r3]
80022cf0:	e3530001 	cmp	r3, #1
80022cf4:	1a000007 	bne	80022d18 <filewrite+0x60>
80022cf8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022cfc:	e593300c 	ldr	r3, [r3, #12]
80022d00:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
80022d04:	e51b101c 	ldr	r1, [fp, #-28]	@ 0xffffffe4
80022d08:	e1a00003 	mov	r0, r3
80022d0c:	eb00089f 	bl	80024f90 <pipewrite>
80022d10:	e1a03000 	mov	r3, r0
80022d14:	ea00004c 	b	80022e4c <filewrite+0x194>
80022d18:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022d1c:	e5d33000 	ldrb	r3, [r3]
80022d20:	e3530002 	cmp	r3, #2
80022d24:	1a000046 	bne	80022e44 <filewrite+0x18c>
80022d28:	e3a03c06 	mov	r3, #1536	@ 0x600
80022d2c:	e50b3010 	str	r3, [fp, #-16]
80022d30:	e3a03000 	mov	r3, #0
80022d34:	e50b3008 	str	r3, [fp, #-8]
80022d38:	ea000033 	b	80022e0c <filewrite+0x154>
80022d3c:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
80022d40:	e51b3008 	ldr	r3, [fp, #-8]
80022d44:	e0423003 	sub	r3, r2, r3
80022d48:	e50b300c 	str	r3, [fp, #-12]
80022d4c:	e51b200c 	ldr	r2, [fp, #-12]
80022d50:	e51b3010 	ldr	r3, [fp, #-16]
80022d54:	e1520003 	cmp	r2, r3
80022d58:	da000001 	ble	80022d64 <filewrite+0xac>
80022d5c:	e51b3010 	ldr	r3, [fp, #-16]
80022d60:	e50b300c 	str	r3, [fp, #-12]
80022d64:	eb0006b5 	bl	80024840 <begin_trans>
80022d68:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022d6c:	e5933010 	ldr	r3, [r3, #16]
80022d70:	e1a00003 	mov	r0, r3
80022d74:	eb000205 	bl	80023590 <ilock>
80022d78:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022d7c:	e5930010 	ldr	r0, [r3, #16]
80022d80:	e51b3008 	ldr	r3, [fp, #-8]
80022d84:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80022d88:	e0821003 	add	r1, r2, r3
80022d8c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022d90:	e5932014 	ldr	r2, [r3, #20]
80022d94:	e51b300c 	ldr	r3, [fp, #-12]
80022d98:	eb000423 	bl	80023e2c <writei>
80022d9c:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80022da0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022da4:	e3530000 	cmp	r3, #0
80022da8:	da000005 	ble	80022dc4 <filewrite+0x10c>
80022dac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022db0:	e5932014 	ldr	r2, [r3, #20]
80022db4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022db8:	e0822003 	add	r2, r2, r3
80022dbc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022dc0:	e5832014 	str	r2, [r3, #20]
80022dc4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022dc8:	e5933010 	ldr	r3, [r3, #16]
80022dcc:	e1a00003 	mov	r0, r3
80022dd0:	eb000252 	bl	80023720 <iunlock>
80022dd4:	eb0006ad 	bl	80024890 <commit_trans>
80022dd8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022ddc:	e3530000 	cmp	r3, #0
80022de0:	ba00000e 	blt	80022e20 <filewrite+0x168>
80022de4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80022de8:	e51b300c 	ldr	r3, [fp, #-12]
80022dec:	e1520003 	cmp	r2, r3
80022df0:	0a000001 	beq	80022dfc <filewrite+0x144>
80022df4:	e59f005c 	ldr	r0, [pc, #92]	@ 80022e58 <filewrite+0x1a0>
80022df8:	ebfffb2f 	bl	80021abc <panic>
80022dfc:	e51b2008 	ldr	r2, [fp, #-8]
80022e00:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022e04:	e0823003 	add	r3, r2, r3
80022e08:	e50b3008 	str	r3, [fp, #-8]
80022e0c:	e51b2008 	ldr	r2, [fp, #-8]
80022e10:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022e14:	e1520003 	cmp	r2, r3
80022e18:	baffffc7 	blt	80022d3c <filewrite+0x84>
80022e1c:	ea000000 	b	80022e24 <filewrite+0x16c>
80022e20:	e1a00000 	nop			@ (mov r0, r0)
80022e24:	e51b2008 	ldr	r2, [fp, #-8]
80022e28:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022e2c:	e1520003 	cmp	r2, r3
80022e30:	1a000001 	bne	80022e3c <filewrite+0x184>
80022e34:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022e38:	ea000003 	b	80022e4c <filewrite+0x194>
80022e3c:	e3e03000 	mvn	r3, #0
80022e40:	ea000001 	b	80022e4c <filewrite+0x194>
80022e44:	e59f0010 	ldr	r0, [pc, #16]	@ 80022e5c <filewrite+0x1a4>
80022e48:	ebfffb1b 	bl	80021abc <panic>
80022e4c:	e1a00003 	mov	r0, r3
80022e50:	e24bd004 	sub	sp, fp, #4
80022e54:	e8bd8800 	pop	{fp, pc}
80022e58:	80029c8c 	.word	0x80029c8c
80022e5c:	80029c9c 	.word	0x80029c9c

80022e60 <readsb>:
80022e60:	e92d4800 	push	{fp, lr}
80022e64:	e28db004 	add	fp, sp, #4
80022e68:	e24dd010 	sub	sp, sp, #16
80022e6c:	e50b0010 	str	r0, [fp, #-16]
80022e70:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80022e74:	e51b3010 	ldr	r3, [fp, #-16]
80022e78:	e3a01001 	mov	r1, #1
80022e7c:	e1a00003 	mov	r0, r3
80022e80:	ebfff723 	bl	80020b14 <bread>
80022e84:	e50b0008 	str	r0, [fp, #-8]
80022e88:	e51b3008 	ldr	r3, [fp, #-8]
80022e8c:	e2833018 	add	r3, r3, #24
80022e90:	e3a02010 	mov	r2, #16
80022e94:	e1a01003 	mov	r1, r3
80022e98:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80022e9c:	ebfff4c9 	bl	800201c8 <memmove>
80022ea0:	e51b0008 	ldr	r0, [fp, #-8]
80022ea4:	ebfff744 	bl	80020bbc <brelse>
80022ea8:	e1a00000 	nop			@ (mov r0, r0)
80022eac:	e24bd004 	sub	sp, fp, #4
80022eb0:	e8bd8800 	pop	{fp, pc}

80022eb4 <bzero>:
80022eb4:	e92d4800 	push	{fp, lr}
80022eb8:	e28db004 	add	fp, sp, #4
80022ebc:	e24dd010 	sub	sp, sp, #16
80022ec0:	e50b0010 	str	r0, [fp, #-16]
80022ec4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80022ec8:	e51b3010 	ldr	r3, [fp, #-16]
80022ecc:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80022ed0:	e1a01002 	mov	r1, r2
80022ed4:	e1a00003 	mov	r0, r3
80022ed8:	ebfff70d 	bl	80020b14 <bread>
80022edc:	e50b0008 	str	r0, [fp, #-8]
80022ee0:	e51b3008 	ldr	r3, [fp, #-8]
80022ee4:	e2833018 	add	r3, r3, #24
80022ee8:	e3a02c02 	mov	r2, #512	@ 0x200
80022eec:	e3a01000 	mov	r1, #0
80022ef0:	e1a00003 	mov	r0, r3
80022ef4:	ebfff441 	bl	80020000 <memset>
80022ef8:	e51b0008 	ldr	r0, [fp, #-8]
80022efc:	eb00067b 	bl	800248f0 <log_write>
80022f00:	e51b0008 	ldr	r0, [fp, #-8]
80022f04:	ebfff72c 	bl	80020bbc <brelse>
80022f08:	e1a00000 	nop			@ (mov r0, r0)
80022f0c:	e24bd004 	sub	sp, fp, #4
80022f10:	e8bd8800 	pop	{fp, pc}

80022f14 <balloc>:
80022f14:	e92d4800 	push	{fp, lr}
80022f18:	e28db004 	add	fp, sp, #4
80022f1c:	e24dd028 	sub	sp, sp, #40	@ 0x28
80022f20:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80022f24:	e3a03000 	mov	r3, #0
80022f28:	e50b3010 	str	r3, [fp, #-16]
80022f2c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022f30:	e24b2024 	sub	r2, fp, #36	@ 0x24
80022f34:	e1a01002 	mov	r1, r2
80022f38:	e1a00003 	mov	r0, r3
80022f3c:	ebffffc7 	bl	80022e60 <readsb>
80022f40:	e3a03000 	mov	r3, #0
80022f44:	e50b3008 	str	r3, [fp, #-8]
80022f48:	ea000059 	b	800230b4 <balloc+0x1a0>
80022f4c:	e51b3008 	ldr	r3, [fp, #-8]
80022f50:	e2832eff 	add	r2, r3, #4080	@ 0xff0
80022f54:	e282200f 	add	r2, r2, #15
80022f58:	e3530000 	cmp	r3, #0
80022f5c:	b1a03002 	movlt	r3, r2
80022f60:	a1a03003 	movge	r3, r3
80022f64:	e1a03643 	asr	r3, r3, #12
80022f68:	e1a02003 	mov	r2, r3
80022f6c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80022f70:	e1a031a3 	lsr	r3, r3, #3
80022f74:	e0823003 	add	r3, r2, r3
80022f78:	e2833003 	add	r3, r3, #3
80022f7c:	e1a01003 	mov	r1, r3
80022f80:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022f84:	ebfff6e2 	bl	80020b14 <bread>
80022f88:	e50b0010 	str	r0, [fp, #-16]
80022f8c:	e3a03000 	mov	r3, #0
80022f90:	e50b300c 	str	r3, [fp, #-12]
80022f94:	ea000037 	b	80023078 <balloc+0x164>
80022f98:	e51b300c 	ldr	r3, [fp, #-12]
80022f9c:	e2033007 	and	r3, r3, #7
80022fa0:	e3a02001 	mov	r2, #1
80022fa4:	e1a03312 	lsl	r3, r2, r3
80022fa8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80022fac:	e51b300c 	ldr	r3, [fp, #-12]
80022fb0:	e2832007 	add	r2, r3, #7
80022fb4:	e3530000 	cmp	r3, #0
80022fb8:	b1a03002 	movlt	r3, r2
80022fbc:	a1a03003 	movge	r3, r3
80022fc0:	e1a031c3 	asr	r3, r3, #3
80022fc4:	e1a02003 	mov	r2, r3
80022fc8:	e51b3010 	ldr	r3, [fp, #-16]
80022fcc:	e0833002 	add	r3, r3, r2
80022fd0:	e5d33018 	ldrb	r3, [r3, #24]
80022fd4:	e1a02003 	mov	r2, r3
80022fd8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022fdc:	e0033002 	and	r3, r3, r2
80022fe0:	e3530000 	cmp	r3, #0
80022fe4:	1a000020 	bne	8002306c <balloc+0x158>
80022fe8:	e51b300c 	ldr	r3, [fp, #-12]
80022fec:	e2832007 	add	r2, r3, #7
80022ff0:	e3530000 	cmp	r3, #0
80022ff4:	b1a03002 	movlt	r3, r2
80022ff8:	a1a03003 	movge	r3, r3
80022ffc:	e1a031c3 	asr	r3, r3, #3
80023000:	e51b2010 	ldr	r2, [fp, #-16]
80023004:	e0822003 	add	r2, r2, r3
80023008:	e5d22018 	ldrb	r2, [r2, #24]
8002300c:	e6af1072 	sxtb	r1, r2
80023010:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80023014:	e6af2072 	sxtb	r2, r2
80023018:	e1812002 	orr	r2, r1, r2
8002301c:	e6af2072 	sxtb	r2, r2
80023020:	e6ef1072 	uxtb	r1, r2
80023024:	e51b2010 	ldr	r2, [fp, #-16]
80023028:	e0823003 	add	r3, r2, r3
8002302c:	e1a02001 	mov	r2, r1
80023030:	e5c32018 	strb	r2, [r3, #24]
80023034:	e51b0010 	ldr	r0, [fp, #-16]
80023038:	eb00062c 	bl	800248f0 <log_write>
8002303c:	e51b0010 	ldr	r0, [fp, #-16]
80023040:	ebfff6dd 	bl	80020bbc <brelse>
80023044:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80023048:	e51b2008 	ldr	r2, [fp, #-8]
8002304c:	e51b300c 	ldr	r3, [fp, #-12]
80023050:	e0823003 	add	r3, r2, r3
80023054:	e1a01003 	mov	r1, r3
80023058:	ebffff95 	bl	80022eb4 <bzero>
8002305c:	e51b2008 	ldr	r2, [fp, #-8]
80023060:	e51b300c 	ldr	r3, [fp, #-12]
80023064:	e0823003 	add	r3, r2, r3
80023068:	ea000017 	b	800230cc <balloc+0x1b8>
8002306c:	e51b300c 	ldr	r3, [fp, #-12]
80023070:	e2833001 	add	r3, r3, #1
80023074:	e50b300c 	str	r3, [fp, #-12]
80023078:	e51b300c 	ldr	r3, [fp, #-12]
8002307c:	e3530a01 	cmp	r3, #4096	@ 0x1000
80023080:	aa000006 	bge	800230a0 <balloc+0x18c>
80023084:	e51b2008 	ldr	r2, [fp, #-8]
80023088:	e51b300c 	ldr	r3, [fp, #-12]
8002308c:	e0823003 	add	r3, r2, r3
80023090:	e1a02003 	mov	r2, r3
80023094:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80023098:	e1520003 	cmp	r2, r3
8002309c:	3affffbd 	bcc	80022f98 <balloc+0x84>
800230a0:	e51b0010 	ldr	r0, [fp, #-16]
800230a4:	ebfff6c4 	bl	80020bbc <brelse>
800230a8:	e51b3008 	ldr	r3, [fp, #-8]
800230ac:	e2833a01 	add	r3, r3, #4096	@ 0x1000
800230b0:	e50b3008 	str	r3, [fp, #-8]
800230b4:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
800230b8:	e51b3008 	ldr	r3, [fp, #-8]
800230bc:	e1520003 	cmp	r2, r3
800230c0:	8affffa1 	bhi	80022f4c <balloc+0x38>
800230c4:	e59f000c 	ldr	r0, [pc, #12]	@ 800230d8 <balloc+0x1c4>
800230c8:	ebfffa7b 	bl	80021abc <panic>
800230cc:	e1a00003 	mov	r0, r3
800230d0:	e24bd004 	sub	sp, fp, #4
800230d4:	e8bd8800 	pop	{fp, pc}
800230d8:	80029ca8 	.word	0x80029ca8

800230dc <bfree>:
800230dc:	e92d4800 	push	{fp, lr}
800230e0:	e28db004 	add	fp, sp, #4
800230e4:	e24dd028 	sub	sp, sp, #40	@ 0x28
800230e8:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
800230ec:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
800230f0:	e24b3020 	sub	r3, fp, #32
800230f4:	e1a01003 	mov	r1, r3
800230f8:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
800230fc:	ebffff57 	bl	80022e60 <readsb>
80023100:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80023104:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023108:	e1a02623 	lsr	r2, r3, #12
8002310c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023110:	e1a031a3 	lsr	r3, r3, #3
80023114:	e0823003 	add	r3, r2, r3
80023118:	e2833003 	add	r3, r3, #3
8002311c:	e1a01003 	mov	r1, r3
80023120:	ebfff67b 	bl	80020b14 <bread>
80023124:	e50b0008 	str	r0, [fp, #-8]
80023128:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
8002312c:	e1a03a03 	lsl	r3, r3, #20
80023130:	e1a03a23 	lsr	r3, r3, #20
80023134:	e50b300c 	str	r3, [fp, #-12]
80023138:	e51b300c 	ldr	r3, [fp, #-12]
8002313c:	e2033007 	and	r3, r3, #7
80023140:	e3a02001 	mov	r2, #1
80023144:	e1a03312 	lsl	r3, r2, r3
80023148:	e50b3010 	str	r3, [fp, #-16]
8002314c:	e51b300c 	ldr	r3, [fp, #-12]
80023150:	e2832007 	add	r2, r3, #7
80023154:	e3530000 	cmp	r3, #0
80023158:	b1a03002 	movlt	r3, r2
8002315c:	a1a03003 	movge	r3, r3
80023160:	e1a031c3 	asr	r3, r3, #3
80023164:	e1a02003 	mov	r2, r3
80023168:	e51b3008 	ldr	r3, [fp, #-8]
8002316c:	e0833002 	add	r3, r3, r2
80023170:	e5d33018 	ldrb	r3, [r3, #24]
80023174:	e1a02003 	mov	r2, r3
80023178:	e51b3010 	ldr	r3, [fp, #-16]
8002317c:	e0033002 	and	r3, r3, r2
80023180:	e3530000 	cmp	r3, #0
80023184:	1a000001 	bne	80023190 <bfree+0xb4>
80023188:	e59f0070 	ldr	r0, [pc, #112]	@ 80023200 <bfree+0x124>
8002318c:	ebfffa4a 	bl	80021abc <panic>
80023190:	e51b300c 	ldr	r3, [fp, #-12]
80023194:	e2832007 	add	r2, r3, #7
80023198:	e3530000 	cmp	r3, #0
8002319c:	b1a03002 	movlt	r3, r2
800231a0:	a1a03003 	movge	r3, r3
800231a4:	e1a031c3 	asr	r3, r3, #3
800231a8:	e51b2008 	ldr	r2, [fp, #-8]
800231ac:	e0822003 	add	r2, r2, r3
800231b0:	e5d22018 	ldrb	r2, [r2, #24]
800231b4:	e6af1072 	sxtb	r1, r2
800231b8:	e51b2010 	ldr	r2, [fp, #-16]
800231bc:	e6af2072 	sxtb	r2, r2
800231c0:	e1e02002 	mvn	r2, r2
800231c4:	e6af2072 	sxtb	r2, r2
800231c8:	e0022001 	and	r2, r2, r1
800231cc:	e6af2072 	sxtb	r2, r2
800231d0:	e6ef1072 	uxtb	r1, r2
800231d4:	e51b2008 	ldr	r2, [fp, #-8]
800231d8:	e0823003 	add	r3, r2, r3
800231dc:	e1a02001 	mov	r2, r1
800231e0:	e5c32018 	strb	r2, [r3, #24]
800231e4:	e51b0008 	ldr	r0, [fp, #-8]
800231e8:	eb0005c0 	bl	800248f0 <log_write>
800231ec:	e51b0008 	ldr	r0, [fp, #-8]
800231f0:	ebfff671 	bl	80020bbc <brelse>
800231f4:	e1a00000 	nop			@ (mov r0, r0)
800231f8:	e24bd004 	sub	sp, fp, #4
800231fc:	e8bd8800 	pop	{fp, pc}
80023200:	80029cc0 	.word	0x80029cc0

80023204 <iinit>:
80023204:	e92d4800 	push	{fp, lr}
80023208:	e28db004 	add	fp, sp, #4
8002320c:	e59f100c 	ldr	r1, [pc, #12]	@ 80023220 <iinit+0x1c>
80023210:	e59f000c 	ldr	r0, [pc, #12]	@ 80023224 <iinit+0x20>
80023214:	eb000d2a 	bl	800266c4 <initlock>
80023218:	e1a00000 	nop			@ (mov r0, r0)
8002321c:	e8bd8800 	pop	{fp, pc}
80023220:	80029cd4 	.word	0x80029cd4
80023224:	800ad8ec 	.word	0x800ad8ec

80023228 <ialloc>:
80023228:	e92d4800 	push	{fp, lr}
8002322c:	e28db004 	add	fp, sp, #4
80023230:	e24dd028 	sub	sp, sp, #40	@ 0x28
80023234:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80023238:	e1a03001 	mov	r3, r1
8002323c:	e14b32ba 	strh	r3, [fp, #-42]	@ 0xffffffd6
80023240:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023244:	e24b2020 	sub	r2, fp, #32
80023248:	e1a01002 	mov	r1, r2
8002324c:	e1a00003 	mov	r0, r3
80023250:	ebffff02 	bl	80022e60 <readsb>
80023254:	e3a03001 	mov	r3, #1
80023258:	e50b3008 	str	r3, [fp, #-8]
8002325c:	ea000027 	b	80023300 <ialloc+0xd8>
80023260:	e51b3008 	ldr	r3, [fp, #-8]
80023264:	e1a031a3 	lsr	r3, r3, #3
80023268:	e2833002 	add	r3, r3, #2
8002326c:	e1a01003 	mov	r1, r3
80023270:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80023274:	ebfff626 	bl	80020b14 <bread>
80023278:	e50b000c 	str	r0, [fp, #-12]
8002327c:	e51b300c 	ldr	r3, [fp, #-12]
80023280:	e2832018 	add	r2, r3, #24
80023284:	e51b3008 	ldr	r3, [fp, #-8]
80023288:	e2033007 	and	r3, r3, #7
8002328c:	e1a03303 	lsl	r3, r3, #6
80023290:	e0823003 	add	r3, r2, r3
80023294:	e50b3010 	str	r3, [fp, #-16]
80023298:	e51b3010 	ldr	r3, [fp, #-16]
8002329c:	e1d330f0 	ldrsh	r3, [r3]
800232a0:	e3530000 	cmp	r3, #0
800232a4:	1a000010 	bne	800232ec <ialloc+0xc4>
800232a8:	e3a02040 	mov	r2, #64	@ 0x40
800232ac:	e3a01000 	mov	r1, #0
800232b0:	e51b0010 	ldr	r0, [fp, #-16]
800232b4:	ebfff351 	bl	80020000 <memset>
800232b8:	e51b3010 	ldr	r3, [fp, #-16]
800232bc:	e15b22ba 	ldrh	r2, [fp, #-42]	@ 0xffffffd6
800232c0:	e1c320b0 	strh	r2, [r3]
800232c4:	e51b000c 	ldr	r0, [fp, #-12]
800232c8:	eb000588 	bl	800248f0 <log_write>
800232cc:	e51b000c 	ldr	r0, [fp, #-12]
800232d0:	ebfff639 	bl	80020bbc <brelse>
800232d4:	e51b3008 	ldr	r3, [fp, #-8]
800232d8:	e1a01003 	mov	r1, r3
800232dc:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
800232e0:	eb000048 	bl	80023408 <iget>
800232e4:	e1a03000 	mov	r3, r0
800232e8:	ea00000a 	b	80023318 <ialloc+0xf0>
800232ec:	e51b000c 	ldr	r0, [fp, #-12]
800232f0:	ebfff631 	bl	80020bbc <brelse>
800232f4:	e51b3008 	ldr	r3, [fp, #-8]
800232f8:	e2833001 	add	r3, r3, #1
800232fc:	e50b3008 	str	r3, [fp, #-8]
80023300:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023304:	e51b3008 	ldr	r3, [fp, #-8]
80023308:	e1520003 	cmp	r2, r3
8002330c:	8affffd3 	bhi	80023260 <ialloc+0x38>
80023310:	e59f000c 	ldr	r0, [pc, #12]	@ 80023324 <ialloc+0xfc>
80023314:	ebfff9e8 	bl	80021abc <panic>
80023318:	e1a00003 	mov	r0, r3
8002331c:	e24bd004 	sub	sp, fp, #4
80023320:	e8bd8800 	pop	{fp, pc}
80023324:	80029cdc 	.word	0x80029cdc

80023328 <iupdate>:
80023328:	e92d4800 	push	{fp, lr}
8002332c:	e28db004 	add	fp, sp, #4
80023330:	e24dd010 	sub	sp, sp, #16
80023334:	e50b0010 	str	r0, [fp, #-16]
80023338:	e51b3010 	ldr	r3, [fp, #-16]
8002333c:	e5932000 	ldr	r2, [r3]
80023340:	e51b3010 	ldr	r3, [fp, #-16]
80023344:	e5933004 	ldr	r3, [r3, #4]
80023348:	e1a031a3 	lsr	r3, r3, #3
8002334c:	e2833002 	add	r3, r3, #2
80023350:	e1a01003 	mov	r1, r3
80023354:	e1a00002 	mov	r0, r2
80023358:	ebfff5ed 	bl	80020b14 <bread>
8002335c:	e50b0008 	str	r0, [fp, #-8]
80023360:	e51b3008 	ldr	r3, [fp, #-8]
80023364:	e2832018 	add	r2, r3, #24
80023368:	e51b3010 	ldr	r3, [fp, #-16]
8002336c:	e5933004 	ldr	r3, [r3, #4]
80023370:	e2033007 	and	r3, r3, #7
80023374:	e1a03303 	lsl	r3, r3, #6
80023378:	e0823003 	add	r3, r2, r3
8002337c:	e50b300c 	str	r3, [fp, #-12]
80023380:	e51b3010 	ldr	r3, [fp, #-16]
80023384:	e1d321f0 	ldrsh	r2, [r3, #16]
80023388:	e51b300c 	ldr	r3, [fp, #-12]
8002338c:	e1c320b0 	strh	r2, [r3]
80023390:	e51b3010 	ldr	r3, [fp, #-16]
80023394:	e1d321f2 	ldrsh	r2, [r3, #18]
80023398:	e51b300c 	ldr	r3, [fp, #-12]
8002339c:	e1c320b2 	strh	r2, [r3, #2]
800233a0:	e51b3010 	ldr	r3, [fp, #-16]
800233a4:	e1d321f4 	ldrsh	r2, [r3, #20]
800233a8:	e51b300c 	ldr	r3, [fp, #-12]
800233ac:	e1c320b4 	strh	r2, [r3, #4]
800233b0:	e51b3010 	ldr	r3, [fp, #-16]
800233b4:	e1d321f6 	ldrsh	r2, [r3, #22]
800233b8:	e51b300c 	ldr	r3, [fp, #-12]
800233bc:	e1c320b6 	strh	r2, [r3, #6]
800233c0:	e51b3010 	ldr	r3, [fp, #-16]
800233c4:	e5932018 	ldr	r2, [r3, #24]
800233c8:	e51b300c 	ldr	r3, [fp, #-12]
800233cc:	e5832008 	str	r2, [r3, #8]
800233d0:	e51b300c 	ldr	r3, [fp, #-12]
800233d4:	e283000c 	add	r0, r3, #12
800233d8:	e51b3010 	ldr	r3, [fp, #-16]
800233dc:	e283301c 	add	r3, r3, #28
800233e0:	e3a02034 	mov	r2, #52	@ 0x34
800233e4:	e1a01003 	mov	r1, r3
800233e8:	ebfff376 	bl	800201c8 <memmove>
800233ec:	e51b0008 	ldr	r0, [fp, #-8]
800233f0:	eb00053e 	bl	800248f0 <log_write>
800233f4:	e51b0008 	ldr	r0, [fp, #-8]
800233f8:	ebfff5ef 	bl	80020bbc <brelse>
800233fc:	e1a00000 	nop			@ (mov r0, r0)
80023400:	e24bd004 	sub	sp, fp, #4
80023404:	e8bd8800 	pop	{fp, pc}

80023408 <iget>:
80023408:	e92d4800 	push	{fp, lr}
8002340c:	e28db004 	add	fp, sp, #4
80023410:	e24dd010 	sub	sp, sp, #16
80023414:	e50b0010 	str	r0, [fp, #-16]
80023418:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
8002341c:	e59f0114 	ldr	r0, [pc, #276]	@ 80023538 <iget+0x130>
80023420:	eb000cb9 	bl	8002670c <acquire>
80023424:	e3a03000 	mov	r3, #0
80023428:	e50b300c 	str	r3, [fp, #-12]
8002342c:	e59f3108 	ldr	r3, [pc, #264]	@ 8002353c <iget+0x134>
80023430:	e50b3008 	str	r3, [fp, #-8]
80023434:	ea000022 	b	800234c4 <iget+0xbc>
80023438:	e51b3008 	ldr	r3, [fp, #-8]
8002343c:	e5933008 	ldr	r3, [r3, #8]
80023440:	e3530000 	cmp	r3, #0
80023444:	da000012 	ble	80023494 <iget+0x8c>
80023448:	e51b3008 	ldr	r3, [fp, #-8]
8002344c:	e5933000 	ldr	r3, [r3]
80023450:	e51b2010 	ldr	r2, [fp, #-16]
80023454:	e1520003 	cmp	r2, r3
80023458:	1a00000d 	bne	80023494 <iget+0x8c>
8002345c:	e51b3008 	ldr	r3, [fp, #-8]
80023460:	e5933004 	ldr	r3, [r3, #4]
80023464:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80023468:	e1520003 	cmp	r2, r3
8002346c:	1a000008 	bne	80023494 <iget+0x8c>
80023470:	e51b3008 	ldr	r3, [fp, #-8]
80023474:	e5933008 	ldr	r3, [r3, #8]
80023478:	e2832001 	add	r2, r3, #1
8002347c:	e51b3008 	ldr	r3, [fp, #-8]
80023480:	e5832008 	str	r2, [r3, #8]
80023484:	e59f00ac 	ldr	r0, [pc, #172]	@ 80023538 <iget+0x130>
80023488:	eb000caa 	bl	80026738 <release>
8002348c:	e51b3008 	ldr	r3, [fp, #-8]
80023490:	ea000025 	b	8002352c <iget+0x124>
80023494:	e51b300c 	ldr	r3, [fp, #-12]
80023498:	e3530000 	cmp	r3, #0
8002349c:	1a000005 	bne	800234b8 <iget+0xb0>
800234a0:	e51b3008 	ldr	r3, [fp, #-8]
800234a4:	e5933008 	ldr	r3, [r3, #8]
800234a8:	e3530000 	cmp	r3, #0
800234ac:	1a000001 	bne	800234b8 <iget+0xb0>
800234b0:	e51b3008 	ldr	r3, [fp, #-8]
800234b4:	e50b300c 	str	r3, [fp, #-12]
800234b8:	e51b3008 	ldr	r3, [fp, #-8]
800234bc:	e2833050 	add	r3, r3, #80	@ 0x50
800234c0:	e50b3008 	str	r3, [fp, #-8]
800234c4:	e51b3008 	ldr	r3, [fp, #-8]
800234c8:	e59f2070 	ldr	r2, [pc, #112]	@ 80023540 <iget+0x138>
800234cc:	e1530002 	cmp	r3, r2
800234d0:	3affffd8 	bcc	80023438 <iget+0x30>
800234d4:	e51b300c 	ldr	r3, [fp, #-12]
800234d8:	e3530000 	cmp	r3, #0
800234dc:	1a000001 	bne	800234e8 <iget+0xe0>
800234e0:	e59f005c 	ldr	r0, [pc, #92]	@ 80023544 <iget+0x13c>
800234e4:	ebfff974 	bl	80021abc <panic>
800234e8:	e51b300c 	ldr	r3, [fp, #-12]
800234ec:	e50b3008 	str	r3, [fp, #-8]
800234f0:	e51b3008 	ldr	r3, [fp, #-8]
800234f4:	e51b2010 	ldr	r2, [fp, #-16]
800234f8:	e5832000 	str	r2, [r3]
800234fc:	e51b3008 	ldr	r3, [fp, #-8]
80023500:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80023504:	e5832004 	str	r2, [r3, #4]
80023508:	e51b3008 	ldr	r3, [fp, #-8]
8002350c:	e3a02001 	mov	r2, #1
80023510:	e5832008 	str	r2, [r3, #8]
80023514:	e51b3008 	ldr	r3, [fp, #-8]
80023518:	e3a02000 	mov	r2, #0
8002351c:	e583200c 	str	r2, [r3, #12]
80023520:	e59f0010 	ldr	r0, [pc, #16]	@ 80023538 <iget+0x130>
80023524:	eb000c83 	bl	80026738 <release>
80023528:	e51b3008 	ldr	r3, [fp, #-8]
8002352c:	e1a00003 	mov	r0, r3
80023530:	e24bd004 	sub	sp, fp, #4
80023534:	e8bd8800 	pop	{fp, pc}
80023538:	800ad8ec 	.word	0x800ad8ec
8002353c:	800ad920 	.word	0x800ad920
80023540:	800ae8c0 	.word	0x800ae8c0
80023544:	80029cf0 	.word	0x80029cf0

80023548 <idup>:
80023548:	e92d4800 	push	{fp, lr}
8002354c:	e28db004 	add	fp, sp, #4
80023550:	e24dd008 	sub	sp, sp, #8
80023554:	e50b0008 	str	r0, [fp, #-8]
80023558:	e59f002c 	ldr	r0, [pc, #44]	@ 8002358c <idup+0x44>
8002355c:	eb000c6a 	bl	8002670c <acquire>
80023560:	e51b3008 	ldr	r3, [fp, #-8]
80023564:	e5933008 	ldr	r3, [r3, #8]
80023568:	e2832001 	add	r2, r3, #1
8002356c:	e51b3008 	ldr	r3, [fp, #-8]
80023570:	e5832008 	str	r2, [r3, #8]
80023574:	e59f0010 	ldr	r0, [pc, #16]	@ 8002358c <idup+0x44>
80023578:	eb000c6e 	bl	80026738 <release>
8002357c:	e51b3008 	ldr	r3, [fp, #-8]
80023580:	e1a00003 	mov	r0, r3
80023584:	e24bd004 	sub	sp, fp, #4
80023588:	e8bd8800 	pop	{fp, pc}
8002358c:	800ad8ec 	.word	0x800ad8ec

80023590 <ilock>:
80023590:	e92d4800 	push	{fp, lr}
80023594:	e28db004 	add	fp, sp, #4
80023598:	e24dd010 	sub	sp, sp, #16
8002359c:	e50b0010 	str	r0, [fp, #-16]
800235a0:	e51b3010 	ldr	r3, [fp, #-16]
800235a4:	e3530000 	cmp	r3, #0
800235a8:	0a000003 	beq	800235bc <ilock+0x2c>
800235ac:	e51b3010 	ldr	r3, [fp, #-16]
800235b0:	e5933008 	ldr	r3, [r3, #8]
800235b4:	e3530000 	cmp	r3, #0
800235b8:	ca000001 	bgt	800235c4 <ilock+0x34>
800235bc:	e59f0150 	ldr	r0, [pc, #336]	@ 80023714 <ilock+0x184>
800235c0:	ebfff93d 	bl	80021abc <panic>
800235c4:	e59f014c 	ldr	r0, [pc, #332]	@ 80023718 <ilock+0x188>
800235c8:	eb000c4f 	bl	8002670c <acquire>
800235cc:	ea000002 	b	800235dc <ilock+0x4c>
800235d0:	e59f1140 	ldr	r1, [pc, #320]	@ 80023718 <ilock+0x188>
800235d4:	e51b0010 	ldr	r0, [fp, #-16]
800235d8:	eb000a56 	bl	80025f38 <sleep>
800235dc:	e51b3010 	ldr	r3, [fp, #-16]
800235e0:	e593300c 	ldr	r3, [r3, #12]
800235e4:	e2033001 	and	r3, r3, #1
800235e8:	e3530000 	cmp	r3, #0
800235ec:	1afffff7 	bne	800235d0 <ilock+0x40>
800235f0:	e51b3010 	ldr	r3, [fp, #-16]
800235f4:	e593300c 	ldr	r3, [r3, #12]
800235f8:	e3832001 	orr	r2, r3, #1
800235fc:	e51b3010 	ldr	r3, [fp, #-16]
80023600:	e583200c 	str	r2, [r3, #12]
80023604:	e59f010c 	ldr	r0, [pc, #268]	@ 80023718 <ilock+0x188>
80023608:	eb000c4a 	bl	80026738 <release>
8002360c:	e51b3010 	ldr	r3, [fp, #-16]
80023610:	e593300c 	ldr	r3, [r3, #12]
80023614:	e2033002 	and	r3, r3, #2
80023618:	e3530000 	cmp	r3, #0
8002361c:	1a000039 	bne	80023708 <ilock+0x178>
80023620:	e51b3010 	ldr	r3, [fp, #-16]
80023624:	e5932000 	ldr	r2, [r3]
80023628:	e51b3010 	ldr	r3, [fp, #-16]
8002362c:	e5933004 	ldr	r3, [r3, #4]
80023630:	e1a031a3 	lsr	r3, r3, #3
80023634:	e2833002 	add	r3, r3, #2
80023638:	e1a01003 	mov	r1, r3
8002363c:	e1a00002 	mov	r0, r2
80023640:	ebfff533 	bl	80020b14 <bread>
80023644:	e50b0008 	str	r0, [fp, #-8]
80023648:	e51b3008 	ldr	r3, [fp, #-8]
8002364c:	e2832018 	add	r2, r3, #24
80023650:	e51b3010 	ldr	r3, [fp, #-16]
80023654:	e5933004 	ldr	r3, [r3, #4]
80023658:	e2033007 	and	r3, r3, #7
8002365c:	e1a03303 	lsl	r3, r3, #6
80023660:	e0823003 	add	r3, r2, r3
80023664:	e50b300c 	str	r3, [fp, #-12]
80023668:	e51b300c 	ldr	r3, [fp, #-12]
8002366c:	e1d320f0 	ldrsh	r2, [r3]
80023670:	e51b3010 	ldr	r3, [fp, #-16]
80023674:	e1c321b0 	strh	r2, [r3, #16]
80023678:	e51b300c 	ldr	r3, [fp, #-12]
8002367c:	e1d320f2 	ldrsh	r2, [r3, #2]
80023680:	e51b3010 	ldr	r3, [fp, #-16]
80023684:	e1c321b2 	strh	r2, [r3, #18]
80023688:	e51b300c 	ldr	r3, [fp, #-12]
8002368c:	e1d320f4 	ldrsh	r2, [r3, #4]
80023690:	e51b3010 	ldr	r3, [fp, #-16]
80023694:	e1c321b4 	strh	r2, [r3, #20]
80023698:	e51b300c 	ldr	r3, [fp, #-12]
8002369c:	e1d320f6 	ldrsh	r2, [r3, #6]
800236a0:	e51b3010 	ldr	r3, [fp, #-16]
800236a4:	e1c321b6 	strh	r2, [r3, #22]
800236a8:	e51b300c 	ldr	r3, [fp, #-12]
800236ac:	e5932008 	ldr	r2, [r3, #8]
800236b0:	e51b3010 	ldr	r3, [fp, #-16]
800236b4:	e5832018 	str	r2, [r3, #24]
800236b8:	e51b3010 	ldr	r3, [fp, #-16]
800236bc:	e283001c 	add	r0, r3, #28
800236c0:	e51b300c 	ldr	r3, [fp, #-12]
800236c4:	e283300c 	add	r3, r3, #12
800236c8:	e3a02034 	mov	r2, #52	@ 0x34
800236cc:	e1a01003 	mov	r1, r3
800236d0:	ebfff2bc 	bl	800201c8 <memmove>
800236d4:	e51b0008 	ldr	r0, [fp, #-8]
800236d8:	ebfff537 	bl	80020bbc <brelse>
800236dc:	e51b3010 	ldr	r3, [fp, #-16]
800236e0:	e593300c 	ldr	r3, [r3, #12]
800236e4:	e3832002 	orr	r2, r3, #2
800236e8:	e51b3010 	ldr	r3, [fp, #-16]
800236ec:	e583200c 	str	r2, [r3, #12]
800236f0:	e51b3010 	ldr	r3, [fp, #-16]
800236f4:	e1d331f0 	ldrsh	r3, [r3, #16]
800236f8:	e3530000 	cmp	r3, #0
800236fc:	1a000001 	bne	80023708 <ilock+0x178>
80023700:	e59f0014 	ldr	r0, [pc, #20]	@ 8002371c <ilock+0x18c>
80023704:	ebfff8ec 	bl	80021abc <panic>
80023708:	e1a00000 	nop			@ (mov r0, r0)
8002370c:	e24bd004 	sub	sp, fp, #4
80023710:	e8bd8800 	pop	{fp, pc}
80023714:	80029d00 	.word	0x80029d00
80023718:	800ad8ec 	.word	0x800ad8ec
8002371c:	80029d08 	.word	0x80029d08

80023720 <iunlock>:
80023720:	e92d4800 	push	{fp, lr}
80023724:	e28db004 	add	fp, sp, #4
80023728:	e24dd008 	sub	sp, sp, #8
8002372c:	e50b0008 	str	r0, [fp, #-8]
80023730:	e51b3008 	ldr	r3, [fp, #-8]
80023734:	e3530000 	cmp	r3, #0
80023738:	0a000008 	beq	80023760 <iunlock+0x40>
8002373c:	e51b3008 	ldr	r3, [fp, #-8]
80023740:	e593300c 	ldr	r3, [r3, #12]
80023744:	e2033001 	and	r3, r3, #1
80023748:	e3530000 	cmp	r3, #0
8002374c:	0a000003 	beq	80023760 <iunlock+0x40>
80023750:	e51b3008 	ldr	r3, [fp, #-8]
80023754:	e5933008 	ldr	r3, [r3, #8]
80023758:	e3530000 	cmp	r3, #0
8002375c:	ca000001 	bgt	80023768 <iunlock+0x48>
80023760:	e59f0038 	ldr	r0, [pc, #56]	@ 800237a0 <iunlock+0x80>
80023764:	ebfff8d4 	bl	80021abc <panic>
80023768:	e59f0034 	ldr	r0, [pc, #52]	@ 800237a4 <iunlock+0x84>
8002376c:	eb000be6 	bl	8002670c <acquire>
80023770:	e51b3008 	ldr	r3, [fp, #-8]
80023774:	e593300c 	ldr	r3, [r3, #12]
80023778:	e3c32001 	bic	r2, r3, #1
8002377c:	e51b3008 	ldr	r3, [fp, #-8]
80023780:	e583200c 	str	r2, [r3, #12]
80023784:	e51b0008 	ldr	r0, [fp, #-8]
80023788:	eb000a4c 	bl	800260c0 <wakeup>
8002378c:	e59f0010 	ldr	r0, [pc, #16]	@ 800237a4 <iunlock+0x84>
80023790:	eb000be8 	bl	80026738 <release>
80023794:	e1a00000 	nop			@ (mov r0, r0)
80023798:	e24bd004 	sub	sp, fp, #4
8002379c:	e8bd8800 	pop	{fp, pc}
800237a0:	80029d18 	.word	0x80029d18
800237a4:	800ad8ec 	.word	0x800ad8ec

800237a8 <iput>:
800237a8:	e92d4800 	push	{fp, lr}
800237ac:	e28db004 	add	fp, sp, #4
800237b0:	e24dd008 	sub	sp, sp, #8
800237b4:	e50b0008 	str	r0, [fp, #-8]
800237b8:	e59f00cc 	ldr	r0, [pc, #204]	@ 8002388c <iput+0xe4>
800237bc:	eb000bd2 	bl	8002670c <acquire>
800237c0:	e51b3008 	ldr	r3, [fp, #-8]
800237c4:	e5933008 	ldr	r3, [r3, #8]
800237c8:	e3530001 	cmp	r3, #1
800237cc:	1a000024 	bne	80023864 <iput+0xbc>
800237d0:	e51b3008 	ldr	r3, [fp, #-8]
800237d4:	e593300c 	ldr	r3, [r3, #12]
800237d8:	e2033002 	and	r3, r3, #2
800237dc:	e3530000 	cmp	r3, #0
800237e0:	0a00001f 	beq	80023864 <iput+0xbc>
800237e4:	e51b3008 	ldr	r3, [fp, #-8]
800237e8:	e1d331f6 	ldrsh	r3, [r3, #22]
800237ec:	e3530000 	cmp	r3, #0
800237f0:	1a00001b 	bne	80023864 <iput+0xbc>
800237f4:	e51b3008 	ldr	r3, [fp, #-8]
800237f8:	e593300c 	ldr	r3, [r3, #12]
800237fc:	e2033001 	and	r3, r3, #1
80023800:	e3530000 	cmp	r3, #0
80023804:	0a000001 	beq	80023810 <iput+0x68>
80023808:	e59f0080 	ldr	r0, [pc, #128]	@ 80023890 <iput+0xe8>
8002380c:	ebfff8aa 	bl	80021abc <panic>
80023810:	e51b3008 	ldr	r3, [fp, #-8]
80023814:	e593300c 	ldr	r3, [r3, #12]
80023818:	e3832001 	orr	r2, r3, #1
8002381c:	e51b3008 	ldr	r3, [fp, #-8]
80023820:	e583200c 	str	r2, [r3, #12]
80023824:	e59f0060 	ldr	r0, [pc, #96]	@ 8002388c <iput+0xe4>
80023828:	eb000bc2 	bl	80026738 <release>
8002382c:	e51b0008 	ldr	r0, [fp, #-8]
80023830:	eb00007f 	bl	80023a34 <itrunc>
80023834:	e51b3008 	ldr	r3, [fp, #-8]
80023838:	e3a02000 	mov	r2, #0
8002383c:	e1c321b0 	strh	r2, [r3, #16]
80023840:	e51b0008 	ldr	r0, [fp, #-8]
80023844:	ebfffeb7 	bl	80023328 <iupdate>
80023848:	e59f003c 	ldr	r0, [pc, #60]	@ 8002388c <iput+0xe4>
8002384c:	eb000bae 	bl	8002670c <acquire>
80023850:	e51b3008 	ldr	r3, [fp, #-8]
80023854:	e3a02000 	mov	r2, #0
80023858:	e583200c 	str	r2, [r3, #12]
8002385c:	e51b0008 	ldr	r0, [fp, #-8]
80023860:	eb000a16 	bl	800260c0 <wakeup>
80023864:	e51b3008 	ldr	r3, [fp, #-8]
80023868:	e5933008 	ldr	r3, [r3, #8]
8002386c:	e2432001 	sub	r2, r3, #1
80023870:	e51b3008 	ldr	r3, [fp, #-8]
80023874:	e5832008 	str	r2, [r3, #8]
80023878:	e59f000c 	ldr	r0, [pc, #12]	@ 8002388c <iput+0xe4>
8002387c:	eb000bad 	bl	80026738 <release>
80023880:	e1a00000 	nop			@ (mov r0, r0)
80023884:	e24bd004 	sub	sp, fp, #4
80023888:	e8bd8800 	pop	{fp, pc}
8002388c:	800ad8ec 	.word	0x800ad8ec
80023890:	80029d20 	.word	0x80029d20

80023894 <iunlockput>:
80023894:	e92d4800 	push	{fp, lr}
80023898:	e28db004 	add	fp, sp, #4
8002389c:	e24dd008 	sub	sp, sp, #8
800238a0:	e50b0008 	str	r0, [fp, #-8]
800238a4:	e51b0008 	ldr	r0, [fp, #-8]
800238a8:	ebffff9c 	bl	80023720 <iunlock>
800238ac:	e51b0008 	ldr	r0, [fp, #-8]
800238b0:	ebffffbc 	bl	800237a8 <iput>
800238b4:	e1a00000 	nop			@ (mov r0, r0)
800238b8:	e24bd004 	sub	sp, fp, #4
800238bc:	e8bd8800 	pop	{fp, pc}

800238c0 <bmap>:
800238c0:	e92d4800 	push	{fp, lr}
800238c4:	e28db004 	add	fp, sp, #4
800238c8:	e24dd018 	sub	sp, sp, #24
800238cc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800238d0:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
800238d4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800238d8:	e353000b 	cmp	r3, #11
800238dc:	8a000017 	bhi	80023940 <bmap+0x80>
800238e0:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
800238e4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800238e8:	e2833006 	add	r3, r3, #6
800238ec:	e1a03103 	lsl	r3, r3, #2
800238f0:	e0823003 	add	r3, r2, r3
800238f4:	e5933004 	ldr	r3, [r3, #4]
800238f8:	e50b3008 	str	r3, [fp, #-8]
800238fc:	e51b3008 	ldr	r3, [fp, #-8]
80023900:	e3530000 	cmp	r3, #0
80023904:	1a00000b 	bne	80023938 <bmap+0x78>
80023908:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002390c:	e5933000 	ldr	r3, [r3]
80023910:	e1a00003 	mov	r0, r3
80023914:	ebfffd7e 	bl	80022f14 <balloc>
80023918:	e50b0008 	str	r0, [fp, #-8]
8002391c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023920:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80023924:	e2833006 	add	r3, r3, #6
80023928:	e1a03103 	lsl	r3, r3, #2
8002392c:	e0823003 	add	r3, r2, r3
80023930:	e51b2008 	ldr	r2, [fp, #-8]
80023934:	e5832004 	str	r2, [r3, #4]
80023938:	e51b3008 	ldr	r3, [fp, #-8]
8002393c:	ea000038 	b	80023a24 <bmap+0x164>
80023940:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80023944:	e243300c 	sub	r3, r3, #12
80023948:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
8002394c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80023950:	e353007f 	cmp	r3, #127	@ 0x7f
80023954:	8a000030 	bhi	80023a1c <bmap+0x15c>
80023958:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002395c:	e593304c 	ldr	r3, [r3, #76]	@ 0x4c
80023960:	e50b3008 	str	r3, [fp, #-8]
80023964:	e51b3008 	ldr	r3, [fp, #-8]
80023968:	e3530000 	cmp	r3, #0
8002396c:	1a000007 	bne	80023990 <bmap+0xd0>
80023970:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023974:	e5933000 	ldr	r3, [r3]
80023978:	e1a00003 	mov	r0, r3
8002397c:	ebfffd64 	bl	80022f14 <balloc>
80023980:	e50b0008 	str	r0, [fp, #-8]
80023984:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023988:	e51b2008 	ldr	r2, [fp, #-8]
8002398c:	e583204c 	str	r2, [r3, #76]	@ 0x4c
80023990:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023994:	e5933000 	ldr	r3, [r3]
80023998:	e51b1008 	ldr	r1, [fp, #-8]
8002399c:	e1a00003 	mov	r0, r3
800239a0:	ebfff45b 	bl	80020b14 <bread>
800239a4:	e50b000c 	str	r0, [fp, #-12]
800239a8:	e51b300c 	ldr	r3, [fp, #-12]
800239ac:	e2833018 	add	r3, r3, #24
800239b0:	e50b3010 	str	r3, [fp, #-16]
800239b4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800239b8:	e1a03103 	lsl	r3, r3, #2
800239bc:	e51b2010 	ldr	r2, [fp, #-16]
800239c0:	e0823003 	add	r3, r2, r3
800239c4:	e5933000 	ldr	r3, [r3]
800239c8:	e50b3008 	str	r3, [fp, #-8]
800239cc:	e51b3008 	ldr	r3, [fp, #-8]
800239d0:	e3530000 	cmp	r3, #0
800239d4:	1a00000c 	bne	80023a0c <bmap+0x14c>
800239d8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800239dc:	e5933000 	ldr	r3, [r3]
800239e0:	e1a00003 	mov	r0, r3
800239e4:	ebfffd4a 	bl	80022f14 <balloc>
800239e8:	e50b0008 	str	r0, [fp, #-8]
800239ec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800239f0:	e1a03103 	lsl	r3, r3, #2
800239f4:	e51b2010 	ldr	r2, [fp, #-16]
800239f8:	e0823003 	add	r3, r2, r3
800239fc:	e51b2008 	ldr	r2, [fp, #-8]
80023a00:	e5832000 	str	r2, [r3]
80023a04:	e51b000c 	ldr	r0, [fp, #-12]
80023a08:	eb0003b8 	bl	800248f0 <log_write>
80023a0c:	e51b000c 	ldr	r0, [fp, #-12]
80023a10:	ebfff469 	bl	80020bbc <brelse>
80023a14:	e51b3008 	ldr	r3, [fp, #-8]
80023a18:	ea000001 	b	80023a24 <bmap+0x164>
80023a1c:	e59f000c 	ldr	r0, [pc, #12]	@ 80023a30 <bmap+0x170>
80023a20:	ebfff825 	bl	80021abc <panic>
80023a24:	e1a00003 	mov	r0, r3
80023a28:	e24bd004 	sub	sp, fp, #4
80023a2c:	e8bd8800 	pop	{fp, pc}
80023a30:	80029d2c 	.word	0x80029d2c

80023a34 <itrunc>:
80023a34:	e92d4800 	push	{fp, lr}
80023a38:	e28db004 	add	fp, sp, #4
80023a3c:	e24dd018 	sub	sp, sp, #24
80023a40:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80023a44:	e3a03000 	mov	r3, #0
80023a48:	e50b3008 	str	r3, [fp, #-8]
80023a4c:	ea00001c 	b	80023ac4 <itrunc+0x90>
80023a50:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023a54:	e51b3008 	ldr	r3, [fp, #-8]
80023a58:	e2833006 	add	r3, r3, #6
80023a5c:	e1a03103 	lsl	r3, r3, #2
80023a60:	e0823003 	add	r3, r2, r3
80023a64:	e5933004 	ldr	r3, [r3, #4]
80023a68:	e3530000 	cmp	r3, #0
80023a6c:	0a000011 	beq	80023ab8 <itrunc+0x84>
80023a70:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023a74:	e5933000 	ldr	r3, [r3]
80023a78:	e1a00003 	mov	r0, r3
80023a7c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023a80:	e51b3008 	ldr	r3, [fp, #-8]
80023a84:	e2833006 	add	r3, r3, #6
80023a88:	e1a03103 	lsl	r3, r3, #2
80023a8c:	e0823003 	add	r3, r2, r3
80023a90:	e5933004 	ldr	r3, [r3, #4]
80023a94:	e1a01003 	mov	r1, r3
80023a98:	ebfffd8f 	bl	800230dc <bfree>
80023a9c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023aa0:	e51b3008 	ldr	r3, [fp, #-8]
80023aa4:	e2833006 	add	r3, r3, #6
80023aa8:	e1a03103 	lsl	r3, r3, #2
80023aac:	e0823003 	add	r3, r2, r3
80023ab0:	e3a02000 	mov	r2, #0
80023ab4:	e5832004 	str	r2, [r3, #4]
80023ab8:	e51b3008 	ldr	r3, [fp, #-8]
80023abc:	e2833001 	add	r3, r3, #1
80023ac0:	e50b3008 	str	r3, [fp, #-8]
80023ac4:	e51b3008 	ldr	r3, [fp, #-8]
80023ac8:	e353000b 	cmp	r3, #11
80023acc:	daffffdf 	ble	80023a50 <itrunc+0x1c>
80023ad0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023ad4:	e593304c 	ldr	r3, [r3, #76]	@ 0x4c
80023ad8:	e3530000 	cmp	r3, #0
80023adc:	0a000031 	beq	80023ba8 <itrunc+0x174>
80023ae0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023ae4:	e5932000 	ldr	r2, [r3]
80023ae8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023aec:	e593304c 	ldr	r3, [r3, #76]	@ 0x4c
80023af0:	e1a01003 	mov	r1, r3
80023af4:	e1a00002 	mov	r0, r2
80023af8:	ebfff405 	bl	80020b14 <bread>
80023afc:	e50b0010 	str	r0, [fp, #-16]
80023b00:	e51b3010 	ldr	r3, [fp, #-16]
80023b04:	e2833018 	add	r3, r3, #24
80023b08:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80023b0c:	e3a03000 	mov	r3, #0
80023b10:	e50b300c 	str	r3, [fp, #-12]
80023b14:	ea000013 	b	80023b68 <itrunc+0x134>
80023b18:	e51b300c 	ldr	r3, [fp, #-12]
80023b1c:	e1a03103 	lsl	r3, r3, #2
80023b20:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80023b24:	e0823003 	add	r3, r2, r3
80023b28:	e5933000 	ldr	r3, [r3]
80023b2c:	e3530000 	cmp	r3, #0
80023b30:	0a000009 	beq	80023b5c <itrunc+0x128>
80023b34:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023b38:	e5933000 	ldr	r3, [r3]
80023b3c:	e1a00003 	mov	r0, r3
80023b40:	e51b300c 	ldr	r3, [fp, #-12]
80023b44:	e1a03103 	lsl	r3, r3, #2
80023b48:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80023b4c:	e0823003 	add	r3, r2, r3
80023b50:	e5933000 	ldr	r3, [r3]
80023b54:	e1a01003 	mov	r1, r3
80023b58:	ebfffd5f 	bl	800230dc <bfree>
80023b5c:	e51b300c 	ldr	r3, [fp, #-12]
80023b60:	e2833001 	add	r3, r3, #1
80023b64:	e50b300c 	str	r3, [fp, #-12]
80023b68:	e51b300c 	ldr	r3, [fp, #-12]
80023b6c:	e353007f 	cmp	r3, #127	@ 0x7f
80023b70:	9affffe8 	bls	80023b18 <itrunc+0xe4>
80023b74:	e51b0010 	ldr	r0, [fp, #-16]
80023b78:	ebfff40f 	bl	80020bbc <brelse>
80023b7c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023b80:	e5933000 	ldr	r3, [r3]
80023b84:	e1a02003 	mov	r2, r3
80023b88:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023b8c:	e593304c 	ldr	r3, [r3, #76]	@ 0x4c
80023b90:	e1a01003 	mov	r1, r3
80023b94:	e1a00002 	mov	r0, r2
80023b98:	ebfffd4f 	bl	800230dc <bfree>
80023b9c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023ba0:	e3a02000 	mov	r2, #0
80023ba4:	e583204c 	str	r2, [r3, #76]	@ 0x4c
80023ba8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023bac:	e3a02000 	mov	r2, #0
80023bb0:	e5832018 	str	r2, [r3, #24]
80023bb4:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80023bb8:	ebfffdda 	bl	80023328 <iupdate>
80023bbc:	e1a00000 	nop			@ (mov r0, r0)
80023bc0:	e24bd004 	sub	sp, fp, #4
80023bc4:	e8bd8800 	pop	{fp, pc}

80023bc8 <stati>:
80023bc8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80023bcc:	e28db000 	add	fp, sp, #0
80023bd0:	e24dd00c 	sub	sp, sp, #12
80023bd4:	e50b0008 	str	r0, [fp, #-8]
80023bd8:	e50b100c 	str	r1, [fp, #-12]
80023bdc:	e51b3008 	ldr	r3, [fp, #-8]
80023be0:	e5933000 	ldr	r3, [r3]
80023be4:	e1a02003 	mov	r2, r3
80023be8:	e51b300c 	ldr	r3, [fp, #-12]
80023bec:	e5832004 	str	r2, [r3, #4]
80023bf0:	e51b3008 	ldr	r3, [fp, #-8]
80023bf4:	e5932004 	ldr	r2, [r3, #4]
80023bf8:	e51b300c 	ldr	r3, [fp, #-12]
80023bfc:	e5832008 	str	r2, [r3, #8]
80023c00:	e51b3008 	ldr	r3, [fp, #-8]
80023c04:	e1d321f0 	ldrsh	r2, [r3, #16]
80023c08:	e51b300c 	ldr	r3, [fp, #-12]
80023c0c:	e1c320b0 	strh	r2, [r3]
80023c10:	e51b3008 	ldr	r3, [fp, #-8]
80023c14:	e1d321f6 	ldrsh	r2, [r3, #22]
80023c18:	e51b300c 	ldr	r3, [fp, #-12]
80023c1c:	e1c320bc 	strh	r2, [r3, #12]
80023c20:	e51b3008 	ldr	r3, [fp, #-8]
80023c24:	e5932018 	ldr	r2, [r3, #24]
80023c28:	e51b300c 	ldr	r3, [fp, #-12]
80023c2c:	e5832010 	str	r2, [r3, #16]
80023c30:	e1a00000 	nop			@ (mov r0, r0)
80023c34:	e28bd000 	add	sp, fp, #0
80023c38:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80023c3c:	e12fff1e 	bx	lr

80023c40 <readi>:
80023c40:	e92d4810 	push	{r4, fp, lr}
80023c44:	e28db008 	add	fp, sp, #8
80023c48:	e24dd024 	sub	sp, sp, #36	@ 0x24
80023c4c:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80023c50:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80023c54:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
80023c58:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
80023c5c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023c60:	e1d331f0 	ldrsh	r3, [r3, #16]
80023c64:	e3530003 	cmp	r3, #3
80023c68:	1a00001b 	bne	80023cdc <readi+0x9c>
80023c6c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023c70:	e1d331f2 	ldrsh	r3, [r3, #18]
80023c74:	e3530000 	cmp	r3, #0
80023c78:	ba00000a 	blt	80023ca8 <readi+0x68>
80023c7c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023c80:	e1d331f2 	ldrsh	r3, [r3, #18]
80023c84:	e3530009 	cmp	r3, #9
80023c88:	ca000006 	bgt	80023ca8 <readi+0x68>
80023c8c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023c90:	e1d331f2 	ldrsh	r3, [r3, #18]
80023c94:	e1a02003 	mov	r2, r3
80023c98:	e59f3188 	ldr	r3, [pc, #392]	@ 80023e28 <readi+0x1e8>
80023c9c:	e7933182 	ldr	r3, [r3, r2, lsl #3]
80023ca0:	e3530000 	cmp	r3, #0
80023ca4:	1a000001 	bne	80023cb0 <readi+0x70>
80023ca8:	e3e03000 	mvn	r3, #0
80023cac:	ea00005a 	b	80023e1c <readi+0x1dc>
80023cb0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023cb4:	e1d331f2 	ldrsh	r3, [r3, #18]
80023cb8:	e1a02003 	mov	r2, r3
80023cbc:	e59f3164 	ldr	r3, [pc, #356]	@ 80023e28 <readi+0x1e8>
80023cc0:	e7933182 	ldr	r3, [r3, r2, lsl #3]
80023cc4:	e51b202c 	ldr	r2, [fp, #-44]	@ 0xffffffd4
80023cc8:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80023ccc:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023cd0:	e12fff33 	blx	r3
80023cd4:	e1a03000 	mov	r3, r0
80023cd8:	ea00004f 	b	80023e1c <readi+0x1dc>
80023cdc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023ce0:	e5933018 	ldr	r3, [r3, #24]
80023ce4:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023ce8:	e1520003 	cmp	r2, r3
80023cec:	8a000005 	bhi	80023d08 <readi+0xc8>
80023cf0:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023cf4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023cf8:	e0823003 	add	r3, r2, r3
80023cfc:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023d00:	e1520003 	cmp	r2, r3
80023d04:	9a000001 	bls	80023d10 <readi+0xd0>
80023d08:	e3e03000 	mvn	r3, #0
80023d0c:	ea000042 	b	80023e1c <readi+0x1dc>
80023d10:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023d14:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023d18:	e0822003 	add	r2, r2, r3
80023d1c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023d20:	e5933018 	ldr	r3, [r3, #24]
80023d24:	e1520003 	cmp	r2, r3
80023d28:	9a000004 	bls	80023d40 <readi+0x100>
80023d2c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023d30:	e5932018 	ldr	r2, [r3, #24]
80023d34:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023d38:	e0423003 	sub	r3, r2, r3
80023d3c:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
80023d40:	e3a03000 	mov	r3, #0
80023d44:	e50b3010 	str	r3, [fp, #-16]
80023d48:	ea00002e 	b	80023e08 <readi+0x1c8>
80023d4c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023d50:	e5934000 	ldr	r4, [r3]
80023d54:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023d58:	e1a034a3 	lsr	r3, r3, #9
80023d5c:	e1a01003 	mov	r1, r3
80023d60:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023d64:	ebfffed5 	bl	800238c0 <bmap>
80023d68:	e1a03000 	mov	r3, r0
80023d6c:	e1a01003 	mov	r1, r3
80023d70:	e1a00004 	mov	r0, r4
80023d74:	ebfff366 	bl	80020b14 <bread>
80023d78:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80023d7c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023d80:	e1a03b83 	lsl	r3, r3, #23
80023d84:	e1a03ba3 	lsr	r3, r3, #23
80023d88:	e2632c02 	rsb	r2, r3, #512	@ 0x200
80023d8c:	e51b102c 	ldr	r1, [fp, #-44]	@ 0xffffffd4
80023d90:	e51b3010 	ldr	r3, [fp, #-16]
80023d94:	e0413003 	sub	r3, r1, r3
80023d98:	e1520003 	cmp	r2, r3
80023d9c:	31a03002 	movcc	r3, r2
80023da0:	21a03003 	movcs	r3, r3
80023da4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80023da8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80023dac:	e2832018 	add	r2, r3, #24
80023db0:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023db4:	e1a03b83 	lsl	r3, r3, #23
80023db8:	e1a03ba3 	lsr	r3, r3, #23
80023dbc:	e0823003 	add	r3, r2, r3
80023dc0:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023dc4:	e1a01003 	mov	r1, r3
80023dc8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
80023dcc:	ebfff0fd 	bl	800201c8 <memmove>
80023dd0:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80023dd4:	ebfff378 	bl	80020bbc <brelse>
80023dd8:	e51b2010 	ldr	r2, [fp, #-16]
80023ddc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023de0:	e0823003 	add	r3, r2, r3
80023de4:	e50b3010 	str	r3, [fp, #-16]
80023de8:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023dec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023df0:	e0823003 	add	r3, r2, r3
80023df4:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
80023df8:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80023dfc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023e00:	e0823003 	add	r3, r2, r3
80023e04:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80023e08:	e51b2010 	ldr	r2, [fp, #-16]
80023e0c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023e10:	e1520003 	cmp	r2, r3
80023e14:	3affffcc 	bcc	80023d4c <readi+0x10c>
80023e18:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023e1c:	e1a00003 	mov	r0, r3
80023e20:	e24bd008 	sub	sp, fp, #8
80023e24:	e8bd8810 	pop	{r4, fp, pc}
80023e28:	800acf08 	.word	0x800acf08

80023e2c <writei>:
80023e2c:	e92d4810 	push	{r4, fp, lr}
80023e30:	e28db008 	add	fp, sp, #8
80023e34:	e24dd024 	sub	sp, sp, #36	@ 0x24
80023e38:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80023e3c:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80023e40:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
80023e44:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
80023e48:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023e4c:	e1d331f0 	ldrsh	r3, [r3, #16]
80023e50:	e3530003 	cmp	r3, #3
80023e54:	1a00001d 	bne	80023ed0 <writei+0xa4>
80023e58:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023e5c:	e1d331f2 	ldrsh	r3, [r3, #18]
80023e60:	e3530000 	cmp	r3, #0
80023e64:	ba00000b 	blt	80023e98 <writei+0x6c>
80023e68:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023e6c:	e1d331f2 	ldrsh	r3, [r3, #18]
80023e70:	e3530009 	cmp	r3, #9
80023e74:	ca000007 	bgt	80023e98 <writei+0x6c>
80023e78:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023e7c:	e1d331f2 	ldrsh	r3, [r3, #18]
80023e80:	e59f21bc 	ldr	r2, [pc, #444]	@ 80024044 <writei+0x218>
80023e84:	e1a03183 	lsl	r3, r3, #3
80023e88:	e0823003 	add	r3, r2, r3
80023e8c:	e5933004 	ldr	r3, [r3, #4]
80023e90:	e3530000 	cmp	r3, #0
80023e94:	1a000001 	bne	80023ea0 <writei+0x74>
80023e98:	e3e03000 	mvn	r3, #0
80023e9c:	ea000065 	b	80024038 <writei+0x20c>
80023ea0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023ea4:	e1d331f2 	ldrsh	r3, [r3, #18]
80023ea8:	e59f2194 	ldr	r2, [pc, #404]	@ 80024044 <writei+0x218>
80023eac:	e1a03183 	lsl	r3, r3, #3
80023eb0:	e0823003 	add	r3, r2, r3
80023eb4:	e5933004 	ldr	r3, [r3, #4]
80023eb8:	e51b202c 	ldr	r2, [fp, #-44]	@ 0xffffffd4
80023ebc:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80023ec0:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023ec4:	e12fff33 	blx	r3
80023ec8:	e1a03000 	mov	r3, r0
80023ecc:	ea000059 	b	80024038 <writei+0x20c>
80023ed0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023ed4:	e5933018 	ldr	r3, [r3, #24]
80023ed8:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023edc:	e1520003 	cmp	r2, r3
80023ee0:	8a000005 	bhi	80023efc <writei+0xd0>
80023ee4:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023ee8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023eec:	e0823003 	add	r3, r2, r3
80023ef0:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023ef4:	e1520003 	cmp	r2, r3
80023ef8:	9a000001 	bls	80023f04 <writei+0xd8>
80023efc:	e3e03000 	mvn	r3, #0
80023f00:	ea00004c 	b	80024038 <writei+0x20c>
80023f04:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023f08:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023f0c:	e0823003 	add	r3, r2, r3
80023f10:	e3530b46 	cmp	r3, #71680	@ 0x11800
80023f14:	9a000001 	bls	80023f20 <writei+0xf4>
80023f18:	e3e03000 	mvn	r3, #0
80023f1c:	ea000045 	b	80024038 <writei+0x20c>
80023f20:	e3a03000 	mov	r3, #0
80023f24:	e50b3010 	str	r3, [fp, #-16]
80023f28:	ea000030 	b	80023ff0 <writei+0x1c4>
80023f2c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023f30:	e5934000 	ldr	r4, [r3]
80023f34:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023f38:	e1a034a3 	lsr	r3, r3, #9
80023f3c:	e1a01003 	mov	r1, r3
80023f40:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023f44:	ebfffe5d 	bl	800238c0 <bmap>
80023f48:	e1a03000 	mov	r3, r0
80023f4c:	e1a01003 	mov	r1, r3
80023f50:	e1a00004 	mov	r0, r4
80023f54:	ebfff2ee 	bl	80020b14 <bread>
80023f58:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80023f5c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023f60:	e1a03b83 	lsl	r3, r3, #23
80023f64:	e1a03ba3 	lsr	r3, r3, #23
80023f68:	e2632c02 	rsb	r2, r3, #512	@ 0x200
80023f6c:	e51b102c 	ldr	r1, [fp, #-44]	@ 0xffffffd4
80023f70:	e51b3010 	ldr	r3, [fp, #-16]
80023f74:	e0413003 	sub	r3, r1, r3
80023f78:	e1520003 	cmp	r2, r3
80023f7c:	31a03002 	movcc	r3, r2
80023f80:	21a03003 	movcs	r3, r3
80023f84:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80023f88:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80023f8c:	e2832018 	add	r2, r3, #24
80023f90:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023f94:	e1a03b83 	lsl	r3, r3, #23
80023f98:	e1a03ba3 	lsr	r3, r3, #23
80023f9c:	e0823003 	add	r3, r2, r3
80023fa0:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023fa4:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80023fa8:	e1a00003 	mov	r0, r3
80023fac:	ebfff085 	bl	800201c8 <memmove>
80023fb0:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80023fb4:	eb00024d 	bl	800248f0 <log_write>
80023fb8:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80023fbc:	ebfff2fe 	bl	80020bbc <brelse>
80023fc0:	e51b2010 	ldr	r2, [fp, #-16]
80023fc4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023fc8:	e0823003 	add	r3, r2, r3
80023fcc:	e50b3010 	str	r3, [fp, #-16]
80023fd0:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023fd4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023fd8:	e0823003 	add	r3, r2, r3
80023fdc:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
80023fe0:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80023fe4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023fe8:	e0823003 	add	r3, r2, r3
80023fec:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80023ff0:	e51b2010 	ldr	r2, [fp, #-16]
80023ff4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023ff8:	e1520003 	cmp	r2, r3
80023ffc:	3affffca 	bcc	80023f2c <writei+0x100>
80024000:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80024004:	e3530000 	cmp	r3, #0
80024008:	0a000009 	beq	80024034 <writei+0x208>
8002400c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80024010:	e5933018 	ldr	r3, [r3, #24]
80024014:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80024018:	e1520003 	cmp	r2, r3
8002401c:	9a000004 	bls	80024034 <writei+0x208>
80024020:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80024024:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80024028:	e5832018 	str	r2, [r3, #24]
8002402c:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80024030:	ebfffcbc 	bl	80023328 <iupdate>
80024034:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80024038:	e1a00003 	mov	r0, r3
8002403c:	e24bd008 	sub	sp, fp, #8
80024040:	e8bd8810 	pop	{r4, fp, pc}
80024044:	800acf08 	.word	0x800acf08

80024048 <namecmp>:
80024048:	e92d4800 	push	{fp, lr}
8002404c:	e28db004 	add	fp, sp, #4
80024050:	e24dd008 	sub	sp, sp, #8
80024054:	e50b0008 	str	r0, [fp, #-8]
80024058:	e50b100c 	str	r1, [fp, #-12]
8002405c:	e3a0200e 	mov	r2, #14
80024060:	e51b100c 	ldr	r1, [fp, #-12]
80024064:	e51b0008 	ldr	r0, [fp, #-8]
80024068:	ebfff0a3 	bl	800202fc <strncmp>
8002406c:	e1a03000 	mov	r3, r0
80024070:	e1a00003 	mov	r0, r3
80024074:	e24bd004 	sub	sp, fp, #4
80024078:	e8bd8800 	pop	{fp, pc}

8002407c <dirlookup>:
8002407c:	e92d4800 	push	{fp, lr}
80024080:	e28db004 	add	fp, sp, #4
80024084:	e24dd028 	sub	sp, sp, #40	@ 0x28
80024088:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
8002408c:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80024090:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
80024094:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80024098:	e1d331f0 	ldrsh	r3, [r3, #16]
8002409c:	e3530001 	cmp	r3, #1
800240a0:	0a000001 	beq	800240ac <dirlookup+0x30>
800240a4:	e59f00d0 	ldr	r0, [pc, #208]	@ 8002417c <dirlookup+0x100>
800240a8:	ebfff683 	bl	80021abc <panic>
800240ac:	e3a03000 	mov	r3, #0
800240b0:	e50b3008 	str	r3, [fp, #-8]
800240b4:	ea000027 	b	80024158 <dirlookup+0xdc>
800240b8:	e24b101c 	sub	r1, fp, #28
800240bc:	e3a03010 	mov	r3, #16
800240c0:	e51b2008 	ldr	r2, [fp, #-8]
800240c4:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
800240c8:	ebfffedc 	bl	80023c40 <readi>
800240cc:	e1a03000 	mov	r3, r0
800240d0:	e3530010 	cmp	r3, #16
800240d4:	0a000001 	beq	800240e0 <dirlookup+0x64>
800240d8:	e59f00a0 	ldr	r0, [pc, #160]	@ 80024180 <dirlookup+0x104>
800240dc:	ebfff676 	bl	80021abc <panic>
800240e0:	e15b31bc 	ldrh	r3, [fp, #-28]	@ 0xffffffe4
800240e4:	e3530000 	cmp	r3, #0
800240e8:	0a000016 	beq	80024148 <dirlookup+0xcc>
800240ec:	e24b301c 	sub	r3, fp, #28
800240f0:	e2833002 	add	r3, r3, #2
800240f4:	e1a01003 	mov	r1, r3
800240f8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
800240fc:	ebffffd1 	bl	80024048 <namecmp>
80024100:	e1a03000 	mov	r3, r0
80024104:	e3530000 	cmp	r3, #0
80024108:	1a00000f 	bne	8002414c <dirlookup+0xd0>
8002410c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80024110:	e3530000 	cmp	r3, #0
80024114:	0a000002 	beq	80024124 <dirlookup+0xa8>
80024118:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
8002411c:	e51b2008 	ldr	r2, [fp, #-8]
80024120:	e5832000 	str	r2, [r3]
80024124:	e15b31bc 	ldrh	r3, [fp, #-28]	@ 0xffffffe4
80024128:	e50b300c 	str	r3, [fp, #-12]
8002412c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80024130:	e5933000 	ldr	r3, [r3]
80024134:	e51b100c 	ldr	r1, [fp, #-12]
80024138:	e1a00003 	mov	r0, r3
8002413c:	ebfffcb1 	bl	80023408 <iget>
80024140:	e1a03000 	mov	r3, r0
80024144:	ea000009 	b	80024170 <dirlookup+0xf4>
80024148:	e1a00000 	nop			@ (mov r0, r0)
8002414c:	e51b3008 	ldr	r3, [fp, #-8]
80024150:	e2833010 	add	r3, r3, #16
80024154:	e50b3008 	str	r3, [fp, #-8]
80024158:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002415c:	e5933018 	ldr	r3, [r3, #24]
80024160:	e51b2008 	ldr	r2, [fp, #-8]
80024164:	e1520003 	cmp	r2, r3
80024168:	3affffd2 	bcc	800240b8 <dirlookup+0x3c>
8002416c:	e3a03000 	mov	r3, #0
80024170:	e1a00003 	mov	r0, r3
80024174:	e24bd004 	sub	sp, fp, #4
80024178:	e8bd8800 	pop	{fp, pc}
8002417c:	80029d40 	.word	0x80029d40
80024180:	80029d54 	.word	0x80029d54

80024184 <dirlink>:
80024184:	e92d4800 	push	{fp, lr}
80024188:	e28db004 	add	fp, sp, #4
8002418c:	e24dd028 	sub	sp, sp, #40	@ 0x28
80024190:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80024194:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80024198:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
8002419c:	e3a02000 	mov	r2, #0
800241a0:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
800241a4:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
800241a8:	ebffffb3 	bl	8002407c <dirlookup>
800241ac:	e50b000c 	str	r0, [fp, #-12]
800241b0:	e51b300c 	ldr	r3, [fp, #-12]
800241b4:	e3530000 	cmp	r3, #0
800241b8:	0a000003 	beq	800241cc <dirlink+0x48>
800241bc:	e51b000c 	ldr	r0, [fp, #-12]
800241c0:	ebfffd78 	bl	800237a8 <iput>
800241c4:	e3e03000 	mvn	r3, #0
800241c8:	ea00002d 	b	80024284 <dirlink+0x100>
800241cc:	e3a03000 	mov	r3, #0
800241d0:	e50b3008 	str	r3, [fp, #-8]
800241d4:	ea00000f 	b	80024218 <dirlink+0x94>
800241d8:	e51b2008 	ldr	r2, [fp, #-8]
800241dc:	e24b101c 	sub	r1, fp, #28
800241e0:	e3a03010 	mov	r3, #16
800241e4:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
800241e8:	ebfffe94 	bl	80023c40 <readi>
800241ec:	e1a03000 	mov	r3, r0
800241f0:	e3530010 	cmp	r3, #16
800241f4:	0a000001 	beq	80024200 <dirlink+0x7c>
800241f8:	e59f0090 	ldr	r0, [pc, #144]	@ 80024290 <dirlink+0x10c>
800241fc:	ebfff62e 	bl	80021abc <panic>
80024200:	e15b31bc 	ldrh	r3, [fp, #-28]	@ 0xffffffe4
80024204:	e3530000 	cmp	r3, #0
80024208:	0a000008 	beq	80024230 <dirlink+0xac>
8002420c:	e51b3008 	ldr	r3, [fp, #-8]
80024210:	e2833010 	add	r3, r3, #16
80024214:	e50b3008 	str	r3, [fp, #-8]
80024218:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002421c:	e5932018 	ldr	r2, [r3, #24]
80024220:	e51b3008 	ldr	r3, [fp, #-8]
80024224:	e1520003 	cmp	r2, r3
80024228:	8affffea 	bhi	800241d8 <dirlink+0x54>
8002422c:	ea000000 	b	80024234 <dirlink+0xb0>
80024230:	e1a00000 	nop			@ (mov r0, r0)
80024234:	e24b301c 	sub	r3, fp, #28
80024238:	e2833002 	add	r3, r3, #2
8002423c:	e3a0200e 	mov	r2, #14
80024240:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80024244:	e1a00003 	mov	r0, r3
80024248:	ebfff057 	bl	800203ac <strncpy>
8002424c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80024250:	e6ff3073 	uxth	r3, r3
80024254:	e14b31bc 	strh	r3, [fp, #-28]	@ 0xffffffe4
80024258:	e51b2008 	ldr	r2, [fp, #-8]
8002425c:	e24b101c 	sub	r1, fp, #28
80024260:	e3a03010 	mov	r3, #16
80024264:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80024268:	ebfffeef 	bl	80023e2c <writei>
8002426c:	e1a03000 	mov	r3, r0
80024270:	e3530010 	cmp	r3, #16
80024274:	0a000001 	beq	80024280 <dirlink+0xfc>
80024278:	e59f0014 	ldr	r0, [pc, #20]	@ 80024294 <dirlink+0x110>
8002427c:	ebfff60e 	bl	80021abc <panic>
80024280:	e3a03000 	mov	r3, #0
80024284:	e1a00003 	mov	r0, r3
80024288:	e24bd004 	sub	sp, fp, #4
8002428c:	e8bd8800 	pop	{fp, pc}
80024290:	80029d54 	.word	0x80029d54
80024294:	80029d64 	.word	0x80029d64

80024298 <skipelem>:
80024298:	e92d4800 	push	{fp, lr}
8002429c:	e28db004 	add	fp, sp, #4
800242a0:	e24dd010 	sub	sp, sp, #16
800242a4:	e50b0010 	str	r0, [fp, #-16]
800242a8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800242ac:	ea000002 	b	800242bc <skipelem+0x24>
800242b0:	e51b3010 	ldr	r3, [fp, #-16]
800242b4:	e2833001 	add	r3, r3, #1
800242b8:	e50b3010 	str	r3, [fp, #-16]
800242bc:	e51b3010 	ldr	r3, [fp, #-16]
800242c0:	e5d33000 	ldrb	r3, [r3]
800242c4:	e353002f 	cmp	r3, #47	@ 0x2f
800242c8:	0afffff8 	beq	800242b0 <skipelem+0x18>
800242cc:	e51b3010 	ldr	r3, [fp, #-16]
800242d0:	e5d33000 	ldrb	r3, [r3]
800242d4:	e3530000 	cmp	r3, #0
800242d8:	1a000001 	bne	800242e4 <skipelem+0x4c>
800242dc:	e3a03000 	mov	r3, #0
800242e0:	ea00002c 	b	80024398 <skipelem+0x100>
800242e4:	e51b3010 	ldr	r3, [fp, #-16]
800242e8:	e50b3008 	str	r3, [fp, #-8]
800242ec:	ea000002 	b	800242fc <skipelem+0x64>
800242f0:	e51b3010 	ldr	r3, [fp, #-16]
800242f4:	e2833001 	add	r3, r3, #1
800242f8:	e50b3010 	str	r3, [fp, #-16]
800242fc:	e51b3010 	ldr	r3, [fp, #-16]
80024300:	e5d33000 	ldrb	r3, [r3]
80024304:	e353002f 	cmp	r3, #47	@ 0x2f
80024308:	0a000003 	beq	8002431c <skipelem+0x84>
8002430c:	e51b3010 	ldr	r3, [fp, #-16]
80024310:	e5d33000 	ldrb	r3, [r3]
80024314:	e3530000 	cmp	r3, #0
80024318:	1afffff4 	bne	800242f0 <skipelem+0x58>
8002431c:	e51b2010 	ldr	r2, [fp, #-16]
80024320:	e51b3008 	ldr	r3, [fp, #-8]
80024324:	e0423003 	sub	r3, r2, r3
80024328:	e50b300c 	str	r3, [fp, #-12]
8002432c:	e51b300c 	ldr	r3, [fp, #-12]
80024330:	e353000d 	cmp	r3, #13
80024334:	da000004 	ble	8002434c <skipelem+0xb4>
80024338:	e3a0200e 	mov	r2, #14
8002433c:	e51b1008 	ldr	r1, [fp, #-8]
80024340:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80024344:	ebffef9f 	bl	800201c8 <memmove>
80024348:	ea00000d 	b	80024384 <skipelem+0xec>
8002434c:	e51b300c 	ldr	r3, [fp, #-12]
80024350:	e1a02003 	mov	r2, r3
80024354:	e51b1008 	ldr	r1, [fp, #-8]
80024358:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
8002435c:	ebffef99 	bl	800201c8 <memmove>
80024360:	e51b300c 	ldr	r3, [fp, #-12]
80024364:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80024368:	e0823003 	add	r3, r2, r3
8002436c:	e3a02000 	mov	r2, #0
80024370:	e5c32000 	strb	r2, [r3]
80024374:	ea000002 	b	80024384 <skipelem+0xec>
80024378:	e51b3010 	ldr	r3, [fp, #-16]
8002437c:	e2833001 	add	r3, r3, #1
80024380:	e50b3010 	str	r3, [fp, #-16]
80024384:	e51b3010 	ldr	r3, [fp, #-16]
80024388:	e5d33000 	ldrb	r3, [r3]
8002438c:	e353002f 	cmp	r3, #47	@ 0x2f
80024390:	0afffff8 	beq	80024378 <skipelem+0xe0>
80024394:	e51b3010 	ldr	r3, [fp, #-16]
80024398:	e1a00003 	mov	r0, r3
8002439c:	e24bd004 	sub	sp, fp, #4
800243a0:	e8bd8800 	pop	{fp, pc}

800243a4 <namex>:
800243a4:	e92d4800 	push	{fp, lr}
800243a8:	e28db004 	add	fp, sp, #4
800243ac:	e24dd018 	sub	sp, sp, #24
800243b0:	e50b0010 	str	r0, [fp, #-16]
800243b4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800243b8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800243bc:	e51b3010 	ldr	r3, [fp, #-16]
800243c0:	e5d33000 	ldrb	r3, [r3]
800243c4:	e353002f 	cmp	r3, #47	@ 0x2f
800243c8:	1a000004 	bne	800243e0 <namex+0x3c>
800243cc:	e3a01001 	mov	r1, #1
800243d0:	e3a00001 	mov	r0, #1
800243d4:	ebfffc0b 	bl	80023408 <iget>
800243d8:	e50b0008 	str	r0, [fp, #-8]
800243dc:	ea00002b 	b	80024490 <namex+0xec>
800243e0:	e59f30f0 	ldr	r3, [pc, #240]	@ 800244d8 <namex+0x134>
800243e4:	e5933000 	ldr	r3, [r3]
800243e8:	e5933074 	ldr	r3, [r3, #116]	@ 0x74
800243ec:	e1a00003 	mov	r0, r3
800243f0:	ebfffc54 	bl	80023548 <idup>
800243f4:	e50b0008 	str	r0, [fp, #-8]
800243f8:	ea000024 	b	80024490 <namex+0xec>
800243fc:	e51b0008 	ldr	r0, [fp, #-8]
80024400:	ebfffc62 	bl	80023590 <ilock>
80024404:	e51b3008 	ldr	r3, [fp, #-8]
80024408:	e1d331f0 	ldrsh	r3, [r3, #16]
8002440c:	e3530001 	cmp	r3, #1
80024410:	0a000003 	beq	80024424 <namex+0x80>
80024414:	e51b0008 	ldr	r0, [fp, #-8]
80024418:	ebfffd1d 	bl	80023894 <iunlockput>
8002441c:	e3a03000 	mov	r3, #0
80024420:	ea000029 	b	800244cc <namex+0x128>
80024424:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024428:	e3530000 	cmp	r3, #0
8002442c:	0a000007 	beq	80024450 <namex+0xac>
80024430:	e51b3010 	ldr	r3, [fp, #-16]
80024434:	e5d33000 	ldrb	r3, [r3]
80024438:	e3530000 	cmp	r3, #0
8002443c:	1a000003 	bne	80024450 <namex+0xac>
80024440:	e51b0008 	ldr	r0, [fp, #-8]
80024444:	ebfffcb5 	bl	80023720 <iunlock>
80024448:	e51b3008 	ldr	r3, [fp, #-8]
8002444c:	ea00001e 	b	800244cc <namex+0x128>
80024450:	e3a02000 	mov	r2, #0
80024454:	e51b1018 	ldr	r1, [fp, #-24]	@ 0xffffffe8
80024458:	e51b0008 	ldr	r0, [fp, #-8]
8002445c:	ebffff06 	bl	8002407c <dirlookup>
80024460:	e50b000c 	str	r0, [fp, #-12]
80024464:	e51b300c 	ldr	r3, [fp, #-12]
80024468:	e3530000 	cmp	r3, #0
8002446c:	1a000003 	bne	80024480 <namex+0xdc>
80024470:	e51b0008 	ldr	r0, [fp, #-8]
80024474:	ebfffd06 	bl	80023894 <iunlockput>
80024478:	e3a03000 	mov	r3, #0
8002447c:	ea000012 	b	800244cc <namex+0x128>
80024480:	e51b0008 	ldr	r0, [fp, #-8]
80024484:	ebfffd02 	bl	80023894 <iunlockput>
80024488:	e51b300c 	ldr	r3, [fp, #-12]
8002448c:	e50b3008 	str	r3, [fp, #-8]
80024490:	e51b1018 	ldr	r1, [fp, #-24]	@ 0xffffffe8
80024494:	e51b0010 	ldr	r0, [fp, #-16]
80024498:	ebffff7e 	bl	80024298 <skipelem>
8002449c:	e50b0010 	str	r0, [fp, #-16]
800244a0:	e51b3010 	ldr	r3, [fp, #-16]
800244a4:	e3530000 	cmp	r3, #0
800244a8:	1affffd3 	bne	800243fc <namex+0x58>
800244ac:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800244b0:	e3530000 	cmp	r3, #0
800244b4:	0a000003 	beq	800244c8 <namex+0x124>
800244b8:	e51b0008 	ldr	r0, [fp, #-8]
800244bc:	ebfffcb9 	bl	800237a8 <iput>
800244c0:	e3a03000 	mov	r3, #0
800244c4:	ea000000 	b	800244cc <namex+0x128>
800244c8:	e51b3008 	ldr	r3, [fp, #-8]
800244cc:	e1a00003 	mov	r0, r3
800244d0:	e24bd004 	sub	sp, fp, #4
800244d4:	e8bd8800 	pop	{fp, pc}
800244d8:	800b0e54 	.word	0x800b0e54

800244dc <namei>:
800244dc:	e92d4800 	push	{fp, lr}
800244e0:	e28db004 	add	fp, sp, #4
800244e4:	e24dd018 	sub	sp, sp, #24
800244e8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800244ec:	e24b3014 	sub	r3, fp, #20
800244f0:	e1a02003 	mov	r2, r3
800244f4:	e3a01000 	mov	r1, #0
800244f8:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
800244fc:	ebffffa8 	bl	800243a4 <namex>
80024500:	e1a03000 	mov	r3, r0
80024504:	e1a00003 	mov	r0, r3
80024508:	e24bd004 	sub	sp, fp, #4
8002450c:	e8bd8800 	pop	{fp, pc}

80024510 <nameiparent>:
80024510:	e92d4800 	push	{fp, lr}
80024514:	e28db004 	add	fp, sp, #4
80024518:	e24dd008 	sub	sp, sp, #8
8002451c:	e50b0008 	str	r0, [fp, #-8]
80024520:	e50b100c 	str	r1, [fp, #-12]
80024524:	e51b200c 	ldr	r2, [fp, #-12]
80024528:	e3a01001 	mov	r1, #1
8002452c:	e51b0008 	ldr	r0, [fp, #-8]
80024530:	ebffff9b 	bl	800243a4 <namex>
80024534:	e1a03000 	mov	r3, r0
80024538:	e1a00003 	mov	r0, r3
8002453c:	e24bd004 	sub	sp, fp, #4
80024540:	e8bd8800 	pop	{fp, pc}

80024544 <initlog>:
80024544:	e92d4800 	push	{fp, lr}
80024548:	e28db004 	add	fp, sp, #4
8002454c:	e24dd010 	sub	sp, sp, #16
80024550:	e59f1058 	ldr	r1, [pc, #88]	@ 800245b0 <initlog+0x6c>
80024554:	e59f0058 	ldr	r0, [pc, #88]	@ 800245b4 <initlog+0x70>
80024558:	eb000859 	bl	800266c4 <initlock>
8002455c:	e24b3014 	sub	r3, fp, #20
80024560:	e1a01003 	mov	r1, r3
80024564:	e3a00001 	mov	r0, #1
80024568:	ebfffa3c 	bl	80022e60 <readsb>
8002456c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80024570:	e51b3008 	ldr	r3, [fp, #-8]
80024574:	e0423003 	sub	r3, r2, r3
80024578:	e1a02003 	mov	r2, r3
8002457c:	e59f3030 	ldr	r3, [pc, #48]	@ 800245b4 <initlog+0x70>
80024580:	e5832034 	str	r2, [r3, #52]	@ 0x34
80024584:	e51b3008 	ldr	r3, [fp, #-8]
80024588:	e1a02003 	mov	r2, r3
8002458c:	e59f3020 	ldr	r3, [pc, #32]	@ 800245b4 <initlog+0x70>
80024590:	e5832038 	str	r2, [r3, #56]	@ 0x38
80024594:	e59f3018 	ldr	r3, [pc, #24]	@ 800245b4 <initlog+0x70>
80024598:	e3a02001 	mov	r2, #1
8002459c:	e5832040 	str	r2, [r3, #64]	@ 0x40
800245a0:	eb00009b 	bl	80024814 <recover_from_log>
800245a4:	e1a00000 	nop			@ (mov r0, r0)
800245a8:	e24bd004 	sub	sp, fp, #4
800245ac:	e8bd8800 	pop	{fp, pc}
800245b0:	80029d6c 	.word	0x80029d6c
800245b4:	800ae8c0 	.word	0x800ae8c0

800245b8 <install_trans>:
800245b8:	e92d4800 	push	{fp, lr}
800245bc:	e28db004 	add	fp, sp, #4
800245c0:	e24dd010 	sub	sp, sp, #16
800245c4:	e3a03000 	mov	r3, #0
800245c8:	e50b3008 	str	r3, [fp, #-8]
800245cc:	ea000026 	b	8002466c <install_trans+0xb4>
800245d0:	e59f30b8 	ldr	r3, [pc, #184]	@ 80024690 <install_trans+0xd8>
800245d4:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
800245d8:	e1a00003 	mov	r0, r3
800245dc:	e59f30ac 	ldr	r3, [pc, #172]	@ 80024690 <install_trans+0xd8>
800245e0:	e5932034 	ldr	r2, [r3, #52]	@ 0x34
800245e4:	e51b3008 	ldr	r3, [fp, #-8]
800245e8:	e0823003 	add	r3, r2, r3
800245ec:	e2833001 	add	r3, r3, #1
800245f0:	e1a01003 	mov	r1, r3
800245f4:	ebfff146 	bl	80020b14 <bread>
800245f8:	e50b000c 	str	r0, [fp, #-12]
800245fc:	e59f308c 	ldr	r3, [pc, #140]	@ 80024690 <install_trans+0xd8>
80024600:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
80024604:	e1a00003 	mov	r0, r3
80024608:	e59f2080 	ldr	r2, [pc, #128]	@ 80024690 <install_trans+0xd8>
8002460c:	e51b3008 	ldr	r3, [fp, #-8]
80024610:	e2833010 	add	r3, r3, #16
80024614:	e1a03103 	lsl	r3, r3, #2
80024618:	e0823003 	add	r3, r2, r3
8002461c:	e5933008 	ldr	r3, [r3, #8]
80024620:	e1a01003 	mov	r1, r3
80024624:	ebfff13a 	bl	80020b14 <bread>
80024628:	e50b0010 	str	r0, [fp, #-16]
8002462c:	e51b3010 	ldr	r3, [fp, #-16]
80024630:	e2830018 	add	r0, r3, #24
80024634:	e51b300c 	ldr	r3, [fp, #-12]
80024638:	e2833018 	add	r3, r3, #24
8002463c:	e3a02c02 	mov	r2, #512	@ 0x200
80024640:	e1a01003 	mov	r1, r3
80024644:	ebffeedf 	bl	800201c8 <memmove>
80024648:	e51b0010 	ldr	r0, [fp, #-16]
8002464c:	ebfff144 	bl	80020b64 <bwrite>
80024650:	e51b000c 	ldr	r0, [fp, #-12]
80024654:	ebfff158 	bl	80020bbc <brelse>
80024658:	e51b0010 	ldr	r0, [fp, #-16]
8002465c:	ebfff156 	bl	80020bbc <brelse>
80024660:	e51b3008 	ldr	r3, [fp, #-8]
80024664:	e2833001 	add	r3, r3, #1
80024668:	e50b3008 	str	r3, [fp, #-8]
8002466c:	e59f301c 	ldr	r3, [pc, #28]	@ 80024690 <install_trans+0xd8>
80024670:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80024674:	e51b2008 	ldr	r2, [fp, #-8]
80024678:	e1520003 	cmp	r2, r3
8002467c:	baffffd3 	blt	800245d0 <install_trans+0x18>
80024680:	e1a00000 	nop			@ (mov r0, r0)
80024684:	e1a00000 	nop			@ (mov r0, r0)
80024688:	e24bd004 	sub	sp, fp, #4
8002468c:	e8bd8800 	pop	{fp, pc}
80024690:	800ae8c0 	.word	0x800ae8c0

80024694 <read_head>:
80024694:	e92d4800 	push	{fp, lr}
80024698:	e28db004 	add	fp, sp, #4
8002469c:	e24dd010 	sub	sp, sp, #16
800246a0:	e59f30a4 	ldr	r3, [pc, #164]	@ 8002474c <read_head+0xb8>
800246a4:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
800246a8:	e1a02003 	mov	r2, r3
800246ac:	e59f3098 	ldr	r3, [pc, #152]	@ 8002474c <read_head+0xb8>
800246b0:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
800246b4:	e1a01003 	mov	r1, r3
800246b8:	e1a00002 	mov	r0, r2
800246bc:	ebfff114 	bl	80020b14 <bread>
800246c0:	e50b000c 	str	r0, [fp, #-12]
800246c4:	e51b300c 	ldr	r3, [fp, #-12]
800246c8:	e2833018 	add	r3, r3, #24
800246cc:	e50b3010 	str	r3, [fp, #-16]
800246d0:	e51b3010 	ldr	r3, [fp, #-16]
800246d4:	e5933000 	ldr	r3, [r3]
800246d8:	e59f206c 	ldr	r2, [pc, #108]	@ 8002474c <read_head+0xb8>
800246dc:	e5823044 	str	r3, [r2, #68]	@ 0x44
800246e0:	e3a03000 	mov	r3, #0
800246e4:	e50b3008 	str	r3, [fp, #-8]
800246e8:	ea00000d 	b	80024724 <read_head+0x90>
800246ec:	e51b2010 	ldr	r2, [fp, #-16]
800246f0:	e51b3008 	ldr	r3, [fp, #-8]
800246f4:	e1a03103 	lsl	r3, r3, #2
800246f8:	e0823003 	add	r3, r2, r3
800246fc:	e5932004 	ldr	r2, [r3, #4]
80024700:	e59f1044 	ldr	r1, [pc, #68]	@ 8002474c <read_head+0xb8>
80024704:	e51b3008 	ldr	r3, [fp, #-8]
80024708:	e2833010 	add	r3, r3, #16
8002470c:	e1a03103 	lsl	r3, r3, #2
80024710:	e0813003 	add	r3, r1, r3
80024714:	e5832008 	str	r2, [r3, #8]
80024718:	e51b3008 	ldr	r3, [fp, #-8]
8002471c:	e2833001 	add	r3, r3, #1
80024720:	e50b3008 	str	r3, [fp, #-8]
80024724:	e59f3020 	ldr	r3, [pc, #32]	@ 8002474c <read_head+0xb8>
80024728:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
8002472c:	e51b2008 	ldr	r2, [fp, #-8]
80024730:	e1520003 	cmp	r2, r3
80024734:	baffffec 	blt	800246ec <read_head+0x58>
80024738:	e51b000c 	ldr	r0, [fp, #-12]
8002473c:	ebfff11e 	bl	80020bbc <brelse>
80024740:	e1a00000 	nop			@ (mov r0, r0)
80024744:	e24bd004 	sub	sp, fp, #4
80024748:	e8bd8800 	pop	{fp, pc}
8002474c:	800ae8c0 	.word	0x800ae8c0

80024750 <write_head>:
80024750:	e92d4800 	push	{fp, lr}
80024754:	e28db004 	add	fp, sp, #4
80024758:	e24dd010 	sub	sp, sp, #16
8002475c:	e59f30ac 	ldr	r3, [pc, #172]	@ 80024810 <write_head+0xc0>
80024760:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
80024764:	e1a02003 	mov	r2, r3
80024768:	e59f30a0 	ldr	r3, [pc, #160]	@ 80024810 <write_head+0xc0>
8002476c:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
80024770:	e1a01003 	mov	r1, r3
80024774:	e1a00002 	mov	r0, r2
80024778:	ebfff0e5 	bl	80020b14 <bread>
8002477c:	e50b000c 	str	r0, [fp, #-12]
80024780:	e51b300c 	ldr	r3, [fp, #-12]
80024784:	e2833018 	add	r3, r3, #24
80024788:	e50b3010 	str	r3, [fp, #-16]
8002478c:	e59f307c 	ldr	r3, [pc, #124]	@ 80024810 <write_head+0xc0>
80024790:	e5932044 	ldr	r2, [r3, #68]	@ 0x44
80024794:	e51b3010 	ldr	r3, [fp, #-16]
80024798:	e5832000 	str	r2, [r3]
8002479c:	e3a03000 	mov	r3, #0
800247a0:	e50b3008 	str	r3, [fp, #-8]
800247a4:	ea00000d 	b	800247e0 <write_head+0x90>
800247a8:	e59f2060 	ldr	r2, [pc, #96]	@ 80024810 <write_head+0xc0>
800247ac:	e51b3008 	ldr	r3, [fp, #-8]
800247b0:	e2833010 	add	r3, r3, #16
800247b4:	e1a03103 	lsl	r3, r3, #2
800247b8:	e0823003 	add	r3, r2, r3
800247bc:	e5932008 	ldr	r2, [r3, #8]
800247c0:	e51b1010 	ldr	r1, [fp, #-16]
800247c4:	e51b3008 	ldr	r3, [fp, #-8]
800247c8:	e1a03103 	lsl	r3, r3, #2
800247cc:	e0813003 	add	r3, r1, r3
800247d0:	e5832004 	str	r2, [r3, #4]
800247d4:	e51b3008 	ldr	r3, [fp, #-8]
800247d8:	e2833001 	add	r3, r3, #1
800247dc:	e50b3008 	str	r3, [fp, #-8]
800247e0:	e59f3028 	ldr	r3, [pc, #40]	@ 80024810 <write_head+0xc0>
800247e4:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800247e8:	e51b2008 	ldr	r2, [fp, #-8]
800247ec:	e1520003 	cmp	r2, r3
800247f0:	baffffec 	blt	800247a8 <write_head+0x58>
800247f4:	e51b000c 	ldr	r0, [fp, #-12]
800247f8:	ebfff0d9 	bl	80020b64 <bwrite>
800247fc:	e51b000c 	ldr	r0, [fp, #-12]
80024800:	ebfff0ed 	bl	80020bbc <brelse>
80024804:	e1a00000 	nop			@ (mov r0, r0)
80024808:	e24bd004 	sub	sp, fp, #4
8002480c:	e8bd8800 	pop	{fp, pc}
80024810:	800ae8c0 	.word	0x800ae8c0

80024814 <recover_from_log>:
80024814:	e92d4800 	push	{fp, lr}
80024818:	e28db004 	add	fp, sp, #4
8002481c:	ebffff9c 	bl	80024694 <read_head>
80024820:	ebffff64 	bl	800245b8 <install_trans>
80024824:	e59f3010 	ldr	r3, [pc, #16]	@ 8002483c <recover_from_log+0x28>
80024828:	e3a02000 	mov	r2, #0
8002482c:	e5832044 	str	r2, [r3, #68]	@ 0x44
80024830:	ebffffc6 	bl	80024750 <write_head>
80024834:	e1a00000 	nop			@ (mov r0, r0)
80024838:	e8bd8800 	pop	{fp, pc}
8002483c:	800ae8c0 	.word	0x800ae8c0

80024840 <begin_trans>:
80024840:	e92d4800 	push	{fp, lr}
80024844:	e28db004 	add	fp, sp, #4
80024848:	e59f003c 	ldr	r0, [pc, #60]	@ 8002488c <begin_trans+0x4c>
8002484c:	eb0007ae 	bl	8002670c <acquire>
80024850:	ea000002 	b	80024860 <begin_trans+0x20>
80024854:	e59f1030 	ldr	r1, [pc, #48]	@ 8002488c <begin_trans+0x4c>
80024858:	e59f002c 	ldr	r0, [pc, #44]	@ 8002488c <begin_trans+0x4c>
8002485c:	eb0005b5 	bl	80025f38 <sleep>
80024860:	e59f3024 	ldr	r3, [pc, #36]	@ 8002488c <begin_trans+0x4c>
80024864:	e593303c 	ldr	r3, [r3, #60]	@ 0x3c
80024868:	e3530000 	cmp	r3, #0
8002486c:	1afffff8 	bne	80024854 <begin_trans+0x14>
80024870:	e59f3014 	ldr	r3, [pc, #20]	@ 8002488c <begin_trans+0x4c>
80024874:	e3a02001 	mov	r2, #1
80024878:	e583203c 	str	r2, [r3, #60]	@ 0x3c
8002487c:	e59f0008 	ldr	r0, [pc, #8]	@ 8002488c <begin_trans+0x4c>
80024880:	eb0007ac 	bl	80026738 <release>
80024884:	e1a00000 	nop			@ (mov r0, r0)
80024888:	e8bd8800 	pop	{fp, pc}
8002488c:	800ae8c0 	.word	0x800ae8c0

80024890 <commit_trans>:
80024890:	e92d4800 	push	{fp, lr}
80024894:	e28db004 	add	fp, sp, #4
80024898:	e59f304c 	ldr	r3, [pc, #76]	@ 800248ec <commit_trans+0x5c>
8002489c:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800248a0:	e3530000 	cmp	r3, #0
800248a4:	da000005 	ble	800248c0 <commit_trans+0x30>
800248a8:	ebffffa8 	bl	80024750 <write_head>
800248ac:	ebffff41 	bl	800245b8 <install_trans>
800248b0:	e59f3034 	ldr	r3, [pc, #52]	@ 800248ec <commit_trans+0x5c>
800248b4:	e3a02000 	mov	r2, #0
800248b8:	e5832044 	str	r2, [r3, #68]	@ 0x44
800248bc:	ebffffa3 	bl	80024750 <write_head>
800248c0:	e59f0024 	ldr	r0, [pc, #36]	@ 800248ec <commit_trans+0x5c>
800248c4:	eb000790 	bl	8002670c <acquire>
800248c8:	e59f301c 	ldr	r3, [pc, #28]	@ 800248ec <commit_trans+0x5c>
800248cc:	e3a02000 	mov	r2, #0
800248d0:	e583203c 	str	r2, [r3, #60]	@ 0x3c
800248d4:	e59f0010 	ldr	r0, [pc, #16]	@ 800248ec <commit_trans+0x5c>
800248d8:	eb0005f8 	bl	800260c0 <wakeup>
800248dc:	e59f0008 	ldr	r0, [pc, #8]	@ 800248ec <commit_trans+0x5c>
800248e0:	eb000794 	bl	80026738 <release>
800248e4:	e1a00000 	nop			@ (mov r0, r0)
800248e8:	e8bd8800 	pop	{fp, pc}
800248ec:	800ae8c0 	.word	0x800ae8c0

800248f0 <log_write>:
800248f0:	e92d4800 	push	{fp, lr}
800248f4:	e28db004 	add	fp, sp, #4
800248f8:	e24dd010 	sub	sp, sp, #16
800248fc:	e50b0010 	str	r0, [fp, #-16]
80024900:	e59f3164 	ldr	r3, [pc, #356]	@ 80024a6c <log_write+0x17c>
80024904:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80024908:	e3530009 	cmp	r3, #9
8002490c:	ca000006 	bgt	8002492c <log_write+0x3c>
80024910:	e59f3154 	ldr	r3, [pc, #340]	@ 80024a6c <log_write+0x17c>
80024914:	e5932044 	ldr	r2, [r3, #68]	@ 0x44
80024918:	e59f314c 	ldr	r3, [pc, #332]	@ 80024a6c <log_write+0x17c>
8002491c:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
80024920:	e2433001 	sub	r3, r3, #1
80024924:	e1520003 	cmp	r2, r3
80024928:	ba000001 	blt	80024934 <log_write+0x44>
8002492c:	e59f013c 	ldr	r0, [pc, #316]	@ 80024a70 <log_write+0x180>
80024930:	ebfff461 	bl	80021abc <panic>
80024934:	e59f3130 	ldr	r3, [pc, #304]	@ 80024a6c <log_write+0x17c>
80024938:	e593303c 	ldr	r3, [r3, #60]	@ 0x3c
8002493c:	e3530000 	cmp	r3, #0
80024940:	1a000001 	bne	8002494c <log_write+0x5c>
80024944:	e59f0128 	ldr	r0, [pc, #296]	@ 80024a74 <log_write+0x184>
80024948:	ebfff45b 	bl	80021abc <panic>
8002494c:	e3a03000 	mov	r3, #0
80024950:	e50b3008 	str	r3, [fp, #-8]
80024954:	ea00000d 	b	80024990 <log_write+0xa0>
80024958:	e59f210c 	ldr	r2, [pc, #268]	@ 80024a6c <log_write+0x17c>
8002495c:	e51b3008 	ldr	r3, [fp, #-8]
80024960:	e2833010 	add	r3, r3, #16
80024964:	e1a03103 	lsl	r3, r3, #2
80024968:	e0823003 	add	r3, r2, r3
8002496c:	e5933008 	ldr	r3, [r3, #8]
80024970:	e1a02003 	mov	r2, r3
80024974:	e51b3010 	ldr	r3, [fp, #-16]
80024978:	e5933008 	ldr	r3, [r3, #8]
8002497c:	e1520003 	cmp	r2, r3
80024980:	0a000008 	beq	800249a8 <log_write+0xb8>
80024984:	e51b3008 	ldr	r3, [fp, #-8]
80024988:	e2833001 	add	r3, r3, #1
8002498c:	e50b3008 	str	r3, [fp, #-8]
80024990:	e59f30d4 	ldr	r3, [pc, #212]	@ 80024a6c <log_write+0x17c>
80024994:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80024998:	e51b2008 	ldr	r2, [fp, #-8]
8002499c:	e1520003 	cmp	r2, r3
800249a0:	baffffec 	blt	80024958 <log_write+0x68>
800249a4:	ea000000 	b	800249ac <log_write+0xbc>
800249a8:	e1a00000 	nop			@ (mov r0, r0)
800249ac:	e51b3010 	ldr	r3, [fp, #-16]
800249b0:	e5933008 	ldr	r3, [r3, #8]
800249b4:	e1a01003 	mov	r1, r3
800249b8:	e59f20ac 	ldr	r2, [pc, #172]	@ 80024a6c <log_write+0x17c>
800249bc:	e51b3008 	ldr	r3, [fp, #-8]
800249c0:	e2833010 	add	r3, r3, #16
800249c4:	e1a03103 	lsl	r3, r3, #2
800249c8:	e0823003 	add	r3, r2, r3
800249cc:	e5831008 	str	r1, [r3, #8]
800249d0:	e51b3010 	ldr	r3, [fp, #-16]
800249d4:	e5930004 	ldr	r0, [r3, #4]
800249d8:	e59f308c 	ldr	r3, [pc, #140]	@ 80024a6c <log_write+0x17c>
800249dc:	e5932034 	ldr	r2, [r3, #52]	@ 0x34
800249e0:	e51b3008 	ldr	r3, [fp, #-8]
800249e4:	e0823003 	add	r3, r2, r3
800249e8:	e2833001 	add	r3, r3, #1
800249ec:	e1a01003 	mov	r1, r3
800249f0:	ebfff047 	bl	80020b14 <bread>
800249f4:	e50b000c 	str	r0, [fp, #-12]
800249f8:	e51b300c 	ldr	r3, [fp, #-12]
800249fc:	e2830018 	add	r0, r3, #24
80024a00:	e51b3010 	ldr	r3, [fp, #-16]
80024a04:	e2833018 	add	r3, r3, #24
80024a08:	e3a02c02 	mov	r2, #512	@ 0x200
80024a0c:	e1a01003 	mov	r1, r3
80024a10:	ebffedec 	bl	800201c8 <memmove>
80024a14:	e51b000c 	ldr	r0, [fp, #-12]
80024a18:	ebfff051 	bl	80020b64 <bwrite>
80024a1c:	e51b000c 	ldr	r0, [fp, #-12]
80024a20:	ebfff065 	bl	80020bbc <brelse>
80024a24:	e59f3040 	ldr	r3, [pc, #64]	@ 80024a6c <log_write+0x17c>
80024a28:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80024a2c:	e51b2008 	ldr	r2, [fp, #-8]
80024a30:	e1520003 	cmp	r2, r3
80024a34:	1a000004 	bne	80024a4c <log_write+0x15c>
80024a38:	e59f302c 	ldr	r3, [pc, #44]	@ 80024a6c <log_write+0x17c>
80024a3c:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80024a40:	e2833001 	add	r3, r3, #1
80024a44:	e59f2020 	ldr	r2, [pc, #32]	@ 80024a6c <log_write+0x17c>
80024a48:	e5823044 	str	r3, [r2, #68]	@ 0x44
80024a4c:	e51b3010 	ldr	r3, [fp, #-16]
80024a50:	e5933000 	ldr	r3, [r3]
80024a54:	e3832004 	orr	r2, r3, #4
80024a58:	e51b3010 	ldr	r3, [fp, #-16]
80024a5c:	e5832000 	str	r2, [r3]
80024a60:	e1a00000 	nop			@ (mov r0, r0)
80024a64:	e24bd004 	sub	sp, fp, #4
80024a68:	e8bd8800 	pop	{fp, pc}
80024a6c:	800ae8c0 	.word	0x800ae8c0
80024a70:	80029d70 	.word	0x80029d70
80024a74:	80029d88 	.word	0x80029d88

80024a78 <kmain>:
80024a78:	e92d4800 	push	{fp, lr}
80024a7c:	e28db004 	add	fp, sp, #4
80024a80:	e24dd008 	sub	sp, sp, #8
80024a84:	e59f30a4 	ldr	r3, [pc, #164]	@ 80024b30 <kmain+0xb8>
80024a88:	e59f20a4 	ldr	r2, [pc, #164]	@ 80024b34 <kmain+0xbc>
80024a8c:	e5832000 	str	r2, [r3]
80024a90:	e59f00a0 	ldr	r0, [pc, #160]	@ 80024b38 <kmain+0xc0>
80024a94:	eb0012f9 	bl	80029680 <uart_init>
80024a98:	e59f309c 	ldr	r3, [pc, #156]	@ 80024b3c <kmain+0xc4>
80024a9c:	e50b3008 	str	r3, [fp, #-8]
80024aa0:	eb000eee 	bl	80028660 <init_vmm>
80024aa4:	e59f3094 	ldr	r3, [pc, #148]	@ 80024b40 <kmain+0xc8>
80024aa8:	e2833fff 	add	r3, r3, #1020	@ 0x3fc
80024aac:	e2833003 	add	r3, r3, #3
80024ab0:	e3c33fff 	bic	r3, r3, #1020	@ 0x3fc
80024ab4:	e3c33003 	bic	r3, r3, #3
80024ab8:	e51b1008 	ldr	r1, [fp, #-8]
80024abc:	e1a00003 	mov	r0, r3
80024ac0:	eb000f1a 	bl	80028730 <kpt_freerange>
80024ac4:	e51b3008 	ldr	r3, [fp, #-8]
80024ac8:	e2833b01 	add	r3, r3, #1024	@ 0x400
80024acc:	e59f1070 	ldr	r1, [pc, #112]	@ 80024b44 <kmain+0xcc>
80024ad0:	e1a00003 	mov	r0, r3
80024ad4:	eb000f15 	bl	80028730 <kpt_freerange>
80024ad8:	e3a01302 	mov	r1, #134217728	@ 0x8000000
80024adc:	e3a00601 	mov	r0, #1048576	@ 0x100000
80024ae0:	eb0011da 	bl	80029250 <paging_init>
80024ae4:	ebfff0b3 	bl	80020db8 <kmem_init>
80024ae8:	e3a01322 	mov	r1, #-2013265920	@ 0x88000000
80024aec:	e59f0050 	ldr	r0, [pc, #80]	@ 80024b44 <kmain+0xcc>
80024af0:	ebfff0b9 	bl	80020ddc <kmem_init2>
80024af4:	eb000ddd 	bl	80028270 <trap_init>
80024af8:	e59f0048 	ldr	r0, [pc, #72]	@ 80024b48 <kmain+0xd0>
80024afc:	eb0011f4 	bl	800292d4 <pic_init>
80024b00:	eb00130f 	bl	80029744 <uart_enable_rx>
80024b04:	ebfff644 	bl	8002241c <consoleinit>
80024b08:	eb0001b7 	bl	800251ec <pinit>
80024b0c:	ebffef6f 	bl	800208d0 <binit>
80024b10:	ebfff78e 	bl	80022950 <fileinit>
80024b14:	ebfff9ba 	bl	80023204 <iinit>
80024b18:	eb00000b 	bl	80024b4c <ideinit>
80024b1c:	e3a00001 	mov	r0, #1
80024b20:	eb00127e 	bl	80029520 <timer_init>
80024b24:	ebffee93 	bl	80020578 <sti>
80024b28:	eb00022a 	bl	800253d8 <userinit>
80024b2c:	eb00045b 	bl	80025ca0 <scheduler>
80024b30:	800aea10 	.word	0x800aea10
80024b34:	800ae930 	.word	0x800ae930
80024b38:	901f1000 	.word	0x901f1000
80024b3c:	800f0000 	.word	0x800f0000
80024b40:	800b2000 	.word	0x800b2000
80024b44:	80100000 	.word	0x80100000
80024b48:	90140000 	.word	0x90140000

80024b4c <ideinit>:
80024b4c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80024b50:	e28db000 	add	fp, sp, #0
80024b54:	e59f3028 	ldr	r3, [pc, #40]	@ 80024b84 <ideinit+0x38>
80024b58:	e59f2028 	ldr	r2, [pc, #40]	@ 80024b88 <ideinit+0x3c>
80024b5c:	e5832000 	str	r2, [r3]
80024b60:	e59f3024 	ldr	r3, [pc, #36]	@ 80024b8c <ideinit+0x40>
80024b64:	e1a034a3 	lsr	r3, r3, #9
80024b68:	e1a02003 	mov	r2, r3
80024b6c:	e59f301c 	ldr	r3, [pc, #28]	@ 80024b90 <ideinit+0x44>
80024b70:	e5832000 	str	r2, [r3]
80024b74:	e1a00000 	nop			@ (mov r0, r0)
80024b78:	e28bd000 	add	sp, fp, #0
80024b7c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80024b80:	e12fff1e 	bx	lr
80024b84:	800aea18 	.word	0x800aea18
80024b88:	8002b0d4 	.word	0x8002b0d4
80024b8c:	00080000 	.word	0x00080000
80024b90:	800aea14 	.word	0x800aea14

80024b94 <ideintr>:
80024b94:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80024b98:	e28db000 	add	fp, sp, #0
80024b9c:	e1a00000 	nop			@ (mov r0, r0)
80024ba0:	e28bd000 	add	sp, fp, #0
80024ba4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80024ba8:	e12fff1e 	bx	lr

80024bac <iderw>:
80024bac:	e92d4800 	push	{fp, lr}
80024bb0:	e28db004 	add	fp, sp, #4
80024bb4:	e24dd010 	sub	sp, sp, #16
80024bb8:	e50b0010 	str	r0, [fp, #-16]
80024bbc:	e51b3010 	ldr	r3, [fp, #-16]
80024bc0:	e5933000 	ldr	r3, [r3]
80024bc4:	e2033001 	and	r3, r3, #1
80024bc8:	e3530000 	cmp	r3, #0
80024bcc:	1a000001 	bne	80024bd8 <iderw+0x2c>
80024bd0:	e59f00ec 	ldr	r0, [pc, #236]	@ 80024cc4 <iderw+0x118>
80024bd4:	ebfff3b8 	bl	80021abc <panic>
80024bd8:	e51b3010 	ldr	r3, [fp, #-16]
80024bdc:	e5933000 	ldr	r3, [r3]
80024be0:	e2033006 	and	r3, r3, #6
80024be4:	e3530002 	cmp	r3, #2
80024be8:	1a000001 	bne	80024bf4 <iderw+0x48>
80024bec:	e59f00d4 	ldr	r0, [pc, #212]	@ 80024cc8 <iderw+0x11c>
80024bf0:	ebfff3b1 	bl	80021abc <panic>
80024bf4:	e51b3010 	ldr	r3, [fp, #-16]
80024bf8:	e5933004 	ldr	r3, [r3, #4]
80024bfc:	e3530001 	cmp	r3, #1
80024c00:	0a000001 	beq	80024c0c <iderw+0x60>
80024c04:	e59f00c0 	ldr	r0, [pc, #192]	@ 80024ccc <iderw+0x120>
80024c08:	ebfff3ab 	bl	80021abc <panic>
80024c0c:	e51b3010 	ldr	r3, [fp, #-16]
80024c10:	e5933008 	ldr	r3, [r3, #8]
80024c14:	e59f20b4 	ldr	r2, [pc, #180]	@ 80024cd0 <iderw+0x124>
80024c18:	e5922000 	ldr	r2, [r2]
80024c1c:	e1530002 	cmp	r3, r2
80024c20:	3a000001 	bcc	80024c2c <iderw+0x80>
80024c24:	e59f00a8 	ldr	r0, [pc, #168]	@ 80024cd4 <iderw+0x128>
80024c28:	ebfff3a3 	bl	80021abc <panic>
80024c2c:	e59f30a4 	ldr	r3, [pc, #164]	@ 80024cd8 <iderw+0x12c>
80024c30:	e5932000 	ldr	r2, [r3]
80024c34:	e51b3010 	ldr	r3, [fp, #-16]
80024c38:	e5933008 	ldr	r3, [r3, #8]
80024c3c:	e1a03483 	lsl	r3, r3, #9
80024c40:	e0823003 	add	r3, r2, r3
80024c44:	e50b3008 	str	r3, [fp, #-8]
80024c48:	e51b3010 	ldr	r3, [fp, #-16]
80024c4c:	e5933000 	ldr	r3, [r3]
80024c50:	e2033004 	and	r3, r3, #4
80024c54:	e3530000 	cmp	r3, #0
80024c58:	0a00000b 	beq	80024c8c <iderw+0xe0>
80024c5c:	e51b3010 	ldr	r3, [fp, #-16]
80024c60:	e5933000 	ldr	r3, [r3]
80024c64:	e3c32004 	bic	r2, r3, #4
80024c68:	e51b3010 	ldr	r3, [fp, #-16]
80024c6c:	e5832000 	str	r2, [r3]
80024c70:	e51b3010 	ldr	r3, [fp, #-16]
80024c74:	e2833018 	add	r3, r3, #24
80024c78:	e3a02c02 	mov	r2, #512	@ 0x200
80024c7c:	e1a01003 	mov	r1, r3
80024c80:	e51b0008 	ldr	r0, [fp, #-8]
80024c84:	ebffed4f 	bl	800201c8 <memmove>
80024c88:	ea000005 	b	80024ca4 <iderw+0xf8>
80024c8c:	e51b3010 	ldr	r3, [fp, #-16]
80024c90:	e2833018 	add	r3, r3, #24
80024c94:	e3a02c02 	mov	r2, #512	@ 0x200
80024c98:	e51b1008 	ldr	r1, [fp, #-8]
80024c9c:	e1a00003 	mov	r0, r3
80024ca0:	ebffed48 	bl	800201c8 <memmove>
80024ca4:	e51b3010 	ldr	r3, [fp, #-16]
80024ca8:	e5933000 	ldr	r3, [r3]
80024cac:	e3832002 	orr	r2, r3, #2
80024cb0:	e51b3010 	ldr	r3, [fp, #-16]
80024cb4:	e5832000 	str	r2, [r3]
80024cb8:	e1a00000 	nop			@ (mov r0, r0)
80024cbc:	e24bd004 	sub	sp, fp, #4
80024cc0:	e8bd8800 	pop	{fp, pc}
80024cc4:	80029da0 	.word	0x80029da0
80024cc8:	80029db4 	.word	0x80029db4
80024ccc:	80029dcc 	.word	0x80029dcc
80024cd0:	800aea14 	.word	0x800aea14
80024cd4:	80029dec 	.word	0x80029dec
80024cd8:	800aea18 	.word	0x800aea18

80024cdc <pipealloc>:
80024cdc:	e92d4800 	push	{fp, lr}
80024ce0:	e28db004 	add	fp, sp, #4
80024ce4:	e24dd010 	sub	sp, sp, #16
80024ce8:	e50b0010 	str	r0, [fp, #-16]
80024cec:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80024cf0:	e3a03000 	mov	r3, #0
80024cf4:	e50b3008 	str	r3, [fp, #-8]
80024cf8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024cfc:	e3a02000 	mov	r2, #0
80024d00:	e5832000 	str	r2, [r3]
80024d04:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024d08:	e5932000 	ldr	r2, [r3]
80024d0c:	e51b3010 	ldr	r3, [fp, #-16]
80024d10:	e5832000 	str	r2, [r3]
80024d14:	ebfff716 	bl	80022974 <filealloc>
80024d18:	e1a02000 	mov	r2, r0
80024d1c:	e51b3010 	ldr	r3, [fp, #-16]
80024d20:	e5832000 	str	r2, [r3]
80024d24:	e51b3010 	ldr	r3, [fp, #-16]
80024d28:	e5933000 	ldr	r3, [r3]
80024d2c:	e3530000 	cmp	r3, #0
80024d30:	0a000042 	beq	80024e40 <pipealloc+0x164>
80024d34:	ebfff70e 	bl	80022974 <filealloc>
80024d38:	e1a02000 	mov	r2, r0
80024d3c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024d40:	e5832000 	str	r2, [r3]
80024d44:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024d48:	e5933000 	ldr	r3, [r3]
80024d4c:	e3530000 	cmp	r3, #0
80024d50:	0a00003a 	beq	80024e40 <pipealloc+0x164>
80024d54:	e3a00f91 	mov	r0, #580	@ 0x244
80024d58:	ebfff23b 	bl	8002164c <get_order>
80024d5c:	e1a03000 	mov	r3, r0
80024d60:	e1a00003 	mov	r0, r3
80024d64:	ebfff1ae 	bl	80021424 <kmalloc>
80024d68:	e50b0008 	str	r0, [fp, #-8]
80024d6c:	e51b3008 	ldr	r3, [fp, #-8]
80024d70:	e3530000 	cmp	r3, #0
80024d74:	0a000033 	beq	80024e48 <pipealloc+0x16c>
80024d78:	e51b3008 	ldr	r3, [fp, #-8]
80024d7c:	e3a02001 	mov	r2, #1
80024d80:	e583223c 	str	r2, [r3, #572]	@ 0x23c
80024d84:	e51b3008 	ldr	r3, [fp, #-8]
80024d88:	e3a02001 	mov	r2, #1
80024d8c:	e5832240 	str	r2, [r3, #576]	@ 0x240
80024d90:	e51b3008 	ldr	r3, [fp, #-8]
80024d94:	e3a02000 	mov	r2, #0
80024d98:	e5832238 	str	r2, [r3, #568]	@ 0x238
80024d9c:	e51b3008 	ldr	r3, [fp, #-8]
80024da0:	e3a02000 	mov	r2, #0
80024da4:	e5832234 	str	r2, [r3, #564]	@ 0x234
80024da8:	e51b3008 	ldr	r3, [fp, #-8]
80024dac:	e59f110c 	ldr	r1, [pc, #268]	@ 80024ec0 <pipealloc+0x1e4>
80024db0:	e1a00003 	mov	r0, r3
80024db4:	eb000642 	bl	800266c4 <initlock>
80024db8:	e51b3010 	ldr	r3, [fp, #-16]
80024dbc:	e5933000 	ldr	r3, [r3]
80024dc0:	e3a02001 	mov	r2, #1
80024dc4:	e5c32000 	strb	r2, [r3]
80024dc8:	e51b3010 	ldr	r3, [fp, #-16]
80024dcc:	e5933000 	ldr	r3, [r3]
80024dd0:	e3a02001 	mov	r2, #1
80024dd4:	e5c32008 	strb	r2, [r3, #8]
80024dd8:	e51b3010 	ldr	r3, [fp, #-16]
80024ddc:	e5933000 	ldr	r3, [r3]
80024de0:	e3a02000 	mov	r2, #0
80024de4:	e5c32009 	strb	r2, [r3, #9]
80024de8:	e51b3010 	ldr	r3, [fp, #-16]
80024dec:	e5933000 	ldr	r3, [r3]
80024df0:	e51b2008 	ldr	r2, [fp, #-8]
80024df4:	e583200c 	str	r2, [r3, #12]
80024df8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024dfc:	e5933000 	ldr	r3, [r3]
80024e00:	e3a02001 	mov	r2, #1
80024e04:	e5c32000 	strb	r2, [r3]
80024e08:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024e0c:	e5933000 	ldr	r3, [r3]
80024e10:	e3a02000 	mov	r2, #0
80024e14:	e5c32008 	strb	r2, [r3, #8]
80024e18:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024e1c:	e5933000 	ldr	r3, [r3]
80024e20:	e3a02001 	mov	r2, #1
80024e24:	e5c32009 	strb	r2, [r3, #9]
80024e28:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024e2c:	e5933000 	ldr	r3, [r3]
80024e30:	e51b2008 	ldr	r2, [fp, #-8]
80024e34:	e583200c 	str	r2, [r3, #12]
80024e38:	e3a03000 	mov	r3, #0
80024e3c:	ea00001c 	b	80024eb4 <pipealloc+0x1d8>
80024e40:	e1a00000 	nop			@ (mov r0, r0)
80024e44:	ea000000 	b	80024e4c <pipealloc+0x170>
80024e48:	e1a00000 	nop			@ (mov r0, r0)
80024e4c:	e51b3008 	ldr	r3, [fp, #-8]
80024e50:	e3530000 	cmp	r3, #0
80024e54:	0a000005 	beq	80024e70 <pipealloc+0x194>
80024e58:	e3a00f91 	mov	r0, #580	@ 0x244
80024e5c:	ebfff1fa 	bl	8002164c <get_order>
80024e60:	e1a03000 	mov	r3, r0
80024e64:	e1a01003 	mov	r1, r3
80024e68:	e51b0008 	ldr	r0, [fp, #-8]
80024e6c:	ebfff1c3 	bl	80021580 <kfree>
80024e70:	e51b3010 	ldr	r3, [fp, #-16]
80024e74:	e5933000 	ldr	r3, [r3]
80024e78:	e3530000 	cmp	r3, #0
80024e7c:	0a000003 	beq	80024e90 <pipealloc+0x1b4>
80024e80:	e51b3010 	ldr	r3, [fp, #-16]
80024e84:	e5933000 	ldr	r3, [r3]
80024e88:	e1a00003 	mov	r0, r3
80024e8c:	ebfff6f4 	bl	80022a64 <fileclose>
80024e90:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024e94:	e5933000 	ldr	r3, [r3]
80024e98:	e3530000 	cmp	r3, #0
80024e9c:	0a000003 	beq	80024eb0 <pipealloc+0x1d4>
80024ea0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024ea4:	e5933000 	ldr	r3, [r3]
80024ea8:	e1a00003 	mov	r0, r3
80024eac:	ebfff6ec 	bl	80022a64 <fileclose>
80024eb0:	e3e03000 	mvn	r3, #0
80024eb4:	e1a00003 	mov	r0, r3
80024eb8:	e24bd004 	sub	sp, fp, #4
80024ebc:	e8bd8800 	pop	{fp, pc}
80024ec0:	80029e08 	.word	0x80029e08

80024ec4 <pipeclose>:
80024ec4:	e92d4800 	push	{fp, lr}
80024ec8:	e28db004 	add	fp, sp, #4
80024ecc:	e24dd008 	sub	sp, sp, #8
80024ed0:	e50b0008 	str	r0, [fp, #-8]
80024ed4:	e50b100c 	str	r1, [fp, #-12]
80024ed8:	e51b3008 	ldr	r3, [fp, #-8]
80024edc:	e1a00003 	mov	r0, r3
80024ee0:	eb000609 	bl	8002670c <acquire>
80024ee4:	e51b300c 	ldr	r3, [fp, #-12]
80024ee8:	e3530000 	cmp	r3, #0
80024eec:	0a000007 	beq	80024f10 <pipeclose+0x4c>
80024ef0:	e51b3008 	ldr	r3, [fp, #-8]
80024ef4:	e3a02000 	mov	r2, #0
80024ef8:	e5832240 	str	r2, [r3, #576]	@ 0x240
80024efc:	e51b3008 	ldr	r3, [fp, #-8]
80024f00:	e2833f8d 	add	r3, r3, #564	@ 0x234
80024f04:	e1a00003 	mov	r0, r3
80024f08:	eb00046c 	bl	800260c0 <wakeup>
80024f0c:	ea000006 	b	80024f2c <pipeclose+0x68>
80024f10:	e51b3008 	ldr	r3, [fp, #-8]
80024f14:	e3a02000 	mov	r2, #0
80024f18:	e583223c 	str	r2, [r3, #572]	@ 0x23c
80024f1c:	e51b3008 	ldr	r3, [fp, #-8]
80024f20:	e2833f8e 	add	r3, r3, #568	@ 0x238
80024f24:	e1a00003 	mov	r0, r3
80024f28:	eb000464 	bl	800260c0 <wakeup>
80024f2c:	e51b3008 	ldr	r3, [fp, #-8]
80024f30:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80024f34:	e3530000 	cmp	r3, #0
80024f38:	1a00000d 	bne	80024f74 <pipeclose+0xb0>
80024f3c:	e51b3008 	ldr	r3, [fp, #-8]
80024f40:	e5933240 	ldr	r3, [r3, #576]	@ 0x240
80024f44:	e3530000 	cmp	r3, #0
80024f48:	1a000009 	bne	80024f74 <pipeclose+0xb0>
80024f4c:	e51b3008 	ldr	r3, [fp, #-8]
80024f50:	e1a00003 	mov	r0, r3
80024f54:	eb0005f7 	bl	80026738 <release>
80024f58:	e3a00f91 	mov	r0, #580	@ 0x244
80024f5c:	ebfff1ba 	bl	8002164c <get_order>
80024f60:	e1a03000 	mov	r3, r0
80024f64:	e1a01003 	mov	r1, r3
80024f68:	e51b0008 	ldr	r0, [fp, #-8]
80024f6c:	ebfff183 	bl	80021580 <kfree>
80024f70:	ea000003 	b	80024f84 <pipeclose+0xc0>
80024f74:	e51b3008 	ldr	r3, [fp, #-8]
80024f78:	e1a00003 	mov	r0, r3
80024f7c:	eb0005ed 	bl	80026738 <release>
80024f80:	e1a00000 	nop			@ (mov r0, r0)
80024f84:	e1a00000 	nop			@ (mov r0, r0)
80024f88:	e24bd004 	sub	sp, fp, #4
80024f8c:	e8bd8800 	pop	{fp, pc}

80024f90 <pipewrite>:
80024f90:	e92d4800 	push	{fp, lr}
80024f94:	e28db004 	add	fp, sp, #4
80024f98:	e24dd018 	sub	sp, sp, #24
80024f9c:	e50b0010 	str	r0, [fp, #-16]
80024fa0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80024fa4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80024fa8:	e51b3010 	ldr	r3, [fp, #-16]
80024fac:	e1a00003 	mov	r0, r3
80024fb0:	eb0005d5 	bl	8002670c <acquire>
80024fb4:	e3a03000 	mov	r3, #0
80024fb8:	e50b3008 	str	r3, [fp, #-8]
80024fbc:	ea00002b 	b	80025070 <pipewrite+0xe0>
80024fc0:	e51b3010 	ldr	r3, [fp, #-16]
80024fc4:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80024fc8:	e3530000 	cmp	r3, #0
80024fcc:	1a000004 	bne	80024fe4 <pipewrite+0x54>
80024fd0:	e51b3010 	ldr	r3, [fp, #-16]
80024fd4:	e1a00003 	mov	r0, r3
80024fd8:	eb0005d6 	bl	80026738 <release>
80024fdc:	e3e03000 	mvn	r3, #0
80024fe0:	ea00002e 	b	800250a0 <pipewrite+0x110>
80024fe4:	e51b3010 	ldr	r3, [fp, #-16]
80024fe8:	e2833f8d 	add	r3, r3, #564	@ 0x234
80024fec:	e1a00003 	mov	r0, r3
80024ff0:	eb000432 	bl	800260c0 <wakeup>
80024ff4:	e51b3010 	ldr	r3, [fp, #-16]
80024ff8:	e2833f8e 	add	r3, r3, #568	@ 0x238
80024ffc:	e51b2010 	ldr	r2, [fp, #-16]
80025000:	e1a01002 	mov	r1, r2
80025004:	e1a00003 	mov	r0, r3
80025008:	eb0003ca 	bl	80025f38 <sleep>
8002500c:	e51b3010 	ldr	r3, [fp, #-16]
80025010:	e5932238 	ldr	r2, [r3, #568]	@ 0x238
80025014:	e51b3010 	ldr	r3, [fp, #-16]
80025018:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
8002501c:	e2833c02 	add	r3, r3, #512	@ 0x200
80025020:	e1520003 	cmp	r2, r3
80025024:	0affffe5 	beq	80024fc0 <pipewrite+0x30>
80025028:	e51b3008 	ldr	r3, [fp, #-8]
8002502c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80025030:	e0822003 	add	r2, r2, r3
80025034:	e51b3010 	ldr	r3, [fp, #-16]
80025038:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
8002503c:	e2830001 	add	r0, r3, #1
80025040:	e51b1010 	ldr	r1, [fp, #-16]
80025044:	e5810238 	str	r0, [r1, #568]	@ 0x238
80025048:	e1a03b83 	lsl	r3, r3, #23
8002504c:	e1a03ba3 	lsr	r3, r3, #23
80025050:	e5d21000 	ldrb	r1, [r2]
80025054:	e51b2010 	ldr	r2, [fp, #-16]
80025058:	e0823003 	add	r3, r2, r3
8002505c:	e1a02001 	mov	r2, r1
80025060:	e5c32034 	strb	r2, [r3, #52]	@ 0x34
80025064:	e51b3008 	ldr	r3, [fp, #-8]
80025068:	e2833001 	add	r3, r3, #1
8002506c:	e50b3008 	str	r3, [fp, #-8]
80025070:	e51b2008 	ldr	r2, [fp, #-8]
80025074:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80025078:	e1520003 	cmp	r2, r3
8002507c:	baffffe2 	blt	8002500c <pipewrite+0x7c>
80025080:	e51b3010 	ldr	r3, [fp, #-16]
80025084:	e2833f8d 	add	r3, r3, #564	@ 0x234
80025088:	e1a00003 	mov	r0, r3
8002508c:	eb00040b 	bl	800260c0 <wakeup>
80025090:	e51b3010 	ldr	r3, [fp, #-16]
80025094:	e1a00003 	mov	r0, r3
80025098:	eb0005a6 	bl	80026738 <release>
8002509c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800250a0:	e1a00003 	mov	r0, r3
800250a4:	e24bd004 	sub	sp, fp, #4
800250a8:	e8bd8800 	pop	{fp, pc}

800250ac <piperead>:
800250ac:	e92d4800 	push	{fp, lr}
800250b0:	e28db004 	add	fp, sp, #4
800250b4:	e24dd018 	sub	sp, sp, #24
800250b8:	e50b0010 	str	r0, [fp, #-16]
800250bc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800250c0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800250c4:	e51b3010 	ldr	r3, [fp, #-16]
800250c8:	e1a00003 	mov	r0, r3
800250cc:	eb00058e 	bl	8002670c <acquire>
800250d0:	ea00000f 	b	80025114 <piperead+0x68>
800250d4:	e59f310c 	ldr	r3, [pc, #268]	@ 800251e8 <piperead+0x13c>
800250d8:	e5933000 	ldr	r3, [r3]
800250dc:	e5933030 	ldr	r3, [r3, #48]	@ 0x30
800250e0:	e3530000 	cmp	r3, #0
800250e4:	0a000004 	beq	800250fc <piperead+0x50>
800250e8:	e51b3010 	ldr	r3, [fp, #-16]
800250ec:	e1a00003 	mov	r0, r3
800250f0:	eb000590 	bl	80026738 <release>
800250f4:	e3e03000 	mvn	r3, #0
800250f8:	ea000037 	b	800251dc <piperead+0x130>
800250fc:	e51b3010 	ldr	r3, [fp, #-16]
80025100:	e2833f8d 	add	r3, r3, #564	@ 0x234
80025104:	e51b2010 	ldr	r2, [fp, #-16]
80025108:	e1a01002 	mov	r1, r2
8002510c:	e1a00003 	mov	r0, r3
80025110:	eb000388 	bl	80025f38 <sleep>
80025114:	e51b3010 	ldr	r3, [fp, #-16]
80025118:	e5932234 	ldr	r2, [r3, #564]	@ 0x234
8002511c:	e51b3010 	ldr	r3, [fp, #-16]
80025120:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80025124:	e1520003 	cmp	r2, r3
80025128:	1a000003 	bne	8002513c <piperead+0x90>
8002512c:	e51b3010 	ldr	r3, [fp, #-16]
80025130:	e5933240 	ldr	r3, [r3, #576]	@ 0x240
80025134:	e3530000 	cmp	r3, #0
80025138:	1affffe5 	bne	800250d4 <piperead+0x28>
8002513c:	e3a03000 	mov	r3, #0
80025140:	e50b3008 	str	r3, [fp, #-8]
80025144:	ea000016 	b	800251a4 <piperead+0xf8>
80025148:	e51b3010 	ldr	r3, [fp, #-16]
8002514c:	e5932234 	ldr	r2, [r3, #564]	@ 0x234
80025150:	e51b3010 	ldr	r3, [fp, #-16]
80025154:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80025158:	e1520003 	cmp	r2, r3
8002515c:	0a000015 	beq	800251b8 <piperead+0x10c>
80025160:	e51b3010 	ldr	r3, [fp, #-16]
80025164:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80025168:	e2831001 	add	r1, r3, #1
8002516c:	e51b2010 	ldr	r2, [fp, #-16]
80025170:	e5821234 	str	r1, [r2, #564]	@ 0x234
80025174:	e1a03b83 	lsl	r3, r3, #23
80025178:	e1a03ba3 	lsr	r3, r3, #23
8002517c:	e51b2008 	ldr	r2, [fp, #-8]
80025180:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80025184:	e0812002 	add	r2, r1, r2
80025188:	e51b1010 	ldr	r1, [fp, #-16]
8002518c:	e0813003 	add	r3, r1, r3
80025190:	e5d33034 	ldrb	r3, [r3, #52]	@ 0x34
80025194:	e5c23000 	strb	r3, [r2]
80025198:	e51b3008 	ldr	r3, [fp, #-8]
8002519c:	e2833001 	add	r3, r3, #1
800251a0:	e50b3008 	str	r3, [fp, #-8]
800251a4:	e51b2008 	ldr	r2, [fp, #-8]
800251a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800251ac:	e1520003 	cmp	r2, r3
800251b0:	baffffe4 	blt	80025148 <piperead+0x9c>
800251b4:	ea000000 	b	800251bc <piperead+0x110>
800251b8:	e1a00000 	nop			@ (mov r0, r0)
800251bc:	e51b3010 	ldr	r3, [fp, #-16]
800251c0:	e2833f8e 	add	r3, r3, #568	@ 0x238
800251c4:	e1a00003 	mov	r0, r3
800251c8:	eb0003bc 	bl	800260c0 <wakeup>
800251cc:	e51b3010 	ldr	r3, [fp, #-16]
800251d0:	e1a00003 	mov	r0, r3
800251d4:	eb000557 	bl	80026738 <release>
800251d8:	e51b3008 	ldr	r3, [fp, #-8]
800251dc:	e1a00003 	mov	r0, r3
800251e0:	e24bd004 	sub	sp, fp, #4
800251e4:	e8bd8800 	pop	{fp, pc}
800251e8:	800b0e54 	.word	0x800b0e54

800251ec <pinit>:
800251ec:	e92d4800 	push	{fp, lr}
800251f0:	e28db004 	add	fp, sp, #4
800251f4:	e59f100c 	ldr	r1, [pc, #12]	@ 80025208 <pinit+0x1c>
800251f8:	e59f000c 	ldr	r0, [pc, #12]	@ 8002520c <pinit+0x20>
800251fc:	eb000530 	bl	800266c4 <initlock>
80025200:	e1a00000 	nop			@ (mov r0, r0)
80025204:	e8bd8800 	pop	{fp, pc}
80025208:	80029e10 	.word	0x80029e10
8002520c:	800aea1c 	.word	0x800aea1c

80025210 <allocproc>:
80025210:	e92d4800 	push	{fp, lr}
80025214:	e28db004 	add	fp, sp, #4
80025218:	e24dd008 	sub	sp, sp, #8
8002521c:	e59f0188 	ldr	r0, [pc, #392]	@ 800253ac <allocproc+0x19c>
80025220:	eb000539 	bl	8002670c <acquire>
80025224:	e59f3184 	ldr	r3, [pc, #388]	@ 800253b0 <allocproc+0x1a0>
80025228:	e50b3008 	str	r3, [fp, #-8]
8002522c:	ea000006 	b	8002524c <allocproc+0x3c>
80025230:	e51b3008 	ldr	r3, [fp, #-8]
80025234:	e5d33018 	ldrb	r3, [r3, #24]
80025238:	e3530000 	cmp	r3, #0
8002523c:	0a00000a 	beq	8002526c <allocproc+0x5c>
80025240:	e51b3008 	ldr	r3, [fp, #-8]
80025244:	e2833090 	add	r3, r3, #144	@ 0x90
80025248:	e50b3008 	str	r3, [fp, #-8]
8002524c:	e51b3008 	ldr	r3, [fp, #-8]
80025250:	e59f215c 	ldr	r2, [pc, #348]	@ 800253b4 <allocproc+0x1a4>
80025254:	e1530002 	cmp	r3, r2
80025258:	3afffff4 	bcc	80025230 <allocproc+0x20>
8002525c:	e59f0148 	ldr	r0, [pc, #328]	@ 800253ac <allocproc+0x19c>
80025260:	eb000534 	bl	80026738 <release>
80025264:	e3a03000 	mov	r3, #0
80025268:	ea00004c 	b	800253a0 <allocproc+0x190>
8002526c:	e1a00000 	nop			@ (mov r0, r0)
80025270:	e51b3008 	ldr	r3, [fp, #-8]
80025274:	e3a02001 	mov	r2, #1
80025278:	e5c32018 	strb	r2, [r3, #24]
8002527c:	e59f3134 	ldr	r3, [pc, #308]	@ 800253b8 <allocproc+0x1a8>
80025280:	e5933000 	ldr	r3, [r3]
80025284:	e2832001 	add	r2, r3, #1
80025288:	e59f1128 	ldr	r1, [pc, #296]	@ 800253b8 <allocproc+0x1a8>
8002528c:	e5812000 	str	r2, [r1]
80025290:	e51b2008 	ldr	r2, [fp, #-8]
80025294:	e582301c 	str	r3, [r2, #28]
80025298:	e59f010c 	ldr	r0, [pc, #268]	@ 800253ac <allocproc+0x19c>
8002529c:	eb000525 	bl	80026738 <release>
800252a0:	ebfff0e2 	bl	80021630 <alloc_page>
800252a4:	e1a02000 	mov	r2, r0
800252a8:	e51b3008 	ldr	r3, [fp, #-8]
800252ac:	e5832014 	str	r2, [r3, #20]
800252b0:	e51b3008 	ldr	r3, [fp, #-8]
800252b4:	e5933014 	ldr	r3, [r3, #20]
800252b8:	e3530000 	cmp	r3, #0
800252bc:	1a000004 	bne	800252d4 <allocproc+0xc4>
800252c0:	e51b3008 	ldr	r3, [fp, #-8]
800252c4:	e3a02000 	mov	r2, #0
800252c8:	e5c32018 	strb	r2, [r3, #24]
800252cc:	e3a03000 	mov	r3, #0
800252d0:	ea000032 	b	800253a0 <allocproc+0x190>
800252d4:	e51b3008 	ldr	r3, [fp, #-8]
800252d8:	e5933014 	ldr	r3, [r3, #20]
800252dc:	e2833a01 	add	r3, r3, #4096	@ 0x1000
800252e0:	e50b300c 	str	r3, [fp, #-12]
800252e4:	e51b300c 	ldr	r3, [fp, #-12]
800252e8:	e2433048 	sub	r3, r3, #72	@ 0x48
800252ec:	e50b300c 	str	r3, [fp, #-12]
800252f0:	e51b3008 	ldr	r3, [fp, #-8]
800252f4:	e51b200c 	ldr	r2, [fp, #-12]
800252f8:	e5832024 	str	r2, [r3, #36]	@ 0x24
800252fc:	e51b300c 	ldr	r3, [fp, #-12]
80025300:	e2433004 	sub	r3, r3, #4
80025304:	e50b300c 	str	r3, [fp, #-12]
80025308:	e59f20ac 	ldr	r2, [pc, #172]	@ 800253bc <allocproc+0x1ac>
8002530c:	e51b300c 	ldr	r3, [fp, #-12]
80025310:	e5832000 	str	r2, [r3]
80025314:	e51b300c 	ldr	r3, [fp, #-12]
80025318:	e2433004 	sub	r3, r3, #4
8002531c:	e50b300c 	str	r3, [fp, #-12]
80025320:	e51b3008 	ldr	r3, [fp, #-8]
80025324:	e5933014 	ldr	r3, [r3, #20]
80025328:	e2832a01 	add	r2, r3, #4096	@ 0x1000
8002532c:	e51b300c 	ldr	r3, [fp, #-12]
80025330:	e5832000 	str	r2, [r3]
80025334:	e51b300c 	ldr	r3, [fp, #-12]
80025338:	e2433028 	sub	r3, r3, #40	@ 0x28
8002533c:	e50b300c 	str	r3, [fp, #-12]
80025340:	e51b3008 	ldr	r3, [fp, #-8]
80025344:	e51b200c 	ldr	r2, [fp, #-12]
80025348:	e5832028 	str	r2, [r3, #40]	@ 0x28
8002534c:	e51b3008 	ldr	r3, [fp, #-8]
80025350:	e5933028 	ldr	r3, [r3, #40]	@ 0x28
80025354:	e3a02028 	mov	r2, #40	@ 0x28
80025358:	e3a01000 	mov	r1, #0
8002535c:	e1a00003 	mov	r0, r3
80025360:	ebffeb26 	bl	80020000 <memset>
80025364:	e59f2054 	ldr	r2, [pc, #84]	@ 800253c0 <allocproc+0x1b0>
80025368:	e51b3008 	ldr	r3, [fp, #-8]
8002536c:	e5933028 	ldr	r3, [r3, #40]	@ 0x28
80025370:	e2822004 	add	r2, r2, #4
80025374:	e5832024 	str	r2, [r3, #36]	@ 0x24
80025378:	e51b3008 	ldr	r3, [fp, #-8]
8002537c:	e3a02001 	mov	r2, #1
80025380:	e583208c 	str	r2, [r3, #140]	@ 0x8c
80025384:	e51b3008 	ldr	r3, [fp, #-8]
80025388:	e3a02000 	mov	r2, #0
8002538c:	e5832008 	str	r2, [r3, #8]
80025390:	e51b3008 	ldr	r3, [fp, #-8]
80025394:	e3a02000 	mov	r2, #0
80025398:	e5832000 	str	r2, [r3]
8002539c:	e51b3008 	ldr	r3, [fp, #-8]
800253a0:	e1a00003 	mov	r0, r3
800253a4:	e24bd004 	sub	sp, fp, #4
800253a8:	e8bd8800 	pop	{fp, pc}
800253ac:	800aea1c 	.word	0x800aea1c
800253b0:	800aea50 	.word	0x800aea50
800253b4:	800b0e50 	.word	0x800b0e50
800253b8:	8002b014 	.word	0x8002b014
800253bc:	80027ef8 	.word	0x80027ef8
800253c0:	80025ef8 	.word	0x80025ef8

800253c4 <error_init>:
800253c4:	e92d4800 	push	{fp, lr}
800253c8:	e28db004 	add	fp, sp, #4
800253cc:	e59f0000 	ldr	r0, [pc]	@ 800253d4 <error_init+0x10>
800253d0:	ebfff1b9 	bl	80021abc <panic>
800253d4:	80029e18 	.word	0x80029e18

800253d8 <userinit>:
800253d8:	e92d4810 	push	{r4, fp, lr}
800253dc:	e28db008 	add	fp, sp, #8
800253e0:	e24dd00c 	sub	sp, sp, #12
800253e4:	ebffff89 	bl	80025210 <allocproc>
800253e8:	e50b0010 	str	r0, [fp, #-16]
800253ec:	e59f2124 	ldr	r2, [pc, #292]	@ 80025518 <userinit+0x140>
800253f0:	e51b3010 	ldr	r3, [fp, #-16]
800253f4:	e5823000 	str	r3, [r2]
800253f8:	eb000ce0 	bl	80028780 <kpt_alloc>
800253fc:	e1a02000 	mov	r2, r0
80025400:	e51b3010 	ldr	r3, [fp, #-16]
80025404:	e5832010 	str	r2, [r3, #16]
80025408:	e51b3010 	ldr	r3, [fp, #-16]
8002540c:	e5933010 	ldr	r3, [r3, #16]
80025410:	e3530000 	cmp	r3, #0
80025414:	1a000001 	bne	80025420 <userinit+0x48>
80025418:	e59f00fc 	ldr	r0, [pc, #252]	@ 8002551c <userinit+0x144>
8002541c:	ebfff1a6 	bl	80021abc <panic>
80025420:	e51b3010 	ldr	r3, [fp, #-16]
80025424:	e5933010 	ldr	r3, [r3, #16]
80025428:	e59f20f0 	ldr	r2, [pc, #240]	@ 80025520 <userinit+0x148>
8002542c:	e59f10f0 	ldr	r1, [pc, #240]	@ 80025524 <userinit+0x14c>
80025430:	e1a00003 	mov	r0, r3
80025434:	eb000d8f 	bl	80028a78 <inituvm>
80025438:	e51b3010 	ldr	r3, [fp, #-16]
8002543c:	e3a02a01 	mov	r2, #4096	@ 0x1000
80025440:	e583200c 	str	r2, [r3, #12]
80025444:	e51b3010 	ldr	r3, [fp, #-16]
80025448:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
8002544c:	e3a02048 	mov	r2, #72	@ 0x48
80025450:	e3a01000 	mov	r1, #0
80025454:	e1a00003 	mov	r0, r3
80025458:	ebffeae8 	bl	80020000 <memset>
8002545c:	e51b3010 	ldr	r3, [fp, #-16]
80025460:	e3a02001 	mov	r2, #1
80025464:	e583208c 	str	r2, [r3, #140]	@ 0x8c
80025468:	e51b3010 	ldr	r3, [fp, #-16]
8002546c:	e3a02000 	mov	r2, #0
80025470:	e5832008 	str	r2, [r3, #8]
80025474:	e51b3010 	ldr	r3, [fp, #-16]
80025478:	e3a02000 	mov	r2, #0
8002547c:	e5832000 	str	r2, [r3]
80025480:	e51b3010 	ldr	r3, [fp, #-16]
80025484:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
80025488:	e59f2098 	ldr	r2, [pc, #152]	@ 80025528 <userinit+0x150>
8002548c:	e5832008 	str	r2, [r3, #8]
80025490:	e51b3010 	ldr	r3, [fp, #-16]
80025494:	e5934024 	ldr	r4, [r3, #36]	@ 0x24
80025498:	ebffec44 	bl	800205b0 <spsr_usr>
8002549c:	e1a03000 	mov	r3, r0
800254a0:	e584300c 	str	r3, [r4, #12]
800254a4:	e51b3010 	ldr	r3, [fp, #-16]
800254a8:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
800254ac:	e3a02a01 	mov	r2, #4096	@ 0x1000
800254b0:	e5832000 	str	r2, [r3]
800254b4:	e51b3010 	ldr	r3, [fp, #-16]
800254b8:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
800254bc:	e3a02000 	mov	r2, #0
800254c0:	e5832004 	str	r2, [r3, #4]
800254c4:	e51b3010 	ldr	r3, [fp, #-16]
800254c8:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
800254cc:	e3a02000 	mov	r2, #0
800254d0:	e5832044 	str	r2, [r3, #68]	@ 0x44
800254d4:	e51b3010 	ldr	r3, [fp, #-16]
800254d8:	e2833078 	add	r3, r3, #120	@ 0x78
800254dc:	e3a02010 	mov	r2, #16
800254e0:	e59f1044 	ldr	r1, [pc, #68]	@ 8002552c <userinit+0x154>
800254e4:	e1a00003 	mov	r0, r3
800254e8:	ebffebd8 	bl	80020450 <safestrcpy>
800254ec:	e59f003c 	ldr	r0, [pc, #60]	@ 80025530 <userinit+0x158>
800254f0:	ebfffbf9 	bl	800244dc <namei>
800254f4:	e1a02000 	mov	r2, r0
800254f8:	e51b3010 	ldr	r3, [fp, #-16]
800254fc:	e5832074 	str	r2, [r3, #116]	@ 0x74
80025500:	e51b3010 	ldr	r3, [fp, #-16]
80025504:	e3a02003 	mov	r2, #3
80025508:	e5c32018 	strb	r2, [r3, #24]
8002550c:	e1a00000 	nop			@ (mov r0, r0)
80025510:	e24bd008 	sub	sp, fp, #8
80025514:	e8bd8810 	pop	{r4, fp, pc}
80025518:	800b0e50 	.word	0x800b0e50
8002551c:	80029e38 	.word	0x80029e38
80025520:	00000034 	.word	0x00000034
80025524:	8002b0a0 	.word	0x8002b0a0
80025528:	800253c4 	.word	0x800253c4
8002552c:	80029e54 	.word	0x80029e54
80025530:	80029e60 	.word	0x80029e60

80025534 <growproc>:
80025534:	e92d4800 	push	{fp, lr}
80025538:	e28db004 	add	fp, sp, #4
8002553c:	e24dd010 	sub	sp, sp, #16
80025540:	e50b0010 	str	r0, [fp, #-16]
80025544:	e59f30d0 	ldr	r3, [pc, #208]	@ 8002561c <growproc+0xe8>
80025548:	e5933000 	ldr	r3, [r3]
8002554c:	e593300c 	ldr	r3, [r3, #12]
80025550:	e50b3008 	str	r3, [fp, #-8]
80025554:	e51b3010 	ldr	r3, [fp, #-16]
80025558:	e3530000 	cmp	r3, #0
8002555c:	da00000f 	ble	800255a0 <growproc+0x6c>
80025560:	e59f30b4 	ldr	r3, [pc, #180]	@ 8002561c <growproc+0xe8>
80025564:	e5933000 	ldr	r3, [r3]
80025568:	e5930010 	ldr	r0, [r3, #16]
8002556c:	e51b2010 	ldr	r2, [fp, #-16]
80025570:	e51b3008 	ldr	r3, [fp, #-8]
80025574:	e0823003 	add	r3, r2, r3
80025578:	e1a02003 	mov	r2, r3
8002557c:	e51b1008 	ldr	r1, [fp, #-8]
80025580:	eb000daa 	bl	80028c30 <allocuvm>
80025584:	e1a03000 	mov	r3, r0
80025588:	e50b3008 	str	r3, [fp, #-8]
8002558c:	e51b3008 	ldr	r3, [fp, #-8]
80025590:	e3530000 	cmp	r3, #0
80025594:	1a000014 	bne	800255ec <growproc+0xb8>
80025598:	e3e03000 	mvn	r3, #0
8002559c:	ea00001b 	b	80025610 <growproc+0xdc>
800255a0:	e51b3010 	ldr	r3, [fp, #-16]
800255a4:	e3530000 	cmp	r3, #0
800255a8:	aa00000f 	bge	800255ec <growproc+0xb8>
800255ac:	e59f3068 	ldr	r3, [pc, #104]	@ 8002561c <growproc+0xe8>
800255b0:	e5933000 	ldr	r3, [r3]
800255b4:	e5930010 	ldr	r0, [r3, #16]
800255b8:	e51b2010 	ldr	r2, [fp, #-16]
800255bc:	e51b3008 	ldr	r3, [fp, #-8]
800255c0:	e0823003 	add	r3, r2, r3
800255c4:	e1a02003 	mov	r2, r3
800255c8:	e51b1008 	ldr	r1, [fp, #-8]
800255cc:	eb000dd6 	bl	80028d2c <deallocuvm>
800255d0:	e1a03000 	mov	r3, r0
800255d4:	e50b3008 	str	r3, [fp, #-8]
800255d8:	e51b3008 	ldr	r3, [fp, #-8]
800255dc:	e3530000 	cmp	r3, #0
800255e0:	1a000001 	bne	800255ec <growproc+0xb8>
800255e4:	e3e03000 	mvn	r3, #0
800255e8:	ea000008 	b	80025610 <growproc+0xdc>
800255ec:	e59f3028 	ldr	r3, [pc, #40]	@ 8002561c <growproc+0xe8>
800255f0:	e5933000 	ldr	r3, [r3]
800255f4:	e51b2008 	ldr	r2, [fp, #-8]
800255f8:	e583200c 	str	r2, [r3, #12]
800255fc:	e59f3018 	ldr	r3, [pc, #24]	@ 8002561c <growproc+0xe8>
80025600:	e5933000 	ldr	r3, [r3]
80025604:	e1a00003 	mov	r0, r3
80025608:	eb000d03 	bl	80028a1c <switchuvm>
8002560c:	e3a03000 	mov	r3, #0
80025610:	e1a00003 	mov	r0, r3
80025614:	e24bd004 	sub	sp, fp, #4
80025618:	e8bd8800 	pop	{fp, pc}
8002561c:	800b0e54 	.word	0x800b0e54

80025620 <fork>:
80025620:	e92d4800 	push	{fp, lr}
80025624:	e28db004 	add	fp, sp, #4
80025628:	e24dd010 	sub	sp, sp, #16
8002562c:	ebfffef7 	bl	80025210 <allocproc>
80025630:	e50b000c 	str	r0, [fp, #-12]
80025634:	e51b300c 	ldr	r3, [fp, #-12]
80025638:	e3530000 	cmp	r3, #0
8002563c:	1a000001 	bne	80025648 <fork+0x28>
80025640:	e3e03000 	mvn	r3, #0
80025644:	ea000076 	b	80025824 <fork+0x204>
80025648:	e59f31e0 	ldr	r3, [pc, #480]	@ 80025830 <fork+0x210>
8002564c:	e5933000 	ldr	r3, [r3]
80025650:	e5932010 	ldr	r2, [r3, #16]
80025654:	e59f31d4 	ldr	r3, [pc, #468]	@ 80025830 <fork+0x210>
80025658:	e5933000 	ldr	r3, [r3]
8002565c:	e593300c 	ldr	r3, [r3, #12]
80025660:	e1a01003 	mov	r1, r3
80025664:	e1a00002 	mov	r0, r2
80025668:	eb000e3e 	bl	80028f68 <copyuvm>
8002566c:	e1a02000 	mov	r2, r0
80025670:	e51b300c 	ldr	r3, [fp, #-12]
80025674:	e5832010 	str	r2, [r3, #16]
80025678:	e51b300c 	ldr	r3, [fp, #-12]
8002567c:	e5933010 	ldr	r3, [r3, #16]
80025680:	e3530000 	cmp	r3, #0
80025684:	1a00000b 	bne	800256b8 <fork+0x98>
80025688:	e51b300c 	ldr	r3, [fp, #-12]
8002568c:	e5933014 	ldr	r3, [r3, #20]
80025690:	e1a00003 	mov	r0, r3
80025694:	ebffefdb 	bl	80021608 <free_page>
80025698:	e51b300c 	ldr	r3, [fp, #-12]
8002569c:	e3a02000 	mov	r2, #0
800256a0:	e5832014 	str	r2, [r3, #20]
800256a4:	e51b300c 	ldr	r3, [fp, #-12]
800256a8:	e3a02000 	mov	r2, #0
800256ac:	e5c32018 	strb	r2, [r3, #24]
800256b0:	e3e03000 	mvn	r3, #0
800256b4:	ea00005a 	b	80025824 <fork+0x204>
800256b8:	e59f3170 	ldr	r3, [pc, #368]	@ 80025830 <fork+0x210>
800256bc:	e5933000 	ldr	r3, [r3]
800256c0:	e593200c 	ldr	r2, [r3, #12]
800256c4:	e51b300c 	ldr	r3, [fp, #-12]
800256c8:	e583200c 	str	r2, [r3, #12]
800256cc:	e59f315c 	ldr	r3, [pc, #348]	@ 80025830 <fork+0x210>
800256d0:	e5932000 	ldr	r2, [r3]
800256d4:	e51b300c 	ldr	r3, [fp, #-12]
800256d8:	e5832020 	str	r2, [r3, #32]
800256dc:	e59f314c 	ldr	r3, [pc, #332]	@ 80025830 <fork+0x210>
800256e0:	e5933000 	ldr	r3, [r3]
800256e4:	e5932024 	ldr	r2, [r3, #36]	@ 0x24
800256e8:	e51b300c 	ldr	r3, [fp, #-12]
800256ec:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
800256f0:	e1a00003 	mov	r0, r3
800256f4:	e1a01002 	mov	r1, r2
800256f8:	e3a03048 	mov	r3, #72	@ 0x48
800256fc:	e1a02003 	mov	r2, r3
80025700:	ebffeaef 	bl	800202c4 <memcpy>
80025704:	e51b300c 	ldr	r3, [fp, #-12]
80025708:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
8002570c:	e3a02000 	mov	r2, #0
80025710:	e5832010 	str	r2, [r3, #16]
80025714:	e3a03000 	mov	r3, #0
80025718:	e50b3008 	str	r3, [fp, #-8]
8002571c:	ea00001b 	b	80025790 <fork+0x170>
80025720:	e59f3108 	ldr	r3, [pc, #264]	@ 80025830 <fork+0x210>
80025724:	e5932000 	ldr	r2, [r3]
80025728:	e51b3008 	ldr	r3, [fp, #-8]
8002572c:	e283300c 	add	r3, r3, #12
80025730:	e1a03103 	lsl	r3, r3, #2
80025734:	e0823003 	add	r3, r2, r3
80025738:	e5933004 	ldr	r3, [r3, #4]
8002573c:	e3530000 	cmp	r3, #0
80025740:	0a00000f 	beq	80025784 <fork+0x164>
80025744:	e59f30e4 	ldr	r3, [pc, #228]	@ 80025830 <fork+0x210>
80025748:	e5932000 	ldr	r2, [r3]
8002574c:	e51b3008 	ldr	r3, [fp, #-8]
80025750:	e283300c 	add	r3, r3, #12
80025754:	e1a03103 	lsl	r3, r3, #2
80025758:	e0823003 	add	r3, r2, r3
8002575c:	e5933004 	ldr	r3, [r3, #4]
80025760:	e1a00003 	mov	r0, r3
80025764:	ebfff4a5 	bl	80022a00 <filedup>
80025768:	e1a01000 	mov	r1, r0
8002576c:	e51b200c 	ldr	r2, [fp, #-12]
80025770:	e51b3008 	ldr	r3, [fp, #-8]
80025774:	e283300c 	add	r3, r3, #12
80025778:	e1a03103 	lsl	r3, r3, #2
8002577c:	e0823003 	add	r3, r2, r3
80025780:	e5831004 	str	r1, [r3, #4]
80025784:	e51b3008 	ldr	r3, [fp, #-8]
80025788:	e2833001 	add	r3, r3, #1
8002578c:	e50b3008 	str	r3, [fp, #-8]
80025790:	e51b3008 	ldr	r3, [fp, #-8]
80025794:	e353000f 	cmp	r3, #15
80025798:	daffffe0 	ble	80025720 <fork+0x100>
8002579c:	e59f308c 	ldr	r3, [pc, #140]	@ 80025830 <fork+0x210>
800257a0:	e5933000 	ldr	r3, [r3]
800257a4:	e5933074 	ldr	r3, [r3, #116]	@ 0x74
800257a8:	e1a00003 	mov	r0, r3
800257ac:	ebfff765 	bl	80023548 <idup>
800257b0:	e1a02000 	mov	r2, r0
800257b4:	e51b300c 	ldr	r3, [fp, #-12]
800257b8:	e5832074 	str	r2, [r3, #116]	@ 0x74
800257bc:	e51b300c 	ldr	r3, [fp, #-12]
800257c0:	e593301c 	ldr	r3, [r3, #28]
800257c4:	e50b3010 	str	r3, [fp, #-16]
800257c8:	e51b300c 	ldr	r3, [fp, #-12]
800257cc:	e3a02003 	mov	r2, #3
800257d0:	e5c32018 	strb	r2, [r3, #24]
800257d4:	e51b300c 	ldr	r3, [fp, #-12]
800257d8:	e2830078 	add	r0, r3, #120	@ 0x78
800257dc:	e59f304c 	ldr	r3, [pc, #76]	@ 80025830 <fork+0x210>
800257e0:	e5933000 	ldr	r3, [r3]
800257e4:	e2833078 	add	r3, r3, #120	@ 0x78
800257e8:	e3a02010 	mov	r2, #16
800257ec:	e1a01003 	mov	r1, r3
800257f0:	ebffeb16 	bl	80020450 <safestrcpy>
800257f4:	e59f3034 	ldr	r3, [pc, #52]	@ 80025830 <fork+0x210>
800257f8:	e5933000 	ldr	r3, [r3]
800257fc:	e593208c 	ldr	r2, [r3, #140]	@ 0x8c
80025800:	e51b300c 	ldr	r3, [fp, #-12]
80025804:	e583208c 	str	r2, [r3, #140]	@ 0x8c
80025808:	e51b300c 	ldr	r3, [fp, #-12]
8002580c:	e3a02000 	mov	r2, #0
80025810:	e5832008 	str	r2, [r3, #8]
80025814:	e51b300c 	ldr	r3, [fp, #-12]
80025818:	e3a02000 	mov	r2, #0
8002581c:	e5832004 	str	r2, [r3, #4]
80025820:	e51b3010 	ldr	r3, [fp, #-16]
80025824:	e1a00003 	mov	r0, r3
80025828:	e24bd004 	sub	sp, fp, #4
8002582c:	e8bd8800 	pop	{fp, pc}
80025830:	800b0e54 	.word	0x800b0e54

80025834 <exit>:
80025834:	e92d4800 	push	{fp, lr}
80025838:	e28db004 	add	fp, sp, #4
8002583c:	e24dd008 	sub	sp, sp, #8
80025840:	e59f3170 	ldr	r3, [pc, #368]	@ 800259b8 <exit+0x184>
80025844:	e5932000 	ldr	r2, [r3]
80025848:	e59f316c 	ldr	r3, [pc, #364]	@ 800259bc <exit+0x188>
8002584c:	e5933000 	ldr	r3, [r3]
80025850:	e1520003 	cmp	r2, r3
80025854:	1a000001 	bne	80025860 <exit+0x2c>
80025858:	e59f0160 	ldr	r0, [pc, #352]	@ 800259c0 <exit+0x18c>
8002585c:	ebfff096 	bl	80021abc <panic>
80025860:	e3a03000 	mov	r3, #0
80025864:	e50b300c 	str	r3, [fp, #-12]
80025868:	ea00001c 	b	800258e0 <exit+0xac>
8002586c:	e59f3144 	ldr	r3, [pc, #324]	@ 800259b8 <exit+0x184>
80025870:	e5932000 	ldr	r2, [r3]
80025874:	e51b300c 	ldr	r3, [fp, #-12]
80025878:	e283300c 	add	r3, r3, #12
8002587c:	e1a03103 	lsl	r3, r3, #2
80025880:	e0823003 	add	r3, r2, r3
80025884:	e5933004 	ldr	r3, [r3, #4]
80025888:	e3530000 	cmp	r3, #0
8002588c:	0a000010 	beq	800258d4 <exit+0xa0>
80025890:	e59f3120 	ldr	r3, [pc, #288]	@ 800259b8 <exit+0x184>
80025894:	e5932000 	ldr	r2, [r3]
80025898:	e51b300c 	ldr	r3, [fp, #-12]
8002589c:	e283300c 	add	r3, r3, #12
800258a0:	e1a03103 	lsl	r3, r3, #2
800258a4:	e0823003 	add	r3, r2, r3
800258a8:	e5933004 	ldr	r3, [r3, #4]
800258ac:	e1a00003 	mov	r0, r3
800258b0:	ebfff46b 	bl	80022a64 <fileclose>
800258b4:	e59f30fc 	ldr	r3, [pc, #252]	@ 800259b8 <exit+0x184>
800258b8:	e5932000 	ldr	r2, [r3]
800258bc:	e51b300c 	ldr	r3, [fp, #-12]
800258c0:	e283300c 	add	r3, r3, #12
800258c4:	e1a03103 	lsl	r3, r3, #2
800258c8:	e0823003 	add	r3, r2, r3
800258cc:	e3a02000 	mov	r2, #0
800258d0:	e5832004 	str	r2, [r3, #4]
800258d4:	e51b300c 	ldr	r3, [fp, #-12]
800258d8:	e2833001 	add	r3, r3, #1
800258dc:	e50b300c 	str	r3, [fp, #-12]
800258e0:	e51b300c 	ldr	r3, [fp, #-12]
800258e4:	e353000f 	cmp	r3, #15
800258e8:	daffffdf 	ble	8002586c <exit+0x38>
800258ec:	e59f30c4 	ldr	r3, [pc, #196]	@ 800259b8 <exit+0x184>
800258f0:	e5933000 	ldr	r3, [r3]
800258f4:	e5933074 	ldr	r3, [r3, #116]	@ 0x74
800258f8:	e1a00003 	mov	r0, r3
800258fc:	ebfff7a9 	bl	800237a8 <iput>
80025900:	e59f30b0 	ldr	r3, [pc, #176]	@ 800259b8 <exit+0x184>
80025904:	e5933000 	ldr	r3, [r3]
80025908:	e3a02000 	mov	r2, #0
8002590c:	e5832074 	str	r2, [r3, #116]	@ 0x74
80025910:	e59f00ac 	ldr	r0, [pc, #172]	@ 800259c4 <exit+0x190>
80025914:	eb00037c 	bl	8002670c <acquire>
80025918:	e59f3098 	ldr	r3, [pc, #152]	@ 800259b8 <exit+0x184>
8002591c:	e5933000 	ldr	r3, [r3]
80025920:	e5933020 	ldr	r3, [r3, #32]
80025924:	e1a00003 	mov	r0, r3
80025928:	eb0001b6 	bl	80026008 <wakeup1>
8002592c:	e59f3094 	ldr	r3, [pc, #148]	@ 800259c8 <exit+0x194>
80025930:	e50b3008 	str	r3, [fp, #-8]
80025934:	ea000014 	b	8002598c <exit+0x158>
80025938:	e51b3008 	ldr	r3, [fp, #-8]
8002593c:	e5932020 	ldr	r2, [r3, #32]
80025940:	e59f3070 	ldr	r3, [pc, #112]	@ 800259b8 <exit+0x184>
80025944:	e5933000 	ldr	r3, [r3]
80025948:	e1520003 	cmp	r2, r3
8002594c:	1a00000b 	bne	80025980 <exit+0x14c>
80025950:	e59f3064 	ldr	r3, [pc, #100]	@ 800259bc <exit+0x188>
80025954:	e5932000 	ldr	r2, [r3]
80025958:	e51b3008 	ldr	r3, [fp, #-8]
8002595c:	e5832020 	str	r2, [r3, #32]
80025960:	e51b3008 	ldr	r3, [fp, #-8]
80025964:	e5d33018 	ldrb	r3, [r3, #24]
80025968:	e3530005 	cmp	r3, #5
8002596c:	1a000003 	bne	80025980 <exit+0x14c>
80025970:	e59f3044 	ldr	r3, [pc, #68]	@ 800259bc <exit+0x188>
80025974:	e5933000 	ldr	r3, [r3]
80025978:	e1a00003 	mov	r0, r3
8002597c:	eb0001a1 	bl	80026008 <wakeup1>
80025980:	e51b3008 	ldr	r3, [fp, #-8]
80025984:	e2833090 	add	r3, r3, #144	@ 0x90
80025988:	e50b3008 	str	r3, [fp, #-8]
8002598c:	e51b3008 	ldr	r3, [fp, #-8]
80025990:	e59f2034 	ldr	r2, [pc, #52]	@ 800259cc <exit+0x198>
80025994:	e1530002 	cmp	r3, r2
80025998:	3affffe6 	bcc	80025938 <exit+0x104>
8002599c:	e59f3014 	ldr	r3, [pc, #20]	@ 800259b8 <exit+0x184>
800259a0:	e5933000 	ldr	r3, [r3]
800259a4:	e3a02005 	mov	r2, #5
800259a8:	e5c32018 	strb	r2, [r3, #24]
800259ac:	eb000109 	bl	80025dd8 <sched>
800259b0:	e59f0018 	ldr	r0, [pc, #24]	@ 800259d0 <exit+0x19c>
800259b4:	ebfff040 	bl	80021abc <panic>
800259b8:	800b0e54 	.word	0x800b0e54
800259bc:	800b0e50 	.word	0x800b0e50
800259c0:	80029e64 	.word	0x80029e64
800259c4:	800aea1c 	.word	0x800aea1c
800259c8:	800aea50 	.word	0x800aea50
800259cc:	800b0e50 	.word	0x800b0e50
800259d0:	80029e74 	.word	0x80029e74

800259d4 <wait>:
800259d4:	e92d4800 	push	{fp, lr}
800259d8:	e28db004 	add	fp, sp, #4
800259dc:	e24dd010 	sub	sp, sp, #16
800259e0:	e59f013c 	ldr	r0, [pc, #316]	@ 80025b24 <wait+0x150>
800259e4:	eb000348 	bl	8002670c <acquire>
800259e8:	e3a03000 	mov	r3, #0
800259ec:	e50b300c 	str	r3, [fp, #-12]
800259f0:	e59f3130 	ldr	r3, [pc, #304]	@ 80025b28 <wait+0x154>
800259f4:	e50b3008 	str	r3, [fp, #-8]
800259f8:	ea000030 	b	80025ac0 <wait+0xec>
800259fc:	e51b3008 	ldr	r3, [fp, #-8]
80025a00:	e5932020 	ldr	r2, [r3, #32]
80025a04:	e59f3120 	ldr	r3, [pc, #288]	@ 80025b2c <wait+0x158>
80025a08:	e5933000 	ldr	r3, [r3]
80025a0c:	e1520003 	cmp	r2, r3
80025a10:	1a000026 	bne	80025ab0 <wait+0xdc>
80025a14:	e3a03001 	mov	r3, #1
80025a18:	e50b300c 	str	r3, [fp, #-12]
80025a1c:	e51b3008 	ldr	r3, [fp, #-8]
80025a20:	e5d33018 	ldrb	r3, [r3, #24]
80025a24:	e3530005 	cmp	r3, #5
80025a28:	1a000021 	bne	80025ab4 <wait+0xe0>
80025a2c:	e51b3008 	ldr	r3, [fp, #-8]
80025a30:	e593301c 	ldr	r3, [r3, #28]
80025a34:	e50b3010 	str	r3, [fp, #-16]
80025a38:	e51b3008 	ldr	r3, [fp, #-8]
80025a3c:	e5933014 	ldr	r3, [r3, #20]
80025a40:	e1a00003 	mov	r0, r3
80025a44:	ebffeeef 	bl	80021608 <free_page>
80025a48:	e51b3008 	ldr	r3, [fp, #-8]
80025a4c:	e3a02000 	mov	r2, #0
80025a50:	e5832014 	str	r2, [r3, #20]
80025a54:	e51b3008 	ldr	r3, [fp, #-8]
80025a58:	e5933010 	ldr	r3, [r3, #16]
80025a5c:	e1a00003 	mov	r0, r3
80025a60:	eb000cf7 	bl	80028e44 <freevm>
80025a64:	e51b3008 	ldr	r3, [fp, #-8]
80025a68:	e3a02000 	mov	r2, #0
80025a6c:	e5c32018 	strb	r2, [r3, #24]
80025a70:	e51b3008 	ldr	r3, [fp, #-8]
80025a74:	e3a02000 	mov	r2, #0
80025a78:	e583201c 	str	r2, [r3, #28]
80025a7c:	e51b3008 	ldr	r3, [fp, #-8]
80025a80:	e3a02000 	mov	r2, #0
80025a84:	e5832020 	str	r2, [r3, #32]
80025a88:	e51b3008 	ldr	r3, [fp, #-8]
80025a8c:	e3a02000 	mov	r2, #0
80025a90:	e5c32078 	strb	r2, [r3, #120]	@ 0x78
80025a94:	e51b3008 	ldr	r3, [fp, #-8]
80025a98:	e3a02000 	mov	r2, #0
80025a9c:	e5832030 	str	r2, [r3, #48]	@ 0x30
80025aa0:	e59f007c 	ldr	r0, [pc, #124]	@ 80025b24 <wait+0x150>
80025aa4:	eb000323 	bl	80026738 <release>
80025aa8:	e51b3010 	ldr	r3, [fp, #-16]
80025aac:	ea000019 	b	80025b18 <wait+0x144>
80025ab0:	e1a00000 	nop			@ (mov r0, r0)
80025ab4:	e51b3008 	ldr	r3, [fp, #-8]
80025ab8:	e2833090 	add	r3, r3, #144	@ 0x90
80025abc:	e50b3008 	str	r3, [fp, #-8]
80025ac0:	e51b3008 	ldr	r3, [fp, #-8]
80025ac4:	e59f2064 	ldr	r2, [pc, #100]	@ 80025b30 <wait+0x15c>
80025ac8:	e1530002 	cmp	r3, r2
80025acc:	3affffca 	bcc	800259fc <wait+0x28>
80025ad0:	e51b300c 	ldr	r3, [fp, #-12]
80025ad4:	e3530000 	cmp	r3, #0
80025ad8:	0a000004 	beq	80025af0 <wait+0x11c>
80025adc:	e59f3048 	ldr	r3, [pc, #72]	@ 80025b2c <wait+0x158>
80025ae0:	e5933000 	ldr	r3, [r3]
80025ae4:	e5933030 	ldr	r3, [r3, #48]	@ 0x30
80025ae8:	e3530000 	cmp	r3, #0
80025aec:	0a000003 	beq	80025b00 <wait+0x12c>
80025af0:	e59f002c 	ldr	r0, [pc, #44]	@ 80025b24 <wait+0x150>
80025af4:	eb00030f 	bl	80026738 <release>
80025af8:	e3e03000 	mvn	r3, #0
80025afc:	ea000005 	b	80025b18 <wait+0x144>
80025b00:	e59f3024 	ldr	r3, [pc, #36]	@ 80025b2c <wait+0x158>
80025b04:	e5933000 	ldr	r3, [r3]
80025b08:	e59f1014 	ldr	r1, [pc, #20]	@ 80025b24 <wait+0x150>
80025b0c:	e1a00003 	mov	r0, r3
80025b10:	eb000108 	bl	80025f38 <sleep>
80025b14:	eaffffb3 	b	800259e8 <wait+0x14>
80025b18:	e1a00003 	mov	r0, r3
80025b1c:	e24bd004 	sub	sp, fp, #4
80025b20:	e8bd8800 	pop	{fp, pc}
80025b24:	800aea1c 	.word	0x800aea1c
80025b28:	800aea50 	.word	0x800aea50
80025b2c:	800b0e54 	.word	0x800b0e54
80025b30:	800b0e50 	.word	0x800b0e50

80025b34 <rand>:
80025b34:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80025b38:	e28db000 	add	fp, sp, #0
80025b3c:	e59f3034 	ldr	r3, [pc, #52]	@ 80025b78 <rand+0x44>
80025b40:	e5933000 	ldr	r3, [r3]
80025b44:	e59f2030 	ldr	r2, [pc, #48]	@ 80025b7c <rand+0x48>
80025b48:	e0030392 	mul	r3, r2, r3
80025b4c:	e2833a03 	add	r3, r3, #12288	@ 0x3000
80025b50:	e2833039 	add	r3, r3, #57	@ 0x39
80025b54:	e3c33102 	bic	r3, r3, #-2147483648	@ 0x80000000
80025b58:	e59f2018 	ldr	r2, [pc, #24]	@ 80025b78 <rand+0x44>
80025b5c:	e5823000 	str	r3, [r2]
80025b60:	e59f3010 	ldr	r3, [pc, #16]	@ 80025b78 <rand+0x44>
80025b64:	e5933000 	ldr	r3, [r3]
80025b68:	e1a00003 	mov	r0, r3
80025b6c:	e28bd000 	add	sp, fp, #0
80025b70:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80025b74:	e12fff1e 	bx	lr
80025b78:	800b1358 	.word	0x800b1358
80025b7c:	41c64e6d 	.word	0x41c64e6d

80025b80 <hold_lottery>:
80025b80:	e92d4800 	push	{fp, lr}
80025b84:	e28db004 	add	fp, sp, #4
80025b88:	e24dd020 	sub	sp, sp, #32
80025b8c:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80025b90:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80025b94:	e3530000 	cmp	r3, #0
80025b98:	1a000003 	bne	80025bac <hold_lottery+0x2c>
80025b9c:	e59f00ec 	ldr	r0, [pc, #236]	@ 80025c90 <hold_lottery+0x110>
80025ba0:	ebffef3b 	bl	80021894 <cprintf>
80025ba4:	e3a03000 	mov	r3, #0
80025ba8:	ea000035 	b	80025c84 <hold_lottery+0x104>
80025bac:	ebffffe0 	bl	80025b34 <rand>
80025bb0:	e50b0010 	str	r0, [fp, #-16]
80025bb4:	e51b3010 	ldr	r3, [fp, #-16]
80025bb8:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
80025bbc:	e1a00003 	mov	r0, r3
80025bc0:	eb000f6b 	bl	80029974 <__aeabi_uidivmod>
80025bc4:	e1a03001 	mov	r3, r1
80025bc8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80025bcc:	e3a03000 	mov	r3, #0
80025bd0:	e50b300c 	str	r3, [fp, #-12]
80025bd4:	e59f30b8 	ldr	r3, [pc, #184]	@ 80025c94 <hold_lottery+0x114>
80025bd8:	e50b3008 	str	r3, [fp, #-8]
80025bdc:	ea000021 	b	80025c68 <hold_lottery+0xe8>
80025be0:	e51b3008 	ldr	r3, [fp, #-8]
80025be4:	e5d33018 	ldrb	r3, [r3, #24]
80025be8:	e3530003 	cmp	r3, #3
80025bec:	1a000019 	bne	80025c58 <hold_lottery+0xd8>
80025bf0:	e51b3008 	ldr	r3, [fp, #-8]
80025bf4:	e593308c 	ldr	r3, [r3, #140]	@ 0x8c
80025bf8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80025bfc:	e51b3008 	ldr	r3, [fp, #-8]
80025c00:	e5933008 	ldr	r3, [r3, #8]
80025c04:	e3530000 	cmp	r3, #0
80025c08:	da000008 	ble	80025c30 <hold_lottery+0xb0>
80025c0c:	e51b3008 	ldr	r3, [fp, #-8]
80025c10:	e5933008 	ldr	r3, [r3, #8]
80025c14:	e2432001 	sub	r2, r3, #1
80025c18:	e51b3008 	ldr	r3, [fp, #-8]
80025c1c:	e5832008 	str	r2, [r3, #8]
80025c20:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80025c24:	e51b200c 	ldr	r2, [fp, #-12]
80025c28:	e0823003 	add	r3, r2, r3
80025c2c:	e50b300c 	str	r3, [fp, #-12]
80025c30:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80025c34:	e51b200c 	ldr	r2, [fp, #-12]
80025c38:	e0823003 	add	r3, r2, r3
80025c3c:	e50b300c 	str	r3, [fp, #-12]
80025c40:	e51b200c 	ldr	r2, [fp, #-12]
80025c44:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025c48:	e1520003 	cmp	r2, r3
80025c4c:	9a000002 	bls	80025c5c <hold_lottery+0xdc>
80025c50:	e51b3008 	ldr	r3, [fp, #-8]
80025c54:	ea00000a 	b	80025c84 <hold_lottery+0x104>
80025c58:	e1a00000 	nop			@ (mov r0, r0)
80025c5c:	e51b3008 	ldr	r3, [fp, #-8]
80025c60:	e2833090 	add	r3, r3, #144	@ 0x90
80025c64:	e50b3008 	str	r3, [fp, #-8]
80025c68:	e51b3008 	ldr	r3, [fp, #-8]
80025c6c:	e59f2024 	ldr	r2, [pc, #36]	@ 80025c98 <hold_lottery+0x118>
80025c70:	e1530002 	cmp	r3, r2
80025c74:	3affffd9 	bcc	80025be0 <hold_lottery+0x60>
80025c78:	e59f001c 	ldr	r0, [pc, #28]	@ 80025c9c <hold_lottery+0x11c>
80025c7c:	ebffef04 	bl	80021894 <cprintf>
80025c80:	e3a03000 	mov	r3, #0
80025c84:	e1a00003 	mov	r0, r3
80025c88:	e24bd004 	sub	sp, fp, #4
80025c8c:	e8bd8800 	pop	{fp, pc}
80025c90:	80029e80 	.word	0x80029e80
80025c94:	800aea50 	.word	0x800aea50
80025c98:	800b0e50 	.word	0x800b0e50
80025c9c:	80029ec8 	.word	0x80029ec8

80025ca0 <scheduler>:
80025ca0:	e92d4800 	push	{fp, lr}
80025ca4:	e28db004 	add	fp, sp, #4
80025ca8:	e24dd010 	sub	sp, sp, #16
80025cac:	ebffea31 	bl	80020578 <sti>
80025cb0:	e59f010c 	ldr	r0, [pc, #268]	@ 80025dc4 <scheduler+0x124>
80025cb4:	eb000294 	bl	8002670c <acquire>
80025cb8:	e3a03000 	mov	r3, #0
80025cbc:	e50b300c 	str	r3, [fp, #-12]
80025cc0:	e59f3100 	ldr	r3, [pc, #256]	@ 80025dc8 <scheduler+0x128>
80025cc4:	e50b3008 	str	r3, [fp, #-8]
80025cc8:	ea000014 	b	80025d20 <scheduler+0x80>
80025ccc:	e51b3008 	ldr	r3, [fp, #-8]
80025cd0:	e5d33018 	ldrb	r3, [r3, #24]
80025cd4:	e3530003 	cmp	r3, #3
80025cd8:	1a00000d 	bne	80025d14 <scheduler+0x74>
80025cdc:	e51b3008 	ldr	r3, [fp, #-8]
80025ce0:	e5933008 	ldr	r3, [r3, #8]
80025ce4:	e3530000 	cmp	r3, #0
80025ce8:	da000004 	ble	80025d00 <scheduler+0x60>
80025cec:	e51b3008 	ldr	r3, [fp, #-8]
80025cf0:	e593308c 	ldr	r3, [r3, #140]	@ 0x8c
80025cf4:	e51b200c 	ldr	r2, [fp, #-12]
80025cf8:	e0823003 	add	r3, r2, r3
80025cfc:	e50b300c 	str	r3, [fp, #-12]
80025d00:	e51b3008 	ldr	r3, [fp, #-8]
80025d04:	e593308c 	ldr	r3, [r3, #140]	@ 0x8c
80025d08:	e51b200c 	ldr	r2, [fp, #-12]
80025d0c:	e0823003 	add	r3, r2, r3
80025d10:	e50b300c 	str	r3, [fp, #-12]
80025d14:	e51b3008 	ldr	r3, [fp, #-8]
80025d18:	e2833090 	add	r3, r3, #144	@ 0x90
80025d1c:	e50b3008 	str	r3, [fp, #-8]
80025d20:	e51b3008 	ldr	r3, [fp, #-8]
80025d24:	e59f20a0 	ldr	r2, [pc, #160]	@ 80025dcc <scheduler+0x12c>
80025d28:	e1530002 	cmp	r3, r2
80025d2c:	3affffe6 	bcc	80025ccc <scheduler+0x2c>
80025d30:	e51b300c 	ldr	r3, [fp, #-12]
80025d34:	e3530000 	cmp	r3, #0
80025d38:	1a000002 	bne	80025d48 <scheduler+0xa8>
80025d3c:	e59f0080 	ldr	r0, [pc, #128]	@ 80025dc4 <scheduler+0x124>
80025d40:	eb00027c 	bl	80026738 <release>
80025d44:	ea00001d 	b	80025dc0 <scheduler+0x120>
80025d48:	e51b000c 	ldr	r0, [fp, #-12]
80025d4c:	ebffff8b 	bl	80025b80 <hold_lottery>
80025d50:	e50b0010 	str	r0, [fp, #-16]
80025d54:	e51b3010 	ldr	r3, [fp, #-16]
80025d58:	e5933000 	ldr	r3, [r3]
80025d5c:	e2832001 	add	r2, r3, #1
80025d60:	e51b3010 	ldr	r3, [fp, #-16]
80025d64:	e5832000 	str	r2, [r3]
80025d68:	e59f2060 	ldr	r2, [pc, #96]	@ 80025dd0 <scheduler+0x130>
80025d6c:	e51b3010 	ldr	r3, [fp, #-16]
80025d70:	e5823000 	str	r3, [r2]
80025d74:	e51b0010 	ldr	r0, [fp, #-16]
80025d78:	eb000b27 	bl	80028a1c <switchuvm>
80025d7c:	e51b3010 	ldr	r3, [fp, #-16]
80025d80:	e3a02004 	mov	r2, #4
80025d84:	e5c32018 	strb	r2, [r3, #24]
80025d88:	e59f3044 	ldr	r3, [pc, #68]	@ 80025dd4 <scheduler+0x134>
80025d8c:	e5933000 	ldr	r3, [r3]
80025d90:	e2832004 	add	r2, r3, #4
80025d94:	e59f3034 	ldr	r3, [pc, #52]	@ 80025dd0 <scheduler+0x130>
80025d98:	e5933000 	ldr	r3, [r3]
80025d9c:	e5933028 	ldr	r3, [r3, #40]	@ 0x28
80025da0:	e1a01003 	mov	r1, r3
80025da4:	e1a00002 	mov	r0, r2
80025da8:	eb000277 	bl	8002678c <swtch>
80025dac:	e59f301c 	ldr	r3, [pc, #28]	@ 80025dd0 <scheduler+0x130>
80025db0:	e3a02000 	mov	r2, #0
80025db4:	e5832000 	str	r2, [r3]
80025db8:	e59f0004 	ldr	r0, [pc, #4]	@ 80025dc4 <scheduler+0x124>
80025dbc:	eb00025d 	bl	80026738 <release>
80025dc0:	eaffffb9 	b	80025cac <scheduler+0xc>
80025dc4:	800aea1c 	.word	0x800aea1c
80025dc8:	800aea50 	.word	0x800aea50
80025dcc:	800b0e50 	.word	0x800b0e50
80025dd0:	800b0e54 	.word	0x800b0e54
80025dd4:	800aea10 	.word	0x800aea10

80025dd8 <sched>:
80025dd8:	e92d4800 	push	{fp, lr}
80025ddc:	e28db004 	add	fp, sp, #4
80025de0:	e24dd008 	sub	sp, sp, #8
80025de4:	e59f00b4 	ldr	r0, [pc, #180]	@ 80025ea0 <sched+0xc8>
80025de8:	eb00025d 	bl	80026764 <holding>
80025dec:	e1a03000 	mov	r3, r0
80025df0:	e3530000 	cmp	r3, #0
80025df4:	1a000001 	bne	80025e00 <sched+0x28>
80025df8:	e59f00a4 	ldr	r0, [pc, #164]	@ 80025ea4 <sched+0xcc>
80025dfc:	ebffef2e 	bl	80021abc <panic>
80025e00:	e59f30a0 	ldr	r3, [pc, #160]	@ 80025ea8 <sched+0xd0>
80025e04:	e5933000 	ldr	r3, [r3]
80025e08:	e593300c 	ldr	r3, [r3, #12]
80025e0c:	e3530001 	cmp	r3, #1
80025e10:	0a000001 	beq	80025e1c <sched+0x44>
80025e14:	e59f0090 	ldr	r0, [pc, #144]	@ 80025eac <sched+0xd4>
80025e18:	ebffef27 	bl	80021abc <panic>
80025e1c:	e59f308c 	ldr	r3, [pc, #140]	@ 80025eb0 <sched+0xd8>
80025e20:	e5933000 	ldr	r3, [r3]
80025e24:	e5d33018 	ldrb	r3, [r3, #24]
80025e28:	e3530004 	cmp	r3, #4
80025e2c:	1a000001 	bne	80025e38 <sched+0x60>
80025e30:	e59f007c 	ldr	r0, [pc, #124]	@ 80025eb4 <sched+0xdc>
80025e34:	ebffef20 	bl	80021abc <panic>
80025e38:	ebffe9ec 	bl	800205f0 <int_enabled>
80025e3c:	e1a03000 	mov	r3, r0
80025e40:	e3530000 	cmp	r3, #0
80025e44:	0a000001 	beq	80025e50 <sched+0x78>
80025e48:	e59f0068 	ldr	r0, [pc, #104]	@ 80025eb8 <sched+0xe0>
80025e4c:	ebffef1a 	bl	80021abc <panic>
80025e50:	e59f3050 	ldr	r3, [pc, #80]	@ 80025ea8 <sched+0xd0>
80025e54:	e5933000 	ldr	r3, [r3]
80025e58:	e5933010 	ldr	r3, [r3, #16]
80025e5c:	e50b3008 	str	r3, [fp, #-8]
80025e60:	e59f3048 	ldr	r3, [pc, #72]	@ 80025eb0 <sched+0xd8>
80025e64:	e5933000 	ldr	r3, [r3]
80025e68:	e2832028 	add	r2, r3, #40	@ 0x28
80025e6c:	e59f3034 	ldr	r3, [pc, #52]	@ 80025ea8 <sched+0xd0>
80025e70:	e5933000 	ldr	r3, [r3]
80025e74:	e5933004 	ldr	r3, [r3, #4]
80025e78:	e1a01003 	mov	r1, r3
80025e7c:	e1a00002 	mov	r0, r2
80025e80:	eb000241 	bl	8002678c <swtch>
80025e84:	e59f301c 	ldr	r3, [pc, #28]	@ 80025ea8 <sched+0xd0>
80025e88:	e5933000 	ldr	r3, [r3]
80025e8c:	e51b2008 	ldr	r2, [fp, #-8]
80025e90:	e5832010 	str	r2, [r3, #16]
80025e94:	e1a00000 	nop			@ (mov r0, r0)
80025e98:	e24bd004 	sub	sp, fp, #4
80025e9c:	e8bd8800 	pop	{fp, pc}
80025ea0:	800aea1c 	.word	0x800aea1c
80025ea4:	80029f10 	.word	0x80029f10
80025ea8:	800aea10 	.word	0x800aea10
80025eac:	80029f24 	.word	0x80029f24
80025eb0:	800b0e54 	.word	0x800b0e54
80025eb4:	80029f30 	.word	0x80029f30
80025eb8:	80029f40 	.word	0x80029f40

80025ebc <yield>:
80025ebc:	e92d4800 	push	{fp, lr}
80025ec0:	e28db004 	add	fp, sp, #4
80025ec4:	e59f0024 	ldr	r0, [pc, #36]	@ 80025ef0 <yield+0x34>
80025ec8:	eb00020f 	bl	8002670c <acquire>
80025ecc:	e59f3020 	ldr	r3, [pc, #32]	@ 80025ef4 <yield+0x38>
80025ed0:	e5933000 	ldr	r3, [r3]
80025ed4:	e3a02003 	mov	r2, #3
80025ed8:	e5c32018 	strb	r2, [r3, #24]
80025edc:	ebffffbd 	bl	80025dd8 <sched>
80025ee0:	e59f0008 	ldr	r0, [pc, #8]	@ 80025ef0 <yield+0x34>
80025ee4:	eb000213 	bl	80026738 <release>
80025ee8:	e1a00000 	nop			@ (mov r0, r0)
80025eec:	e8bd8800 	pop	{fp, pc}
80025ef0:	800aea1c 	.word	0x800aea1c
80025ef4:	800b0e54 	.word	0x800b0e54

80025ef8 <forkret>:
80025ef8:	e92d4800 	push	{fp, lr}
80025efc:	e28db004 	add	fp, sp, #4
80025f00:	e59f0028 	ldr	r0, [pc, #40]	@ 80025f30 <forkret+0x38>
80025f04:	eb00020b 	bl	80026738 <release>
80025f08:	e59f3024 	ldr	r3, [pc, #36]	@ 80025f34 <forkret+0x3c>
80025f0c:	e5933000 	ldr	r3, [r3]
80025f10:	e3530000 	cmp	r3, #0
80025f14:	0a000003 	beq	80025f28 <forkret+0x30>
80025f18:	e59f3014 	ldr	r3, [pc, #20]	@ 80025f34 <forkret+0x3c>
80025f1c:	e3a02000 	mov	r2, #0
80025f20:	e5832000 	str	r2, [r3]
80025f24:	ebfff986 	bl	80024544 <initlog>
80025f28:	e1a00000 	nop			@ (mov r0, r0)
80025f2c:	e8bd8800 	pop	{fp, pc}
80025f30:	800aea1c 	.word	0x800aea1c
80025f34:	8002b030 	.word	0x8002b030

80025f38 <sleep>:
80025f38:	e92d4800 	push	{fp, lr}
80025f3c:	e28db004 	add	fp, sp, #4
80025f40:	e24dd008 	sub	sp, sp, #8
80025f44:	e50b0008 	str	r0, [fp, #-8]
80025f48:	e50b100c 	str	r1, [fp, #-12]
80025f4c:	e59f30a4 	ldr	r3, [pc, #164]	@ 80025ff8 <sleep+0xc0>
80025f50:	e5933000 	ldr	r3, [r3]
80025f54:	e3530000 	cmp	r3, #0
80025f58:	1a000001 	bne	80025f64 <sleep+0x2c>
80025f5c:	e59f0098 	ldr	r0, [pc, #152]	@ 80025ffc <sleep+0xc4>
80025f60:	ebffeed5 	bl	80021abc <panic>
80025f64:	e51b300c 	ldr	r3, [fp, #-12]
80025f68:	e3530000 	cmp	r3, #0
80025f6c:	1a000001 	bne	80025f78 <sleep+0x40>
80025f70:	e59f0088 	ldr	r0, [pc, #136]	@ 80026000 <sleep+0xc8>
80025f74:	ebffeed0 	bl	80021abc <panic>
80025f78:	e51b300c 	ldr	r3, [fp, #-12]
80025f7c:	e59f2080 	ldr	r2, [pc, #128]	@ 80026004 <sleep+0xcc>
80025f80:	e1530002 	cmp	r3, r2
80025f84:	0a000003 	beq	80025f98 <sleep+0x60>
80025f88:	e59f0074 	ldr	r0, [pc, #116]	@ 80026004 <sleep+0xcc>
80025f8c:	eb0001de 	bl	8002670c <acquire>
80025f90:	e51b000c 	ldr	r0, [fp, #-12]
80025f94:	eb0001e7 	bl	80026738 <release>
80025f98:	e59f3058 	ldr	r3, [pc, #88]	@ 80025ff8 <sleep+0xc0>
80025f9c:	e5933000 	ldr	r3, [r3]
80025fa0:	e51b2008 	ldr	r2, [fp, #-8]
80025fa4:	e583202c 	str	r2, [r3, #44]	@ 0x2c
80025fa8:	e59f3048 	ldr	r3, [pc, #72]	@ 80025ff8 <sleep+0xc0>
80025fac:	e5933000 	ldr	r3, [r3]
80025fb0:	e3a02002 	mov	r2, #2
80025fb4:	e5c32018 	strb	r2, [r3, #24]
80025fb8:	ebffff86 	bl	80025dd8 <sched>
80025fbc:	e59f3034 	ldr	r3, [pc, #52]	@ 80025ff8 <sleep+0xc0>
80025fc0:	e5933000 	ldr	r3, [r3]
80025fc4:	e3a02000 	mov	r2, #0
80025fc8:	e583202c 	str	r2, [r3, #44]	@ 0x2c
80025fcc:	e51b300c 	ldr	r3, [fp, #-12]
80025fd0:	e59f202c 	ldr	r2, [pc, #44]	@ 80026004 <sleep+0xcc>
80025fd4:	e1530002 	cmp	r3, r2
80025fd8:	0a000003 	beq	80025fec <sleep+0xb4>
80025fdc:	e59f0020 	ldr	r0, [pc, #32]	@ 80026004 <sleep+0xcc>
80025fe0:	eb0001d4 	bl	80026738 <release>
80025fe4:	e51b000c 	ldr	r0, [fp, #-12]
80025fe8:	eb0001c7 	bl	8002670c <acquire>
80025fec:	e1a00000 	nop			@ (mov r0, r0)
80025ff0:	e24bd004 	sub	sp, fp, #4
80025ff4:	e8bd8800 	pop	{fp, pc}
80025ff8:	800b0e54 	.word	0x800b0e54
80025ffc:	80029f54 	.word	0x80029f54
80026000:	80029f5c 	.word	0x80029f5c
80026004:	800aea1c 	.word	0x800aea1c

80026008 <wakeup1>:
80026008:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002600c:	e28db000 	add	fp, sp, #0
80026010:	e24dd014 	sub	sp, sp, #20
80026014:	e50b0010 	str	r0, [fp, #-16]
80026018:	e59f3094 	ldr	r3, [pc, #148]	@ 800260b4 <wakeup1+0xac>
8002601c:	e50b3008 	str	r3, [fp, #-8]
80026020:	ea00001a 	b	80026090 <wakeup1+0x88>
80026024:	e51b3008 	ldr	r3, [fp, #-8]
80026028:	e5d33018 	ldrb	r3, [r3, #24]
8002602c:	e3530002 	cmp	r3, #2
80026030:	1a000013 	bne	80026084 <wakeup1+0x7c>
80026034:	e51b3008 	ldr	r3, [fp, #-8]
80026038:	e593302c 	ldr	r3, [r3, #44]	@ 0x2c
8002603c:	e51b2010 	ldr	r2, [fp, #-16]
80026040:	e1520003 	cmp	r2, r3
80026044:	1a00000e 	bne	80026084 <wakeup1+0x7c>
80026048:	e51b3008 	ldr	r3, [fp, #-8]
8002604c:	e5932004 	ldr	r2, [r3, #4]
80026050:	e59f3060 	ldr	r3, [pc, #96]	@ 800260b8 <wakeup1+0xb0>
80026054:	e5933000 	ldr	r3, [r3]
80026058:	e1520003 	cmp	r2, r3
8002605c:	2a000003 	bcs	80026070 <wakeup1+0x68>
80026060:	e51b3008 	ldr	r3, [fp, #-8]
80026064:	e3a02003 	mov	r2, #3
80026068:	e5c32018 	strb	r2, [r3, #24]
8002606c:	ea000004 	b	80026084 <wakeup1+0x7c>
80026070:	e51b3008 	ldr	r3, [fp, #-8]
80026074:	e5933008 	ldr	r3, [r3, #8]
80026078:	e2832001 	add	r2, r3, #1
8002607c:	e51b3008 	ldr	r3, [fp, #-8]
80026080:	e5832008 	str	r2, [r3, #8]
80026084:	e51b3008 	ldr	r3, [fp, #-8]
80026088:	e2833090 	add	r3, r3, #144	@ 0x90
8002608c:	e50b3008 	str	r3, [fp, #-8]
80026090:	e51b3008 	ldr	r3, [fp, #-8]
80026094:	e59f2020 	ldr	r2, [pc, #32]	@ 800260bc <wakeup1+0xb4>
80026098:	e1530002 	cmp	r3, r2
8002609c:	3affffe0 	bcc	80026024 <wakeup1+0x1c>
800260a0:	e1a00000 	nop			@ (mov r0, r0)
800260a4:	e1a00000 	nop			@ (mov r0, r0)
800260a8:	e28bd000 	add	sp, fp, #0
800260ac:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800260b0:	e12fff1e 	bx	lr
800260b4:	800aea50 	.word	0x800aea50
800260b8:	800b1450 	.word	0x800b1450
800260bc:	800b0e50 	.word	0x800b0e50

800260c0 <wakeup>:
800260c0:	e92d4800 	push	{fp, lr}
800260c4:	e28db004 	add	fp, sp, #4
800260c8:	e24dd008 	sub	sp, sp, #8
800260cc:	e50b0008 	str	r0, [fp, #-8]
800260d0:	e59f001c 	ldr	r0, [pc, #28]	@ 800260f4 <wakeup+0x34>
800260d4:	eb00018c 	bl	8002670c <acquire>
800260d8:	e51b0008 	ldr	r0, [fp, #-8]
800260dc:	ebffffc9 	bl	80026008 <wakeup1>
800260e0:	e59f000c 	ldr	r0, [pc, #12]	@ 800260f4 <wakeup+0x34>
800260e4:	eb000193 	bl	80026738 <release>
800260e8:	e1a00000 	nop			@ (mov r0, r0)
800260ec:	e24bd004 	sub	sp, fp, #4
800260f0:	e8bd8800 	pop	{fp, pc}
800260f4:	800aea1c 	.word	0x800aea1c

800260f8 <kill>:
800260f8:	e92d4800 	push	{fp, lr}
800260fc:	e28db004 	add	fp, sp, #4
80026100:	e24dd010 	sub	sp, sp, #16
80026104:	e50b0010 	str	r0, [fp, #-16]
80026108:	e59f008c 	ldr	r0, [pc, #140]	@ 8002619c <kill+0xa4>
8002610c:	eb00017e 	bl	8002670c <acquire>
80026110:	e59f3088 	ldr	r3, [pc, #136]	@ 800261a0 <kill+0xa8>
80026114:	e50b3008 	str	r3, [fp, #-8]
80026118:	ea000015 	b	80026174 <kill+0x7c>
8002611c:	e51b3008 	ldr	r3, [fp, #-8]
80026120:	e593301c 	ldr	r3, [r3, #28]
80026124:	e51b2010 	ldr	r2, [fp, #-16]
80026128:	e1520003 	cmp	r2, r3
8002612c:	1a00000d 	bne	80026168 <kill+0x70>
80026130:	e51b3008 	ldr	r3, [fp, #-8]
80026134:	e3a02001 	mov	r2, #1
80026138:	e5832030 	str	r2, [r3, #48]	@ 0x30
8002613c:	e51b3008 	ldr	r3, [fp, #-8]
80026140:	e5d33018 	ldrb	r3, [r3, #24]
80026144:	e3530002 	cmp	r3, #2
80026148:	1a000002 	bne	80026158 <kill+0x60>
8002614c:	e51b3008 	ldr	r3, [fp, #-8]
80026150:	e3a02003 	mov	r2, #3
80026154:	e5c32018 	strb	r2, [r3, #24]
80026158:	e59f003c 	ldr	r0, [pc, #60]	@ 8002619c <kill+0xa4>
8002615c:	eb000175 	bl	80026738 <release>
80026160:	e3a03000 	mov	r3, #0
80026164:	ea000009 	b	80026190 <kill+0x98>
80026168:	e51b3008 	ldr	r3, [fp, #-8]
8002616c:	e2833090 	add	r3, r3, #144	@ 0x90
80026170:	e50b3008 	str	r3, [fp, #-8]
80026174:	e51b3008 	ldr	r3, [fp, #-8]
80026178:	e59f2024 	ldr	r2, [pc, #36]	@ 800261a4 <kill+0xac>
8002617c:	e1530002 	cmp	r3, r2
80026180:	3affffe5 	bcc	8002611c <kill+0x24>
80026184:	e59f0010 	ldr	r0, [pc, #16]	@ 8002619c <kill+0xa4>
80026188:	eb00016a 	bl	80026738 <release>
8002618c:	e3e03000 	mvn	r3, #0
80026190:	e1a00003 	mov	r0, r3
80026194:	e24bd004 	sub	sp, fp, #4
80026198:	e8bd8800 	pop	{fp, pc}
8002619c:	800aea1c 	.word	0x800aea1c
800261a0:	800aea50 	.word	0x800aea50
800261a4:	800b0e50 	.word	0x800b0e50

800261a8 <settickets>:
800261a8:	e92d4800 	push	{fp, lr}
800261ac:	e28db004 	add	fp, sp, #4
800261b0:	e24dd010 	sub	sp, sp, #16
800261b4:	e50b0010 	str	r0, [fp, #-16]
800261b8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800261bc:	e59f0070 	ldr	r0, [pc, #112]	@ 80026234 <settickets+0x8c>
800261c0:	eb000151 	bl	8002670c <acquire>
800261c4:	e59f306c 	ldr	r3, [pc, #108]	@ 80026238 <settickets+0x90>
800261c8:	e50b3008 	str	r3, [fp, #-8]
800261cc:	ea00000e 	b	8002620c <settickets+0x64>
800261d0:	e51b3008 	ldr	r3, [fp, #-8]
800261d4:	e593301c 	ldr	r3, [r3, #28]
800261d8:	e51b2010 	ldr	r2, [fp, #-16]
800261dc:	e1520003 	cmp	r2, r3
800261e0:	1a000006 	bne	80026200 <settickets+0x58>
800261e4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800261e8:	e51b3008 	ldr	r3, [fp, #-8]
800261ec:	e583208c 	str	r2, [r3, #140]	@ 0x8c
800261f0:	e59f003c 	ldr	r0, [pc, #60]	@ 80026234 <settickets+0x8c>
800261f4:	eb00014f 	bl	80026738 <release>
800261f8:	e3a03000 	mov	r3, #0
800261fc:	ea000009 	b	80026228 <settickets+0x80>
80026200:	e51b3008 	ldr	r3, [fp, #-8]
80026204:	e2833090 	add	r3, r3, #144	@ 0x90
80026208:	e50b3008 	str	r3, [fp, #-8]
8002620c:	e51b3008 	ldr	r3, [fp, #-8]
80026210:	e59f2024 	ldr	r2, [pc, #36]	@ 8002623c <settickets+0x94>
80026214:	e1530002 	cmp	r3, r2
80026218:	3affffec 	bcc	800261d0 <settickets+0x28>
8002621c:	e59f0010 	ldr	r0, [pc, #16]	@ 80026234 <settickets+0x8c>
80026220:	eb000144 	bl	80026738 <release>
80026224:	e3e03000 	mvn	r3, #0
80026228:	e1a00003 	mov	r0, r3
8002622c:	e24bd004 	sub	sp, fp, #4
80026230:	e8bd8800 	pop	{fp, pc}
80026234:	800aea1c 	.word	0x800aea1c
80026238:	800aea50 	.word	0x800aea50
8002623c:	800b0e50 	.word	0x800b0e50

80026240 <procdump>:
80026240:	e92d4800 	push	{fp, lr}
80026244:	e28db004 	add	fp, sp, #4
80026248:	e24dd008 	sub	sp, sp, #8
8002624c:	e59f30b8 	ldr	r3, [pc, #184]	@ 8002630c <procdump+0xcc>
80026250:	e50b3008 	str	r3, [fp, #-8]
80026254:	ea000023 	b	800262e8 <procdump+0xa8>
80026258:	e51b3008 	ldr	r3, [fp, #-8]
8002625c:	e5d33018 	ldrb	r3, [r3, #24]
80026260:	e3530000 	cmp	r3, #0
80026264:	0a00001b 	beq	800262d8 <procdump+0x98>
80026268:	e51b3008 	ldr	r3, [fp, #-8]
8002626c:	e5d33018 	ldrb	r3, [r3, #24]
80026270:	e3530005 	cmp	r3, #5
80026274:	8a00000d 	bhi	800262b0 <procdump+0x70>
80026278:	e51b3008 	ldr	r3, [fp, #-8]
8002627c:	e5d33018 	ldrb	r3, [r3, #24]
80026280:	e1a02003 	mov	r2, r3
80026284:	e59f3084 	ldr	r3, [pc, #132]	@ 80026310 <procdump+0xd0>
80026288:	e7933102 	ldr	r3, [r3, r2, lsl #2]
8002628c:	e3530000 	cmp	r3, #0
80026290:	0a000006 	beq	800262b0 <procdump+0x70>
80026294:	e51b3008 	ldr	r3, [fp, #-8]
80026298:	e5d33018 	ldrb	r3, [r3, #24]
8002629c:	e1a02003 	mov	r2, r3
800262a0:	e59f3068 	ldr	r3, [pc, #104]	@ 80026310 <procdump+0xd0>
800262a4:	e7933102 	ldr	r3, [r3, r2, lsl #2]
800262a8:	e50b300c 	str	r3, [fp, #-12]
800262ac:	ea000001 	b	800262b8 <procdump+0x78>
800262b0:	e59f305c 	ldr	r3, [pc, #92]	@ 80026314 <procdump+0xd4>
800262b4:	e50b300c 	str	r3, [fp, #-12]
800262b8:	e51b3008 	ldr	r3, [fp, #-8]
800262bc:	e593101c 	ldr	r1, [r3, #28]
800262c0:	e51b3008 	ldr	r3, [fp, #-8]
800262c4:	e2833078 	add	r3, r3, #120	@ 0x78
800262c8:	e51b200c 	ldr	r2, [fp, #-12]
800262cc:	e59f0044 	ldr	r0, [pc, #68]	@ 80026318 <procdump+0xd8>
800262d0:	ebffed6f 	bl	80021894 <cprintf>
800262d4:	ea000000 	b	800262dc <procdump+0x9c>
800262d8:	e1a00000 	nop			@ (mov r0, r0)
800262dc:	e51b3008 	ldr	r3, [fp, #-8]
800262e0:	e2833090 	add	r3, r3, #144	@ 0x90
800262e4:	e50b3008 	str	r3, [fp, #-8]
800262e8:	e51b3008 	ldr	r3, [fp, #-8]
800262ec:	e59f2028 	ldr	r2, [pc, #40]	@ 8002631c <procdump+0xdc>
800262f0:	e1530002 	cmp	r3, r2
800262f4:	3affffd7 	bcc	80026258 <procdump+0x18>
800262f8:	e59f0020 	ldr	r0, [pc, #32]	@ 80026320 <procdump+0xe0>
800262fc:	ebffe942 	bl	8002080c <show_callstk>
80026300:	e1a00000 	nop			@ (mov r0, r0)
80026304:	e24bd004 	sub	sp, fp, #4
80026308:	e8bd8800 	pop	{fp, pc}
8002630c:	800aea50 	.word	0x800aea50
80026310:	8002b018 	.word	0x8002b018
80026314:	80029fa0 	.word	0x80029fa0
80026318:	80029fa4 	.word	0x80029fa4
8002631c:	800b0e50 	.word	0x800b0e50
80026320:	80029fb0 	.word	0x80029fb0

80026324 <get_procs>:
80026324:	e92d4800 	push	{fp, lr}
80026328:	e28db004 	add	fp, sp, #4
8002632c:	e24dd010 	sub	sp, sp, #16
80026330:	e3a03000 	mov	r3, #0
80026334:	e50b300c 	str	r3, [fp, #-12]
80026338:	e24b3010 	sub	r3, fp, #16
8002633c:	e3a02b03 	mov	r2, #3072	@ 0xc00
80026340:	e1a01003 	mov	r1, r3
80026344:	e3a00000 	mov	r0, #0
80026348:	eb00017b 	bl	8002693c <argptr>
8002634c:	e1a03000 	mov	r3, r0
80026350:	e3530000 	cmp	r3, #0
80026354:	aa000001 	bge	80026360 <get_procs+0x3c>
80026358:	e3e03000 	mvn	r3, #0
8002635c:	ea000060 	b	800264e4 <get_procs+0x1c0>
80026360:	e59f0188 	ldr	r0, [pc, #392]	@ 800264f0 <get_procs+0x1cc>
80026364:	eb0000e8 	bl	8002670c <acquire>
80026368:	e59f3184 	ldr	r3, [pc, #388]	@ 800264f4 <get_procs+0x1d0>
8002636c:	e50b3008 	str	r3, [fp, #-8]
80026370:	ea000054 	b	800264c8 <get_procs+0x1a4>
80026374:	e51b3008 	ldr	r3, [fp, #-8]
80026378:	e5d33018 	ldrb	r3, [r3, #24]
8002637c:	e3530000 	cmp	r3, #0
80026380:	0a00004d 	beq	800264bc <get_procs+0x198>
80026384:	e51b1010 	ldr	r1, [fp, #-16]
80026388:	e51b200c 	ldr	r2, [fp, #-12]
8002638c:	e1a03002 	mov	r3, r2
80026390:	e1a03083 	lsl	r3, r3, #1
80026394:	e0833002 	add	r3, r3, r2
80026398:	e1a03203 	lsl	r3, r3, #4
8002639c:	e0813003 	add	r3, r1, r3
800263a0:	e3a02001 	mov	r2, #1
800263a4:	e5832000 	str	r2, [r3]
800263a8:	e51b1010 	ldr	r1, [fp, #-16]
800263ac:	e51b200c 	ldr	r2, [fp, #-12]
800263b0:	e1a03002 	mov	r3, r2
800263b4:	e1a03083 	lsl	r3, r3, #1
800263b8:	e0833002 	add	r3, r3, r2
800263bc:	e1a03203 	lsl	r3, r3, #4
800263c0:	e0813003 	add	r3, r1, r3
800263c4:	e51b2008 	ldr	r2, [fp, #-8]
800263c8:	e592201c 	ldr	r2, [r2, #28]
800263cc:	e5832004 	str	r2, [r3, #4]
800263d0:	e51b3008 	ldr	r3, [fp, #-8]
800263d4:	e5933020 	ldr	r3, [r3, #32]
800263d8:	e3530000 	cmp	r3, #0
800263dc:	0a000003 	beq	800263f0 <get_procs+0xcc>
800263e0:	e51b3008 	ldr	r3, [fp, #-8]
800263e4:	e5933020 	ldr	r3, [r3, #32]
800263e8:	e593201c 	ldr	r2, [r3, #28]
800263ec:	ea000000 	b	800263f4 <get_procs+0xd0>
800263f0:	e3a02000 	mov	r2, #0
800263f4:	e51b0010 	ldr	r0, [fp, #-16]
800263f8:	e51b100c 	ldr	r1, [fp, #-12]
800263fc:	e1a03001 	mov	r3, r1
80026400:	e1a03083 	lsl	r3, r3, #1
80026404:	e0833001 	add	r3, r3, r1
80026408:	e1a03203 	lsl	r3, r3, #4
8002640c:	e0803003 	add	r3, r0, r3
80026410:	e5832008 	str	r2, [r3, #8]
80026414:	e51b1010 	ldr	r1, [fp, #-16]
80026418:	e51b200c 	ldr	r2, [fp, #-12]
8002641c:	e1a03002 	mov	r3, r2
80026420:	e1a03083 	lsl	r3, r3, #1
80026424:	e0833002 	add	r3, r3, r2
80026428:	e1a03203 	lsl	r3, r3, #4
8002642c:	e0813003 	add	r3, r1, r3
80026430:	e283000c 	add	r0, r3, #12
80026434:	e51b3008 	ldr	r3, [fp, #-8]
80026438:	e2833078 	add	r3, r3, #120	@ 0x78
8002643c:	e3a02010 	mov	r2, #16
80026440:	e1a01003 	mov	r1, r3
80026444:	ebffe801 	bl	80020450 <safestrcpy>
80026448:	e51b1010 	ldr	r1, [fp, #-16]
8002644c:	e51b200c 	ldr	r2, [fp, #-12]
80026450:	e1a03002 	mov	r3, r2
80026454:	e1a03083 	lsl	r3, r3, #1
80026458:	e0833002 	add	r3, r3, r2
8002645c:	e1a03203 	lsl	r3, r3, #4
80026460:	e0813003 	add	r3, r1, r3
80026464:	e283001c 	add	r0, r3, #28
80026468:	e51b3008 	ldr	r3, [fp, #-8]
8002646c:	e5d33018 	ldrb	r3, [r3, #24]
80026470:	e1a02003 	mov	r2, r3
80026474:	e59f307c 	ldr	r3, [pc, #124]	@ 800264f8 <get_procs+0x1d4>
80026478:	e7933102 	ldr	r3, [r3, r2, lsl #2]
8002647c:	e3a02010 	mov	r2, #16
80026480:	e1a01003 	mov	r1, r3
80026484:	ebffe7f1 	bl	80020450 <safestrcpy>
80026488:	e51b1010 	ldr	r1, [fp, #-16]
8002648c:	e51b200c 	ldr	r2, [fp, #-12]
80026490:	e1a03002 	mov	r3, r2
80026494:	e1a03083 	lsl	r3, r3, #1
80026498:	e0833002 	add	r3, r3, r2
8002649c:	e1a03203 	lsl	r3, r3, #4
800264a0:	e0813003 	add	r3, r1, r3
800264a4:	e51b2008 	ldr	r2, [fp, #-8]
800264a8:	e5922088 	ldr	r2, [r2, #136]	@ 0x88
800264ac:	e583202c 	str	r2, [r3, #44]	@ 0x2c
800264b0:	e51b300c 	ldr	r3, [fp, #-12]
800264b4:	e2833001 	add	r3, r3, #1
800264b8:	e50b300c 	str	r3, [fp, #-12]
800264bc:	e51b3008 	ldr	r3, [fp, #-8]
800264c0:	e2833090 	add	r3, r3, #144	@ 0x90
800264c4:	e50b3008 	str	r3, [fp, #-8]
800264c8:	e51b3008 	ldr	r3, [fp, #-8]
800264cc:	e59f2028 	ldr	r2, [pc, #40]	@ 800264fc <get_procs+0x1d8>
800264d0:	e1530002 	cmp	r3, r2
800264d4:	3affffa6 	bcc	80026374 <get_procs+0x50>
800264d8:	e59f0010 	ldr	r0, [pc, #16]	@ 800264f0 <get_procs+0x1cc>
800264dc:	eb000095 	bl	80026738 <release>
800264e0:	e51b300c 	ldr	r3, [fp, #-12]
800264e4:	e1a00003 	mov	r0, r3
800264e8:	e24bd004 	sub	sp, fp, #4
800264ec:	e8bd8800 	pop	{fp, pc}
800264f0:	800aea1c 	.word	0x800aea1c
800264f4:	800aea50 	.word	0x800aea50
800264f8:	8002b018 	.word	0x8002b018
800264fc:	800b0e50 	.word	0x800b0e50

80026500 <getpinfo>:
80026500:	e92d4800 	push	{fp, lr}
80026504:	e28db004 	add	fp, sp, #4
80026508:	e24dde51 	sub	sp, sp, #1296	@ 0x510
8002650c:	e50b0510 	str	r0, [fp, #-1296]	@ 0xfffffaf0
80026510:	e3a03000 	mov	r3, #0
80026514:	e50b300c 	str	r3, [fp, #-12]
80026518:	e59f013c 	ldr	r0, [pc, #316]	@ 8002665c <getpinfo+0x15c>
8002651c:	eb00007a 	bl	8002670c <acquire>
80026520:	e59f3138 	ldr	r3, [pc, #312]	@ 80026660 <getpinfo+0x160>
80026524:	e50b3008 	str	r3, [fp, #-8]
80026528:	ea000033 	b	800265fc <getpinfo+0xfc>
8002652c:	e51b3008 	ldr	r3, [fp, #-8]
80026530:	e5d33018 	ldrb	r3, [r3, #24]
80026534:	e3530000 	cmp	r3, #0
80026538:	13a03001 	movne	r3, #1
8002653c:	03a03000 	moveq	r3, #0
80026540:	e6ef3073 	uxtb	r3, r3
80026544:	e1a02003 	mov	r2, r3
80026548:	e51b300c 	ldr	r3, [fp, #-12]
8002654c:	e1a03103 	lsl	r3, r3, #2
80026550:	e2433004 	sub	r3, r3, #4
80026554:	e083300b 	add	r3, r3, fp
80026558:	e5032508 	str	r2, [r3, #-1288]	@ 0xfffffaf8
8002655c:	e51b3008 	ldr	r3, [fp, #-8]
80026560:	e593201c 	ldr	r2, [r3, #28]
80026564:	e51b300c 	ldr	r3, [fp, #-12]
80026568:	e2833040 	add	r3, r3, #64	@ 0x40
8002656c:	e1a03103 	lsl	r3, r3, #2
80026570:	e2433004 	sub	r3, r3, #4
80026574:	e083300b 	add	r3, r3, fp
80026578:	e5032508 	str	r2, [r3, #-1288]	@ 0xfffffaf8
8002657c:	e51b3008 	ldr	r3, [fp, #-8]
80026580:	e593308c 	ldr	r3, [r3, #140]	@ 0x8c
80026584:	e1a02003 	mov	r2, r3
80026588:	e51b300c 	ldr	r3, [fp, #-12]
8002658c:	e2833080 	add	r3, r3, #128	@ 0x80
80026590:	e1a03103 	lsl	r3, r3, #2
80026594:	e2433004 	sub	r3, r3, #4
80026598:	e083300b 	add	r3, r3, fp
8002659c:	e5032508 	str	r2, [r3, #-1288]	@ 0xfffffaf8
800265a0:	e51b3008 	ldr	r3, [fp, #-8]
800265a4:	e5933000 	ldr	r3, [r3]
800265a8:	e1a02003 	mov	r2, r3
800265ac:	e51b300c 	ldr	r3, [fp, #-12]
800265b0:	e28330c0 	add	r3, r3, #192	@ 0xc0
800265b4:	e1a03103 	lsl	r3, r3, #2
800265b8:	e2433004 	sub	r3, r3, #4
800265bc:	e083300b 	add	r3, r3, fp
800265c0:	e5032508 	str	r2, [r3, #-1288]	@ 0xfffffaf8
800265c4:	e51b3008 	ldr	r3, [fp, #-8]
800265c8:	e5932008 	ldr	r2, [r3, #8]
800265cc:	e51b300c 	ldr	r3, [fp, #-12]
800265d0:	e2833c01 	add	r3, r3, #256	@ 0x100
800265d4:	e1a03103 	lsl	r3, r3, #2
800265d8:	e2433004 	sub	r3, r3, #4
800265dc:	e083300b 	add	r3, r3, fp
800265e0:	e5032508 	str	r2, [r3, #-1288]	@ 0xfffffaf8
800265e4:	e51b3008 	ldr	r3, [fp, #-8]
800265e8:	e2833090 	add	r3, r3, #144	@ 0x90
800265ec:	e50b3008 	str	r3, [fp, #-8]
800265f0:	e51b300c 	ldr	r3, [fp, #-12]
800265f4:	e2833001 	add	r3, r3, #1
800265f8:	e50b300c 	str	r3, [fp, #-12]
800265fc:	e51b3008 	ldr	r3, [fp, #-8]
80026600:	e59f205c 	ldr	r2, [pc, #92]	@ 80026664 <getpinfo+0x164>
80026604:	e1530002 	cmp	r3, r2
80026608:	3affffc7 	bcc	8002652c <getpinfo+0x2c>
8002660c:	e59f0048 	ldr	r0, [pc, #72]	@ 8002665c <getpinfo+0x15c>
80026610:	eb000048 	bl	80026738 <release>
80026614:	e59f304c 	ldr	r3, [pc, #76]	@ 80026668 <getpinfo+0x168>
80026618:	e5933000 	ldr	r3, [r3]
8002661c:	e5930010 	ldr	r0, [r3, #16]
80026620:	e51b1510 	ldr	r1, [fp, #-1296]	@ 0xfffffaf0
80026624:	e24b2c05 	sub	r2, fp, #1280	@ 0x500
80026628:	e2422004 	sub	r2, r2, #4
8002662c:	e2422008 	sub	r2, r2, #8
80026630:	e3a03c05 	mov	r3, #1280	@ 0x500
80026634:	eb000ac7 	bl	80029158 <copyout>
80026638:	e1a03000 	mov	r3, r0
8002663c:	e3530000 	cmp	r3, #0
80026640:	aa000001 	bge	8002664c <getpinfo+0x14c>
80026644:	e3e03000 	mvn	r3, #0
80026648:	ea000000 	b	80026650 <getpinfo+0x150>
8002664c:	e3a03000 	mov	r3, #0
80026650:	e1a00003 	mov	r0, r3
80026654:	e24bd004 	sub	sp, fp, #4
80026658:	e8bd8800 	pop	{fp, pc}
8002665c:	800aea1c 	.word	0x800aea1c
80026660:	800aea50 	.word	0x800aea50
80026664:	800b0e50 	.word	0x800b0e50
80026668:	800b0e54 	.word	0x800b0e54

8002666c <test>:
8002666c:	e92d4800 	push	{fp, lr}
80026670:	e28db004 	add	fp, sp, #4
80026674:	e24dd008 	sub	sp, sp, #8
80026678:	ebfffae4 	bl	80025210 <allocproc>
8002667c:	e50b0008 	str	r0, [fp, #-8]
80026680:	e51b3008 	ldr	r3, [fp, #-8]
80026684:	e3a02064 	mov	r2, #100	@ 0x64
80026688:	e583208c 	str	r2, [r3, #140]	@ 0x8c
8002668c:	e51b3008 	ldr	r3, [fp, #-8]
80026690:	e3a02003 	mov	r2, #3
80026694:	e5c32018 	strb	r2, [r3, #24]
80026698:	ebfffadc 	bl	80025210 <allocproc>
8002669c:	e50b000c 	str	r0, [fp, #-12]
800266a0:	e51b300c 	ldr	r3, [fp, #-12]
800266a4:	e3a020c8 	mov	r2, #200	@ 0xc8
800266a8:	e583208c 	str	r2, [r3, #140]	@ 0x8c
800266ac:	e51b300c 	ldr	r3, [fp, #-12]
800266b0:	e3a02003 	mov	r2, #3
800266b4:	e5c32018 	strb	r2, [r3, #24]
800266b8:	e1a00000 	nop			@ (mov r0, r0)
800266bc:	e24bd004 	sub	sp, fp, #4
800266c0:	e8bd8800 	pop	{fp, pc}

800266c4 <initlock>:
800266c4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800266c8:	e28db000 	add	fp, sp, #0
800266cc:	e24dd00c 	sub	sp, sp, #12
800266d0:	e50b0008 	str	r0, [fp, #-8]
800266d4:	e50b100c 	str	r1, [fp, #-12]
800266d8:	e51b3008 	ldr	r3, [fp, #-8]
800266dc:	e51b200c 	ldr	r2, [fp, #-12]
800266e0:	e5832004 	str	r2, [r3, #4]
800266e4:	e51b3008 	ldr	r3, [fp, #-8]
800266e8:	e3a02000 	mov	r2, #0
800266ec:	e5832000 	str	r2, [r3]
800266f0:	e51b3008 	ldr	r3, [fp, #-8]
800266f4:	e3a02000 	mov	r2, #0
800266f8:	e5832008 	str	r2, [r3, #8]
800266fc:	e1a00000 	nop			@ (mov r0, r0)
80026700:	e28bd000 	add	sp, fp, #0
80026704:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80026708:	e12fff1e 	bx	lr

8002670c <acquire>:
8002670c:	e92d4800 	push	{fp, lr}
80026710:	e28db004 	add	fp, sp, #4
80026714:	e24dd008 	sub	sp, sp, #8
80026718:	e50b0008 	str	r0, [fp, #-8]
8002671c:	ebffe7c2 	bl	8002062c <pushcli>
80026720:	e51b3008 	ldr	r3, [fp, #-8]
80026724:	e3a02001 	mov	r2, #1
80026728:	e5832000 	str	r2, [r3]
8002672c:	e1a00000 	nop			@ (mov r0, r0)
80026730:	e24bd004 	sub	sp, fp, #4
80026734:	e8bd8800 	pop	{fp, pc}

80026738 <release>:
80026738:	e92d4800 	push	{fp, lr}
8002673c:	e28db004 	add	fp, sp, #4
80026740:	e24dd008 	sub	sp, sp, #8
80026744:	e50b0008 	str	r0, [fp, #-8]
80026748:	e51b3008 	ldr	r3, [fp, #-8]
8002674c:	e3a02000 	mov	r2, #0
80026750:	e5832000 	str	r2, [r3]
80026754:	ebffe7c9 	bl	80020680 <popcli>
80026758:	e1a00000 	nop			@ (mov r0, r0)
8002675c:	e24bd004 	sub	sp, fp, #4
80026760:	e8bd8800 	pop	{fp, pc}

80026764 <holding>:
80026764:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80026768:	e28db000 	add	fp, sp, #0
8002676c:	e24dd00c 	sub	sp, sp, #12
80026770:	e50b0008 	str	r0, [fp, #-8]
80026774:	e51b3008 	ldr	r3, [fp, #-8]
80026778:	e5933000 	ldr	r3, [r3]
8002677c:	e1a00003 	mov	r0, r3
80026780:	e28bd000 	add	sp, fp, #0
80026784:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80026788:	e12fff1e 	bx	lr

8002678c <swtch>:
8002678c:	e92d5ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80026790:	e580d000 	str	sp, [r0]
80026794:	e1a0d001 	mov	sp, r1
80026798:	e8bd5ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
8002679c:	e12fff1e 	bx	lr

800267a0 <fetchint>:
800267a0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800267a4:	e28db000 	add	fp, sp, #0
800267a8:	e24dd00c 	sub	sp, sp, #12
800267ac:	e50b0008 	str	r0, [fp, #-8]
800267b0:	e50b100c 	str	r1, [fp, #-12]
800267b4:	e59f3058 	ldr	r3, [pc, #88]	@ 80026814 <fetchint+0x74>
800267b8:	e5933000 	ldr	r3, [r3]
800267bc:	e593300c 	ldr	r3, [r3, #12]
800267c0:	e51b2008 	ldr	r2, [fp, #-8]
800267c4:	e1520003 	cmp	r2, r3
800267c8:	2a000006 	bcs	800267e8 <fetchint+0x48>
800267cc:	e51b3008 	ldr	r3, [fp, #-8]
800267d0:	e2832004 	add	r2, r3, #4
800267d4:	e59f3038 	ldr	r3, [pc, #56]	@ 80026814 <fetchint+0x74>
800267d8:	e5933000 	ldr	r3, [r3]
800267dc:	e593300c 	ldr	r3, [r3, #12]
800267e0:	e1520003 	cmp	r2, r3
800267e4:	9a000001 	bls	800267f0 <fetchint+0x50>
800267e8:	e3e03000 	mvn	r3, #0
800267ec:	ea000004 	b	80026804 <fetchint+0x64>
800267f0:	e51b3008 	ldr	r3, [fp, #-8]
800267f4:	e5932000 	ldr	r2, [r3]
800267f8:	e51b300c 	ldr	r3, [fp, #-12]
800267fc:	e5832000 	str	r2, [r3]
80026800:	e3a03000 	mov	r3, #0
80026804:	e1a00003 	mov	r0, r3
80026808:	e28bd000 	add	sp, fp, #0
8002680c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80026810:	e12fff1e 	bx	lr
80026814:	800b0e54 	.word	0x800b0e54

80026818 <fetchstr>:
80026818:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002681c:	e28db000 	add	fp, sp, #0
80026820:	e24dd014 	sub	sp, sp, #20
80026824:	e50b0010 	str	r0, [fp, #-16]
80026828:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
8002682c:	e59f3098 	ldr	r3, [pc, #152]	@ 800268cc <fetchstr+0xb4>
80026830:	e5933000 	ldr	r3, [r3]
80026834:	e593300c 	ldr	r3, [r3, #12]
80026838:	e51b2010 	ldr	r2, [fp, #-16]
8002683c:	e1520003 	cmp	r2, r3
80026840:	3a000001 	bcc	8002684c <fetchstr+0x34>
80026844:	e3e03000 	mvn	r3, #0
80026848:	ea00001b 	b	800268bc <fetchstr+0xa4>
8002684c:	e51b2010 	ldr	r2, [fp, #-16]
80026850:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026854:	e5832000 	str	r2, [r3]
80026858:	e59f306c 	ldr	r3, [pc, #108]	@ 800268cc <fetchstr+0xb4>
8002685c:	e5933000 	ldr	r3, [r3]
80026860:	e593300c 	ldr	r3, [r3, #12]
80026864:	e50b300c 	str	r3, [fp, #-12]
80026868:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002686c:	e5933000 	ldr	r3, [r3]
80026870:	e50b3008 	str	r3, [fp, #-8]
80026874:	ea00000b 	b	800268a8 <fetchstr+0x90>
80026878:	e51b3008 	ldr	r3, [fp, #-8]
8002687c:	e5d33000 	ldrb	r3, [r3]
80026880:	e3530000 	cmp	r3, #0
80026884:	1a000004 	bne	8002689c <fetchstr+0x84>
80026888:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002688c:	e5933000 	ldr	r3, [r3]
80026890:	e51b2008 	ldr	r2, [fp, #-8]
80026894:	e0423003 	sub	r3, r2, r3
80026898:	ea000007 	b	800268bc <fetchstr+0xa4>
8002689c:	e51b3008 	ldr	r3, [fp, #-8]
800268a0:	e2833001 	add	r3, r3, #1
800268a4:	e50b3008 	str	r3, [fp, #-8]
800268a8:	e51b2008 	ldr	r2, [fp, #-8]
800268ac:	e51b300c 	ldr	r3, [fp, #-12]
800268b0:	e1520003 	cmp	r2, r3
800268b4:	3affffef 	bcc	80026878 <fetchstr+0x60>
800268b8:	e3e03000 	mvn	r3, #0
800268bc:	e1a00003 	mov	r0, r3
800268c0:	e28bd000 	add	sp, fp, #0
800268c4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800268c8:	e12fff1e 	bx	lr
800268cc:	800b0e54 	.word	0x800b0e54

800268d0 <argint>:
800268d0:	e92d4800 	push	{fp, lr}
800268d4:	e28db004 	add	fp, sp, #4
800268d8:	e24dd008 	sub	sp, sp, #8
800268dc:	e50b0008 	str	r0, [fp, #-8]
800268e0:	e50b100c 	str	r1, [fp, #-12]
800268e4:	e51b3008 	ldr	r3, [fp, #-8]
800268e8:	e3530003 	cmp	r3, #3
800268ec:	da000001 	ble	800268f8 <argint+0x28>
800268f0:	e59f003c 	ldr	r0, [pc, #60]	@ 80026934 <argint+0x64>
800268f4:	ebffec70 	bl	80021abc <panic>
800268f8:	e59f3038 	ldr	r3, [pc, #56]	@ 80026938 <argint+0x68>
800268fc:	e5933000 	ldr	r3, [r3]
80026900:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
80026904:	e2832014 	add	r2, r3, #20
80026908:	e51b3008 	ldr	r3, [fp, #-8]
8002690c:	e1a03103 	lsl	r3, r3, #2
80026910:	e0823003 	add	r3, r2, r3
80026914:	e5933000 	ldr	r3, [r3]
80026918:	e1a02003 	mov	r2, r3
8002691c:	e51b300c 	ldr	r3, [fp, #-12]
80026920:	e5832000 	str	r2, [r3]
80026924:	e3a03000 	mov	r3, #0
80026928:	e1a00003 	mov	r0, r3
8002692c:	e24bd004 	sub	sp, fp, #4
80026930:	e8bd8800 	pop	{fp, pc}
80026934:	80029fbc 	.word	0x80029fbc
80026938:	800b0e54 	.word	0x800b0e54

8002693c <argptr>:
8002693c:	e92d4800 	push	{fp, lr}
80026940:	e28db004 	add	fp, sp, #4
80026944:	e24dd018 	sub	sp, sp, #24
80026948:	e50b0010 	str	r0, [fp, #-16]
8002694c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80026950:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80026954:	e24b3008 	sub	r3, fp, #8
80026958:	e1a01003 	mov	r1, r3
8002695c:	e51b0010 	ldr	r0, [fp, #-16]
80026960:	ebffffda 	bl	800268d0 <argint>
80026964:	e1a03000 	mov	r3, r0
80026968:	e3530000 	cmp	r3, #0
8002696c:	aa000001 	bge	80026978 <argptr+0x3c>
80026970:	e3e03000 	mvn	r3, #0
80026974:	ea000015 	b	800269d0 <argptr+0x94>
80026978:	e59f305c 	ldr	r3, [pc, #92]	@ 800269dc <argptr+0xa0>
8002697c:	e5933000 	ldr	r3, [r3]
80026980:	e593300c 	ldr	r3, [r3, #12]
80026984:	e51b2008 	ldr	r2, [fp, #-8]
80026988:	e1530002 	cmp	r3, r2
8002698c:	9a000008 	bls	800269b4 <argptr+0x78>
80026990:	e51b3008 	ldr	r3, [fp, #-8]
80026994:	e1a02003 	mov	r2, r3
80026998:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002699c:	e0822003 	add	r2, r2, r3
800269a0:	e59f3034 	ldr	r3, [pc, #52]	@ 800269dc <argptr+0xa0>
800269a4:	e5933000 	ldr	r3, [r3]
800269a8:	e593300c 	ldr	r3, [r3, #12]
800269ac:	e1520003 	cmp	r2, r3
800269b0:	9a000001 	bls	800269bc <argptr+0x80>
800269b4:	e3e03000 	mvn	r3, #0
800269b8:	ea000004 	b	800269d0 <argptr+0x94>
800269bc:	e51b3008 	ldr	r3, [fp, #-8]
800269c0:	e1a02003 	mov	r2, r3
800269c4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800269c8:	e5832000 	str	r2, [r3]
800269cc:	e3a03000 	mov	r3, #0
800269d0:	e1a00003 	mov	r0, r3
800269d4:	e24bd004 	sub	sp, fp, #4
800269d8:	e8bd8800 	pop	{fp, pc}
800269dc:	800b0e54 	.word	0x800b0e54

800269e0 <argstr>:
800269e0:	e92d4800 	push	{fp, lr}
800269e4:	e28db004 	add	fp, sp, #4
800269e8:	e24dd010 	sub	sp, sp, #16
800269ec:	e50b0010 	str	r0, [fp, #-16]
800269f0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800269f4:	e24b3008 	sub	r3, fp, #8
800269f8:	e1a01003 	mov	r1, r3
800269fc:	e51b0010 	ldr	r0, [fp, #-16]
80026a00:	ebffffb2 	bl	800268d0 <argint>
80026a04:	e1a03000 	mov	r3, r0
80026a08:	e3530000 	cmp	r3, #0
80026a0c:	aa000001 	bge	80026a18 <argstr+0x38>
80026a10:	e3e03000 	mvn	r3, #0
80026a14:	ea000004 	b	80026a2c <argstr+0x4c>
80026a18:	e51b3008 	ldr	r3, [fp, #-8]
80026a1c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80026a20:	e1a00003 	mov	r0, r3
80026a24:	ebffff7b 	bl	80026818 <fetchstr>
80026a28:	e1a03000 	mov	r3, r0
80026a2c:	e1a00003 	mov	r0, r3
80026a30:	e24bd004 	sub	sp, fp, #4
80026a34:	e8bd8800 	pop	{fp, pc}

80026a38 <syscall>:
80026a38:	e92d4800 	push	{fp, lr}
80026a3c:	e28db004 	add	fp, sp, #4
80026a40:	e24dd008 	sub	sp, sp, #8
80026a44:	e59f30cc 	ldr	r3, [pc, #204]	@ 80026b18 <syscall+0xe0>
80026a48:	e5933000 	ldr	r3, [r3]
80026a4c:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
80026a50:	e5933010 	ldr	r3, [r3, #16]
80026a54:	e50b3008 	str	r3, [fp, #-8]
80026a58:	e59f30b8 	ldr	r3, [pc, #184]	@ 80026b18 <syscall+0xe0>
80026a5c:	e5933000 	ldr	r3, [r3]
80026a60:	e5932088 	ldr	r2, [r3, #136]	@ 0x88
80026a64:	e2822001 	add	r2, r2, #1
80026a68:	e5832088 	str	r2, [r3, #136]	@ 0x88
80026a6c:	e51b3008 	ldr	r3, [fp, #-8]
80026a70:	e3530000 	cmp	r3, #0
80026a74:	da000015 	ble	80026ad0 <syscall+0x98>
80026a78:	e51b3008 	ldr	r3, [fp, #-8]
80026a7c:	e353001b 	cmp	r3, #27
80026a80:	8a000012 	bhi	80026ad0 <syscall+0x98>
80026a84:	e59f2090 	ldr	r2, [pc, #144]	@ 80026b1c <syscall+0xe4>
80026a88:	e51b3008 	ldr	r3, [fp, #-8]
80026a8c:	e7923103 	ldr	r3, [r2, r3, lsl #2]
80026a90:	e3530000 	cmp	r3, #0
80026a94:	0a00000d 	beq	80026ad0 <syscall+0x98>
80026a98:	e59f207c 	ldr	r2, [pc, #124]	@ 80026b1c <syscall+0xe4>
80026a9c:	e51b3008 	ldr	r3, [fp, #-8]
80026aa0:	e7923103 	ldr	r3, [r2, r3, lsl #2]
80026aa4:	e12fff33 	blx	r3
80026aa8:	e50b000c 	str	r0, [fp, #-12]
80026aac:	e51b3008 	ldr	r3, [fp, #-8]
80026ab0:	e3530007 	cmp	r3, #7
80026ab4:	0a000014 	beq	80026b0c <syscall+0xd4>
80026ab8:	e59f3058 	ldr	r3, [pc, #88]	@ 80026b18 <syscall+0xe0>
80026abc:	e5933000 	ldr	r3, [r3]
80026ac0:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
80026ac4:	e51b200c 	ldr	r2, [fp, #-12]
80026ac8:	e5832010 	str	r2, [r3, #16]
80026acc:	ea00000e 	b	80026b0c <syscall+0xd4>
80026ad0:	e59f3040 	ldr	r3, [pc, #64]	@ 80026b18 <syscall+0xe0>
80026ad4:	e5933000 	ldr	r3, [r3]
80026ad8:	e593101c 	ldr	r1, [r3, #28]
80026adc:	e59f3034 	ldr	r3, [pc, #52]	@ 80026b18 <syscall+0xe0>
80026ae0:	e5933000 	ldr	r3, [r3]
80026ae4:	e2832078 	add	r2, r3, #120	@ 0x78
80026ae8:	e51b3008 	ldr	r3, [fp, #-8]
80026aec:	e59f002c 	ldr	r0, [pc, #44]	@ 80026b20 <syscall+0xe8>
80026af0:	ebffeb67 	bl	80021894 <cprintf>
80026af4:	e59f301c 	ldr	r3, [pc, #28]	@ 80026b18 <syscall+0xe0>
80026af8:	e5933000 	ldr	r3, [r3]
80026afc:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
80026b00:	e3e02000 	mvn	r2, #0
80026b04:	e5832010 	str	r2, [r3, #16]
80026b08:	e1a00000 	nop			@ (mov r0, r0)
80026b0c:	e1a00000 	nop			@ (mov r0, r0)
80026b10:	e24bd004 	sub	sp, fp, #4
80026b14:	e8bd8800 	pop	{fp, pc}
80026b18:	800b0e54 	.word	0x800b0e54
80026b1c:	8002b034 	.word	0x8002b034
80026b20:	80029fe0 	.word	0x80029fe0

80026b24 <argfd>:
80026b24:	e92d4800 	push	{fp, lr}
80026b28:	e28db004 	add	fp, sp, #4
80026b2c:	e24dd018 	sub	sp, sp, #24
80026b30:	e50b0010 	str	r0, [fp, #-16]
80026b34:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80026b38:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80026b3c:	e24b300c 	sub	r3, fp, #12
80026b40:	e1a01003 	mov	r1, r3
80026b44:	e51b0010 	ldr	r0, [fp, #-16]
80026b48:	ebffff60 	bl	800268d0 <argint>
80026b4c:	e1a03000 	mov	r3, r0
80026b50:	e3530000 	cmp	r3, #0
80026b54:	aa000001 	bge	80026b60 <argfd+0x3c>
80026b58:	e3e03000 	mvn	r3, #0
80026b5c:	ea00001f 	b	80026be0 <argfd+0xbc>
80026b60:	e51b300c 	ldr	r3, [fp, #-12]
80026b64:	e3530000 	cmp	r3, #0
80026b68:	ba00000d 	blt	80026ba4 <argfd+0x80>
80026b6c:	e51b300c 	ldr	r3, [fp, #-12]
80026b70:	e353000f 	cmp	r3, #15
80026b74:	ca00000a 	bgt	80026ba4 <argfd+0x80>
80026b78:	e59f306c 	ldr	r3, [pc, #108]	@ 80026bec <argfd+0xc8>
80026b7c:	e5932000 	ldr	r2, [r3]
80026b80:	e51b300c 	ldr	r3, [fp, #-12]
80026b84:	e283300c 	add	r3, r3, #12
80026b88:	e1a03103 	lsl	r3, r3, #2
80026b8c:	e0823003 	add	r3, r2, r3
80026b90:	e5933004 	ldr	r3, [r3, #4]
80026b94:	e50b3008 	str	r3, [fp, #-8]
80026b98:	e51b3008 	ldr	r3, [fp, #-8]
80026b9c:	e3530000 	cmp	r3, #0
80026ba0:	1a000001 	bne	80026bac <argfd+0x88>
80026ba4:	e3e03000 	mvn	r3, #0
80026ba8:	ea00000c 	b	80026be0 <argfd+0xbc>
80026bac:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026bb0:	e3530000 	cmp	r3, #0
80026bb4:	0a000002 	beq	80026bc4 <argfd+0xa0>
80026bb8:	e51b200c 	ldr	r2, [fp, #-12]
80026bbc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026bc0:	e5832000 	str	r2, [r3]
80026bc4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80026bc8:	e3530000 	cmp	r3, #0
80026bcc:	0a000002 	beq	80026bdc <argfd+0xb8>
80026bd0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80026bd4:	e51b2008 	ldr	r2, [fp, #-8]
80026bd8:	e5832000 	str	r2, [r3]
80026bdc:	e3a03000 	mov	r3, #0
80026be0:	e1a00003 	mov	r0, r3
80026be4:	e24bd004 	sub	sp, fp, #4
80026be8:	e8bd8800 	pop	{fp, pc}
80026bec:	800b0e54 	.word	0x800b0e54

80026bf0 <fdalloc>:
80026bf0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80026bf4:	e28db000 	add	fp, sp, #0
80026bf8:	e24dd014 	sub	sp, sp, #20
80026bfc:	e50b0010 	str	r0, [fp, #-16]
80026c00:	e3a03000 	mov	r3, #0
80026c04:	e50b3008 	str	r3, [fp, #-8]
80026c08:	ea000015 	b	80026c64 <fdalloc+0x74>
80026c0c:	e59f3070 	ldr	r3, [pc, #112]	@ 80026c84 <fdalloc+0x94>
80026c10:	e5932000 	ldr	r2, [r3]
80026c14:	e51b3008 	ldr	r3, [fp, #-8]
80026c18:	e283300c 	add	r3, r3, #12
80026c1c:	e1a03103 	lsl	r3, r3, #2
80026c20:	e0823003 	add	r3, r2, r3
80026c24:	e5933004 	ldr	r3, [r3, #4]
80026c28:	e3530000 	cmp	r3, #0
80026c2c:	1a000009 	bne	80026c58 <fdalloc+0x68>
80026c30:	e59f304c 	ldr	r3, [pc, #76]	@ 80026c84 <fdalloc+0x94>
80026c34:	e5932000 	ldr	r2, [r3]
80026c38:	e51b3008 	ldr	r3, [fp, #-8]
80026c3c:	e283300c 	add	r3, r3, #12
80026c40:	e1a03103 	lsl	r3, r3, #2
80026c44:	e0823003 	add	r3, r2, r3
80026c48:	e51b2010 	ldr	r2, [fp, #-16]
80026c4c:	e5832004 	str	r2, [r3, #4]
80026c50:	e51b3008 	ldr	r3, [fp, #-8]
80026c54:	ea000006 	b	80026c74 <fdalloc+0x84>
80026c58:	e51b3008 	ldr	r3, [fp, #-8]
80026c5c:	e2833001 	add	r3, r3, #1
80026c60:	e50b3008 	str	r3, [fp, #-8]
80026c64:	e51b3008 	ldr	r3, [fp, #-8]
80026c68:	e353000f 	cmp	r3, #15
80026c6c:	daffffe6 	ble	80026c0c <fdalloc+0x1c>
80026c70:	e3e03000 	mvn	r3, #0
80026c74:	e1a00003 	mov	r0, r3
80026c78:	e28bd000 	add	sp, fp, #0
80026c7c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80026c80:	e12fff1e 	bx	lr
80026c84:	800b0e54 	.word	0x800b0e54

80026c88 <sys_dup>:
80026c88:	e92d4800 	push	{fp, lr}
80026c8c:	e28db004 	add	fp, sp, #4
80026c90:	e24dd008 	sub	sp, sp, #8
80026c94:	e24b300c 	sub	r3, fp, #12
80026c98:	e1a02003 	mov	r2, r3
80026c9c:	e3a01000 	mov	r1, #0
80026ca0:	e3a00000 	mov	r0, #0
80026ca4:	ebffff9e 	bl	80026b24 <argfd>
80026ca8:	e1a03000 	mov	r3, r0
80026cac:	e3530000 	cmp	r3, #0
80026cb0:	aa000001 	bge	80026cbc <sys_dup+0x34>
80026cb4:	e3e03000 	mvn	r3, #0
80026cb8:	ea00000c 	b	80026cf0 <sys_dup+0x68>
80026cbc:	e51b300c 	ldr	r3, [fp, #-12]
80026cc0:	e1a00003 	mov	r0, r3
80026cc4:	ebffffc9 	bl	80026bf0 <fdalloc>
80026cc8:	e50b0008 	str	r0, [fp, #-8]
80026ccc:	e51b3008 	ldr	r3, [fp, #-8]
80026cd0:	e3530000 	cmp	r3, #0
80026cd4:	aa000001 	bge	80026ce0 <sys_dup+0x58>
80026cd8:	e3e03000 	mvn	r3, #0
80026cdc:	ea000003 	b	80026cf0 <sys_dup+0x68>
80026ce0:	e51b300c 	ldr	r3, [fp, #-12]
80026ce4:	e1a00003 	mov	r0, r3
80026ce8:	ebffef44 	bl	80022a00 <filedup>
80026cec:	e51b3008 	ldr	r3, [fp, #-8]
80026cf0:	e1a00003 	mov	r0, r3
80026cf4:	e24bd004 	sub	sp, fp, #4
80026cf8:	e8bd8800 	pop	{fp, pc}

80026cfc <sys_read>:
80026cfc:	e92d4800 	push	{fp, lr}
80026d00:	e28db004 	add	fp, sp, #4
80026d04:	e24dd010 	sub	sp, sp, #16
80026d08:	e24b3008 	sub	r3, fp, #8
80026d0c:	e1a02003 	mov	r2, r3
80026d10:	e3a01000 	mov	r1, #0
80026d14:	e3a00000 	mov	r0, #0
80026d18:	ebffff81 	bl	80026b24 <argfd>
80026d1c:	e1a03000 	mov	r3, r0
80026d20:	e3530000 	cmp	r3, #0
80026d24:	ba00000e 	blt	80026d64 <sys_read+0x68>
80026d28:	e24b300c 	sub	r3, fp, #12
80026d2c:	e1a01003 	mov	r1, r3
80026d30:	e3a00002 	mov	r0, #2
80026d34:	ebfffee5 	bl	800268d0 <argint>
80026d38:	e1a03000 	mov	r3, r0
80026d3c:	e3530000 	cmp	r3, #0
80026d40:	ba000007 	blt	80026d64 <sys_read+0x68>
80026d44:	e51b200c 	ldr	r2, [fp, #-12]
80026d48:	e24b3010 	sub	r3, fp, #16
80026d4c:	e1a01003 	mov	r1, r3
80026d50:	e3a00001 	mov	r0, #1
80026d54:	ebfffef8 	bl	8002693c <argptr>
80026d58:	e1a03000 	mov	r3, r0
80026d5c:	e3530000 	cmp	r3, #0
80026d60:	aa000001 	bge	80026d6c <sys_read+0x70>
80026d64:	e3e03000 	mvn	r3, #0
80026d68:	ea000005 	b	80026d84 <sys_read+0x88>
80026d6c:	e51b3008 	ldr	r3, [fp, #-8]
80026d70:	e51b1010 	ldr	r1, [fp, #-16]
80026d74:	e51b200c 	ldr	r2, [fp, #-12]
80026d78:	e1a00003 	mov	r0, r3
80026d7c:	ebffef90 	bl	80022bc4 <fileread>
80026d80:	e1a03000 	mov	r3, r0
80026d84:	e1a00003 	mov	r0, r3
80026d88:	e24bd004 	sub	sp, fp, #4
80026d8c:	e8bd8800 	pop	{fp, pc}

80026d90 <sys_write>:
80026d90:	e92d4800 	push	{fp, lr}
80026d94:	e28db004 	add	fp, sp, #4
80026d98:	e24dd010 	sub	sp, sp, #16
80026d9c:	e24b3008 	sub	r3, fp, #8
80026da0:	e1a02003 	mov	r2, r3
80026da4:	e3a01000 	mov	r1, #0
80026da8:	e3a00000 	mov	r0, #0
80026dac:	ebffff5c 	bl	80026b24 <argfd>
80026db0:	e1a03000 	mov	r3, r0
80026db4:	e3530000 	cmp	r3, #0
80026db8:	ba00000e 	blt	80026df8 <sys_write+0x68>
80026dbc:	e24b300c 	sub	r3, fp, #12
80026dc0:	e1a01003 	mov	r1, r3
80026dc4:	e3a00002 	mov	r0, #2
80026dc8:	ebfffec0 	bl	800268d0 <argint>
80026dcc:	e1a03000 	mov	r3, r0
80026dd0:	e3530000 	cmp	r3, #0
80026dd4:	ba000007 	blt	80026df8 <sys_write+0x68>
80026dd8:	e51b200c 	ldr	r2, [fp, #-12]
80026ddc:	e24b3010 	sub	r3, fp, #16
80026de0:	e1a01003 	mov	r1, r3
80026de4:	e3a00001 	mov	r0, #1
80026de8:	ebfffed3 	bl	8002693c <argptr>
80026dec:	e1a03000 	mov	r3, r0
80026df0:	e3530000 	cmp	r3, #0
80026df4:	aa000001 	bge	80026e00 <sys_write+0x70>
80026df8:	e3e03000 	mvn	r3, #0
80026dfc:	ea000005 	b	80026e18 <sys_write+0x88>
80026e00:	e51b3008 	ldr	r3, [fp, #-8]
80026e04:	e51b1010 	ldr	r1, [fp, #-16]
80026e08:	e51b200c 	ldr	r2, [fp, #-12]
80026e0c:	e1a00003 	mov	r0, r3
80026e10:	ebffefa8 	bl	80022cb8 <filewrite>
80026e14:	e1a03000 	mov	r3, r0
80026e18:	e1a00003 	mov	r0, r3
80026e1c:	e24bd004 	sub	sp, fp, #4
80026e20:	e8bd8800 	pop	{fp, pc}

80026e24 <sys_close>:
80026e24:	e92d4800 	push	{fp, lr}
80026e28:	e28db004 	add	fp, sp, #4
80026e2c:	e24dd008 	sub	sp, sp, #8
80026e30:	e24b200c 	sub	r2, fp, #12
80026e34:	e24b3008 	sub	r3, fp, #8
80026e38:	e1a01003 	mov	r1, r3
80026e3c:	e3a00000 	mov	r0, #0
80026e40:	ebffff37 	bl	80026b24 <argfd>
80026e44:	e1a03000 	mov	r3, r0
80026e48:	e3530000 	cmp	r3, #0
80026e4c:	aa000001 	bge	80026e58 <sys_close+0x34>
80026e50:	e3e03000 	mvn	r3, #0
80026e54:	ea00000b 	b	80026e88 <sys_close+0x64>
80026e58:	e59f3034 	ldr	r3, [pc, #52]	@ 80026e94 <sys_close+0x70>
80026e5c:	e5932000 	ldr	r2, [r3]
80026e60:	e51b3008 	ldr	r3, [fp, #-8]
80026e64:	e283300c 	add	r3, r3, #12
80026e68:	e1a03103 	lsl	r3, r3, #2
80026e6c:	e0823003 	add	r3, r2, r3
80026e70:	e3a02000 	mov	r2, #0
80026e74:	e5832004 	str	r2, [r3, #4]
80026e78:	e51b300c 	ldr	r3, [fp, #-12]
80026e7c:	e1a00003 	mov	r0, r3
80026e80:	ebffeef7 	bl	80022a64 <fileclose>
80026e84:	e3a03000 	mov	r3, #0
80026e88:	e1a00003 	mov	r0, r3
80026e8c:	e24bd004 	sub	sp, fp, #4
80026e90:	e8bd8800 	pop	{fp, pc}
80026e94:	800b0e54 	.word	0x800b0e54

80026e98 <sys_fstat>:
80026e98:	e92d4800 	push	{fp, lr}
80026e9c:	e28db004 	add	fp, sp, #4
80026ea0:	e24dd008 	sub	sp, sp, #8
80026ea4:	e24b3008 	sub	r3, fp, #8
80026ea8:	e1a02003 	mov	r2, r3
80026eac:	e3a01000 	mov	r1, #0
80026eb0:	e3a00000 	mov	r0, #0
80026eb4:	ebffff1a 	bl	80026b24 <argfd>
80026eb8:	e1a03000 	mov	r3, r0
80026ebc:	e3530000 	cmp	r3, #0
80026ec0:	ba000007 	blt	80026ee4 <sys_fstat+0x4c>
80026ec4:	e24b300c 	sub	r3, fp, #12
80026ec8:	e3a02014 	mov	r2, #20
80026ecc:	e1a01003 	mov	r1, r3
80026ed0:	e3a00001 	mov	r0, #1
80026ed4:	ebfffe98 	bl	8002693c <argptr>
80026ed8:	e1a03000 	mov	r3, r0
80026edc:	e3530000 	cmp	r3, #0
80026ee0:	aa000001 	bge	80026eec <sys_fstat+0x54>
80026ee4:	e3e03000 	mvn	r3, #0
80026ee8:	ea000005 	b	80026f04 <sys_fstat+0x6c>
80026eec:	e51b3008 	ldr	r3, [fp, #-8]
80026ef0:	e51b200c 	ldr	r2, [fp, #-12]
80026ef4:	e1a01002 	mov	r1, r2
80026ef8:	e1a00003 	mov	r0, r3
80026efc:	ebffef14 	bl	80022b54 <filestat>
80026f00:	e1a03000 	mov	r3, r0
80026f04:	e1a00003 	mov	r0, r3
80026f08:	e24bd004 	sub	sp, fp, #4
80026f0c:	e8bd8800 	pop	{fp, pc}

80026f10 <sys_link>:
80026f10:	e92d4800 	push	{fp, lr}
80026f14:	e28db004 	add	fp, sp, #4
80026f18:	e24dd020 	sub	sp, sp, #32
80026f1c:	e24b3024 	sub	r3, fp, #36	@ 0x24
80026f20:	e1a01003 	mov	r1, r3
80026f24:	e3a00000 	mov	r0, #0
80026f28:	ebfffeac 	bl	800269e0 <argstr>
80026f2c:	e1a03000 	mov	r3, r0
80026f30:	e3530000 	cmp	r3, #0
80026f34:	ba000006 	blt	80026f54 <sys_link+0x44>
80026f38:	e24b3020 	sub	r3, fp, #32
80026f3c:	e1a01003 	mov	r1, r3
80026f40:	e3a00001 	mov	r0, #1
80026f44:	ebfffea5 	bl	800269e0 <argstr>
80026f48:	e1a03000 	mov	r3, r0
80026f4c:	e3530000 	cmp	r3, #0
80026f50:	aa000001 	bge	80026f5c <sys_link+0x4c>
80026f54:	e3e03000 	mvn	r3, #0
80026f58:	ea000055 	b	800270b4 <sys_link+0x1a4>
80026f5c:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80026f60:	e1a00003 	mov	r0, r3
80026f64:	ebfff55c 	bl	800244dc <namei>
80026f68:	e50b0008 	str	r0, [fp, #-8]
80026f6c:	e51b3008 	ldr	r3, [fp, #-8]
80026f70:	e3530000 	cmp	r3, #0
80026f74:	1a000001 	bne	80026f80 <sys_link+0x70>
80026f78:	e3e03000 	mvn	r3, #0
80026f7c:	ea00004c 	b	800270b4 <sys_link+0x1a4>
80026f80:	ebfff62e 	bl	80024840 <begin_trans>
80026f84:	e51b0008 	ldr	r0, [fp, #-8]
80026f88:	ebfff180 	bl	80023590 <ilock>
80026f8c:	e51b3008 	ldr	r3, [fp, #-8]
80026f90:	e1d331f0 	ldrsh	r3, [r3, #16]
80026f94:	e3530001 	cmp	r3, #1
80026f98:	1a000004 	bne	80026fb0 <sys_link+0xa0>
80026f9c:	e51b0008 	ldr	r0, [fp, #-8]
80026fa0:	ebfff23b 	bl	80023894 <iunlockput>
80026fa4:	ebfff639 	bl	80024890 <commit_trans>
80026fa8:	e3e03000 	mvn	r3, #0
80026fac:	ea000040 	b	800270b4 <sys_link+0x1a4>
80026fb0:	e51b3008 	ldr	r3, [fp, #-8]
80026fb4:	e1d331f6 	ldrsh	r3, [r3, #22]
80026fb8:	e6ff3073 	uxth	r3, r3
80026fbc:	e2833001 	add	r3, r3, #1
80026fc0:	e6ff3073 	uxth	r3, r3
80026fc4:	e6bf2073 	sxth	r2, r3
80026fc8:	e51b3008 	ldr	r3, [fp, #-8]
80026fcc:	e1c321b6 	strh	r2, [r3, #22]
80026fd0:	e51b0008 	ldr	r0, [fp, #-8]
80026fd4:	ebfff0d3 	bl	80023328 <iupdate>
80026fd8:	e51b0008 	ldr	r0, [fp, #-8]
80026fdc:	ebfff1cf 	bl	80023720 <iunlock>
80026fe0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80026fe4:	e24b201c 	sub	r2, fp, #28
80026fe8:	e1a01002 	mov	r1, r2
80026fec:	e1a00003 	mov	r0, r3
80026ff0:	ebfff546 	bl	80024510 <nameiparent>
80026ff4:	e50b000c 	str	r0, [fp, #-12]
80026ff8:	e51b300c 	ldr	r3, [fp, #-12]
80026ffc:	e3530000 	cmp	r3, #0
80027000:	0a00001a 	beq	80027070 <sys_link+0x160>
80027004:	e51b000c 	ldr	r0, [fp, #-12]
80027008:	ebfff160 	bl	80023590 <ilock>
8002700c:	e51b300c 	ldr	r3, [fp, #-12]
80027010:	e5932000 	ldr	r2, [r3]
80027014:	e51b3008 	ldr	r3, [fp, #-8]
80027018:	e5933000 	ldr	r3, [r3]
8002701c:	e1520003 	cmp	r2, r3
80027020:	1a000008 	bne	80027048 <sys_link+0x138>
80027024:	e51b3008 	ldr	r3, [fp, #-8]
80027028:	e5932004 	ldr	r2, [r3, #4]
8002702c:	e24b301c 	sub	r3, fp, #28
80027030:	e1a01003 	mov	r1, r3
80027034:	e51b000c 	ldr	r0, [fp, #-12]
80027038:	ebfff451 	bl	80024184 <dirlink>
8002703c:	e1a03000 	mov	r3, r0
80027040:	e3530000 	cmp	r3, #0
80027044:	aa000002 	bge	80027054 <sys_link+0x144>
80027048:	e51b000c 	ldr	r0, [fp, #-12]
8002704c:	ebfff210 	bl	80023894 <iunlockput>
80027050:	ea000007 	b	80027074 <sys_link+0x164>
80027054:	e51b000c 	ldr	r0, [fp, #-12]
80027058:	ebfff20d 	bl	80023894 <iunlockput>
8002705c:	e51b0008 	ldr	r0, [fp, #-8]
80027060:	ebfff1d0 	bl	800237a8 <iput>
80027064:	ebfff609 	bl	80024890 <commit_trans>
80027068:	e3a03000 	mov	r3, #0
8002706c:	ea000010 	b	800270b4 <sys_link+0x1a4>
80027070:	e1a00000 	nop			@ (mov r0, r0)
80027074:	e51b0008 	ldr	r0, [fp, #-8]
80027078:	ebfff144 	bl	80023590 <ilock>
8002707c:	e51b3008 	ldr	r3, [fp, #-8]
80027080:	e1d331f6 	ldrsh	r3, [r3, #22]
80027084:	e6ff3073 	uxth	r3, r3
80027088:	e2433001 	sub	r3, r3, #1
8002708c:	e6ff3073 	uxth	r3, r3
80027090:	e6bf2073 	sxth	r2, r3
80027094:	e51b3008 	ldr	r3, [fp, #-8]
80027098:	e1c321b6 	strh	r2, [r3, #22]
8002709c:	e51b0008 	ldr	r0, [fp, #-8]
800270a0:	ebfff0a0 	bl	80023328 <iupdate>
800270a4:	e51b0008 	ldr	r0, [fp, #-8]
800270a8:	ebfff1f9 	bl	80023894 <iunlockput>
800270ac:	ebfff5f7 	bl	80024890 <commit_trans>
800270b0:	e3e03000 	mvn	r3, #0
800270b4:	e1a00003 	mov	r0, r3
800270b8:	e24bd004 	sub	sp, fp, #4
800270bc:	e8bd8800 	pop	{fp, pc}

800270c0 <isdirempty>:
800270c0:	e92d4800 	push	{fp, lr}
800270c4:	e28db004 	add	fp, sp, #4
800270c8:	e24dd020 	sub	sp, sp, #32
800270cc:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
800270d0:	e3a03020 	mov	r3, #32
800270d4:	e50b3008 	str	r3, [fp, #-8]
800270d8:	ea000011 	b	80027124 <isdirempty+0x64>
800270dc:	e51b2008 	ldr	r2, [fp, #-8]
800270e0:	e24b1018 	sub	r1, fp, #24
800270e4:	e3a03010 	mov	r3, #16
800270e8:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
800270ec:	ebfff2d3 	bl	80023c40 <readi>
800270f0:	e1a03000 	mov	r3, r0
800270f4:	e3530010 	cmp	r3, #16
800270f8:	0a000001 	beq	80027104 <isdirempty+0x44>
800270fc:	e59f0044 	ldr	r0, [pc, #68]	@ 80027148 <isdirempty+0x88>
80027100:	ebffea6d 	bl	80021abc <panic>
80027104:	e15b31b8 	ldrh	r3, [fp, #-24]	@ 0xffffffe8
80027108:	e3530000 	cmp	r3, #0
8002710c:	0a000001 	beq	80027118 <isdirempty+0x58>
80027110:	e3a03000 	mov	r3, #0
80027114:	ea000008 	b	8002713c <isdirempty+0x7c>
80027118:	e51b3008 	ldr	r3, [fp, #-8]
8002711c:	e2833010 	add	r3, r3, #16
80027120:	e50b3008 	str	r3, [fp, #-8]
80027124:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80027128:	e5932018 	ldr	r2, [r3, #24]
8002712c:	e51b3008 	ldr	r3, [fp, #-8]
80027130:	e1520003 	cmp	r2, r3
80027134:	8affffe8 	bhi	800270dc <isdirempty+0x1c>
80027138:	e3a03001 	mov	r3, #1
8002713c:	e1a00003 	mov	r0, r3
80027140:	e24bd004 	sub	sp, fp, #4
80027144:	e8bd8800 	pop	{fp, pc}
80027148:	80029ffc 	.word	0x80029ffc

8002714c <sys_unlink>:
8002714c:	e92d4800 	push	{fp, lr}
80027150:	e28db004 	add	fp, sp, #4
80027154:	e24dd030 	sub	sp, sp, #48	@ 0x30
80027158:	e24b3030 	sub	r3, fp, #48	@ 0x30
8002715c:	e1a01003 	mov	r1, r3
80027160:	e3a00000 	mov	r0, #0
80027164:	ebfffe1d 	bl	800269e0 <argstr>
80027168:	e1a03000 	mov	r3, r0
8002716c:	e3530000 	cmp	r3, #0
80027170:	aa000001 	bge	8002717c <sys_unlink+0x30>
80027174:	e3e03000 	mvn	r3, #0
80027178:	ea00006d 	b	80027334 <sys_unlink+0x1e8>
8002717c:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
80027180:	e24b202c 	sub	r2, fp, #44	@ 0x2c
80027184:	e1a01002 	mov	r1, r2
80027188:	e1a00003 	mov	r0, r3
8002718c:	ebfff4df 	bl	80024510 <nameiparent>
80027190:	e50b0008 	str	r0, [fp, #-8]
80027194:	e51b3008 	ldr	r3, [fp, #-8]
80027198:	e3530000 	cmp	r3, #0
8002719c:	1a000001 	bne	800271a8 <sys_unlink+0x5c>
800271a0:	e3e03000 	mvn	r3, #0
800271a4:	ea000062 	b	80027334 <sys_unlink+0x1e8>
800271a8:	ebfff5a4 	bl	80024840 <begin_trans>
800271ac:	e51b0008 	ldr	r0, [fp, #-8]
800271b0:	ebfff0f6 	bl	80023590 <ilock>
800271b4:	e24b302c 	sub	r3, fp, #44	@ 0x2c
800271b8:	e59f1180 	ldr	r1, [pc, #384]	@ 80027340 <sys_unlink+0x1f4>
800271bc:	e1a00003 	mov	r0, r3
800271c0:	ebfff3a0 	bl	80024048 <namecmp>
800271c4:	e1a03000 	mov	r3, r0
800271c8:	e3530000 	cmp	r3, #0
800271cc:	0a000051 	beq	80027318 <sys_unlink+0x1cc>
800271d0:	e24b302c 	sub	r3, fp, #44	@ 0x2c
800271d4:	e59f1168 	ldr	r1, [pc, #360]	@ 80027344 <sys_unlink+0x1f8>
800271d8:	e1a00003 	mov	r0, r3
800271dc:	ebfff399 	bl	80024048 <namecmp>
800271e0:	e1a03000 	mov	r3, r0
800271e4:	e3530000 	cmp	r3, #0
800271e8:	0a00004a 	beq	80027318 <sys_unlink+0x1cc>
800271ec:	e24b2034 	sub	r2, fp, #52	@ 0x34
800271f0:	e24b302c 	sub	r3, fp, #44	@ 0x2c
800271f4:	e1a01003 	mov	r1, r3
800271f8:	e51b0008 	ldr	r0, [fp, #-8]
800271fc:	ebfff39e 	bl	8002407c <dirlookup>
80027200:	e50b000c 	str	r0, [fp, #-12]
80027204:	e51b300c 	ldr	r3, [fp, #-12]
80027208:	e3530000 	cmp	r3, #0
8002720c:	0a000043 	beq	80027320 <sys_unlink+0x1d4>
80027210:	e51b000c 	ldr	r0, [fp, #-12]
80027214:	ebfff0dd 	bl	80023590 <ilock>
80027218:	e51b300c 	ldr	r3, [fp, #-12]
8002721c:	e1d331f6 	ldrsh	r3, [r3, #22]
80027220:	e3530000 	cmp	r3, #0
80027224:	ca000001 	bgt	80027230 <sys_unlink+0xe4>
80027228:	e59f0118 	ldr	r0, [pc, #280]	@ 80027348 <sys_unlink+0x1fc>
8002722c:	ebffea22 	bl	80021abc <panic>
80027230:	e51b300c 	ldr	r3, [fp, #-12]
80027234:	e1d331f0 	ldrsh	r3, [r3, #16]
80027238:	e3530001 	cmp	r3, #1
8002723c:	1a000007 	bne	80027260 <sys_unlink+0x114>
80027240:	e51b000c 	ldr	r0, [fp, #-12]
80027244:	ebffff9d 	bl	800270c0 <isdirempty>
80027248:	e1a03000 	mov	r3, r0
8002724c:	e3530000 	cmp	r3, #0
80027250:	1a000002 	bne	80027260 <sys_unlink+0x114>
80027254:	e51b000c 	ldr	r0, [fp, #-12]
80027258:	ebfff18d 	bl	80023894 <iunlockput>
8002725c:	ea000030 	b	80027324 <sys_unlink+0x1d8>
80027260:	e24b301c 	sub	r3, fp, #28
80027264:	e3a02010 	mov	r2, #16
80027268:	e3a01000 	mov	r1, #0
8002726c:	e1a00003 	mov	r0, r3
80027270:	ebffe362 	bl	80020000 <memset>
80027274:	e51b2034 	ldr	r2, [fp, #-52]	@ 0xffffffcc
80027278:	e24b101c 	sub	r1, fp, #28
8002727c:	e3a03010 	mov	r3, #16
80027280:	e51b0008 	ldr	r0, [fp, #-8]
80027284:	ebfff2e8 	bl	80023e2c <writei>
80027288:	e1a03000 	mov	r3, r0
8002728c:	e3530010 	cmp	r3, #16
80027290:	0a000001 	beq	8002729c <sys_unlink+0x150>
80027294:	e59f00b0 	ldr	r0, [pc, #176]	@ 8002734c <sys_unlink+0x200>
80027298:	ebffea07 	bl	80021abc <panic>
8002729c:	e51b300c 	ldr	r3, [fp, #-12]
800272a0:	e1d331f0 	ldrsh	r3, [r3, #16]
800272a4:	e3530001 	cmp	r3, #1
800272a8:	1a000009 	bne	800272d4 <sys_unlink+0x188>
800272ac:	e51b3008 	ldr	r3, [fp, #-8]
800272b0:	e1d331f6 	ldrsh	r3, [r3, #22]
800272b4:	e6ff3073 	uxth	r3, r3
800272b8:	e2433001 	sub	r3, r3, #1
800272bc:	e6ff3073 	uxth	r3, r3
800272c0:	e6bf2073 	sxth	r2, r3
800272c4:	e51b3008 	ldr	r3, [fp, #-8]
800272c8:	e1c321b6 	strh	r2, [r3, #22]
800272cc:	e51b0008 	ldr	r0, [fp, #-8]
800272d0:	ebfff014 	bl	80023328 <iupdate>
800272d4:	e51b0008 	ldr	r0, [fp, #-8]
800272d8:	ebfff16d 	bl	80023894 <iunlockput>
800272dc:	e51b300c 	ldr	r3, [fp, #-12]
800272e0:	e1d331f6 	ldrsh	r3, [r3, #22]
800272e4:	e6ff3073 	uxth	r3, r3
800272e8:	e2433001 	sub	r3, r3, #1
800272ec:	e6ff3073 	uxth	r3, r3
800272f0:	e6bf2073 	sxth	r2, r3
800272f4:	e51b300c 	ldr	r3, [fp, #-12]
800272f8:	e1c321b6 	strh	r2, [r3, #22]
800272fc:	e51b000c 	ldr	r0, [fp, #-12]
80027300:	ebfff008 	bl	80023328 <iupdate>
80027304:	e51b000c 	ldr	r0, [fp, #-12]
80027308:	ebfff161 	bl	80023894 <iunlockput>
8002730c:	ebfff55f 	bl	80024890 <commit_trans>
80027310:	e3a03000 	mov	r3, #0
80027314:	ea000006 	b	80027334 <sys_unlink+0x1e8>
80027318:	e1a00000 	nop			@ (mov r0, r0)
8002731c:	ea000000 	b	80027324 <sys_unlink+0x1d8>
80027320:	e1a00000 	nop			@ (mov r0, r0)
80027324:	e51b0008 	ldr	r0, [fp, #-8]
80027328:	ebfff159 	bl	80023894 <iunlockput>
8002732c:	ebfff557 	bl	80024890 <commit_trans>
80027330:	e3e03000 	mvn	r3, #0
80027334:	e1a00003 	mov	r0, r3
80027338:	e24bd004 	sub	sp, fp, #4
8002733c:	e8bd8800 	pop	{fp, pc}
80027340:	8002a010 	.word	0x8002a010
80027344:	8002a014 	.word	0x8002a014
80027348:	8002a018 	.word	0x8002a018
8002734c:	8002a02c 	.word	0x8002a02c

80027350 <create>:
80027350:	e92d4800 	push	{fp, lr}
80027354:	e28db004 	add	fp, sp, #4
80027358:	e24dd030 	sub	sp, sp, #48	@ 0x30
8002735c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80027360:	e1a00001 	mov	r0, r1
80027364:	e1a01002 	mov	r1, r2
80027368:	e1a02003 	mov	r2, r3
8002736c:	e1a03000 	mov	r3, r0
80027370:	e14b32ba 	strh	r3, [fp, #-42]	@ 0xffffffd6
80027374:	e1a03001 	mov	r3, r1
80027378:	e14b32bc 	strh	r3, [fp, #-44]	@ 0xffffffd4
8002737c:	e1a03002 	mov	r3, r2
80027380:	e14b32be 	strh	r3, [fp, #-46]	@ 0xffffffd2
80027384:	e24b3020 	sub	r3, fp, #32
80027388:	e1a01003 	mov	r1, r3
8002738c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80027390:	ebfff45e 	bl	80024510 <nameiparent>
80027394:	e50b0008 	str	r0, [fp, #-8]
80027398:	e51b3008 	ldr	r3, [fp, #-8]
8002739c:	e3530000 	cmp	r3, #0
800273a0:	1a000001 	bne	800273ac <create+0x5c>
800273a4:	e3a03000 	mov	r3, #0
800273a8:	ea000063 	b	8002753c <create+0x1ec>
800273ac:	e51b0008 	ldr	r0, [fp, #-8]
800273b0:	ebfff076 	bl	80023590 <ilock>
800273b4:	e24b2010 	sub	r2, fp, #16
800273b8:	e24b3020 	sub	r3, fp, #32
800273bc:	e1a01003 	mov	r1, r3
800273c0:	e51b0008 	ldr	r0, [fp, #-8]
800273c4:	ebfff32c 	bl	8002407c <dirlookup>
800273c8:	e50b000c 	str	r0, [fp, #-12]
800273cc:	e51b300c 	ldr	r3, [fp, #-12]
800273d0:	e3530000 	cmp	r3, #0
800273d4:	0a000010 	beq	8002741c <create+0xcc>
800273d8:	e51b0008 	ldr	r0, [fp, #-8]
800273dc:	ebfff12c 	bl	80023894 <iunlockput>
800273e0:	e51b000c 	ldr	r0, [fp, #-12]
800273e4:	ebfff069 	bl	80023590 <ilock>
800273e8:	e15b32fa 	ldrsh	r3, [fp, #-42]	@ 0xffffffd6
800273ec:	e3530002 	cmp	r3, #2
800273f0:	1a000005 	bne	8002740c <create+0xbc>
800273f4:	e51b300c 	ldr	r3, [fp, #-12]
800273f8:	e1d331f0 	ldrsh	r3, [r3, #16]
800273fc:	e3530002 	cmp	r3, #2
80027400:	1a000001 	bne	8002740c <create+0xbc>
80027404:	e51b300c 	ldr	r3, [fp, #-12]
80027408:	ea00004b 	b	8002753c <create+0x1ec>
8002740c:	e51b000c 	ldr	r0, [fp, #-12]
80027410:	ebfff11f 	bl	80023894 <iunlockput>
80027414:	e3a03000 	mov	r3, #0
80027418:	ea000047 	b	8002753c <create+0x1ec>
8002741c:	e51b3008 	ldr	r3, [fp, #-8]
80027420:	e5933000 	ldr	r3, [r3]
80027424:	e15b22fa 	ldrsh	r2, [fp, #-42]	@ 0xffffffd6
80027428:	e1a01002 	mov	r1, r2
8002742c:	e1a00003 	mov	r0, r3
80027430:	ebffef7c 	bl	80023228 <ialloc>
80027434:	e50b000c 	str	r0, [fp, #-12]
80027438:	e51b300c 	ldr	r3, [fp, #-12]
8002743c:	e3530000 	cmp	r3, #0
80027440:	1a000001 	bne	8002744c <create+0xfc>
80027444:	e59f00fc 	ldr	r0, [pc, #252]	@ 80027548 <create+0x1f8>
80027448:	ebffe99b 	bl	80021abc <panic>
8002744c:	e51b000c 	ldr	r0, [fp, #-12]
80027450:	ebfff04e 	bl	80023590 <ilock>
80027454:	e51b300c 	ldr	r3, [fp, #-12]
80027458:	e15b22bc 	ldrh	r2, [fp, #-44]	@ 0xffffffd4
8002745c:	e1c321b2 	strh	r2, [r3, #18]
80027460:	e51b300c 	ldr	r3, [fp, #-12]
80027464:	e15b22be 	ldrh	r2, [fp, #-46]	@ 0xffffffd2
80027468:	e1c321b4 	strh	r2, [r3, #20]
8002746c:	e51b300c 	ldr	r3, [fp, #-12]
80027470:	e3a02001 	mov	r2, #1
80027474:	e1c321b6 	strh	r2, [r3, #22]
80027478:	e51b000c 	ldr	r0, [fp, #-12]
8002747c:	ebffefa9 	bl	80023328 <iupdate>
80027480:	e15b32fa 	ldrsh	r3, [fp, #-42]	@ 0xffffffd6
80027484:	e3530001 	cmp	r3, #1
80027488:	1a00001d 	bne	80027504 <create+0x1b4>
8002748c:	e51b3008 	ldr	r3, [fp, #-8]
80027490:	e1d331f6 	ldrsh	r3, [r3, #22]
80027494:	e6ff3073 	uxth	r3, r3
80027498:	e2833001 	add	r3, r3, #1
8002749c:	e6ff3073 	uxth	r3, r3
800274a0:	e6bf2073 	sxth	r2, r3
800274a4:	e51b3008 	ldr	r3, [fp, #-8]
800274a8:	e1c321b6 	strh	r2, [r3, #22]
800274ac:	e51b0008 	ldr	r0, [fp, #-8]
800274b0:	ebffef9c 	bl	80023328 <iupdate>
800274b4:	e51b300c 	ldr	r3, [fp, #-12]
800274b8:	e5933004 	ldr	r3, [r3, #4]
800274bc:	e1a02003 	mov	r2, r3
800274c0:	e59f1084 	ldr	r1, [pc, #132]	@ 8002754c <create+0x1fc>
800274c4:	e51b000c 	ldr	r0, [fp, #-12]
800274c8:	ebfff32d 	bl	80024184 <dirlink>
800274cc:	e1a03000 	mov	r3, r0
800274d0:	e3530000 	cmp	r3, #0
800274d4:	ba000008 	blt	800274fc <create+0x1ac>
800274d8:	e51b3008 	ldr	r3, [fp, #-8]
800274dc:	e5933004 	ldr	r3, [r3, #4]
800274e0:	e1a02003 	mov	r2, r3
800274e4:	e59f1064 	ldr	r1, [pc, #100]	@ 80027550 <create+0x200>
800274e8:	e51b000c 	ldr	r0, [fp, #-12]
800274ec:	ebfff324 	bl	80024184 <dirlink>
800274f0:	e1a03000 	mov	r3, r0
800274f4:	e3530000 	cmp	r3, #0
800274f8:	aa000001 	bge	80027504 <create+0x1b4>
800274fc:	e59f0050 	ldr	r0, [pc, #80]	@ 80027554 <create+0x204>
80027500:	ebffe96d 	bl	80021abc <panic>
80027504:	e51b300c 	ldr	r3, [fp, #-12]
80027508:	e5932004 	ldr	r2, [r3, #4]
8002750c:	e24b3020 	sub	r3, fp, #32
80027510:	e1a01003 	mov	r1, r3
80027514:	e51b0008 	ldr	r0, [fp, #-8]
80027518:	ebfff319 	bl	80024184 <dirlink>
8002751c:	e1a03000 	mov	r3, r0
80027520:	e3530000 	cmp	r3, #0
80027524:	aa000001 	bge	80027530 <create+0x1e0>
80027528:	e59f0028 	ldr	r0, [pc, #40]	@ 80027558 <create+0x208>
8002752c:	ebffe962 	bl	80021abc <panic>
80027530:	e51b0008 	ldr	r0, [fp, #-8]
80027534:	ebfff0d6 	bl	80023894 <iunlockput>
80027538:	e51b300c 	ldr	r3, [fp, #-12]
8002753c:	e1a00003 	mov	r0, r3
80027540:	e24bd004 	sub	sp, fp, #4
80027544:	e8bd8800 	pop	{fp, pc}
80027548:	8002a03c 	.word	0x8002a03c
8002754c:	8002a010 	.word	0x8002a010
80027550:	8002a014 	.word	0x8002a014
80027554:	8002a04c 	.word	0x8002a04c
80027558:	8002a058 	.word	0x8002a058

8002755c <sys_open>:
8002755c:	e92d4800 	push	{fp, lr}
80027560:	e28db004 	add	fp, sp, #4
80027564:	e24dd018 	sub	sp, sp, #24
80027568:	e24b3014 	sub	r3, fp, #20
8002756c:	e1a01003 	mov	r1, r3
80027570:	e3a00000 	mov	r0, #0
80027574:	ebfffd19 	bl	800269e0 <argstr>
80027578:	e1a03000 	mov	r3, r0
8002757c:	e3530000 	cmp	r3, #0
80027580:	ba000006 	blt	800275a0 <sys_open+0x44>
80027584:	e24b3018 	sub	r3, fp, #24
80027588:	e1a01003 	mov	r1, r3
8002758c:	e3a00001 	mov	r0, #1
80027590:	ebfffcce 	bl	800268d0 <argint>
80027594:	e1a03000 	mov	r3, r0
80027598:	e3530000 	cmp	r3, #0
8002759c:	aa000001 	bge	800275a8 <sys_open+0x4c>
800275a0:	e3e03000 	mvn	r3, #0
800275a4:	ea00005c 	b	8002771c <sys_open+0x1c0>
800275a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800275ac:	e2033c02 	and	r3, r3, #512	@ 0x200
800275b0:	e3530000 	cmp	r3, #0
800275b4:	0a00000c 	beq	800275ec <sys_open+0x90>
800275b8:	ebfff4a0 	bl	80024840 <begin_trans>
800275bc:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800275c0:	e3a03000 	mov	r3, #0
800275c4:	e3a02000 	mov	r2, #0
800275c8:	e3a01002 	mov	r1, #2
800275cc:	ebffff5f 	bl	80027350 <create>
800275d0:	e50b0008 	str	r0, [fp, #-8]
800275d4:	ebfff4ad 	bl	80024890 <commit_trans>
800275d8:	e51b3008 	ldr	r3, [fp, #-8]
800275dc:	e3530000 	cmp	r3, #0
800275e0:	1a000017 	bne	80027644 <sys_open+0xe8>
800275e4:	e3e03000 	mvn	r3, #0
800275e8:	ea00004b 	b	8002771c <sys_open+0x1c0>
800275ec:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800275f0:	e1a00003 	mov	r0, r3
800275f4:	ebfff3b8 	bl	800244dc <namei>
800275f8:	e50b0008 	str	r0, [fp, #-8]
800275fc:	e51b3008 	ldr	r3, [fp, #-8]
80027600:	e3530000 	cmp	r3, #0
80027604:	1a000001 	bne	80027610 <sys_open+0xb4>
80027608:	e3e03000 	mvn	r3, #0
8002760c:	ea000042 	b	8002771c <sys_open+0x1c0>
80027610:	e51b0008 	ldr	r0, [fp, #-8]
80027614:	ebffefdd 	bl	80023590 <ilock>
80027618:	e51b3008 	ldr	r3, [fp, #-8]
8002761c:	e1d331f0 	ldrsh	r3, [r3, #16]
80027620:	e3530001 	cmp	r3, #1
80027624:	1a000006 	bne	80027644 <sys_open+0xe8>
80027628:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002762c:	e3530000 	cmp	r3, #0
80027630:	0a000003 	beq	80027644 <sys_open+0xe8>
80027634:	e51b0008 	ldr	r0, [fp, #-8]
80027638:	ebfff095 	bl	80023894 <iunlockput>
8002763c:	e3e03000 	mvn	r3, #0
80027640:	ea000035 	b	8002771c <sys_open+0x1c0>
80027644:	ebffecca 	bl	80022974 <filealloc>
80027648:	e50b000c 	str	r0, [fp, #-12]
8002764c:	e51b300c 	ldr	r3, [fp, #-12]
80027650:	e3530000 	cmp	r3, #0
80027654:	0a000005 	beq	80027670 <sys_open+0x114>
80027658:	e51b000c 	ldr	r0, [fp, #-12]
8002765c:	ebfffd63 	bl	80026bf0 <fdalloc>
80027660:	e50b0010 	str	r0, [fp, #-16]
80027664:	e51b3010 	ldr	r3, [fp, #-16]
80027668:	e3530000 	cmp	r3, #0
8002766c:	aa000008 	bge	80027694 <sys_open+0x138>
80027670:	e51b300c 	ldr	r3, [fp, #-12]
80027674:	e3530000 	cmp	r3, #0
80027678:	0a000001 	beq	80027684 <sys_open+0x128>
8002767c:	e51b000c 	ldr	r0, [fp, #-12]
80027680:	ebffecf7 	bl	80022a64 <fileclose>
80027684:	e51b0008 	ldr	r0, [fp, #-8]
80027688:	ebfff081 	bl	80023894 <iunlockput>
8002768c:	e3e03000 	mvn	r3, #0
80027690:	ea000021 	b	8002771c <sys_open+0x1c0>
80027694:	e51b0008 	ldr	r0, [fp, #-8]
80027698:	ebfff020 	bl	80023720 <iunlock>
8002769c:	e51b300c 	ldr	r3, [fp, #-12]
800276a0:	e3a02002 	mov	r2, #2
800276a4:	e5c32000 	strb	r2, [r3]
800276a8:	e51b300c 	ldr	r3, [fp, #-12]
800276ac:	e51b2008 	ldr	r2, [fp, #-8]
800276b0:	e5832010 	str	r2, [r3, #16]
800276b4:	e51b300c 	ldr	r3, [fp, #-12]
800276b8:	e3a02000 	mov	r2, #0
800276bc:	e5832014 	str	r2, [r3, #20]
800276c0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800276c4:	e2033001 	and	r3, r3, #1
800276c8:	e2033001 	and	r3, r3, #1
800276cc:	e2233001 	eor	r3, r3, #1
800276d0:	e6ef3073 	uxtb	r3, r3
800276d4:	e1a02003 	mov	r2, r3
800276d8:	e51b300c 	ldr	r3, [fp, #-12]
800276dc:	e5c32008 	strb	r2, [r3, #8]
800276e0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800276e4:	e2033001 	and	r3, r3, #1
800276e8:	e3530000 	cmp	r3, #0
800276ec:	1a000003 	bne	80027700 <sys_open+0x1a4>
800276f0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800276f4:	e2033002 	and	r3, r3, #2
800276f8:	e3530000 	cmp	r3, #0
800276fc:	0a000001 	beq	80027708 <sys_open+0x1ac>
80027700:	e3a03001 	mov	r3, #1
80027704:	ea000000 	b	8002770c <sys_open+0x1b0>
80027708:	e3a03000 	mov	r3, #0
8002770c:	e6ef2073 	uxtb	r2, r3
80027710:	e51b300c 	ldr	r3, [fp, #-12]
80027714:	e5c32009 	strb	r2, [r3, #9]
80027718:	e51b3010 	ldr	r3, [fp, #-16]
8002771c:	e1a00003 	mov	r0, r3
80027720:	e24bd004 	sub	sp, fp, #4
80027724:	e8bd8800 	pop	{fp, pc}

80027728 <sys_mkdir>:
80027728:	e92d4800 	push	{fp, lr}
8002772c:	e28db004 	add	fp, sp, #4
80027730:	e24dd008 	sub	sp, sp, #8
80027734:	ebfff441 	bl	80024840 <begin_trans>
80027738:	e24b300c 	sub	r3, fp, #12
8002773c:	e1a01003 	mov	r1, r3
80027740:	e3a00000 	mov	r0, #0
80027744:	ebfffca5 	bl	800269e0 <argstr>
80027748:	e1a03000 	mov	r3, r0
8002774c:	e3530000 	cmp	r3, #0
80027750:	ba000008 	blt	80027778 <sys_mkdir+0x50>
80027754:	e51b000c 	ldr	r0, [fp, #-12]
80027758:	e3a03000 	mov	r3, #0
8002775c:	e3a02000 	mov	r2, #0
80027760:	e3a01001 	mov	r1, #1
80027764:	ebfffef9 	bl	80027350 <create>
80027768:	e50b0008 	str	r0, [fp, #-8]
8002776c:	e51b3008 	ldr	r3, [fp, #-8]
80027770:	e3530000 	cmp	r3, #0
80027774:	1a000002 	bne	80027784 <sys_mkdir+0x5c>
80027778:	ebfff444 	bl	80024890 <commit_trans>
8002777c:	e3e03000 	mvn	r3, #0
80027780:	ea000003 	b	80027794 <sys_mkdir+0x6c>
80027784:	e51b0008 	ldr	r0, [fp, #-8]
80027788:	ebfff041 	bl	80023894 <iunlockput>
8002778c:	ebfff43f 	bl	80024890 <commit_trans>
80027790:	e3a03000 	mov	r3, #0
80027794:	e1a00003 	mov	r0, r3
80027798:	e24bd004 	sub	sp, fp, #4
8002779c:	e8bd8800 	pop	{fp, pc}

800277a0 <sys_mknod>:
800277a0:	e92d4800 	push	{fp, lr}
800277a4:	e28db004 	add	fp, sp, #4
800277a8:	e24dd018 	sub	sp, sp, #24
800277ac:	ebfff423 	bl	80024840 <begin_trans>
800277b0:	e24b3010 	sub	r3, fp, #16
800277b4:	e1a01003 	mov	r1, r3
800277b8:	e3a00000 	mov	r0, #0
800277bc:	ebfffc87 	bl	800269e0 <argstr>
800277c0:	e50b0008 	str	r0, [fp, #-8]
800277c4:	e51b3008 	ldr	r3, [fp, #-8]
800277c8:	e3530000 	cmp	r3, #0
800277cc:	ba000018 	blt	80027834 <sys_mknod+0x94>
800277d0:	e24b3014 	sub	r3, fp, #20
800277d4:	e1a01003 	mov	r1, r3
800277d8:	e3a00001 	mov	r0, #1
800277dc:	ebfffc3b 	bl	800268d0 <argint>
800277e0:	e1a03000 	mov	r3, r0
800277e4:	e3530000 	cmp	r3, #0
800277e8:	ba000011 	blt	80027834 <sys_mknod+0x94>
800277ec:	e24b3018 	sub	r3, fp, #24
800277f0:	e1a01003 	mov	r1, r3
800277f4:	e3a00002 	mov	r0, #2
800277f8:	ebfffc34 	bl	800268d0 <argint>
800277fc:	e1a03000 	mov	r3, r0
80027800:	e3530000 	cmp	r3, #0
80027804:	ba00000a 	blt	80027834 <sys_mknod+0x94>
80027808:	e51b0010 	ldr	r0, [fp, #-16]
8002780c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80027810:	e6bf2073 	sxth	r2, r3
80027814:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80027818:	e6bf3073 	sxth	r3, r3
8002781c:	e3a01003 	mov	r1, #3
80027820:	ebfffeca 	bl	80027350 <create>
80027824:	e50b000c 	str	r0, [fp, #-12]
80027828:	e51b300c 	ldr	r3, [fp, #-12]
8002782c:	e3530000 	cmp	r3, #0
80027830:	1a000002 	bne	80027840 <sys_mknod+0xa0>
80027834:	ebfff415 	bl	80024890 <commit_trans>
80027838:	e3e03000 	mvn	r3, #0
8002783c:	ea000003 	b	80027850 <sys_mknod+0xb0>
80027840:	e51b000c 	ldr	r0, [fp, #-12]
80027844:	ebfff012 	bl	80023894 <iunlockput>
80027848:	ebfff410 	bl	80024890 <commit_trans>
8002784c:	e3a03000 	mov	r3, #0
80027850:	e1a00003 	mov	r0, r3
80027854:	e24bd004 	sub	sp, fp, #4
80027858:	e8bd8800 	pop	{fp, pc}

8002785c <sys_chdir>:
8002785c:	e92d4800 	push	{fp, lr}
80027860:	e28db004 	add	fp, sp, #4
80027864:	e24dd008 	sub	sp, sp, #8
80027868:	e24b300c 	sub	r3, fp, #12
8002786c:	e1a01003 	mov	r1, r3
80027870:	e3a00000 	mov	r0, #0
80027874:	ebfffc59 	bl	800269e0 <argstr>
80027878:	e1a03000 	mov	r3, r0
8002787c:	e3530000 	cmp	r3, #0
80027880:	ba000006 	blt	800278a0 <sys_chdir+0x44>
80027884:	e51b300c 	ldr	r3, [fp, #-12]
80027888:	e1a00003 	mov	r0, r3
8002788c:	ebfff312 	bl	800244dc <namei>
80027890:	e50b0008 	str	r0, [fp, #-8]
80027894:	e51b3008 	ldr	r3, [fp, #-8]
80027898:	e3530000 	cmp	r3, #0
8002789c:	1a000001 	bne	800278a8 <sys_chdir+0x4c>
800278a0:	e3e03000 	mvn	r3, #0
800278a4:	ea000015 	b	80027900 <sys_chdir+0xa4>
800278a8:	e51b0008 	ldr	r0, [fp, #-8]
800278ac:	ebffef37 	bl	80023590 <ilock>
800278b0:	e51b3008 	ldr	r3, [fp, #-8]
800278b4:	e1d331f0 	ldrsh	r3, [r3, #16]
800278b8:	e3530001 	cmp	r3, #1
800278bc:	0a000003 	beq	800278d0 <sys_chdir+0x74>
800278c0:	e51b0008 	ldr	r0, [fp, #-8]
800278c4:	ebffeff2 	bl	80023894 <iunlockput>
800278c8:	e3e03000 	mvn	r3, #0
800278cc:	ea00000b 	b	80027900 <sys_chdir+0xa4>
800278d0:	e51b0008 	ldr	r0, [fp, #-8]
800278d4:	ebffef91 	bl	80023720 <iunlock>
800278d8:	e59f302c 	ldr	r3, [pc, #44]	@ 8002790c <sys_chdir+0xb0>
800278dc:	e5933000 	ldr	r3, [r3]
800278e0:	e5933074 	ldr	r3, [r3, #116]	@ 0x74
800278e4:	e1a00003 	mov	r0, r3
800278e8:	ebffefae 	bl	800237a8 <iput>
800278ec:	e59f3018 	ldr	r3, [pc, #24]	@ 8002790c <sys_chdir+0xb0>
800278f0:	e5933000 	ldr	r3, [r3]
800278f4:	e51b2008 	ldr	r2, [fp, #-8]
800278f8:	e5832074 	str	r2, [r3, #116]	@ 0x74
800278fc:	e3a03000 	mov	r3, #0
80027900:	e1a00003 	mov	r0, r3
80027904:	e24bd004 	sub	sp, fp, #4
80027908:	e8bd8800 	pop	{fp, pc}
8002790c:	800b0e54 	.word	0x800b0e54

80027910 <sys_exec>:
80027910:	e92d4800 	push	{fp, lr}
80027914:	e28db004 	add	fp, sp, #4
80027918:	e24dd090 	sub	sp, sp, #144	@ 0x90
8002791c:	e24b300c 	sub	r3, fp, #12
80027920:	e1a01003 	mov	r1, r3
80027924:	e3a00000 	mov	r0, #0
80027928:	ebfffc2c 	bl	800269e0 <argstr>
8002792c:	e1a03000 	mov	r3, r0
80027930:	e3530000 	cmp	r3, #0
80027934:	ba000006 	blt	80027954 <sys_exec+0x44>
80027938:	e24b3090 	sub	r3, fp, #144	@ 0x90
8002793c:	e1a01003 	mov	r1, r3
80027940:	e3a00001 	mov	r0, #1
80027944:	ebfffbe1 	bl	800268d0 <argint>
80027948:	e1a03000 	mov	r3, r0
8002794c:	e3530000 	cmp	r3, #0
80027950:	aa000001 	bge	8002795c <sys_exec+0x4c>
80027954:	e3e03000 	mvn	r3, #0
80027958:	ea00003a 	b	80027a48 <sys_exec+0x138>
8002795c:	e24b308c 	sub	r3, fp, #140	@ 0x8c
80027960:	e3a02080 	mov	r2, #128	@ 0x80
80027964:	e3a01000 	mov	r1, #0
80027968:	e1a00003 	mov	r0, r3
8002796c:	ebffe1a3 	bl	80020000 <memset>
80027970:	e3a03000 	mov	r3, #0
80027974:	e50b3008 	str	r3, [fp, #-8]
80027978:	e51b3008 	ldr	r3, [fp, #-8]
8002797c:	e353001f 	cmp	r3, #31
80027980:	9a000001 	bls	8002798c <sys_exec+0x7c>
80027984:	e3e03000 	mvn	r3, #0
80027988:	ea00002e 	b	80027a48 <sys_exec+0x138>
8002798c:	e51b3008 	ldr	r3, [fp, #-8]
80027990:	e1a03103 	lsl	r3, r3, #2
80027994:	e1a02003 	mov	r2, r3
80027998:	e51b3090 	ldr	r3, [fp, #-144]	@ 0xffffff70
8002799c:	e0823003 	add	r3, r2, r3
800279a0:	e24b2094 	sub	r2, fp, #148	@ 0x94
800279a4:	e1a01002 	mov	r1, r2
800279a8:	e1a00003 	mov	r0, r3
800279ac:	ebfffb7b 	bl	800267a0 <fetchint>
800279b0:	e1a03000 	mov	r3, r0
800279b4:	e3530000 	cmp	r3, #0
800279b8:	aa000001 	bge	800279c4 <sys_exec+0xb4>
800279bc:	e3e03000 	mvn	r3, #0
800279c0:	ea000020 	b	80027a48 <sys_exec+0x138>
800279c4:	e51b3094 	ldr	r3, [fp, #-148]	@ 0xffffff6c
800279c8:	e3530000 	cmp	r3, #0
800279cc:	1a00000d 	bne	80027a08 <sys_exec+0xf8>
800279d0:	e51b3008 	ldr	r3, [fp, #-8]
800279d4:	e1a03103 	lsl	r3, r3, #2
800279d8:	e2433004 	sub	r3, r3, #4
800279dc:	e083300b 	add	r3, r3, fp
800279e0:	e3a02000 	mov	r2, #0
800279e4:	e5032088 	str	r2, [r3, #-136]	@ 0xffffff78
800279e8:	e1a00000 	nop			@ (mov r0, r0)
800279ec:	e51b300c 	ldr	r3, [fp, #-12]
800279f0:	e24b208c 	sub	r2, fp, #140	@ 0x8c
800279f4:	e1a01002 	mov	r1, r2
800279f8:	e1a00003 	mov	r0, r3
800279fc:	ebffeaa0 	bl	80022484 <exec>
80027a00:	e1a03000 	mov	r3, r0
80027a04:	ea00000f 	b	80027a48 <sys_exec+0x138>
80027a08:	e51b0094 	ldr	r0, [fp, #-148]	@ 0xffffff6c
80027a0c:	e24b208c 	sub	r2, fp, #140	@ 0x8c
80027a10:	e51b3008 	ldr	r3, [fp, #-8]
80027a14:	e1a03103 	lsl	r3, r3, #2
80027a18:	e0823003 	add	r3, r2, r3
80027a1c:	e1a01003 	mov	r1, r3
80027a20:	ebfffb7c 	bl	80026818 <fetchstr>
80027a24:	e1a03000 	mov	r3, r0
80027a28:	e3530000 	cmp	r3, #0
80027a2c:	aa000001 	bge	80027a38 <sys_exec+0x128>
80027a30:	e3e03000 	mvn	r3, #0
80027a34:	ea000003 	b	80027a48 <sys_exec+0x138>
80027a38:	e51b3008 	ldr	r3, [fp, #-8]
80027a3c:	e2833001 	add	r3, r3, #1
80027a40:	e50b3008 	str	r3, [fp, #-8]
80027a44:	eaffffcb 	b	80027978 <sys_exec+0x68>
80027a48:	e1a00003 	mov	r0, r3
80027a4c:	e24bd004 	sub	sp, fp, #4
80027a50:	e8bd8800 	pop	{fp, pc}

80027a54 <sys_pipe>:
80027a54:	e92d4800 	push	{fp, lr}
80027a58:	e28db004 	add	fp, sp, #4
80027a5c:	e24dd018 	sub	sp, sp, #24
80027a60:	e24b3010 	sub	r3, fp, #16
80027a64:	e3a02008 	mov	r2, #8
80027a68:	e1a01003 	mov	r1, r3
80027a6c:	e3a00000 	mov	r0, #0
80027a70:	ebfffbb1 	bl	8002693c <argptr>
80027a74:	e1a03000 	mov	r3, r0
80027a78:	e3530000 	cmp	r3, #0
80027a7c:	aa000001 	bge	80027a88 <sys_pipe+0x34>
80027a80:	e3e03000 	mvn	r3, #0
80027a84:	ea000034 	b	80027b5c <sys_pipe+0x108>
80027a88:	e24b2018 	sub	r2, fp, #24
80027a8c:	e24b3014 	sub	r3, fp, #20
80027a90:	e1a01002 	mov	r1, r2
80027a94:	e1a00003 	mov	r0, r3
80027a98:	ebfff48f 	bl	80024cdc <pipealloc>
80027a9c:	e1a03000 	mov	r3, r0
80027aa0:	e3530000 	cmp	r3, #0
80027aa4:	aa000001 	bge	80027ab0 <sys_pipe+0x5c>
80027aa8:	e3e03000 	mvn	r3, #0
80027aac:	ea00002a 	b	80027b5c <sys_pipe+0x108>
80027ab0:	e3e03000 	mvn	r3, #0
80027ab4:	e50b3008 	str	r3, [fp, #-8]
80027ab8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80027abc:	e1a00003 	mov	r0, r3
80027ac0:	ebfffc4a 	bl	80026bf0 <fdalloc>
80027ac4:	e50b0008 	str	r0, [fp, #-8]
80027ac8:	e51b3008 	ldr	r3, [fp, #-8]
80027acc:	e3530000 	cmp	r3, #0
80027ad0:	ba000006 	blt	80027af0 <sys_pipe+0x9c>
80027ad4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80027ad8:	e1a00003 	mov	r0, r3
80027adc:	ebfffc43 	bl	80026bf0 <fdalloc>
80027ae0:	e50b000c 	str	r0, [fp, #-12]
80027ae4:	e51b300c 	ldr	r3, [fp, #-12]
80027ae8:	e3530000 	cmp	r3, #0
80027aec:	aa000012 	bge	80027b3c <sys_pipe+0xe8>
80027af0:	e51b3008 	ldr	r3, [fp, #-8]
80027af4:	e3530000 	cmp	r3, #0
80027af8:	ba000007 	blt	80027b1c <sys_pipe+0xc8>
80027afc:	e59f3064 	ldr	r3, [pc, #100]	@ 80027b68 <sys_pipe+0x114>
80027b00:	e5932000 	ldr	r2, [r3]
80027b04:	e51b3008 	ldr	r3, [fp, #-8]
80027b08:	e283300c 	add	r3, r3, #12
80027b0c:	e1a03103 	lsl	r3, r3, #2
80027b10:	e0823003 	add	r3, r2, r3
80027b14:	e3a02000 	mov	r2, #0
80027b18:	e5832004 	str	r2, [r3, #4]
80027b1c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80027b20:	e1a00003 	mov	r0, r3
80027b24:	ebffebce 	bl	80022a64 <fileclose>
80027b28:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80027b2c:	e1a00003 	mov	r0, r3
80027b30:	ebffebcb 	bl	80022a64 <fileclose>
80027b34:	e3e03000 	mvn	r3, #0
80027b38:	ea000007 	b	80027b5c <sys_pipe+0x108>
80027b3c:	e51b3010 	ldr	r3, [fp, #-16]
80027b40:	e51b2008 	ldr	r2, [fp, #-8]
80027b44:	e5832000 	str	r2, [r3]
80027b48:	e51b3010 	ldr	r3, [fp, #-16]
80027b4c:	e2833004 	add	r3, r3, #4
80027b50:	e51b200c 	ldr	r2, [fp, #-12]
80027b54:	e5832000 	str	r2, [r3]
80027b58:	e3a03000 	mov	r3, #0
80027b5c:	e1a00003 	mov	r0, r3
80027b60:	e24bd004 	sub	sp, fp, #4
80027b64:	e8bd8800 	pop	{fp, pc}
80027b68:	800b0e54 	.word	0x800b0e54

80027b6c <sys_fork>:
80027b6c:	e92d4800 	push	{fp, lr}
80027b70:	e28db004 	add	fp, sp, #4
80027b74:	ebfff6a9 	bl	80025620 <fork>
80027b78:	e1a03000 	mov	r3, r0
80027b7c:	e1a00003 	mov	r0, r3
80027b80:	e8bd8800 	pop	{fp, pc}

80027b84 <sys_exit>:
80027b84:	e92d4800 	push	{fp, lr}
80027b88:	e28db004 	add	fp, sp, #4
80027b8c:	ebfff728 	bl	80025834 <exit>
80027b90:	e3a03000 	mov	r3, #0
80027b94:	e1a00003 	mov	r0, r3
80027b98:	e8bd8800 	pop	{fp, pc}

80027b9c <sys_wait>:
80027b9c:	e92d4800 	push	{fp, lr}
80027ba0:	e28db004 	add	fp, sp, #4
80027ba4:	ebfff78a 	bl	800259d4 <wait>
80027ba8:	e1a03000 	mov	r3, r0
80027bac:	e1a00003 	mov	r0, r3
80027bb0:	e8bd8800 	pop	{fp, pc}

80027bb4 <sys_kill>:
80027bb4:	e92d4800 	push	{fp, lr}
80027bb8:	e28db004 	add	fp, sp, #4
80027bbc:	e24dd008 	sub	sp, sp, #8
80027bc0:	e24b3008 	sub	r3, fp, #8
80027bc4:	e1a01003 	mov	r1, r3
80027bc8:	e3a00000 	mov	r0, #0
80027bcc:	ebfffb3f 	bl	800268d0 <argint>
80027bd0:	e1a03000 	mov	r3, r0
80027bd4:	e3530000 	cmp	r3, #0
80027bd8:	aa000001 	bge	80027be4 <sys_kill+0x30>
80027bdc:	e3e03000 	mvn	r3, #0
80027be0:	ea000003 	b	80027bf4 <sys_kill+0x40>
80027be4:	e51b3008 	ldr	r3, [fp, #-8]
80027be8:	e1a00003 	mov	r0, r3
80027bec:	ebfff941 	bl	800260f8 <kill>
80027bf0:	e1a03000 	mov	r3, r0
80027bf4:	e1a00003 	mov	r0, r3
80027bf8:	e24bd004 	sub	sp, fp, #4
80027bfc:	e8bd8800 	pop	{fp, pc}

80027c00 <sys_getpid>:
80027c00:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80027c04:	e28db000 	add	fp, sp, #0
80027c08:	e59f3014 	ldr	r3, [pc, #20]	@ 80027c24 <sys_getpid+0x24>
80027c0c:	e5933000 	ldr	r3, [r3]
80027c10:	e593301c 	ldr	r3, [r3, #28]
80027c14:	e1a00003 	mov	r0, r3
80027c18:	e28bd000 	add	sp, fp, #0
80027c1c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80027c20:	e12fff1e 	bx	lr
80027c24:	800b0e54 	.word	0x800b0e54

80027c28 <sys_sbrk>:
80027c28:	e92d4800 	push	{fp, lr}
80027c2c:	e28db004 	add	fp, sp, #4
80027c30:	e24dd008 	sub	sp, sp, #8
80027c34:	e24b300c 	sub	r3, fp, #12
80027c38:	e1a01003 	mov	r1, r3
80027c3c:	e3a00000 	mov	r0, #0
80027c40:	ebfffb22 	bl	800268d0 <argint>
80027c44:	e1a03000 	mov	r3, r0
80027c48:	e3530000 	cmp	r3, #0
80027c4c:	aa000001 	bge	80027c58 <sys_sbrk+0x30>
80027c50:	e3e03000 	mvn	r3, #0
80027c54:	ea00000c 	b	80027c8c <sys_sbrk+0x64>
80027c58:	e59f3038 	ldr	r3, [pc, #56]	@ 80027c98 <sys_sbrk+0x70>
80027c5c:	e5933000 	ldr	r3, [r3]
80027c60:	e593300c 	ldr	r3, [r3, #12]
80027c64:	e50b3008 	str	r3, [fp, #-8]
80027c68:	e51b300c 	ldr	r3, [fp, #-12]
80027c6c:	e1a00003 	mov	r0, r3
80027c70:	ebfff62f 	bl	80025534 <growproc>
80027c74:	e1a03000 	mov	r3, r0
80027c78:	e3530000 	cmp	r3, #0
80027c7c:	aa000001 	bge	80027c88 <sys_sbrk+0x60>
80027c80:	e3e03000 	mvn	r3, #0
80027c84:	ea000000 	b	80027c8c <sys_sbrk+0x64>
80027c88:	e51b3008 	ldr	r3, [fp, #-8]
80027c8c:	e1a00003 	mov	r0, r3
80027c90:	e24bd004 	sub	sp, fp, #4
80027c94:	e8bd8800 	pop	{fp, pc}
80027c98:	800b0e54 	.word	0x800b0e54

80027c9c <sys_sleep>:
80027c9c:	e92d4800 	push	{fp, lr}
80027ca0:	e28db004 	add	fp, sp, #4
80027ca4:	e24dd008 	sub	sp, sp, #8
80027ca8:	e24b300c 	sub	r3, fp, #12
80027cac:	e1a01003 	mov	r1, r3
80027cb0:	e3a00000 	mov	r0, #0
80027cb4:	ebfffb05 	bl	800268d0 <argint>
80027cb8:	e1a03000 	mov	r3, r0
80027cbc:	e3530000 	cmp	r3, #0
80027cc0:	aa000001 	bge	80027ccc <sys_sleep+0x30>
80027cc4:	e3e03000 	mvn	r3, #0
80027cc8:	ea00001c 	b	80027d40 <sys_sleep+0xa4>
80027ccc:	e59f0078 	ldr	r0, [pc, #120]	@ 80027d4c <sys_sleep+0xb0>
80027cd0:	ebfffa8d 	bl	8002670c <acquire>
80027cd4:	e59f3074 	ldr	r3, [pc, #116]	@ 80027d50 <sys_sleep+0xb4>
80027cd8:	e5933000 	ldr	r3, [r3]
80027cdc:	e50b3008 	str	r3, [fp, #-8]
80027ce0:	e51b300c 	ldr	r3, [fp, #-12]
80027ce4:	e1a01003 	mov	r1, r3
80027ce8:	e59f3064 	ldr	r3, [pc, #100]	@ 80027d54 <sys_sleep+0xb8>
80027cec:	e5933000 	ldr	r3, [r3]
80027cf0:	e51b2008 	ldr	r2, [fp, #-8]
80027cf4:	e0812002 	add	r2, r1, r2
80027cf8:	e5832004 	str	r2, [r3, #4]
80027cfc:	e59f1048 	ldr	r1, [pc, #72]	@ 80027d4c <sys_sleep+0xb0>
80027d00:	e59f0048 	ldr	r0, [pc, #72]	@ 80027d50 <sys_sleep+0xb4>
80027d04:	ebfff88b 	bl	80025f38 <sleep>
80027d08:	e59f3044 	ldr	r3, [pc, #68]	@ 80027d54 <sys_sleep+0xb8>
80027d0c:	e5933000 	ldr	r3, [r3]
80027d10:	e3a02000 	mov	r2, #0
80027d14:	e5832004 	str	r2, [r3, #4]
80027d18:	e59f002c 	ldr	r0, [pc, #44]	@ 80027d4c <sys_sleep+0xb0>
80027d1c:	ebfffa85 	bl	80026738 <release>
80027d20:	e59f302c 	ldr	r3, [pc, #44]	@ 80027d54 <sys_sleep+0xb8>
80027d24:	e5933000 	ldr	r3, [r3]
80027d28:	e5933030 	ldr	r3, [r3, #48]	@ 0x30
80027d2c:	e3530000 	cmp	r3, #0
80027d30:	0a000001 	beq	80027d3c <sys_sleep+0xa0>
80027d34:	e3e03000 	mvn	r3, #0
80027d38:	ea000000 	b	80027d40 <sys_sleep+0xa4>
80027d3c:	e3a03000 	mov	r3, #0
80027d40:	e1a00003 	mov	r0, r3
80027d44:	e24bd004 	sub	sp, fp, #4
80027d48:	e8bd8800 	pop	{fp, pc}
80027d4c:	800b141c 	.word	0x800b141c
80027d50:	800b1450 	.word	0x800b1450
80027d54:	800b0e54 	.word	0x800b0e54

80027d58 <sys_uptime>:
80027d58:	e92d4800 	push	{fp, lr}
80027d5c:	e28db004 	add	fp, sp, #4
80027d60:	e24dd008 	sub	sp, sp, #8
80027d64:	e59f0024 	ldr	r0, [pc, #36]	@ 80027d90 <sys_uptime+0x38>
80027d68:	ebfffa67 	bl	8002670c <acquire>
80027d6c:	e59f3020 	ldr	r3, [pc, #32]	@ 80027d94 <sys_uptime+0x3c>
80027d70:	e5933000 	ldr	r3, [r3]
80027d74:	e50b3008 	str	r3, [fp, #-8]
80027d78:	e59f0010 	ldr	r0, [pc, #16]	@ 80027d90 <sys_uptime+0x38>
80027d7c:	ebfffa6d 	bl	80026738 <release>
80027d80:	e51b3008 	ldr	r3, [fp, #-8]
80027d84:	e1a00003 	mov	r0, r3
80027d88:	e24bd004 	sub	sp, fp, #4
80027d8c:	e8bd8800 	pop	{fp, pc}
80027d90:	800b141c 	.word	0x800b141c
80027d94:	800b1450 	.word	0x800b1450

80027d98 <sys_settickets>:
80027d98:	e92d4800 	push	{fp, lr}
80027d9c:	e28db004 	add	fp, sp, #4
80027da0:	e24dd008 	sub	sp, sp, #8
80027da4:	e24b3008 	sub	r3, fp, #8
80027da8:	e1a01003 	mov	r1, r3
80027dac:	e3a00000 	mov	r0, #0
80027db0:	ebfffac6 	bl	800268d0 <argint>
80027db4:	e1a03000 	mov	r3, r0
80027db8:	e3530000 	cmp	r3, #0
80027dbc:	1a000006 	bne	80027ddc <sys_settickets+0x44>
80027dc0:	e24b300c 	sub	r3, fp, #12
80027dc4:	e1a01003 	mov	r1, r3
80027dc8:	e3a00001 	mov	r0, #1
80027dcc:	ebfffabf 	bl	800268d0 <argint>
80027dd0:	e1a03000 	mov	r3, r0
80027dd4:	e3530000 	cmp	r3, #0
80027dd8:	0a000001 	beq	80027de4 <sys_settickets+0x4c>
80027ddc:	e3e03000 	mvn	r3, #0
80027de0:	ea000005 	b	80027dfc <sys_settickets+0x64>
80027de4:	e51b3008 	ldr	r3, [fp, #-8]
80027de8:	e51b200c 	ldr	r2, [fp, #-12]
80027dec:	e1a01002 	mov	r1, r2
80027df0:	e1a00003 	mov	r0, r3
80027df4:	ebfff8eb 	bl	800261a8 <settickets>
80027df8:	e1a03000 	mov	r3, r0
80027dfc:	e1a00003 	mov	r0, r3
80027e00:	e24bd004 	sub	sp, fp, #4
80027e04:	e8bd8800 	pop	{fp, pc}

80027e08 <sys_getprocs>:
80027e08:	e92d4800 	push	{fp, lr}
80027e0c:	e28db004 	add	fp, sp, #4
80027e10:	ebfff943 	bl	80026324 <get_procs>
80027e14:	e1a03000 	mov	r3, r0
80027e18:	e1a00003 	mov	r0, r3
80027e1c:	e8bd8800 	pop	{fp, pc}

80027e20 <sys_getpinfo>:
80027e20:	e92d4800 	push	{fp, lr}
80027e24:	e28db004 	add	fp, sp, #4
80027e28:	e24dd008 	sub	sp, sp, #8
80027e2c:	e24b3008 	sub	r3, fp, #8
80027e30:	e3a02c05 	mov	r2, #1280	@ 0x500
80027e34:	e1a01003 	mov	r1, r3
80027e38:	e3a00000 	mov	r0, #0
80027e3c:	ebfffabe 	bl	8002693c <argptr>
80027e40:	e1a03000 	mov	r3, r0
80027e44:	e3530000 	cmp	r3, #0
80027e48:	aa000001 	bge	80027e54 <sys_getpinfo+0x34>
80027e4c:	e3e03000 	mvn	r3, #0
80027e50:	ea000003 	b	80027e64 <sys_getpinfo+0x44>
80027e54:	e51b3008 	ldr	r3, [fp, #-8]
80027e58:	e1a00003 	mov	r0, r3
80027e5c:	ebfff9a7 	bl	80026500 <getpinfo>
80027e60:	e1a03000 	mov	r3, r0
80027e64:	e1a00003 	mov	r0, r3
80027e68:	e24bd004 	sub	sp, fp, #4
80027e6c:	e8bd8800 	pop	{fp, pc}

80027e70 <sys_srand>:
80027e70:	e92d4800 	push	{fp, lr}
80027e74:	e28db004 	add	fp, sp, #4
80027e78:	e24dd008 	sub	sp, sp, #8
80027e7c:	e24b3008 	sub	r3, fp, #8
80027e80:	e1a01003 	mov	r1, r3
80027e84:	e3a00000 	mov	r0, #0
80027e88:	ebfffa90 	bl	800268d0 <argint>
80027e8c:	e1a03000 	mov	r3, r0
80027e90:	e3530000 	cmp	r3, #0
80027e94:	aa000001 	bge	80027ea0 <sys_srand+0x30>
80027e98:	e3e03000 	mvn	r3, #0
80027e9c:	ea000003 	b	80027eb0 <sys_srand+0x40>
80027ea0:	e51b3008 	ldr	r3, [fp, #-8]
80027ea4:	e59f2010 	ldr	r2, [pc, #16]	@ 80027ebc <sys_srand+0x4c>
80027ea8:	e5823000 	str	r3, [r2]
80027eac:	e3a03000 	mov	r3, #0
80027eb0:	e1a00003 	mov	r0, r3
80027eb4:	e24bd004 	sub	sp, fp, #4
80027eb8:	e8bd8800 	pop	{fp, pc}
80027ebc:	800b1358 	.word	0x800b1358

80027ec0 <sys_test>:
80027ec0:	e92d4800 	push	{fp, lr}
80027ec4:	e28db004 	add	fp, sp, #4
80027ec8:	ebfff9e7 	bl	8002666c <test>
80027ecc:	e3a03000 	mov	r3, #0
80027ed0:	e1a00003 	mov	r0, r3
80027ed4:	e8bd8800 	pop	{fp, pc}

80027ed8 <trap_swi>:
80027ed8:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027edc:	e14f2000 	mrs	r2, SPSR
80027ee0:	e92d0004 	stmfd	sp!, {r2}
80027ee4:	e92d4000 	stmfd	sp!, {lr}
80027ee8:	e94d6000 	stmdb	sp, {sp, lr}^
80027eec:	e24dd008 	sub	sp, sp, #8
80027ef0:	e1a0000d 	mov	r0, sp
80027ef4:	eb000054 	bl	8002804c <swi_handler>

80027ef8 <trapret>:
80027ef8:	e8dd6000 	ldm	sp, {sp, lr}^
80027efc:	e28dd008 	add	sp, sp, #8
80027f00:	e8bd4000 	ldmfd	sp!, {lr}
80027f04:	e8bd0004 	ldmfd	sp!, {r2}
80027f08:	e16ff002 	msr	SPSR_fsxc, r2
80027f0c:	e8fd9fff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}^

80027f10 <trap_irq>:
80027f10:	e24ee004 	sub	lr, lr, #4
80027f14:	e92d4007 	push	{r0, r1, r2, lr}
80027f18:	e14f1000 	mrs	r1, SPSR
80027f1c:	e1a0000d 	mov	r0, sp
80027f20:	e28dd010 	add	sp, sp, #16
80027f24:	e10f2000 	mrs	r2, CPSR
80027f28:	e3c2201f 	bic	r2, r2, #31
80027f2c:	e3822013 	orr	r2, r2, #19
80027f30:	e12ff002 	msr	CPSR_fsxc, r2
80027f34:	e590200c 	ldr	r2, [r0, #12]
80027f38:	e92d0004 	stmfd	sp!, {r2}
80027f3c:	e92d1ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
80027f40:	e8900038 	ldm	r0, {r3, r4, r5}
80027f44:	e92d0038 	push	{r3, r4, r5}
80027f48:	e92d0002 	stmfd	sp!, {r1}
80027f4c:	e92d4000 	stmfd	sp!, {lr}
80027f50:	e94d6000 	stmdb	sp, {sp, lr}^
80027f54:	e24dd008 	sub	sp, sp, #8
80027f58:	e1a0000d 	mov	r0, sp
80027f5c:	eb000047 	bl	80028080 <irq_handler>
80027f60:	eaffffe4 	b	80027ef8 <trapret>

80027f64 <trap_reset>:
80027f64:	e3a0e000 	mov	lr, #0
80027f68:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027f6c:	e14f2000 	mrs	r2, SPSR
80027f70:	e92d0004 	stmfd	sp!, {r2}
80027f74:	e92d4000 	stmfd	sp!, {lr}
80027f78:	e94d6000 	stmdb	sp, {sp, lr}^
80027f7c:	e24dd008 	sub	sp, sp, #8
80027f80:	e1a0000d 	mov	r0, sp
80027f84:	eb000059 	bl	800280f0 <reset_handler>
80027f88:	eafffffe 	b	80027f88 <trap_reset+0x24>

80027f8c <trap_und>:
80027f8c:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027f90:	e14f2000 	mrs	r2, SPSR
80027f94:	e92d0004 	stmfd	sp!, {r2}
80027f98:	e92d4000 	stmfd	sp!, {lr}
80027f9c:	e94d6000 	stmdb	sp, {sp, lr}^
80027fa0:	e24dd008 	sub	sp, sp, #8
80027fa4:	e1a0000d 	mov	r0, sp
80027fa8:	eb00005e 	bl	80028128 <und_handler>
80027fac:	eafffffe 	b	80027fac <trap_und+0x20>

80027fb0 <trap_iabort>:
80027fb0:	e24ee004 	sub	lr, lr, #4
80027fb4:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027fb8:	e14f2000 	mrs	r2, SPSR
80027fbc:	e92d0004 	stmfd	sp!, {r2}
80027fc0:	e92d4000 	stmfd	sp!, {lr}
80027fc4:	e94d6000 	stmdb	sp, {sp, lr}^
80027fc8:	e24dd008 	sub	sp, sp, #8
80027fcc:	e1a0000d 	mov	r0, sp
80027fd0:	eb000077 	bl	800281b4 <iabort_handler>
80027fd4:	eafffffe 	b	80027fd4 <trap_iabort+0x24>

80027fd8 <trap_dabort>:
80027fd8:	e24ee008 	sub	lr, lr, #8
80027fdc:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027fe0:	e14f2000 	mrs	r2, SPSR
80027fe4:	e92d0004 	stmfd	sp!, {r2}
80027fe8:	e92d4000 	stmfd	sp!, {lr}
80027fec:	e94d6000 	stmdb	sp, {sp, lr}^
80027ff0:	e24dd008 	sub	sp, sp, #8
80027ff4:	e1a0000d 	mov	r0, sp
80027ff8:	eb000058 	bl	80028160 <dabort_handler>
80027ffc:	eafffffe 	b	80027ffc <trap_dabort+0x24>

80028000 <trap_na>:
80028000:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80028004:	e14f2000 	mrs	r2, SPSR
80028008:	e92d0004 	stmfd	sp!, {r2}
8002800c:	e92d4000 	stmfd	sp!, {lr}
80028010:	e94d6000 	stmdb	sp, {sp, lr}^
80028014:	e24dd008 	sub	sp, sp, #8
80028018:	e1a0000d 	mov	r0, sp
8002801c:	eb000077 	bl	80028200 <na_handler>
80028020:	eafffffe 	b	80028020 <trap_na+0x20>

80028024 <trap_fiq>:
80028024:	e24ee004 	sub	lr, lr, #4
80028028:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
8002802c:	e14f2000 	mrs	r2, SPSR
80028030:	e92d0004 	stmfd	sp!, {r2}
80028034:	e92d4000 	stmfd	sp!, {lr}
80028038:	e94d6000 	stmdb	sp, {sp, lr}^
8002803c:	e24dd008 	sub	sp, sp, #8
80028040:	e1a0000d 	mov	r0, sp
80028044:	eb00007b 	bl	80028238 <fiq_handler>
80028048:	eafffffe 	b	80028048 <trap_fiq+0x24>

8002804c <swi_handler>:
8002804c:	e92d4800 	push	{fp, lr}
80028050:	e28db004 	add	fp, sp, #4
80028054:	e24dd008 	sub	sp, sp, #8
80028058:	e50b0008 	str	r0, [fp, #-8]
8002805c:	e59f3018 	ldr	r3, [pc, #24]	@ 8002807c <swi_handler+0x30>
80028060:	e5933000 	ldr	r3, [r3]
80028064:	e51b2008 	ldr	r2, [fp, #-8]
80028068:	e5832024 	str	r2, [r3, #36]	@ 0x24
8002806c:	ebfffa71 	bl	80026a38 <syscall>
80028070:	e1a00000 	nop			@ (mov r0, r0)
80028074:	e24bd004 	sub	sp, fp, #4
80028078:	e8bd8800 	pop	{fp, pc}
8002807c:	800b0e54 	.word	0x800b0e54

80028080 <irq_handler>:
80028080:	e92d4800 	push	{fp, lr}
80028084:	e28db004 	add	fp, sp, #4
80028088:	e24dd008 	sub	sp, sp, #8
8002808c:	e50b0008 	str	r0, [fp, #-8]
80028090:	e59f3054 	ldr	r3, [pc, #84]	@ 800280ec <irq_handler+0x6c>
80028094:	e5933000 	ldr	r3, [r3]
80028098:	e3530000 	cmp	r3, #0
8002809c:	0a000003 	beq	800280b0 <irq_handler+0x30>
800280a0:	e59f3044 	ldr	r3, [pc, #68]	@ 800280ec <irq_handler+0x6c>
800280a4:	e5933000 	ldr	r3, [r3]
800280a8:	e51b2008 	ldr	r2, [fp, #-8]
800280ac:	e5832024 	str	r2, [r3, #36]	@ 0x24
800280b0:	e51b0008 	ldr	r0, [fp, #-8]
800280b4:	eb0004e3 	bl	80029448 <pic_dispatch>
800280b8:	e59f302c 	ldr	r3, [pc, #44]	@ 800280ec <irq_handler+0x6c>
800280bc:	e5933000 	ldr	r3, [r3]
800280c0:	e3530000 	cmp	r3, #0
800280c4:	0a000005 	beq	800280e0 <irq_handler+0x60>
800280c8:	e59f301c 	ldr	r3, [pc, #28]	@ 800280ec <irq_handler+0x6c>
800280cc:	e5933000 	ldr	r3, [r3]
800280d0:	e5d33018 	ldrb	r3, [r3, #24]
800280d4:	e3530004 	cmp	r3, #4
800280d8:	1a000000 	bne	800280e0 <irq_handler+0x60>
800280dc:	ebfff776 	bl	80025ebc <yield>
800280e0:	e1a00000 	nop			@ (mov r0, r0)
800280e4:	e24bd004 	sub	sp, fp, #4
800280e8:	e8bd8800 	pop	{fp, pc}
800280ec:	800b0e54 	.word	0x800b0e54

800280f0 <reset_handler>:
800280f0:	e92d4800 	push	{fp, lr}
800280f4:	e28db004 	add	fp, sp, #4
800280f8:	e24dd008 	sub	sp, sp, #8
800280fc:	e50b0008 	str	r0, [fp, #-8]
80028100:	ebffe10e 	bl	80020540 <cli>
80028104:	e51b3008 	ldr	r3, [fp, #-8]
80028108:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
8002810c:	e1a01003 	mov	r1, r3
80028110:	e59f000c 	ldr	r0, [pc, #12]	@ 80028124 <reset_handler+0x34>
80028114:	ebffe5de 	bl	80021894 <cprintf>
80028118:	e1a00000 	nop			@ (mov r0, r0)
8002811c:	e24bd004 	sub	sp, fp, #4
80028120:	e8bd8800 	pop	{fp, pc}
80028124:	8002a068 	.word	0x8002a068

80028128 <und_handler>:
80028128:	e92d4800 	push	{fp, lr}
8002812c:	e28db004 	add	fp, sp, #4
80028130:	e24dd008 	sub	sp, sp, #8
80028134:	e50b0008 	str	r0, [fp, #-8]
80028138:	ebffe100 	bl	80020540 <cli>
8002813c:	e51b3008 	ldr	r3, [fp, #-8]
80028140:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80028144:	e1a01003 	mov	r1, r3
80028148:	e59f000c 	ldr	r0, [pc, #12]	@ 8002815c <und_handler+0x34>
8002814c:	ebffe5d0 	bl	80021894 <cprintf>
80028150:	e1a00000 	nop			@ (mov r0, r0)
80028154:	e24bd004 	sub	sp, fp, #4
80028158:	e8bd8800 	pop	{fp, pc}
8002815c:	8002a07c 	.word	0x8002a07c

80028160 <dabort_handler>:
80028160:	e92d4800 	push	{fp, lr}
80028164:	e28db004 	add	fp, sp, #4
80028168:	e24dd010 	sub	sp, sp, #16
8002816c:	e50b0010 	str	r0, [fp, #-16]
80028170:	ebffe0f2 	bl	80020540 <cli>
80028174:	ee153f10 	mrc	15, 0, r3, cr5, cr0, {0}
80028178:	e50b3008 	str	r3, [fp, #-8]
8002817c:	ee163f10 	mrc	15, 0, r3, cr6, cr0, {0}
80028180:	e50b300c 	str	r3, [fp, #-12]
80028184:	e51b3010 	ldr	r3, [fp, #-16]
80028188:	e5931044 	ldr	r1, [r3, #68]	@ 0x44
8002818c:	e51b3008 	ldr	r3, [fp, #-8]
80028190:	e51b200c 	ldr	r2, [fp, #-12]
80028194:	e59f0014 	ldr	r0, [pc, #20]	@ 800281b0 <dabort_handler+0x50>
80028198:	ebffe5bd 	bl	80021894 <cprintf>
8002819c:	e51b0010 	ldr	r0, [fp, #-16]
800281a0:	eb0000b3 	bl	80028474 <dump_trapframe>
800281a4:	e1a00000 	nop			@ (mov r0, r0)
800281a8:	e24bd004 	sub	sp, fp, #4
800281ac:	e8bd8800 	pop	{fp, pc}
800281b0:	8002a08c 	.word	0x8002a08c

800281b4 <iabort_handler>:
800281b4:	e92d4800 	push	{fp, lr}
800281b8:	e28db004 	add	fp, sp, #4
800281bc:	e24dd010 	sub	sp, sp, #16
800281c0:	e50b0010 	str	r0, [fp, #-16]
800281c4:	ee153f10 	mrc	15, 0, r3, cr5, cr0, {0}
800281c8:	e50b3008 	str	r3, [fp, #-8]
800281cc:	ebffe0db 	bl	80020540 <cli>
800281d0:	e51b3010 	ldr	r3, [fp, #-16]
800281d4:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800281d8:	e51b2008 	ldr	r2, [fp, #-8]
800281dc:	e1a01003 	mov	r1, r3
800281e0:	e59f0014 	ldr	r0, [pc, #20]	@ 800281fc <iabort_handler+0x48>
800281e4:	ebffe5aa 	bl	80021894 <cprintf>
800281e8:	e51b0010 	ldr	r0, [fp, #-16]
800281ec:	eb0000a0 	bl	80028474 <dump_trapframe>
800281f0:	e1a00000 	nop			@ (mov r0, r0)
800281f4:	e24bd004 	sub	sp, fp, #4
800281f8:	e8bd8800 	pop	{fp, pc}
800281fc:	8002a0cc 	.word	0x8002a0cc

80028200 <na_handler>:
80028200:	e92d4800 	push	{fp, lr}
80028204:	e28db004 	add	fp, sp, #4
80028208:	e24dd008 	sub	sp, sp, #8
8002820c:	e50b0008 	str	r0, [fp, #-8]
80028210:	ebffe0ca 	bl	80020540 <cli>
80028214:	e51b3008 	ldr	r3, [fp, #-8]
80028218:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
8002821c:	e1a01003 	mov	r1, r3
80028220:	e59f000c 	ldr	r0, [pc, #12]	@ 80028234 <na_handler+0x34>
80028224:	ebffe59a 	bl	80021894 <cprintf>
80028228:	e1a00000 	nop			@ (mov r0, r0)
8002822c:	e24bd004 	sub	sp, fp, #4
80028230:	e8bd8800 	pop	{fp, pc}
80028234:	8002a0f4 	.word	0x8002a0f4

80028238 <fiq_handler>:
80028238:	e92d4800 	push	{fp, lr}
8002823c:	e28db004 	add	fp, sp, #4
80028240:	e24dd008 	sub	sp, sp, #8
80028244:	e50b0008 	str	r0, [fp, #-8]
80028248:	ebffe0bc 	bl	80020540 <cli>
8002824c:	e51b3008 	ldr	r3, [fp, #-8]
80028250:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80028254:	e1a01003 	mov	r1, r3
80028258:	e59f000c 	ldr	r0, [pc, #12]	@ 8002826c <fiq_handler+0x34>
8002825c:	ebffe58c 	bl	80021894 <cprintf>
80028260:	e1a00000 	nop			@ (mov r0, r0)
80028264:	e24bd004 	sub	sp, fp, #4
80028268:	e8bd8800 	pop	{fp, pc}
8002826c:	8002a104 	.word	0x8002a104

80028270 <trap_init>:
80028270:	e92d4800 	push	{fp, lr}
80028274:	e28db004 	add	fp, sp, #4
80028278:	e24dd020 	sub	sp, sp, #32
8002827c:	e59f31c0 	ldr	r3, [pc, #448]	@ 80028444 <trap_init+0x1d4>
80028280:	e24bc020 	sub	ip, fp, #32
80028284:	e893000f 	ldm	r3, {r0, r1, r2, r3}
80028288:	e88c000f 	stm	ip, {r0, r1, r2, r3}
8002828c:	e59f31b4 	ldr	r3, [pc, #436]	@ 80028448 <trap_init+0x1d8>
80028290:	e50b300c 	str	r3, [fp, #-12]
80028294:	e59f31b0 	ldr	r3, [pc, #432]	@ 8002844c <trap_init+0x1dc>
80028298:	e5933000 	ldr	r3, [r3]
8002829c:	e3832018 	orr	r2, r3, #24
800282a0:	e51b300c 	ldr	r3, [fp, #-12]
800282a4:	e5832000 	str	r2, [r3]
800282a8:	e59f319c 	ldr	r3, [pc, #412]	@ 8002844c <trap_init+0x1dc>
800282ac:	e5932000 	ldr	r2, [r3]
800282b0:	e51b300c 	ldr	r3, [fp, #-12]
800282b4:	e2833004 	add	r3, r3, #4
800282b8:	e3822018 	orr	r2, r2, #24
800282bc:	e5832000 	str	r2, [r3]
800282c0:	e59f3184 	ldr	r3, [pc, #388]	@ 8002844c <trap_init+0x1dc>
800282c4:	e5932000 	ldr	r2, [r3]
800282c8:	e51b300c 	ldr	r3, [fp, #-12]
800282cc:	e2833008 	add	r3, r3, #8
800282d0:	e3822018 	orr	r2, r2, #24
800282d4:	e5832000 	str	r2, [r3]
800282d8:	e59f316c 	ldr	r3, [pc, #364]	@ 8002844c <trap_init+0x1dc>
800282dc:	e5932000 	ldr	r2, [r3]
800282e0:	e51b300c 	ldr	r3, [fp, #-12]
800282e4:	e283300c 	add	r3, r3, #12
800282e8:	e3822018 	orr	r2, r2, #24
800282ec:	e5832000 	str	r2, [r3]
800282f0:	e59f3154 	ldr	r3, [pc, #340]	@ 8002844c <trap_init+0x1dc>
800282f4:	e5932000 	ldr	r2, [r3]
800282f8:	e51b300c 	ldr	r3, [fp, #-12]
800282fc:	e2833010 	add	r3, r3, #16
80028300:	e3822018 	orr	r2, r2, #24
80028304:	e5832000 	str	r2, [r3]
80028308:	e59f313c 	ldr	r3, [pc, #316]	@ 8002844c <trap_init+0x1dc>
8002830c:	e5932000 	ldr	r2, [r3]
80028310:	e51b300c 	ldr	r3, [fp, #-12]
80028314:	e2833014 	add	r3, r3, #20
80028318:	e3822018 	orr	r2, r2, #24
8002831c:	e5832000 	str	r2, [r3]
80028320:	e59f3124 	ldr	r3, [pc, #292]	@ 8002844c <trap_init+0x1dc>
80028324:	e5932000 	ldr	r2, [r3]
80028328:	e51b300c 	ldr	r3, [fp, #-12]
8002832c:	e2833018 	add	r3, r3, #24
80028330:	e3822018 	orr	r2, r2, #24
80028334:	e5832000 	str	r2, [r3]
80028338:	e59f310c 	ldr	r3, [pc, #268]	@ 8002844c <trap_init+0x1dc>
8002833c:	e5932000 	ldr	r2, [r3]
80028340:	e51b300c 	ldr	r3, [fp, #-12]
80028344:	e283301c 	add	r3, r3, #28
80028348:	e3822018 	orr	r2, r2, #24
8002834c:	e5832000 	str	r2, [r3]
80028350:	e51b300c 	ldr	r3, [fp, #-12]
80028354:	e2833020 	add	r3, r3, #32
80028358:	e59f20f0 	ldr	r2, [pc, #240]	@ 80028450 <trap_init+0x1e0>
8002835c:	e5832000 	str	r2, [r3]
80028360:	e51b300c 	ldr	r3, [fp, #-12]
80028364:	e2833024 	add	r3, r3, #36	@ 0x24
80028368:	e59f20e4 	ldr	r2, [pc, #228]	@ 80028454 <trap_init+0x1e4>
8002836c:	e5832000 	str	r2, [r3]
80028370:	e51b300c 	ldr	r3, [fp, #-12]
80028374:	e2833028 	add	r3, r3, #40	@ 0x28
80028378:	e59f20d8 	ldr	r2, [pc, #216]	@ 80028458 <trap_init+0x1e8>
8002837c:	e5832000 	str	r2, [r3]
80028380:	e51b300c 	ldr	r3, [fp, #-12]
80028384:	e283302c 	add	r3, r3, #44	@ 0x2c
80028388:	e59f20cc 	ldr	r2, [pc, #204]	@ 8002845c <trap_init+0x1ec>
8002838c:	e5832000 	str	r2, [r3]
80028390:	e51b300c 	ldr	r3, [fp, #-12]
80028394:	e2833030 	add	r3, r3, #48	@ 0x30
80028398:	e59f20c0 	ldr	r2, [pc, #192]	@ 80028460 <trap_init+0x1f0>
8002839c:	e5832000 	str	r2, [r3]
800283a0:	e51b300c 	ldr	r3, [fp, #-12]
800283a4:	e2833034 	add	r3, r3, #52	@ 0x34
800283a8:	e59f20b4 	ldr	r2, [pc, #180]	@ 80028464 <trap_init+0x1f4>
800283ac:	e5832000 	str	r2, [r3]
800283b0:	e51b300c 	ldr	r3, [fp, #-12]
800283b4:	e2833038 	add	r3, r3, #56	@ 0x38
800283b8:	e59f20a8 	ldr	r2, [pc, #168]	@ 80028468 <trap_init+0x1f8>
800283bc:	e5832000 	str	r2, [r3]
800283c0:	e51b300c 	ldr	r3, [fp, #-12]
800283c4:	e283303c 	add	r3, r3, #60	@ 0x3c
800283c8:	e59f209c 	ldr	r2, [pc, #156]	@ 8002846c <trap_init+0x1fc>
800283cc:	e5832000 	str	r2, [r3]
800283d0:	e3a03000 	mov	r3, #0
800283d4:	e50b3008 	str	r3, [fp, #-8]
800283d8:	ea000012 	b	80028428 <trap_init+0x1b8>
800283dc:	ebffe493 	bl	80021630 <alloc_page>
800283e0:	e50b0010 	str	r0, [fp, #-16]
800283e4:	e51b3010 	ldr	r3, [fp, #-16]
800283e8:	e3530000 	cmp	r3, #0
800283ec:	1a000001 	bne	800283f8 <trap_init+0x188>
800283f0:	e59f0078 	ldr	r0, [pc, #120]	@ 80028470 <trap_init+0x200>
800283f4:	ebffe5b0 	bl	80021abc <panic>
800283f8:	e51b3008 	ldr	r3, [fp, #-8]
800283fc:	e1a03103 	lsl	r3, r3, #2
80028400:	e2433004 	sub	r3, r3, #4
80028404:	e083300b 	add	r3, r3, fp
80028408:	e513301c 	ldr	r3, [r3, #-28]	@ 0xffffffe4
8002840c:	e51b2010 	ldr	r2, [fp, #-16]
80028410:	e1a01002 	mov	r1, r2
80028414:	e1a00003 	mov	r0, r3
80028418:	ebffe121 	bl	800208a4 <set_stk>
8002841c:	e51b3008 	ldr	r3, [fp, #-8]
80028420:	e2833001 	add	r3, r3, #1
80028424:	e50b3008 	str	r3, [fp, #-8]
80028428:	e51b3008 	ldr	r3, [fp, #-8]
8002842c:	e3530003 	cmp	r3, #3
80028430:	9affffe9 	bls	800283dc <trap_init+0x16c>
80028434:	e1a00000 	nop			@ (mov r0, r0)
80028438:	e1a00000 	nop			@ (mov r0, r0)
8002843c:	e24bd004 	sub	sp, fp, #4
80028440:	e8bd8800 	pop	{fp, pc}
80028444:	8002a13c 	.word	0x8002a13c
80028448:	ffff0000 	.word	0xffff0000
8002844c:	8002a24c 	.word	0x8002a24c
80028450:	80027f64 	.word	0x80027f64
80028454:	80027f8c 	.word	0x80027f8c
80028458:	80027ed8 	.word	0x80027ed8
8002845c:	80027fb0 	.word	0x80027fb0
80028460:	80027fd8 	.word	0x80027fd8
80028464:	80028000 	.word	0x80028000
80028468:	80027f10 	.word	0x80027f10
8002846c:	80028024 	.word	0x80028024
80028470:	8002a114 	.word	0x8002a114

80028474 <dump_trapframe>:
80028474:	e92d4800 	push	{fp, lr}
80028478:	e28db004 	add	fp, sp, #4
8002847c:	e24dd008 	sub	sp, sp, #8
80028480:	e50b0008 	str	r0, [fp, #-8]
80028484:	e51b3008 	ldr	r3, [fp, #-8]
80028488:	e5933008 	ldr	r3, [r3, #8]
8002848c:	e1a01003 	mov	r1, r3
80028490:	e59f0138 	ldr	r0, [pc, #312]	@ 800285d0 <dump_trapframe+0x15c>
80028494:	ebffe4fe 	bl	80021894 <cprintf>
80028498:	e51b3008 	ldr	r3, [fp, #-8]
8002849c:	e593300c 	ldr	r3, [r3, #12]
800284a0:	e1a01003 	mov	r1, r3
800284a4:	e59f0128 	ldr	r0, [pc, #296]	@ 800285d4 <dump_trapframe+0x160>
800284a8:	ebffe4f9 	bl	80021894 <cprintf>
800284ac:	e51b3008 	ldr	r3, [fp, #-8]
800284b0:	e5933010 	ldr	r3, [r3, #16]
800284b4:	e1a01003 	mov	r1, r3
800284b8:	e59f0118 	ldr	r0, [pc, #280]	@ 800285d8 <dump_trapframe+0x164>
800284bc:	ebffe4f4 	bl	80021894 <cprintf>
800284c0:	e51b3008 	ldr	r3, [fp, #-8]
800284c4:	e5933014 	ldr	r3, [r3, #20]
800284c8:	e1a01003 	mov	r1, r3
800284cc:	e59f0108 	ldr	r0, [pc, #264]	@ 800285dc <dump_trapframe+0x168>
800284d0:	ebffe4ef 	bl	80021894 <cprintf>
800284d4:	e51b3008 	ldr	r3, [fp, #-8]
800284d8:	e5933018 	ldr	r3, [r3, #24]
800284dc:	e1a01003 	mov	r1, r3
800284e0:	e59f00f8 	ldr	r0, [pc, #248]	@ 800285e0 <dump_trapframe+0x16c>
800284e4:	ebffe4ea 	bl	80021894 <cprintf>
800284e8:	e51b3008 	ldr	r3, [fp, #-8]
800284ec:	e593301c 	ldr	r3, [r3, #28]
800284f0:	e1a01003 	mov	r1, r3
800284f4:	e59f00e8 	ldr	r0, [pc, #232]	@ 800285e4 <dump_trapframe+0x170>
800284f8:	ebffe4e5 	bl	80021894 <cprintf>
800284fc:	e51b3008 	ldr	r3, [fp, #-8]
80028500:	e5933020 	ldr	r3, [r3, #32]
80028504:	e1a01003 	mov	r1, r3
80028508:	e59f00d8 	ldr	r0, [pc, #216]	@ 800285e8 <dump_trapframe+0x174>
8002850c:	ebffe4e0 	bl	80021894 <cprintf>
80028510:	e51b3008 	ldr	r3, [fp, #-8]
80028514:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
80028518:	e1a01003 	mov	r1, r3
8002851c:	e59f00c8 	ldr	r0, [pc, #200]	@ 800285ec <dump_trapframe+0x178>
80028520:	ebffe4db 	bl	80021894 <cprintf>
80028524:	e51b3008 	ldr	r3, [fp, #-8]
80028528:	e5933028 	ldr	r3, [r3, #40]	@ 0x28
8002852c:	e1a01003 	mov	r1, r3
80028530:	e59f00b8 	ldr	r0, [pc, #184]	@ 800285f0 <dump_trapframe+0x17c>
80028534:	ebffe4d6 	bl	80021894 <cprintf>
80028538:	e51b3008 	ldr	r3, [fp, #-8]
8002853c:	e593302c 	ldr	r3, [r3, #44]	@ 0x2c
80028540:	e1a01003 	mov	r1, r3
80028544:	e59f00a8 	ldr	r0, [pc, #168]	@ 800285f4 <dump_trapframe+0x180>
80028548:	ebffe4d1 	bl	80021894 <cprintf>
8002854c:	e51b3008 	ldr	r3, [fp, #-8]
80028550:	e5933030 	ldr	r3, [r3, #48]	@ 0x30
80028554:	e1a01003 	mov	r1, r3
80028558:	e59f0098 	ldr	r0, [pc, #152]	@ 800285f8 <dump_trapframe+0x184>
8002855c:	ebffe4cc 	bl	80021894 <cprintf>
80028560:	e51b3008 	ldr	r3, [fp, #-8]
80028564:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
80028568:	e1a01003 	mov	r1, r3
8002856c:	e59f0088 	ldr	r0, [pc, #136]	@ 800285fc <dump_trapframe+0x188>
80028570:	ebffe4c7 	bl	80021894 <cprintf>
80028574:	e51b3008 	ldr	r3, [fp, #-8]
80028578:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
8002857c:	e1a01003 	mov	r1, r3
80028580:	e59f0078 	ldr	r0, [pc, #120]	@ 80028600 <dump_trapframe+0x18c>
80028584:	ebffe4c2 	bl	80021894 <cprintf>
80028588:	e51b3008 	ldr	r3, [fp, #-8]
8002858c:	e593303c 	ldr	r3, [r3, #60]	@ 0x3c
80028590:	e1a01003 	mov	r1, r3
80028594:	e59f0068 	ldr	r0, [pc, #104]	@ 80028604 <dump_trapframe+0x190>
80028598:	ebffe4bd 	bl	80021894 <cprintf>
8002859c:	e51b3008 	ldr	r3, [fp, #-8]
800285a0:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
800285a4:	e1a01003 	mov	r1, r3
800285a8:	e59f0058 	ldr	r0, [pc, #88]	@ 80028608 <dump_trapframe+0x194>
800285ac:	ebffe4b8 	bl	80021894 <cprintf>
800285b0:	e51b3008 	ldr	r3, [fp, #-8]
800285b4:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800285b8:	e1a01003 	mov	r1, r3
800285bc:	e59f0048 	ldr	r0, [pc, #72]	@ 8002860c <dump_trapframe+0x198>
800285c0:	ebffe4b3 	bl	80021894 <cprintf>
800285c4:	e1a00000 	nop			@ (mov r0, r0)
800285c8:	e24bd004 	sub	sp, fp, #4
800285cc:	e8bd8800 	pop	{fp, pc}
800285d0:	8002a14c 	.word	0x8002a14c
800285d4:	8002a15c 	.word	0x8002a15c
800285d8:	8002a16c 	.word	0x8002a16c
800285dc:	8002a17c 	.word	0x8002a17c
800285e0:	8002a18c 	.word	0x8002a18c
800285e4:	8002a19c 	.word	0x8002a19c
800285e8:	8002a1ac 	.word	0x8002a1ac
800285ec:	8002a1bc 	.word	0x8002a1bc
800285f0:	8002a1cc 	.word	0x8002a1cc
800285f4:	8002a1dc 	.word	0x8002a1dc
800285f8:	8002a1ec 	.word	0x8002a1ec
800285fc:	8002a1fc 	.word	0x8002a1fc
80028600:	8002a20c 	.word	0x8002a20c
80028604:	8002a21c 	.word	0x8002a21c
80028608:	8002a22c 	.word	0x8002a22c
8002860c:	8002a23c 	.word	0x8002a23c

80028610 <v2p>:
80028610:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80028614:	e28db000 	add	fp, sp, #0
80028618:	e24dd00c 	sub	sp, sp, #12
8002861c:	e50b0008 	str	r0, [fp, #-8]
80028620:	e51b3008 	ldr	r3, [fp, #-8]
80028624:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
80028628:	e1a00003 	mov	r0, r3
8002862c:	e28bd000 	add	sp, fp, #0
80028630:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80028634:	e12fff1e 	bx	lr

80028638 <p2v>:
80028638:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002863c:	e28db000 	add	fp, sp, #0
80028640:	e24dd00c 	sub	sp, sp, #12
80028644:	e50b0008 	str	r0, [fp, #-8]
80028648:	e51b3008 	ldr	r3, [fp, #-8]
8002864c:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
80028650:	e1a00003 	mov	r0, r3
80028654:	e28bd000 	add	sp, fp, #0
80028658:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002865c:	e12fff1e 	bx	lr

80028660 <init_vmm>:
80028660:	e92d4800 	push	{fp, lr}
80028664:	e28db004 	add	fp, sp, #4
80028668:	e59f1018 	ldr	r1, [pc, #24]	@ 80028688 <init_vmm+0x28>
8002866c:	e59f0018 	ldr	r0, [pc, #24]	@ 8002868c <init_vmm+0x2c>
80028670:	ebfff813 	bl	800266c4 <initlock>
80028674:	e59f3010 	ldr	r3, [pc, #16]	@ 8002868c <init_vmm+0x2c>
80028678:	e3a02000 	mov	r2, #0
8002867c:	e5832034 	str	r2, [r3, #52]	@ 0x34
80028680:	e1a00000 	nop			@ (mov r0, r0)
80028684:	e8bd8800 	pop	{fp, pc}
80028688:	8002a250 	.word	0x8002a250
8002868c:	800b1360 	.word	0x800b1360

80028690 <_kpt_free>:
80028690:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80028694:	e28db000 	add	fp, sp, #0
80028698:	e24dd014 	sub	sp, sp, #20
8002869c:	e50b0010 	str	r0, [fp, #-16]
800286a0:	e51b3010 	ldr	r3, [fp, #-16]
800286a4:	e50b3008 	str	r3, [fp, #-8]
800286a8:	e59f3024 	ldr	r3, [pc, #36]	@ 800286d4 <_kpt_free+0x44>
800286ac:	e5932034 	ldr	r2, [r3, #52]	@ 0x34
800286b0:	e51b3008 	ldr	r3, [fp, #-8]
800286b4:	e5832000 	str	r2, [r3]
800286b8:	e59f2014 	ldr	r2, [pc, #20]	@ 800286d4 <_kpt_free+0x44>
800286bc:	e51b3008 	ldr	r3, [fp, #-8]
800286c0:	e5823034 	str	r3, [r2, #52]	@ 0x34
800286c4:	e1a00000 	nop			@ (mov r0, r0)
800286c8:	e28bd000 	add	sp, fp, #0
800286cc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800286d0:	e12fff1e 	bx	lr
800286d4:	800b1360 	.word	0x800b1360

800286d8 <kpt_free>:
800286d8:	e92d4800 	push	{fp, lr}
800286dc:	e28db004 	add	fp, sp, #4
800286e0:	e24dd008 	sub	sp, sp, #8
800286e4:	e50b0008 	str	r0, [fp, #-8]
800286e8:	e51b3008 	ldr	r3, [fp, #-8]
800286ec:	e59f2034 	ldr	r2, [pc, #52]	@ 80028728 <kpt_free+0x50>
800286f0:	e1530002 	cmp	r3, r2
800286f4:	9a000003 	bls	80028708 <kpt_free+0x30>
800286f8:	e3a0100a 	mov	r1, #10
800286fc:	e51b0008 	ldr	r0, [fp, #-8]
80028700:	ebffe39e 	bl	80021580 <kfree>
80028704:	ea000005 	b	80028720 <kpt_free+0x48>
80028708:	e59f001c 	ldr	r0, [pc, #28]	@ 8002872c <kpt_free+0x54>
8002870c:	ebfff7fe 	bl	8002670c <acquire>
80028710:	e51b0008 	ldr	r0, [fp, #-8]
80028714:	ebffffdd 	bl	80028690 <_kpt_free>
80028718:	e59f000c 	ldr	r0, [pc, #12]	@ 8002872c <kpt_free+0x54>
8002871c:	ebfff805 	bl	80026738 <release>
80028720:	e24bd004 	sub	sp, fp, #4
80028724:	e8bd8800 	pop	{fp, pc}
80028728:	800fffff 	.word	0x800fffff
8002872c:	800b1360 	.word	0x800b1360

80028730 <kpt_freerange>:
80028730:	e92d4800 	push	{fp, lr}
80028734:	e28db004 	add	fp, sp, #4
80028738:	e24dd008 	sub	sp, sp, #8
8002873c:	e50b0008 	str	r0, [fp, #-8]
80028740:	e50b100c 	str	r1, [fp, #-12]
80028744:	ea000005 	b	80028760 <kpt_freerange+0x30>
80028748:	e51b3008 	ldr	r3, [fp, #-8]
8002874c:	e1a00003 	mov	r0, r3
80028750:	ebffffce 	bl	80028690 <_kpt_free>
80028754:	e51b3008 	ldr	r3, [fp, #-8]
80028758:	e2833b01 	add	r3, r3, #1024	@ 0x400
8002875c:	e50b3008 	str	r3, [fp, #-8]
80028760:	e51b2008 	ldr	r2, [fp, #-8]
80028764:	e51b300c 	ldr	r3, [fp, #-12]
80028768:	e1520003 	cmp	r2, r3
8002876c:	3afffff5 	bcc	80028748 <kpt_freerange+0x18>
80028770:	e1a00000 	nop			@ (mov r0, r0)
80028774:	e1a00000 	nop			@ (mov r0, r0)
80028778:	e24bd004 	sub	sp, fp, #4
8002877c:	e8bd8800 	pop	{fp, pc}

80028780 <kpt_alloc>:
80028780:	e92d4800 	push	{fp, lr}
80028784:	e28db004 	add	fp, sp, #4
80028788:	e24dd008 	sub	sp, sp, #8
8002878c:	e59f007c 	ldr	r0, [pc, #124]	@ 80028810 <kpt_alloc+0x90>
80028790:	ebfff7dd 	bl	8002670c <acquire>
80028794:	e59f3074 	ldr	r3, [pc, #116]	@ 80028810 <kpt_alloc+0x90>
80028798:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
8002879c:	e50b3008 	str	r3, [fp, #-8]
800287a0:	e51b3008 	ldr	r3, [fp, #-8]
800287a4:	e3530000 	cmp	r3, #0
800287a8:	0a000003 	beq	800287bc <kpt_alloc+0x3c>
800287ac:	e51b3008 	ldr	r3, [fp, #-8]
800287b0:	e5933000 	ldr	r3, [r3]
800287b4:	e59f2054 	ldr	r2, [pc, #84]	@ 80028810 <kpt_alloc+0x90>
800287b8:	e5823034 	str	r3, [r2, #52]	@ 0x34
800287bc:	e59f004c 	ldr	r0, [pc, #76]	@ 80028810 <kpt_alloc+0x90>
800287c0:	ebfff7dc 	bl	80026738 <release>
800287c4:	e51b3008 	ldr	r3, [fp, #-8]
800287c8:	e3530000 	cmp	r3, #0
800287cc:	1a000007 	bne	800287f0 <kpt_alloc+0x70>
800287d0:	e3a0000a 	mov	r0, #10
800287d4:	ebffe312 	bl	80021424 <kmalloc>
800287d8:	e50b0008 	str	r0, [fp, #-8]
800287dc:	e51b3008 	ldr	r3, [fp, #-8]
800287e0:	e3530000 	cmp	r3, #0
800287e4:	1a000001 	bne	800287f0 <kpt_alloc+0x70>
800287e8:	e59f0024 	ldr	r0, [pc, #36]	@ 80028814 <kpt_alloc+0x94>
800287ec:	ebffe4b2 	bl	80021abc <panic>
800287f0:	e3a02b01 	mov	r2, #1024	@ 0x400
800287f4:	e3a01000 	mov	r1, #0
800287f8:	e51b0008 	ldr	r0, [fp, #-8]
800287fc:	ebffddff 	bl	80020000 <memset>
80028800:	e51b3008 	ldr	r3, [fp, #-8]
80028804:	e1a00003 	mov	r0, r3
80028808:	e24bd004 	sub	sp, fp, #4
8002880c:	e8bd8800 	pop	{fp, pc}
80028810:	800b1360 	.word	0x800b1360
80028814:	8002a254 	.word	0x8002a254

80028818 <walkpgdir>:
80028818:	e92d4800 	push	{fp, lr}
8002881c:	e28db004 	add	fp, sp, #4
80028820:	e24dd018 	sub	sp, sp, #24
80028824:	e50b0010 	str	r0, [fp, #-16]
80028828:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
8002882c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80028830:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80028834:	e1a03a23 	lsr	r3, r3, #20
80028838:	e1a03103 	lsl	r3, r3, #2
8002883c:	e51b2010 	ldr	r2, [fp, #-16]
80028840:	e0823003 	add	r3, r2, r3
80028844:	e50b300c 	str	r3, [fp, #-12]
80028848:	e51b300c 	ldr	r3, [fp, #-12]
8002884c:	e5933000 	ldr	r3, [r3]
80028850:	e2033003 	and	r3, r3, #3
80028854:	e3530000 	cmp	r3, #0
80028858:	0a000007 	beq	8002887c <walkpgdir+0x64>
8002885c:	e51b300c 	ldr	r3, [fp, #-12]
80028860:	e5933000 	ldr	r3, [r3]
80028864:	e3c33fff 	bic	r3, r3, #1020	@ 0x3fc
80028868:	e3c33003 	bic	r3, r3, #3
8002886c:	e1a00003 	mov	r0, r3
80028870:	ebffff70 	bl	80028638 <p2v>
80028874:	e50b0008 	str	r0, [fp, #-8]
80028878:	ea000013 	b	800288cc <walkpgdir+0xb4>
8002887c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028880:	e3530000 	cmp	r3, #0
80028884:	0a000004 	beq	8002889c <walkpgdir+0x84>
80028888:	ebffffbc 	bl	80028780 <kpt_alloc>
8002888c:	e50b0008 	str	r0, [fp, #-8]
80028890:	e51b3008 	ldr	r3, [fp, #-8]
80028894:	e3530000 	cmp	r3, #0
80028898:	1a000001 	bne	800288a4 <walkpgdir+0x8c>
8002889c:	e3a03000 	mov	r3, #0
800288a0:	ea00000f 	b	800288e4 <walkpgdir+0xcc>
800288a4:	e3a02b01 	mov	r2, #1024	@ 0x400
800288a8:	e3a01000 	mov	r1, #0
800288ac:	e51b0008 	ldr	r0, [fp, #-8]
800288b0:	ebffddd2 	bl	80020000 <memset>
800288b4:	e51b0008 	ldr	r0, [fp, #-8]
800288b8:	ebffff54 	bl	80028610 <v2p>
800288bc:	e1a03000 	mov	r3, r0
800288c0:	e3832001 	orr	r2, r3, #1
800288c4:	e51b300c 	ldr	r3, [fp, #-12]
800288c8:	e5832000 	str	r2, [r3]
800288cc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800288d0:	e1a03623 	lsr	r3, r3, #12
800288d4:	e6ef3073 	uxtb	r3, r3
800288d8:	e1a03103 	lsl	r3, r3, #2
800288dc:	e51b2008 	ldr	r2, [fp, #-8]
800288e0:	e0823003 	add	r3, r2, r3
800288e4:	e1a00003 	mov	r0, r3
800288e8:	e24bd004 	sub	sp, fp, #4
800288ec:	e8bd8800 	pop	{fp, pc}

800288f0 <mappages>:
800288f0:	e92d4800 	push	{fp, lr}
800288f4:	e28db004 	add	fp, sp, #4
800288f8:	e24dd020 	sub	sp, sp, #32
800288fc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80028900:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80028904:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80028908:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
8002890c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028910:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028914:	e3c3300f 	bic	r3, r3, #15
80028918:	e50b3008 	str	r3, [fp, #-8]
8002891c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80028920:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80028924:	e0823003 	add	r3, r2, r3
80028928:	e2433001 	sub	r3, r3, #1
8002892c:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028930:	e3c3300f 	bic	r3, r3, #15
80028934:	e50b300c 	str	r3, [fp, #-12]
80028938:	e3a02001 	mov	r2, #1
8002893c:	e51b1008 	ldr	r1, [fp, #-8]
80028940:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80028944:	ebffffb3 	bl	80028818 <walkpgdir>
80028948:	e50b0010 	str	r0, [fp, #-16]
8002894c:	e51b3010 	ldr	r3, [fp, #-16]
80028950:	e3530000 	cmp	r3, #0
80028954:	1a000001 	bne	80028960 <mappages+0x70>
80028958:	e3e03000 	mvn	r3, #0
8002895c:	ea00001b 	b	800289d0 <mappages+0xe0>
80028960:	e51b3010 	ldr	r3, [fp, #-16]
80028964:	e5933000 	ldr	r3, [r3]
80028968:	e2033003 	and	r3, r3, #3
8002896c:	e3530000 	cmp	r3, #0
80028970:	0a000001 	beq	8002897c <mappages+0x8c>
80028974:	e59f0060 	ldr	r0, [pc, #96]	@ 800289dc <mappages+0xec>
80028978:	ebffe44f 	bl	80021abc <panic>
8002897c:	e59b3004 	ldr	r3, [fp, #4]
80028980:	e1a03203 	lsl	r3, r3, #4
80028984:	e2032030 	and	r2, r3, #48	@ 0x30
80028988:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
8002898c:	e1823003 	orr	r3, r2, r3
80028990:	e383200e 	orr	r2, r3, #14
80028994:	e51b3010 	ldr	r3, [fp, #-16]
80028998:	e5832000 	str	r2, [r3]
8002899c:	e51b2008 	ldr	r2, [fp, #-8]
800289a0:	e51b300c 	ldr	r3, [fp, #-12]
800289a4:	e1520003 	cmp	r2, r3
800289a8:	0a000006 	beq	800289c8 <mappages+0xd8>
800289ac:	e51b3008 	ldr	r3, [fp, #-8]
800289b0:	e2833a01 	add	r3, r3, #4096	@ 0x1000
800289b4:	e50b3008 	str	r3, [fp, #-8]
800289b8:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
800289bc:	e2833a01 	add	r3, r3, #4096	@ 0x1000
800289c0:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
800289c4:	eaffffdb 	b	80028938 <mappages+0x48>
800289c8:	e1a00000 	nop			@ (mov r0, r0)
800289cc:	e3a03000 	mov	r3, #0
800289d0:	e1a00003 	mov	r0, r3
800289d4:	e24bd004 	sub	sp, fp, #4
800289d8:	e8bd8800 	pop	{fp, pc}
800289dc:	8002a264 	.word	0x8002a264

800289e0 <flush_tlb>:
800289e0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800289e4:	e28db000 	add	fp, sp, #0
800289e8:	e24dd00c 	sub	sp, sp, #12
800289ec:	e3a03000 	mov	r3, #0
800289f0:	e50b3008 	str	r3, [fp, #-8]
800289f4:	e51b3008 	ldr	r3, [fp, #-8]
800289f8:	ee083f17 	mcr	15, 0, r3, cr8, cr7, {0}
800289fc:	e51b3008 	ldr	r3, [fp, #-8]
80028a00:	ee073f1a 	mcr	15, 0, r3, cr7, cr10, {0}
80028a04:	e51b3008 	ldr	r3, [fp, #-8]
80028a08:	ee073f1b 	mcr	15, 0, r3, cr7, cr11, {0}
80028a0c:	e1a00000 	nop			@ (mov r0, r0)
80028a10:	e28bd000 	add	sp, fp, #0
80028a14:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80028a18:	e12fff1e 	bx	lr

80028a1c <switchuvm>:
80028a1c:	e92d4800 	push	{fp, lr}
80028a20:	e28db004 	add	fp, sp, #4
80028a24:	e24dd010 	sub	sp, sp, #16
80028a28:	e50b0010 	str	r0, [fp, #-16]
80028a2c:	ebffdefe 	bl	8002062c <pushcli>
80028a30:	e51b3010 	ldr	r3, [fp, #-16]
80028a34:	e5933010 	ldr	r3, [r3, #16]
80028a38:	e3530000 	cmp	r3, #0
80028a3c:	1a000001 	bne	80028a48 <switchuvm+0x2c>
80028a40:	e59f002c 	ldr	r0, [pc, #44]	@ 80028a74 <switchuvm+0x58>
80028a44:	ebffe41c 	bl	80021abc <panic>
80028a48:	e51b3010 	ldr	r3, [fp, #-16]
80028a4c:	e5933010 	ldr	r3, [r3, #16]
80028a50:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
80028a54:	e50b3008 	str	r3, [fp, #-8]
80028a58:	e51b3008 	ldr	r3, [fp, #-8]
80028a5c:	ee023f10 	mcr	15, 0, r3, cr2, cr0, {0}
80028a60:	ebffffde 	bl	800289e0 <flush_tlb>
80028a64:	ebffdf05 	bl	80020680 <popcli>
80028a68:	e1a00000 	nop			@ (mov r0, r0)
80028a6c:	e24bd004 	sub	sp, fp, #4
80028a70:	e8bd8800 	pop	{fp, pc}
80028a74:	8002a26c 	.word	0x8002a26c

80028a78 <inituvm>:
80028a78:	e92d4800 	push	{fp, lr}
80028a7c:	e28db004 	add	fp, sp, #4
80028a80:	e24dd020 	sub	sp, sp, #32
80028a84:	e50b0010 	str	r0, [fp, #-16]
80028a88:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80028a8c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80028a90:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028a94:	e3530a01 	cmp	r3, #4096	@ 0x1000
80028a98:	3a000001 	bcc	80028aa4 <inituvm+0x2c>
80028a9c:	e59f0058 	ldr	r0, [pc, #88]	@ 80028afc <inituvm+0x84>
80028aa0:	ebffe405 	bl	80021abc <panic>
80028aa4:	ebffe2e1 	bl	80021630 <alloc_page>
80028aa8:	e50b0008 	str	r0, [fp, #-8]
80028aac:	e3a02a01 	mov	r2, #4096	@ 0x1000
80028ab0:	e3a01000 	mov	r1, #0
80028ab4:	e51b0008 	ldr	r0, [fp, #-8]
80028ab8:	ebffdd50 	bl	80020000 <memset>
80028abc:	e51b0008 	ldr	r0, [fp, #-8]
80028ac0:	ebfffed2 	bl	80028610 <v2p>
80028ac4:	e1a03000 	mov	r3, r0
80028ac8:	e3a02003 	mov	r2, #3
80028acc:	e58d2000 	str	r2, [sp]
80028ad0:	e3a02a01 	mov	r2, #4096	@ 0x1000
80028ad4:	e3a01000 	mov	r1, #0
80028ad8:	e51b0010 	ldr	r0, [fp, #-16]
80028adc:	ebffff83 	bl	800288f0 <mappages>
80028ae0:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80028ae4:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80028ae8:	e51b0008 	ldr	r0, [fp, #-8]
80028aec:	ebffddb5 	bl	800201c8 <memmove>
80028af0:	e1a00000 	nop			@ (mov r0, r0)
80028af4:	e24bd004 	sub	sp, fp, #4
80028af8:	e8bd8800 	pop	{fp, pc}
80028afc:	8002a280 	.word	0x8002a280

80028b00 <loaduvm>:
80028b00:	e92d4800 	push	{fp, lr}
80028b04:	e28db004 	add	fp, sp, #4
80028b08:	e24dd020 	sub	sp, sp, #32
80028b0c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80028b10:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80028b14:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80028b18:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80028b1c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028b20:	e1a03a03 	lsl	r3, r3, #20
80028b24:	e1a03a23 	lsr	r3, r3, #20
80028b28:	e3530000 	cmp	r3, #0
80028b2c:	0a000001 	beq	80028b38 <loaduvm+0x38>
80028b30:	e59f00f0 	ldr	r0, [pc, #240]	@ 80028c28 <loaduvm+0x128>
80028b34:	ebffe3e0 	bl	80021abc <panic>
80028b38:	e3a03000 	mov	r3, #0
80028b3c:	e50b3008 	str	r3, [fp, #-8]
80028b40:	ea000030 	b	80028c08 <loaduvm+0x108>
80028b44:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80028b48:	e51b3008 	ldr	r3, [fp, #-8]
80028b4c:	e0823003 	add	r3, r2, r3
80028b50:	e3a02000 	mov	r2, #0
80028b54:	e1a01003 	mov	r1, r3
80028b58:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80028b5c:	ebffff2d 	bl	80028818 <walkpgdir>
80028b60:	e50b0010 	str	r0, [fp, #-16]
80028b64:	e51b3010 	ldr	r3, [fp, #-16]
80028b68:	e3530000 	cmp	r3, #0
80028b6c:	1a000001 	bne	80028b78 <loaduvm+0x78>
80028b70:	e59f00b4 	ldr	r0, [pc, #180]	@ 80028c2c <loaduvm+0x12c>
80028b74:	ebffe3d0 	bl	80021abc <panic>
80028b78:	e51b3010 	ldr	r3, [fp, #-16]
80028b7c:	e5933000 	ldr	r3, [r3]
80028b80:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028b84:	e3c3300f 	bic	r3, r3, #15
80028b88:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80028b8c:	e59b2004 	ldr	r2, [fp, #4]
80028b90:	e51b3008 	ldr	r3, [fp, #-8]
80028b94:	e0423003 	sub	r3, r2, r3
80028b98:	e3530a01 	cmp	r3, #4096	@ 0x1000
80028b9c:	2a000004 	bcs	80028bb4 <loaduvm+0xb4>
80028ba0:	e59b2004 	ldr	r2, [fp, #4]
80028ba4:	e51b3008 	ldr	r3, [fp, #-8]
80028ba8:	e0423003 	sub	r3, r2, r3
80028bac:	e50b300c 	str	r3, [fp, #-12]
80028bb0:	ea000001 	b	80028bbc <loaduvm+0xbc>
80028bb4:	e3a03a01 	mov	r3, #4096	@ 0x1000
80028bb8:	e50b300c 	str	r3, [fp, #-12]
80028bbc:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80028bc0:	ebfffe9c 	bl	80028638 <p2v>
80028bc4:	e1a01000 	mov	r1, r0
80028bc8:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80028bcc:	e51b3008 	ldr	r3, [fp, #-8]
80028bd0:	e0822003 	add	r2, r2, r3
80028bd4:	e51b300c 	ldr	r3, [fp, #-12]
80028bd8:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80028bdc:	ebffec17 	bl	80023c40 <readi>
80028be0:	e1a03000 	mov	r3, r0
80028be4:	e1a02003 	mov	r2, r3
80028be8:	e51b300c 	ldr	r3, [fp, #-12]
80028bec:	e1530002 	cmp	r3, r2
80028bf0:	0a000001 	beq	80028bfc <loaduvm+0xfc>
80028bf4:	e3e03000 	mvn	r3, #0
80028bf8:	ea000007 	b	80028c1c <loaduvm+0x11c>
80028bfc:	e51b3008 	ldr	r3, [fp, #-8]
80028c00:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80028c04:	e50b3008 	str	r3, [fp, #-8]
80028c08:	e51b2008 	ldr	r2, [fp, #-8]
80028c0c:	e59b3004 	ldr	r3, [fp, #4]
80028c10:	e1520003 	cmp	r2, r3
80028c14:	3affffca 	bcc	80028b44 <loaduvm+0x44>
80028c18:	e3a03000 	mov	r3, #0
80028c1c:	e1a00003 	mov	r0, r3
80028c20:	e24bd004 	sub	sp, fp, #4
80028c24:	e8bd8800 	pop	{fp, pc}
80028c28:	8002a29c 	.word	0x8002a29c
80028c2c:	8002a2c0 	.word	0x8002a2c0

80028c30 <allocuvm>:
80028c30:	e92d4810 	push	{r4, fp, lr}
80028c34:	e28db008 	add	fp, sp, #8
80028c38:	e24dd024 	sub	sp, sp, #36	@ 0x24
80028c3c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80028c40:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80028c44:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80028c48:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80028c4c:	e373021f 	cmn	r3, #-268435455	@ 0xf0000001
80028c50:	9a000001 	bls	80028c5c <allocuvm+0x2c>
80028c54:	e3a03000 	mov	r3, #0
80028c58:	ea00002f 	b	80028d1c <allocuvm+0xec>
80028c5c:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
80028c60:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028c64:	e1520003 	cmp	r2, r3
80028c68:	2a000001 	bcs	80028c74 <allocuvm+0x44>
80028c6c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028c70:	ea000029 	b	80028d1c <allocuvm+0xec>
80028c74:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028c78:	e2833eff 	add	r3, r3, #4080	@ 0xff0
80028c7c:	e283300f 	add	r3, r3, #15
80028c80:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028c84:	e3c3300f 	bic	r3, r3, #15
80028c88:	e50b3010 	str	r3, [fp, #-16]
80028c8c:	ea00001d 	b	80028d08 <allocuvm+0xd8>
80028c90:	ebffe266 	bl	80021630 <alloc_page>
80028c94:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80028c98:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80028c9c:	e3530000 	cmp	r3, #0
80028ca0:	1a000007 	bne	80028cc4 <allocuvm+0x94>
80028ca4:	e59f007c 	ldr	r0, [pc, #124]	@ 80028d28 <allocuvm+0xf8>
80028ca8:	ebffe2f9 	bl	80021894 <cprintf>
80028cac:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80028cb0:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
80028cb4:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80028cb8:	eb00001b 	bl	80028d2c <deallocuvm>
80028cbc:	e3a03000 	mov	r3, #0
80028cc0:	ea000015 	b	80028d1c <allocuvm+0xec>
80028cc4:	e3a02a01 	mov	r2, #4096	@ 0x1000
80028cc8:	e3a01000 	mov	r1, #0
80028ccc:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80028cd0:	ebffdcca 	bl	80020000 <memset>
80028cd4:	e51b4010 	ldr	r4, [fp, #-16]
80028cd8:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80028cdc:	ebfffe4b 	bl	80028610 <v2p>
80028ce0:	e1a03000 	mov	r3, r0
80028ce4:	e3a02003 	mov	r2, #3
80028ce8:	e58d2000 	str	r2, [sp]
80028cec:	e3a02a01 	mov	r2, #4096	@ 0x1000
80028cf0:	e1a01004 	mov	r1, r4
80028cf4:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80028cf8:	ebfffefc 	bl	800288f0 <mappages>
80028cfc:	e51b3010 	ldr	r3, [fp, #-16]
80028d00:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80028d04:	e50b3010 	str	r3, [fp, #-16]
80028d08:	e51b2010 	ldr	r2, [fp, #-16]
80028d0c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80028d10:	e1520003 	cmp	r2, r3
80028d14:	3affffdd 	bcc	80028c90 <allocuvm+0x60>
80028d18:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80028d1c:	e1a00003 	mov	r0, r3
80028d20:	e24bd008 	sub	sp, fp, #8
80028d24:	e8bd8810 	pop	{r4, fp, pc}
80028d28:	8002a2e0 	.word	0x8002a2e0

80028d2c <deallocuvm>:
80028d2c:	e92d4800 	push	{fp, lr}
80028d30:	e28db004 	add	fp, sp, #4
80028d34:	e24dd020 	sub	sp, sp, #32
80028d38:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80028d3c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80028d40:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80028d44:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
80028d48:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028d4c:	e1520003 	cmp	r2, r3
80028d50:	3a000001 	bcc	80028d5c <deallocuvm+0x30>
80028d54:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028d58:	ea000035 	b	80028e34 <deallocuvm+0x108>
80028d5c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80028d60:	e2833eff 	add	r3, r3, #4080	@ 0xff0
80028d64:	e283300f 	add	r3, r3, #15
80028d68:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028d6c:	e3c3300f 	bic	r3, r3, #15
80028d70:	e50b3008 	str	r3, [fp, #-8]
80028d74:	ea000029 	b	80028e20 <deallocuvm+0xf4>
80028d78:	e51b3008 	ldr	r3, [fp, #-8]
80028d7c:	e3a02000 	mov	r2, #0
80028d80:	e1a01003 	mov	r1, r3
80028d84:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80028d88:	ebfffea2 	bl	80028818 <walkpgdir>
80028d8c:	e50b000c 	str	r0, [fp, #-12]
80028d90:	e51b300c 	ldr	r3, [fp, #-12]
80028d94:	e3530000 	cmp	r3, #0
80028d98:	1a000006 	bne	80028db8 <deallocuvm+0x8c>
80028d9c:	e51b3008 	ldr	r3, [fp, #-8]
80028da0:	e243337f 	sub	r3, r3, #-67108863	@ 0xfc000001
80028da4:	e243363f 	sub	r3, r3, #66060288	@ 0x3f00000
80028da8:	e1a03a23 	lsr	r3, r3, #20
80028dac:	e1a03a03 	lsl	r3, r3, #20
80028db0:	e50b3008 	str	r3, [fp, #-8]
80028db4:	ea000016 	b	80028e14 <deallocuvm+0xe8>
80028db8:	e51b300c 	ldr	r3, [fp, #-12]
80028dbc:	e5933000 	ldr	r3, [r3]
80028dc0:	e2033003 	and	r3, r3, #3
80028dc4:	e3530000 	cmp	r3, #0
80028dc8:	0a000011 	beq	80028e14 <deallocuvm+0xe8>
80028dcc:	e51b300c 	ldr	r3, [fp, #-12]
80028dd0:	e5933000 	ldr	r3, [r3]
80028dd4:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028dd8:	e3c3300f 	bic	r3, r3, #15
80028ddc:	e50b3010 	str	r3, [fp, #-16]
80028de0:	e51b3010 	ldr	r3, [fp, #-16]
80028de4:	e3530000 	cmp	r3, #0
80028de8:	1a000001 	bne	80028df4 <deallocuvm+0xc8>
80028dec:	e59f004c 	ldr	r0, [pc, #76]	@ 80028e40 <deallocuvm+0x114>
80028df0:	ebffe331 	bl	80021abc <panic>
80028df4:	e51b0010 	ldr	r0, [fp, #-16]
80028df8:	ebfffe0e 	bl	80028638 <p2v>
80028dfc:	e1a03000 	mov	r3, r0
80028e00:	e1a00003 	mov	r0, r3
80028e04:	ebffe1ff 	bl	80021608 <free_page>
80028e08:	e51b300c 	ldr	r3, [fp, #-12]
80028e0c:	e3a02000 	mov	r2, #0
80028e10:	e5832000 	str	r2, [r3]
80028e14:	e51b3008 	ldr	r3, [fp, #-8]
80028e18:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80028e1c:	e50b3008 	str	r3, [fp, #-8]
80028e20:	e51b2008 	ldr	r2, [fp, #-8]
80028e24:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028e28:	e1520003 	cmp	r2, r3
80028e2c:	3affffd1 	bcc	80028d78 <deallocuvm+0x4c>
80028e30:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80028e34:	e1a00003 	mov	r0, r3
80028e38:	e24bd004 	sub	sp, fp, #4
80028e3c:	e8bd8800 	pop	{fp, pc}
80028e40:	8002a2f8 	.word	0x8002a2f8

80028e44 <freevm>:
80028e44:	e92d4800 	push	{fp, lr}
80028e48:	e28db004 	add	fp, sp, #4
80028e4c:	e24dd010 	sub	sp, sp, #16
80028e50:	e50b0010 	str	r0, [fp, #-16]
80028e54:	e51b3010 	ldr	r3, [fp, #-16]
80028e58:	e3530000 	cmp	r3, #0
80028e5c:	1a000001 	bne	80028e68 <freevm+0x24>
80028e60:	e59f0098 	ldr	r0, [pc, #152]	@ 80028f00 <freevm+0xbc>
80028e64:	ebffe314 	bl	80021abc <panic>
80028e68:	e3a02000 	mov	r2, #0
80028e6c:	e3a01201 	mov	r1, #268435456	@ 0x10000000
80028e70:	e51b0010 	ldr	r0, [fp, #-16]
80028e74:	ebffffac 	bl	80028d2c <deallocuvm>
80028e78:	e3a03000 	mov	r3, #0
80028e7c:	e50b3008 	str	r3, [fp, #-8]
80028e80:	ea000016 	b	80028ee0 <freevm+0x9c>
80028e84:	e51b3008 	ldr	r3, [fp, #-8]
80028e88:	e1a03103 	lsl	r3, r3, #2
80028e8c:	e51b2010 	ldr	r2, [fp, #-16]
80028e90:	e0823003 	add	r3, r2, r3
80028e94:	e5933000 	ldr	r3, [r3]
80028e98:	e2033003 	and	r3, r3, #3
80028e9c:	e3530000 	cmp	r3, #0
80028ea0:	0a00000b 	beq	80028ed4 <freevm+0x90>
80028ea4:	e51b3008 	ldr	r3, [fp, #-8]
80028ea8:	e1a03103 	lsl	r3, r3, #2
80028eac:	e51b2010 	ldr	r2, [fp, #-16]
80028eb0:	e0823003 	add	r3, r2, r3
80028eb4:	e5933000 	ldr	r3, [r3]
80028eb8:	e3c33fff 	bic	r3, r3, #1020	@ 0x3fc
80028ebc:	e3c33003 	bic	r3, r3, #3
80028ec0:	e1a00003 	mov	r0, r3
80028ec4:	ebfffddb 	bl	80028638 <p2v>
80028ec8:	e50b000c 	str	r0, [fp, #-12]
80028ecc:	e51b000c 	ldr	r0, [fp, #-12]
80028ed0:	ebfffe00 	bl	800286d8 <kpt_free>
80028ed4:	e51b3008 	ldr	r3, [fp, #-8]
80028ed8:	e2833001 	add	r3, r3, #1
80028edc:	e50b3008 	str	r3, [fp, #-8]
80028ee0:	e51b3008 	ldr	r3, [fp, #-8]
80028ee4:	e35300ff 	cmp	r3, #255	@ 0xff
80028ee8:	9affffe5 	bls	80028e84 <freevm+0x40>
80028eec:	e51b0010 	ldr	r0, [fp, #-16]
80028ef0:	ebfffdf8 	bl	800286d8 <kpt_free>
80028ef4:	e1a00000 	nop			@ (mov r0, r0)
80028ef8:	e24bd004 	sub	sp, fp, #4
80028efc:	e8bd8800 	pop	{fp, pc}
80028f00:	8002a304 	.word	0x8002a304

80028f04 <clearpteu>:
80028f04:	e92d4800 	push	{fp, lr}
80028f08:	e28db004 	add	fp, sp, #4
80028f0c:	e24dd010 	sub	sp, sp, #16
80028f10:	e50b0010 	str	r0, [fp, #-16]
80028f14:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80028f18:	e3a02000 	mov	r2, #0
80028f1c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80028f20:	e51b0010 	ldr	r0, [fp, #-16]
80028f24:	ebfffe3b 	bl	80028818 <walkpgdir>
80028f28:	e50b0008 	str	r0, [fp, #-8]
80028f2c:	e51b3008 	ldr	r3, [fp, #-8]
80028f30:	e3530000 	cmp	r3, #0
80028f34:	1a000001 	bne	80028f40 <clearpteu+0x3c>
80028f38:	e59f0024 	ldr	r0, [pc, #36]	@ 80028f64 <clearpteu+0x60>
80028f3c:	ebffe2de 	bl	80021abc <panic>
80028f40:	e51b3008 	ldr	r3, [fp, #-8]
80028f44:	e5933000 	ldr	r3, [r3]
80028f48:	e3c33030 	bic	r3, r3, #48	@ 0x30
80028f4c:	e3832010 	orr	r2, r3, #16
80028f50:	e51b3008 	ldr	r3, [fp, #-8]
80028f54:	e5832000 	str	r2, [r3]
80028f58:	e1a00000 	nop			@ (mov r0, r0)
80028f5c:	e24bd004 	sub	sp, fp, #4
80028f60:	e8bd8800 	pop	{fp, pc}
80028f64:	8002a318 	.word	0x8002a318

80028f68 <copyuvm>:
80028f68:	e92d4810 	push	{r4, fp, lr}
80028f6c:	e28db008 	add	fp, sp, #8
80028f70:	e24dd02c 	sub	sp, sp, #44	@ 0x2c
80028f74:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80028f78:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
80028f7c:	ebfffdff 	bl	80028780 <kpt_alloc>
80028f80:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80028f84:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80028f88:	e3530000 	cmp	r3, #0
80028f8c:	1a000001 	bne	80028f98 <copyuvm+0x30>
80028f90:	e3a03000 	mov	r3, #0
80028f94:	ea000047 	b	800290b8 <copyuvm+0x150>
80028f98:	e3a03000 	mov	r3, #0
80028f9c:	e50b3010 	str	r3, [fp, #-16]
80028fa0:	ea000038 	b	80029088 <copyuvm+0x120>
80028fa4:	e51b3010 	ldr	r3, [fp, #-16]
80028fa8:	e3a02000 	mov	r2, #0
80028fac:	e1a01003 	mov	r1, r3
80028fb0:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80028fb4:	ebfffe17 	bl	80028818 <walkpgdir>
80028fb8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80028fbc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028fc0:	e3530000 	cmp	r3, #0
80028fc4:	1a000001 	bne	80028fd0 <copyuvm+0x68>
80028fc8:	e59f00f4 	ldr	r0, [pc, #244]	@ 800290c4 <copyuvm+0x15c>
80028fcc:	ebffe2ba 	bl	80021abc <panic>
80028fd0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028fd4:	e5933000 	ldr	r3, [r3]
80028fd8:	e2033003 	and	r3, r3, #3
80028fdc:	e3530000 	cmp	r3, #0
80028fe0:	1a000001 	bne	80028fec <copyuvm+0x84>
80028fe4:	e59f00dc 	ldr	r0, [pc, #220]	@ 800290c8 <copyuvm+0x160>
80028fe8:	ebffe2b3 	bl	80021abc <panic>
80028fec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028ff0:	e5933000 	ldr	r3, [r3]
80028ff4:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028ff8:	e3c3300f 	bic	r3, r3, #15
80028ffc:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80029000:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80029004:	e5933000 	ldr	r3, [r3]
80029008:	e1a03223 	lsr	r3, r3, #4
8002900c:	e2033003 	and	r3, r3, #3
80029010:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
80029014:	ebffe185 	bl	80021630 <alloc_page>
80029018:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
8002901c:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80029020:	e3530000 	cmp	r3, #0
80029024:	0a00001d 	beq	800290a0 <copyuvm+0x138>
80029028:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
8002902c:	ebfffd81 	bl	80028638 <p2v>
80029030:	e1a03000 	mov	r3, r0
80029034:	e3a02a01 	mov	r2, #4096	@ 0x1000
80029038:	e1a01003 	mov	r1, r3
8002903c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
80029040:	ebffdc60 	bl	800201c8 <memmove>
80029044:	e51b4010 	ldr	r4, [fp, #-16]
80029048:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
8002904c:	ebfffd6f 	bl	80028610 <v2p>
80029050:	e1a02000 	mov	r2, r0
80029054:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80029058:	e58d3000 	str	r3, [sp]
8002905c:	e1a03002 	mov	r3, r2
80029060:	e3a02a01 	mov	r2, #4096	@ 0x1000
80029064:	e1a01004 	mov	r1, r4
80029068:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
8002906c:	ebfffe1f 	bl	800288f0 <mappages>
80029070:	e1a03000 	mov	r3, r0
80029074:	e3530000 	cmp	r3, #0
80029078:	ba00000a 	blt	800290a8 <copyuvm+0x140>
8002907c:	e51b3010 	ldr	r3, [fp, #-16]
80029080:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80029084:	e50b3010 	str	r3, [fp, #-16]
80029088:	e51b2010 	ldr	r2, [fp, #-16]
8002908c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80029090:	e1520003 	cmp	r2, r3
80029094:	3affffc2 	bcc	80028fa4 <copyuvm+0x3c>
80029098:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002909c:	ea000005 	b	800290b8 <copyuvm+0x150>
800290a0:	e1a00000 	nop			@ (mov r0, r0)
800290a4:	ea000000 	b	800290ac <copyuvm+0x144>
800290a8:	e1a00000 	nop			@ (mov r0, r0)
800290ac:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800290b0:	ebffff63 	bl	80028e44 <freevm>
800290b4:	e3a03000 	mov	r3, #0
800290b8:	e1a00003 	mov	r0, r3
800290bc:	e24bd008 	sub	sp, fp, #8
800290c0:	e8bd8810 	pop	{r4, fp, pc}
800290c4:	8002a324 	.word	0x8002a324
800290c8:	8002a340 	.word	0x8002a340

800290cc <uva2ka>:
800290cc:	e92d4800 	push	{fp, lr}
800290d0:	e28db004 	add	fp, sp, #4
800290d4:	e24dd010 	sub	sp, sp, #16
800290d8:	e50b0010 	str	r0, [fp, #-16]
800290dc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800290e0:	e3a02000 	mov	r2, #0
800290e4:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
800290e8:	e51b0010 	ldr	r0, [fp, #-16]
800290ec:	ebfffdc9 	bl	80028818 <walkpgdir>
800290f0:	e50b0008 	str	r0, [fp, #-8]
800290f4:	e51b3008 	ldr	r3, [fp, #-8]
800290f8:	e5933000 	ldr	r3, [r3]
800290fc:	e2033003 	and	r3, r3, #3
80029100:	e3530000 	cmp	r3, #0
80029104:	1a000001 	bne	80029110 <uva2ka+0x44>
80029108:	e3a03000 	mov	r3, #0
8002910c:	ea00000e 	b	8002914c <uva2ka+0x80>
80029110:	e51b3008 	ldr	r3, [fp, #-8]
80029114:	e5933000 	ldr	r3, [r3]
80029118:	e2033030 	and	r3, r3, #48	@ 0x30
8002911c:	e3530030 	cmp	r3, #48	@ 0x30
80029120:	0a000001 	beq	8002912c <uva2ka+0x60>
80029124:	e3a03000 	mov	r3, #0
80029128:	ea000007 	b	8002914c <uva2ka+0x80>
8002912c:	e51b3008 	ldr	r3, [fp, #-8]
80029130:	e5933000 	ldr	r3, [r3]
80029134:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80029138:	e3c3300f 	bic	r3, r3, #15
8002913c:	e1a00003 	mov	r0, r3
80029140:	ebfffd3c 	bl	80028638 <p2v>
80029144:	e1a03000 	mov	r3, r0
80029148:	e1a00000 	nop			@ (mov r0, r0)
8002914c:	e1a00003 	mov	r0, r3
80029150:	e24bd004 	sub	sp, fp, #4
80029154:	e8bd8800 	pop	{fp, pc}

80029158 <copyout>:
80029158:	e92d4800 	push	{fp, lr}
8002915c:	e28db004 	add	fp, sp, #4
80029160:	e24dd020 	sub	sp, sp, #32
80029164:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80029168:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
8002916c:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80029170:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80029174:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80029178:	e50b3008 	str	r3, [fp, #-8]
8002917c:	ea00002c 	b	80029234 <copyout+0xdc>
80029180:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80029184:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80029188:	e3c3300f 	bic	r3, r3, #15
8002918c:	e50b3010 	str	r3, [fp, #-16]
80029190:	e51b3010 	ldr	r3, [fp, #-16]
80029194:	e1a01003 	mov	r1, r3
80029198:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
8002919c:	ebffffca 	bl	800290cc <uva2ka>
800291a0:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
800291a4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800291a8:	e3530000 	cmp	r3, #0
800291ac:	1a000001 	bne	800291b8 <copyout+0x60>
800291b0:	e3e03000 	mvn	r3, #0
800291b4:	ea000022 	b	80029244 <copyout+0xec>
800291b8:	e51b2010 	ldr	r2, [fp, #-16]
800291bc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800291c0:	e0423003 	sub	r3, r2, r3
800291c4:	e2833a01 	add	r3, r3, #4096	@ 0x1000
800291c8:	e50b300c 	str	r3, [fp, #-12]
800291cc:	e51b200c 	ldr	r2, [fp, #-12]
800291d0:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
800291d4:	e1520003 	cmp	r2, r3
800291d8:	9a000001 	bls	800291e4 <copyout+0x8c>
800291dc:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
800291e0:	e50b300c 	str	r3, [fp, #-12]
800291e4:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
800291e8:	e51b3010 	ldr	r3, [fp, #-16]
800291ec:	e0423003 	sub	r3, r2, r3
800291f0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800291f4:	e0823003 	add	r3, r2, r3
800291f8:	e51b200c 	ldr	r2, [fp, #-12]
800291fc:	e51b1008 	ldr	r1, [fp, #-8]
80029200:	e1a00003 	mov	r0, r3
80029204:	ebffdbef 	bl	800201c8 <memmove>
80029208:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
8002920c:	e51b300c 	ldr	r3, [fp, #-12]
80029210:	e0423003 	sub	r3, r2, r3
80029214:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80029218:	e51b2008 	ldr	r2, [fp, #-8]
8002921c:	e51b300c 	ldr	r3, [fp, #-12]
80029220:	e0823003 	add	r3, r2, r3
80029224:	e50b3008 	str	r3, [fp, #-8]
80029228:	e51b3010 	ldr	r3, [fp, #-16]
8002922c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80029230:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80029234:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80029238:	e3530000 	cmp	r3, #0
8002923c:	1affffcf 	bne	80029180 <copyout+0x28>
80029240:	e3a03000 	mov	r3, #0
80029244:	e1a00003 	mov	r0, r3
80029248:	e24bd004 	sub	sp, fp, #4
8002924c:	e8bd8800 	pop	{fp, pc}

80029250 <paging_init>:
80029250:	e92d4800 	push	{fp, lr}
80029254:	e28db004 	add	fp, sp, #4
80029258:	e24dd010 	sub	sp, sp, #16
8002925c:	e50b0008 	str	r0, [fp, #-8]
80029260:	e50b100c 	str	r1, [fp, #-12]
80029264:	e59f0034 	ldr	r0, [pc, #52]	@ 800292a0 <paging_init+0x50>
80029268:	e51b3008 	ldr	r3, [fp, #-8]
8002926c:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
80029270:	e1a01003 	mov	r1, r3
80029274:	e51b200c 	ldr	r2, [fp, #-12]
80029278:	e51b3008 	ldr	r3, [fp, #-8]
8002927c:	e0422003 	sub	r2, r2, r3
80029280:	e3a03003 	mov	r3, #3
80029284:	e58d3000 	str	r3, [sp]
80029288:	e51b3008 	ldr	r3, [fp, #-8]
8002928c:	ebfffd97 	bl	800288f0 <mappages>
80029290:	ebfffdd2 	bl	800289e0 <flush_tlb>
80029294:	e1a00000 	nop			@ (mov r0, r0)
80029298:	e24bd004 	sub	sp, fp, #4
8002929c:	e8bd8800 	pop	{fp, pc}
800292a0:	80014000 	.word	0x80014000

800292a4 <default_isr>:
800292a4:	e92d4800 	push	{fp, lr}
800292a8:	e28db004 	add	fp, sp, #4
800292ac:	e24dd008 	sub	sp, sp, #8
800292b0:	e50b0008 	str	r0, [fp, #-8]
800292b4:	e50b100c 	str	r1, [fp, #-12]
800292b8:	e51b100c 	ldr	r1, [fp, #-12]
800292bc:	e59f000c 	ldr	r0, [pc, #12]	@ 800292d0 <default_isr+0x2c>
800292c0:	ebffe173 	bl	80021894 <cprintf>
800292c4:	e1a00000 	nop			@ (mov r0, r0)
800292c8:	e24bd004 	sub	sp, fp, #4
800292cc:	e8bd8800 	pop	{fp, pc}
800292d0:	8002a35c 	.word	0x8002a35c

800292d4 <pic_init>:
800292d4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800292d8:	e28db000 	add	fp, sp, #0
800292dc:	e24dd014 	sub	sp, sp, #20
800292e0:	e50b0010 	str	r0, [fp, #-16]
800292e4:	e59f2060 	ldr	r2, [pc, #96]	@ 8002934c <pic_init+0x78>
800292e8:	e51b3010 	ldr	r3, [fp, #-16]
800292ec:	e5823000 	str	r3, [r2]
800292f0:	e59f3054 	ldr	r3, [pc, #84]	@ 8002934c <pic_init+0x78>
800292f4:	e5933000 	ldr	r3, [r3]
800292f8:	e2833014 	add	r3, r3, #20
800292fc:	e3e02000 	mvn	r2, #0
80029300:	e5832000 	str	r2, [r3]
80029304:	e3a03000 	mov	r3, #0
80029308:	e50b3008 	str	r3, [fp, #-8]
8002930c:	ea000006 	b	8002932c <pic_init+0x58>
80029310:	e59f2038 	ldr	r2, [pc, #56]	@ 80029350 <pic_init+0x7c>
80029314:	e51b3008 	ldr	r3, [fp, #-8]
80029318:	e59f1034 	ldr	r1, [pc, #52]	@ 80029354 <pic_init+0x80>
8002931c:	e7821103 	str	r1, [r2, r3, lsl #2]
80029320:	e51b3008 	ldr	r3, [fp, #-8]
80029324:	e2833001 	add	r3, r3, #1
80029328:	e50b3008 	str	r3, [fp, #-8]
8002932c:	e51b3008 	ldr	r3, [fp, #-8]
80029330:	e353001f 	cmp	r3, #31
80029334:	dafffff5 	ble	80029310 <pic_init+0x3c>
80029338:	e1a00000 	nop			@ (mov r0, r0)
8002933c:	e1a00000 	nop			@ (mov r0, r0)
80029340:	e28bd000 	add	sp, fp, #0
80029344:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80029348:	e12fff1e 	bx	lr
8002934c:	800b1398 	.word	0x800b1398
80029350:	800b139c 	.word	0x800b139c
80029354:	800292a4 	.word	0x800292a4

80029358 <pic_enable>:
80029358:	e92d4800 	push	{fp, lr}
8002935c:	e28db004 	add	fp, sp, #4
80029360:	e24dd008 	sub	sp, sp, #8
80029364:	e50b0008 	str	r0, [fp, #-8]
80029368:	e50b100c 	str	r1, [fp, #-12]
8002936c:	e51b3008 	ldr	r3, [fp, #-8]
80029370:	e3530000 	cmp	r3, #0
80029374:	ba000002 	blt	80029384 <pic_enable+0x2c>
80029378:	e51b3008 	ldr	r3, [fp, #-8]
8002937c:	e353001f 	cmp	r3, #31
80029380:	da000001 	ble	8002938c <pic_enable+0x34>
80029384:	e59f0038 	ldr	r0, [pc, #56]	@ 800293c4 <pic_enable+0x6c>
80029388:	ebffe1cb 	bl	80021abc <panic>
8002938c:	e59f1034 	ldr	r1, [pc, #52]	@ 800293c8 <pic_enable+0x70>
80029390:	e51b3008 	ldr	r3, [fp, #-8]
80029394:	e51b200c 	ldr	r2, [fp, #-12]
80029398:	e7812103 	str	r2, [r1, r3, lsl #2]
8002939c:	e3a02001 	mov	r2, #1
800293a0:	e51b3008 	ldr	r3, [fp, #-8]
800293a4:	e1a02312 	lsl	r2, r2, r3
800293a8:	e59f301c 	ldr	r3, [pc, #28]	@ 800293cc <pic_enable+0x74>
800293ac:	e5933000 	ldr	r3, [r3]
800293b0:	e2833010 	add	r3, r3, #16
800293b4:	e5832000 	str	r2, [r3]
800293b8:	e1a00000 	nop			@ (mov r0, r0)
800293bc:	e24bd004 	sub	sp, fp, #4
800293c0:	e8bd8800 	pop	{fp, pc}
800293c4:	8002a378 	.word	0x8002a378
800293c8:	800b139c 	.word	0x800b139c
800293cc:	800b1398 	.word	0x800b1398

800293d0 <pic_disable>:
800293d0:	e92d4800 	push	{fp, lr}
800293d4:	e28db004 	add	fp, sp, #4
800293d8:	e24dd008 	sub	sp, sp, #8
800293dc:	e50b0008 	str	r0, [fp, #-8]
800293e0:	e51b3008 	ldr	r3, [fp, #-8]
800293e4:	e3530000 	cmp	r3, #0
800293e8:	ba000002 	blt	800293f8 <pic_disable+0x28>
800293ec:	e51b3008 	ldr	r3, [fp, #-8]
800293f0:	e353001f 	cmp	r3, #31
800293f4:	da000001 	ble	80029400 <pic_disable+0x30>
800293f8:	e59f0038 	ldr	r0, [pc, #56]	@ 80029438 <pic_disable+0x68>
800293fc:	ebffe1ae 	bl	80021abc <panic>
80029400:	e3a02001 	mov	r2, #1
80029404:	e51b3008 	ldr	r3, [fp, #-8]
80029408:	e1a02312 	lsl	r2, r2, r3
8002940c:	e59f3028 	ldr	r3, [pc, #40]	@ 8002943c <pic_disable+0x6c>
80029410:	e5933000 	ldr	r3, [r3]
80029414:	e2833014 	add	r3, r3, #20
80029418:	e5832000 	str	r2, [r3]
8002941c:	e59f201c 	ldr	r2, [pc, #28]	@ 80029440 <pic_disable+0x70>
80029420:	e51b3008 	ldr	r3, [fp, #-8]
80029424:	e59f1018 	ldr	r1, [pc, #24]	@ 80029444 <pic_disable+0x74>
80029428:	e7821103 	str	r1, [r2, r3, lsl #2]
8002942c:	e1a00000 	nop			@ (mov r0, r0)
80029430:	e24bd004 	sub	sp, fp, #4
80029434:	e8bd8800 	pop	{fp, pc}
80029438:	8002a378 	.word	0x8002a378
8002943c:	800b1398 	.word	0x800b1398
80029440:	800b139c 	.word	0x800b139c
80029444:	800292a4 	.word	0x800292a4

80029448 <pic_dispatch>:
80029448:	e92d4800 	push	{fp, lr}
8002944c:	e28db004 	add	fp, sp, #4
80029450:	e24dd010 	sub	sp, sp, #16
80029454:	e50b0010 	str	r0, [fp, #-16]
80029458:	e59f3080 	ldr	r3, [pc, #128]	@ 800294e0 <pic_dispatch+0x98>
8002945c:	e5933000 	ldr	r3, [r3]
80029460:	e5933000 	ldr	r3, [r3]
80029464:	e50b300c 	str	r3, [fp, #-12]
80029468:	e3a03000 	mov	r3, #0
8002946c:	e50b3008 	str	r3, [fp, #-8]
80029470:	ea000010 	b	800294b8 <pic_dispatch+0x70>
80029474:	e3a02001 	mov	r2, #1
80029478:	e51b3008 	ldr	r3, [fp, #-8]
8002947c:	e1a03312 	lsl	r3, r2, r3
80029480:	e1a02003 	mov	r2, r3
80029484:	e51b300c 	ldr	r3, [fp, #-12]
80029488:	e0033002 	and	r3, r3, r2
8002948c:	e3530000 	cmp	r3, #0
80029490:	0a000005 	beq	800294ac <pic_dispatch+0x64>
80029494:	e59f2048 	ldr	r2, [pc, #72]	@ 800294e4 <pic_dispatch+0x9c>
80029498:	e51b3008 	ldr	r3, [fp, #-8]
8002949c:	e7923103 	ldr	r3, [r2, r3, lsl #2]
800294a0:	e51b1008 	ldr	r1, [fp, #-8]
800294a4:	e51b0010 	ldr	r0, [fp, #-16]
800294a8:	e12fff33 	blx	r3
800294ac:	e51b3008 	ldr	r3, [fp, #-8]
800294b0:	e2833001 	add	r3, r3, #1
800294b4:	e50b3008 	str	r3, [fp, #-8]
800294b8:	e51b3008 	ldr	r3, [fp, #-8]
800294bc:	e353001f 	cmp	r3, #31
800294c0:	daffffeb 	ble	80029474 <pic_dispatch+0x2c>
800294c4:	e59f3014 	ldr	r3, [pc, #20]	@ 800294e0 <pic_dispatch+0x98>
800294c8:	e5933000 	ldr	r3, [r3]
800294cc:	e5933000 	ldr	r3, [r3]
800294d0:	e50b300c 	str	r3, [fp, #-12]
800294d4:	e1a00000 	nop			@ (mov r0, r0)
800294d8:	e24bd004 	sub	sp, fp, #4
800294dc:	e8bd8800 	pop	{fp, pc}
800294e0:	800b1398 	.word	0x800b1398
800294e4:	800b139c 	.word	0x800b139c

800294e8 <ack_timer>:
800294e8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800294ec:	e28db000 	add	fp, sp, #0
800294f0:	e24dd00c 	sub	sp, sp, #12
800294f4:	e59f3020 	ldr	r3, [pc, #32]	@ 8002951c <ack_timer+0x34>
800294f8:	e50b3008 	str	r3, [fp, #-8]
800294fc:	e51b3008 	ldr	r3, [fp, #-8]
80029500:	e283300c 	add	r3, r3, #12
80029504:	e3a02001 	mov	r2, #1
80029508:	e5832000 	str	r2, [r3]
8002950c:	e1a00000 	nop			@ (mov r0, r0)
80029510:	e28bd000 	add	sp, fp, #0
80029514:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80029518:	e12fff1e 	bx	lr
8002951c:	901e2000 	.word	0x901e2000

80029520 <timer_init>:
80029520:	e92d4800 	push	{fp, lr}
80029524:	e28db004 	add	fp, sp, #4
80029528:	e24dd010 	sub	sp, sp, #16
8002952c:	e50b0010 	str	r0, [fp, #-16]
80029530:	e59f3050 	ldr	r3, [pc, #80]	@ 80029588 <timer_init+0x68>
80029534:	e50b3008 	str	r3, [fp, #-8]
80029538:	e59f104c 	ldr	r1, [pc, #76]	@ 8002958c <timer_init+0x6c>
8002953c:	e59f004c 	ldr	r0, [pc, #76]	@ 80029590 <timer_init+0x70>
80029540:	ebfff45f 	bl	800266c4 <initlock>
80029544:	e51b1010 	ldr	r1, [fp, #-16]
80029548:	e59f0044 	ldr	r0, [pc, #68]	@ 80029594 <timer_init+0x74>
8002954c:	eb000110 	bl	80029994 <__divsi3>
80029550:	e1a03000 	mov	r3, r0
80029554:	e1a02003 	mov	r2, r3
80029558:	e51b3008 	ldr	r3, [fp, #-8]
8002955c:	e5832000 	str	r2, [r3]
80029560:	e51b3008 	ldr	r3, [fp, #-8]
80029564:	e2833008 	add	r3, r3, #8
80029568:	e3a020e2 	mov	r2, #226	@ 0xe2
8002956c:	e5832000 	str	r2, [r3]
80029570:	e59f1020 	ldr	r1, [pc, #32]	@ 80029598 <timer_init+0x78>
80029574:	e3a00004 	mov	r0, #4
80029578:	ebffff76 	bl	80029358 <pic_enable>
8002957c:	e1a00000 	nop			@ (mov r0, r0)
80029580:	e24bd004 	sub	sp, fp, #4
80029584:	e8bd8800 	pop	{fp, pc}
80029588:	901e2000 	.word	0x901e2000
8002958c:	8002a394 	.word	0x8002a394
80029590:	800b141c 	.word	0x800b141c
80029594:	000f4240 	.word	0x000f4240
80029598:	8002959c 	.word	0x8002959c

8002959c <isr_timer>:
8002959c:	e92d4800 	push	{fp, lr}
800295a0:	e28db004 	add	fp, sp, #4
800295a4:	e24dd008 	sub	sp, sp, #8
800295a8:	e50b0008 	str	r0, [fp, #-8]
800295ac:	e50b100c 	str	r1, [fp, #-12]
800295b0:	ebffffcc 	bl	800294e8 <ack_timer>
800295b4:	e59f0030 	ldr	r0, [pc, #48]	@ 800295ec <isr_timer+0x50>
800295b8:	ebfff453 	bl	8002670c <acquire>
800295bc:	e59f302c 	ldr	r3, [pc, #44]	@ 800295f0 <isr_timer+0x54>
800295c0:	e5933000 	ldr	r3, [r3]
800295c4:	e2833001 	add	r3, r3, #1
800295c8:	e59f2020 	ldr	r2, [pc, #32]	@ 800295f0 <isr_timer+0x54>
800295cc:	e5823000 	str	r3, [r2]
800295d0:	e59f0018 	ldr	r0, [pc, #24]	@ 800295f0 <isr_timer+0x54>
800295d4:	ebfff2b9 	bl	800260c0 <wakeup>
800295d8:	e59f000c 	ldr	r0, [pc, #12]	@ 800295ec <isr_timer+0x50>
800295dc:	ebfff455 	bl	80026738 <release>
800295e0:	e1a00000 	nop			@ (mov r0, r0)
800295e4:	e24bd004 	sub	sp, fp, #4
800295e8:	e8bd8800 	pop	{fp, pc}
800295ec:	800b141c 	.word	0x800b141c
800295f0:	800b1450 	.word	0x800b1450

800295f4 <micro_delay>:
800295f4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800295f8:	e28db000 	add	fp, sp, #0
800295fc:	e24dd014 	sub	sp, sp, #20
80029600:	e50b0010 	str	r0, [fp, #-16]
80029604:	e59f3070 	ldr	r3, [pc, #112]	@ 8002967c <micro_delay+0x88>
80029608:	e50b300c 	str	r3, [fp, #-12]
8002960c:	e51b3010 	ldr	r3, [fp, #-16]
80029610:	e50b3008 	str	r3, [fp, #-8]
80029614:	e51b3008 	ldr	r3, [fp, #-8]
80029618:	e3530000 	cmp	r3, #0
8002961c:	1a000001 	bne	80029628 <micro_delay+0x34>
80029620:	e3a03001 	mov	r3, #1
80029624:	e50b3008 	str	r3, [fp, #-8]
80029628:	e51b300c 	ldr	r3, [fp, #-12]
8002962c:	e2833008 	add	r3, r3, #8
80029630:	e3a02082 	mov	r2, #130	@ 0x82
80029634:	e5832000 	str	r2, [r3]
80029638:	e51b300c 	ldr	r3, [fp, #-12]
8002963c:	e51b2008 	ldr	r2, [fp, #-8]
80029640:	e5832000 	str	r2, [r3]
80029644:	e1a00000 	nop			@ (mov r0, r0)
80029648:	e51b300c 	ldr	r3, [fp, #-12]
8002964c:	e2833004 	add	r3, r3, #4
80029650:	e5933000 	ldr	r3, [r3]
80029654:	e3530000 	cmp	r3, #0
80029658:	cafffffa 	bgt	80029648 <micro_delay+0x54>
8002965c:	e51b300c 	ldr	r3, [fp, #-12]
80029660:	e2833008 	add	r3, r3, #8
80029664:	e3a02000 	mov	r2, #0
80029668:	e5832000 	str	r2, [r3]
8002966c:	e1a00000 	nop			@ (mov r0, r0)
80029670:	e28bd000 	add	sp, fp, #0
80029674:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80029678:	e12fff1e 	bx	lr
8002967c:	901e2020 	.word	0x901e2020

80029680 <uart_init>:
80029680:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80029684:	e28db000 	add	fp, sp, #0
80029688:	e24dd014 	sub	sp, sp, #20
8002968c:	e50b0010 	str	r0, [fp, #-16]
80029690:	e59f20a4 	ldr	r2, [pc, #164]	@ 8002973c <uart_init+0xbc>
80029694:	e51b3010 	ldr	r3, [fp, #-16]
80029698:	e5823000 	str	r3, [r2]
8002969c:	e59f3098 	ldr	r3, [pc, #152]	@ 8002973c <uart_init+0xbc>
800296a0:	e5933000 	ldr	r3, [r3]
800296a4:	e2833024 	add	r3, r3, #36	@ 0x24
800296a8:	e3a0204e 	mov	r2, #78	@ 0x4e
800296ac:	e5832000 	str	r2, [r3]
800296b0:	e3a03c96 	mov	r3, #38400	@ 0x9600
800296b4:	e50b3008 	str	r3, [fp, #-8]
800296b8:	e51b3008 	ldr	r3, [fp, #-8]
800296bc:	e2833e96 	add	r3, r3, #2400	@ 0x960
800296c0:	e1a02103 	lsl	r2, r3, #2
800296c4:	e59f3070 	ldr	r3, [pc, #112]	@ 8002973c <uart_init+0xbc>
800296c8:	e5933000 	ldr	r3, [r3]
800296cc:	e2833028 	add	r3, r3, #40	@ 0x28
800296d0:	e59f1068 	ldr	r1, [pc, #104]	@ 80029740 <uart_init+0xc0>
800296d4:	e0821291 	umull	r1, r2, r1, r2
800296d8:	e1a025a2 	lsr	r2, r2, #11
800296dc:	e5832000 	str	r2, [r3]
800296e0:	e59f3054 	ldr	r3, [pc, #84]	@ 8002973c <uart_init+0xbc>
800296e4:	e5933000 	ldr	r3, [r3]
800296e8:	e2833030 	add	r3, r3, #48	@ 0x30
800296ec:	e5933000 	ldr	r3, [r3]
800296f0:	e59f2044 	ldr	r2, [pc, #68]	@ 8002973c <uart_init+0xbc>
800296f4:	e5922000 	ldr	r2, [r2]
800296f8:	e2822030 	add	r2, r2, #48	@ 0x30
800296fc:	e3833c03 	orr	r3, r3, #768	@ 0x300
80029700:	e3833001 	orr	r3, r3, #1
80029704:	e5823000 	str	r3, [r2]
80029708:	e59f302c 	ldr	r3, [pc, #44]	@ 8002973c <uart_init+0xbc>
8002970c:	e5933000 	ldr	r3, [r3]
80029710:	e283302c 	add	r3, r3, #44	@ 0x2c
80029714:	e5932000 	ldr	r2, [r3]
80029718:	e59f301c 	ldr	r3, [pc, #28]	@ 8002973c <uart_init+0xbc>
8002971c:	e5933000 	ldr	r3, [r3]
80029720:	e283302c 	add	r3, r3, #44	@ 0x2c
80029724:	e3822010 	orr	r2, r2, #16
80029728:	e5832000 	str	r2, [r3]
8002972c:	e1a00000 	nop			@ (mov r0, r0)
80029730:	e28bd000 	add	sp, fp, #0
80029734:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80029738:	e12fff1e 	bx	lr
8002973c:	800b1454 	.word	0x800b1454
80029740:	1b4e81b5 	.word	0x1b4e81b5

80029744 <uart_enable_rx>:
80029744:	e92d4800 	push	{fp, lr}
80029748:	e28db004 	add	fp, sp, #4
8002974c:	e59f3020 	ldr	r3, [pc, #32]	@ 80029774 <uart_enable_rx+0x30>
80029750:	e5933000 	ldr	r3, [r3]
80029754:	e2833038 	add	r3, r3, #56	@ 0x38
80029758:	e3a02010 	mov	r2, #16
8002975c:	e5832000 	str	r2, [r3]
80029760:	e59f1010 	ldr	r1, [pc, #16]	@ 80029778 <uart_enable_rx+0x34>
80029764:	e3a0000c 	mov	r0, #12
80029768:	ebfffefa 	bl	80029358 <pic_enable>
8002976c:	e1a00000 	nop			@ (mov r0, r0)
80029770:	e8bd8800 	pop	{fp, pc}
80029774:	800b1454 	.word	0x800b1454
80029778:	80029820 	.word	0x80029820

8002977c <uartputc>:
8002977c:	e92d4800 	push	{fp, lr}
80029780:	e28db004 	add	fp, sp, #4
80029784:	e24dd008 	sub	sp, sp, #8
80029788:	e50b0008 	str	r0, [fp, #-8]
8002978c:	ea000001 	b	80029798 <uartputc+0x1c>
80029790:	e3a0000a 	mov	r0, #10
80029794:	ebffff96 	bl	800295f4 <micro_delay>
80029798:	e59f3030 	ldr	r3, [pc, #48]	@ 800297d0 <uartputc+0x54>
8002979c:	e5933000 	ldr	r3, [r3]
800297a0:	e2833018 	add	r3, r3, #24
800297a4:	e5933000 	ldr	r3, [r3]
800297a8:	e2033020 	and	r3, r3, #32
800297ac:	e3530000 	cmp	r3, #0
800297b0:	1afffff6 	bne	80029790 <uartputc+0x14>
800297b4:	e59f3014 	ldr	r3, [pc, #20]	@ 800297d0 <uartputc+0x54>
800297b8:	e5933000 	ldr	r3, [r3]
800297bc:	e51b2008 	ldr	r2, [fp, #-8]
800297c0:	e5832000 	str	r2, [r3]
800297c4:	e1a00000 	nop			@ (mov r0, r0)
800297c8:	e24bd004 	sub	sp, fp, #4
800297cc:	e8bd8800 	pop	{fp, pc}
800297d0:	800b1454 	.word	0x800b1454

800297d4 <uartgetc>:
800297d4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800297d8:	e28db000 	add	fp, sp, #0
800297dc:	e59f3038 	ldr	r3, [pc, #56]	@ 8002981c <uartgetc+0x48>
800297e0:	e5933000 	ldr	r3, [r3]
800297e4:	e2833018 	add	r3, r3, #24
800297e8:	e5933000 	ldr	r3, [r3]
800297ec:	e2033010 	and	r3, r3, #16
800297f0:	e3530000 	cmp	r3, #0
800297f4:	0a000001 	beq	80029800 <uartgetc+0x2c>
800297f8:	e3e03000 	mvn	r3, #0
800297fc:	ea000002 	b	8002980c <uartgetc+0x38>
80029800:	e59f3014 	ldr	r3, [pc, #20]	@ 8002981c <uartgetc+0x48>
80029804:	e5933000 	ldr	r3, [r3]
80029808:	e5933000 	ldr	r3, [r3]
8002980c:	e1a00003 	mov	r0, r3
80029810:	e28bd000 	add	sp, fp, #0
80029814:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80029818:	e12fff1e 	bx	lr
8002981c:	800b1454 	.word	0x800b1454

80029820 <isr_uart>:
80029820:	e92d4800 	push	{fp, lr}
80029824:	e28db004 	add	fp, sp, #4
80029828:	e24dd008 	sub	sp, sp, #8
8002982c:	e50b0008 	str	r0, [fp, #-8]
80029830:	e50b100c 	str	r1, [fp, #-12]
80029834:	e59f303c 	ldr	r3, [pc, #60]	@ 80029878 <isr_uart+0x58>
80029838:	e5933000 	ldr	r3, [r3]
8002983c:	e2833040 	add	r3, r3, #64	@ 0x40
80029840:	e5933000 	ldr	r3, [r3]
80029844:	e2033010 	and	r3, r3, #16
80029848:	e3530000 	cmp	r3, #0
8002984c:	0a000001 	beq	80029858 <isr_uart+0x38>
80029850:	e59f0024 	ldr	r0, [pc, #36]	@ 8002987c <isr_uart+0x5c>
80029854:	ebffe1e4 	bl	80021fec <consoleintr>
80029858:	e59f3018 	ldr	r3, [pc, #24]	@ 80029878 <isr_uart+0x58>
8002985c:	e5933000 	ldr	r3, [r3]
80029860:	e2833044 	add	r3, r3, #68	@ 0x44
80029864:	e3a02030 	mov	r2, #48	@ 0x30
80029868:	e5832000 	str	r2, [r3]
8002986c:	e1a00000 	nop			@ (mov r0, r0)
80029870:	e24bd004 	sub	sp, fp, #4
80029874:	e8bd8800 	pop	{fp, pc}
80029878:	800b1454 	.word	0x800b1454
8002987c:	800297d4 	.word	0x800297d4

80029880 <__udivsi3>:
80029880:	e2512001 	subs	r2, r1, #1
80029884:	012fff1e 	bxeq	lr
80029888:	3a000036 	bcc	80029968 <__udivsi3+0xe8>
8002988c:	e1500001 	cmp	r0, r1
80029890:	9a000022 	bls	80029920 <__udivsi3+0xa0>
80029894:	e1110002 	tst	r1, r2
80029898:	0a000023 	beq	8002992c <__udivsi3+0xac>
8002989c:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
800298a0:	01a01181 	lsleq	r1, r1, #3
800298a4:	03a03008 	moveq	r3, #8
800298a8:	13a03001 	movne	r3, #1
800298ac:	e3510201 	cmp	r1, #268435456	@ 0x10000000
800298b0:	31510000 	cmpcc	r1, r0
800298b4:	31a01201 	lslcc	r1, r1, #4
800298b8:	31a03203 	lslcc	r3, r3, #4
800298bc:	3afffffa 	bcc	800298ac <__udivsi3+0x2c>
800298c0:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
800298c4:	31510000 	cmpcc	r1, r0
800298c8:	31a01081 	lslcc	r1, r1, #1
800298cc:	31a03083 	lslcc	r3, r3, #1
800298d0:	3afffffa 	bcc	800298c0 <__udivsi3+0x40>
800298d4:	e3a02000 	mov	r2, #0
800298d8:	e1500001 	cmp	r0, r1
800298dc:	20400001 	subcs	r0, r0, r1
800298e0:	21822003 	orrcs	r2, r2, r3
800298e4:	e15000a1 	cmp	r0, r1, lsr #1
800298e8:	204000a1 	subcs	r0, r0, r1, lsr #1
800298ec:	218220a3 	orrcs	r2, r2, r3, lsr #1
800298f0:	e1500121 	cmp	r0, r1, lsr #2
800298f4:	20400121 	subcs	r0, r0, r1, lsr #2
800298f8:	21822123 	orrcs	r2, r2, r3, lsr #2
800298fc:	e15001a1 	cmp	r0, r1, lsr #3
80029900:	204001a1 	subcs	r0, r0, r1, lsr #3
80029904:	218221a3 	orrcs	r2, r2, r3, lsr #3
80029908:	e3500000 	cmp	r0, #0
8002990c:	11b03223 	lsrsne	r3, r3, #4
80029910:	11a01221 	lsrne	r1, r1, #4
80029914:	1affffef 	bne	800298d8 <__udivsi3+0x58>
80029918:	e1a00002 	mov	r0, r2
8002991c:	e12fff1e 	bx	lr
80029920:	03a00001 	moveq	r0, #1
80029924:	13a00000 	movne	r0, #0
80029928:	e12fff1e 	bx	lr
8002992c:	e3510801 	cmp	r1, #65536	@ 0x10000
80029930:	21a01821 	lsrcs	r1, r1, #16
80029934:	23a02010 	movcs	r2, #16
80029938:	33a02000 	movcc	r2, #0
8002993c:	e3510c01 	cmp	r1, #256	@ 0x100
80029940:	21a01421 	lsrcs	r1, r1, #8
80029944:	22822008 	addcs	r2, r2, #8
80029948:	e3510010 	cmp	r1, #16
8002994c:	21a01221 	lsrcs	r1, r1, #4
80029950:	22822004 	addcs	r2, r2, #4
80029954:	e3510004 	cmp	r1, #4
80029958:	82822003 	addhi	r2, r2, #3
8002995c:	908220a1 	addls	r2, r2, r1, lsr #1
80029960:	e1a00230 	lsr	r0, r0, r2
80029964:	e12fff1e 	bx	lr
80029968:	e3500000 	cmp	r0, #0
8002996c:	13e00000 	mvnne	r0, #0
80029970:	ea000059 	b	80029adc <__aeabi_idiv0>

80029974 <__aeabi_uidivmod>:
80029974:	e3510000 	cmp	r1, #0
80029978:	0afffffa 	beq	80029968 <__udivsi3+0xe8>
8002997c:	e92d4003 	push	{r0, r1, lr}
80029980:	ebffffbe 	bl	80029880 <__udivsi3>
80029984:	e8bd4006 	pop	{r1, r2, lr}
80029988:	e0030092 	mul	r3, r2, r0
8002998c:	e0411003 	sub	r1, r1, r3
80029990:	e12fff1e 	bx	lr

80029994 <__divsi3>:
80029994:	e3510000 	cmp	r1, #0
80029998:	0a000043 	beq	80029aac <.divsi3_skip_div0_test+0x110>

8002999c <.divsi3_skip_div0_test>:
8002999c:	e020c001 	eor	ip, r0, r1
800299a0:	42611000 	rsbmi	r1, r1, #0
800299a4:	e2512001 	subs	r2, r1, #1
800299a8:	0a000027 	beq	80029a4c <.divsi3_skip_div0_test+0xb0>
800299ac:	e1b03000 	movs	r3, r0
800299b0:	42603000 	rsbmi	r3, r0, #0
800299b4:	e1530001 	cmp	r3, r1
800299b8:	9a000026 	bls	80029a58 <.divsi3_skip_div0_test+0xbc>
800299bc:	e1110002 	tst	r1, r2
800299c0:	0a000028 	beq	80029a68 <.divsi3_skip_div0_test+0xcc>
800299c4:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
800299c8:	01a01181 	lsleq	r1, r1, #3
800299cc:	03a02008 	moveq	r2, #8
800299d0:	13a02001 	movne	r2, #1
800299d4:	e3510201 	cmp	r1, #268435456	@ 0x10000000
800299d8:	31510003 	cmpcc	r1, r3
800299dc:	31a01201 	lslcc	r1, r1, #4
800299e0:	31a02202 	lslcc	r2, r2, #4
800299e4:	3afffffa 	bcc	800299d4 <.divsi3_skip_div0_test+0x38>
800299e8:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
800299ec:	31510003 	cmpcc	r1, r3
800299f0:	31a01081 	lslcc	r1, r1, #1
800299f4:	31a02082 	lslcc	r2, r2, #1
800299f8:	3afffffa 	bcc	800299e8 <.divsi3_skip_div0_test+0x4c>
800299fc:	e3a00000 	mov	r0, #0
80029a00:	e1530001 	cmp	r3, r1
80029a04:	20433001 	subcs	r3, r3, r1
80029a08:	21800002 	orrcs	r0, r0, r2
80029a0c:	e15300a1 	cmp	r3, r1, lsr #1
80029a10:	204330a1 	subcs	r3, r3, r1, lsr #1
80029a14:	218000a2 	orrcs	r0, r0, r2, lsr #1
80029a18:	e1530121 	cmp	r3, r1, lsr #2
80029a1c:	20433121 	subcs	r3, r3, r1, lsr #2
80029a20:	21800122 	orrcs	r0, r0, r2, lsr #2
80029a24:	e15301a1 	cmp	r3, r1, lsr #3
80029a28:	204331a1 	subcs	r3, r3, r1, lsr #3
80029a2c:	218001a2 	orrcs	r0, r0, r2, lsr #3
80029a30:	e3530000 	cmp	r3, #0
80029a34:	11b02222 	lsrsne	r2, r2, #4
80029a38:	11a01221 	lsrne	r1, r1, #4
80029a3c:	1affffef 	bne	80029a00 <.divsi3_skip_div0_test+0x64>
80029a40:	e35c0000 	cmp	ip, #0
80029a44:	42600000 	rsbmi	r0, r0, #0
80029a48:	e12fff1e 	bx	lr
80029a4c:	e13c0000 	teq	ip, r0
80029a50:	42600000 	rsbmi	r0, r0, #0
80029a54:	e12fff1e 	bx	lr
80029a58:	33a00000 	movcc	r0, #0
80029a5c:	01a00fcc 	asreq	r0, ip, #31
80029a60:	03800001 	orreq	r0, r0, #1
80029a64:	e12fff1e 	bx	lr
80029a68:	e3510801 	cmp	r1, #65536	@ 0x10000
80029a6c:	21a01821 	lsrcs	r1, r1, #16
80029a70:	23a02010 	movcs	r2, #16
80029a74:	33a02000 	movcc	r2, #0
80029a78:	e3510c01 	cmp	r1, #256	@ 0x100
80029a7c:	21a01421 	lsrcs	r1, r1, #8
80029a80:	22822008 	addcs	r2, r2, #8
80029a84:	e3510010 	cmp	r1, #16
80029a88:	21a01221 	lsrcs	r1, r1, #4
80029a8c:	22822004 	addcs	r2, r2, #4
80029a90:	e3510004 	cmp	r1, #4
80029a94:	82822003 	addhi	r2, r2, #3
80029a98:	908220a1 	addls	r2, r2, r1, lsr #1
80029a9c:	e35c0000 	cmp	ip, #0
80029aa0:	e1a00233 	lsr	r0, r3, r2
80029aa4:	42600000 	rsbmi	r0, r0, #0
80029aa8:	e12fff1e 	bx	lr
80029aac:	e3500000 	cmp	r0, #0
80029ab0:	c3e00102 	mvngt	r0, #-2147483648	@ 0x80000000
80029ab4:	b3a00102 	movlt	r0, #-2147483648	@ 0x80000000
80029ab8:	ea000007 	b	80029adc <__aeabi_idiv0>

80029abc <__aeabi_idivmod>:
80029abc:	e3510000 	cmp	r1, #0
80029ac0:	0afffff9 	beq	80029aac <.divsi3_skip_div0_test+0x110>
80029ac4:	e92d4003 	push	{r0, r1, lr}
80029ac8:	ebffffb3 	bl	8002999c <.divsi3_skip_div0_test>
80029acc:	e8bd4006 	pop	{r1, r2, lr}
80029ad0:	e0030092 	mul	r3, r2, r0
80029ad4:	e0411003 	sub	r1, r1, r3
80029ad8:	e12fff1e 	bx	lr

80029adc <__aeabi_idiv0>:
80029adc:	e12fff1e 	bx	lr
