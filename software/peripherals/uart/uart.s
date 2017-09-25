	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"uart.c"
	.text
	.align	2
	.global	uart_init
	.syntax unified
	.arm
	.fpu softvfp
	.type	uart_init, %function
uart_init:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	ldr	r3, .L2
	ldr	r3, [r3, #48]
	ldr	r2, .L2
	orr	r3, r3, #3
	str	r3, [r2, #48]
	ldr	r3, .L2
	ldr	r3, [r3, #68]
	ldr	r2, .L2
	orr	r3, r3, #16
	str	r3, [r2, #68]
	ldr	r3, .L2+4
	ldr	r3, [r3, #36]
	ldr	r2, .L2+4
	orr	r3, r3, #1879048192
	str	r3, [r2, #36]
	ldr	r3, .L2+8
	ldr	r3, [r3, #32]
	ldr	r2, .L2+8
	orr	r3, r3, #28672
	str	r3, [r2, #32]
	ldr	r3, .L2+4
	ldr	r3, [r3]
	ldr	r2, .L2+4
	orr	r3, r3, #-2147483648
	str	r3, [r2]
	ldr	r3, .L2+8
	ldr	r3, [r3]
	ldr	r2, .L2+8
	orr	r3, r3, #128
	str	r3, [r2]
	ldr	r3, .L2+12
	ldr	r2, .L2+16
	strh	r2, [r3, #8]	@ movhi
	ldr	r3, .L2+12
	ldrh	r3, [r3, #12]	@ movhi
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	ldr	r2, .L2+12
	orr	r3, r3, #8192
	orr	r3, r3, #12
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	strh	r3, [r2, #12]	@ movhi
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L3:
	.align	2
.L2:
	.word	1073887232
	.word	1073872896
	.word	1073873920
	.word	1073811456
	.word	541
	.size	uart_init, .-uart_init
	.align	2
	.global	uart_write_byte
	.syntax unified
	.arm
	.fpu softvfp
	.type	uart_write_byte, %function
uart_write_byte:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	mov	r3, r0
	strb	r3, [fp, #-5]
	nop
.L5:
	ldr	r3, .L6
	ldrh	r3, [r3]	@ movhi
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	and	r3, r3, #128
	cmp	r3, #0
	beq	.L5
	ldr	r2, .L6
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	strh	r3, [r2, #4]	@ movhi
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L7:
	.align	2
.L6:
	.word	1073811456
	.size	uart_write_byte, .-uart_write_byte
	.align	2
	.global	uart_read_byte
	.syntax unified
	.arm
	.fpu softvfp
	.type	uart_read_byte, %function
uart_read_byte:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	ldr	r3, .L10
	ldrh	r3, [r3, #4]	@ movhi
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	and	r3, r3, #255
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L11:
	.align	2
.L10:
	.word	1073811456
	.size	uart_read_byte, .-uart_read_byte
	.align	2
	.global	uart_is_read_ready
	.syntax unified
	.arm
	.fpu softvfp
	.type	uart_is_read_ready, %function
uart_is_read_ready:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	ldr	r3, .L14
	ldrh	r3, [r3]	@ movhi
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	and	r3, r3, #32
	cmp	r3, #0
	movne	r3, #1
	moveq	r3, #0
	and	r3, r3, #255
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L15:
	.align	2
.L14:
	.word	1073811456
	.size	uart_is_read_ready, .-uart_is_read_ready
	.ident	"GCC: (Arch Repository) 7.2.0"
