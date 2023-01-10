	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"level4.c"
	.text
	.align	2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer4.part.0, %function
drawPlayer4.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L4
	ldr	r3, [r2, #4]
	str	lr, [sp, #-4]!
	ldr	r0, [r2, #28]
	ldr	lr, [r2, #36]
	ldr	r1, .L4+4
	ldrb	ip, [r2]	@ zero_extendqisi2
	lsl	r3, r3, #23
	add	r2, r0, lr, lsl #5
	lsr	r3, r3, #23
	strh	r3, [r1, #2]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r2, [r1, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L5:
	.align	2
.L4:
	.word	player
	.word	shadowOAM
	.size	drawPlayer4.part.0, .-drawPlayer4.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawTeleport4.part.0, %function
drawTeleport4.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L8
	ldr	r2, .L8+4
	ldr	r1, [ip, #4]
	ldr	r3, .L8+8
	and	r1, r1, r2
	orr	r1, r1, #16384
	push	{r4, r5, r6, lr}
	strh	r1, [r3, #10]	@ movhi
	ldr	r1, [ip, #28]
	ldr	r0, .L8+12
	ldrb	r6, [ip]	@ zero_extendqisi2
	lsl	r1, r1, #6
	add	r1, r1, #4
	ldr	lr, .L8+16
	ldr	ip, [r0, #28]
	strh	r6, [r3, #8]	@ movhi
	strh	r1, [r3, #12]	@ movhi
	ldr	r6, [r0, #4]
	ldrb	r1, [r0]	@ zero_extendqisi2
	ldr	r5, .L8+20
	ldr	r0, [lr, #4]
	strh	r1, [r3, #16]	@ movhi
	and	r6, r6, r2
	ldr	r1, [lr, #28]
	lsl	ip, ip, #6
	orr	r6, r6, #16384
	add	ip, ip, #4
	ldr	r4, .L8+24
	strh	r6, [r3, #18]	@ movhi
	strh	ip, [r3, #20]	@ movhi
	ldrb	r6, [lr]	@ zero_extendqisi2
	ldr	ip, [r5, #28]
	and	r0, r0, r2
	lsl	r1, r1, #6
	orr	r0, r0, #16384
	add	r1, r1, #4
	ldr	lr, [r5, #4]
	strh	r6, [r3, #24]	@ movhi
	strh	r0, [r3, #26]	@ movhi
	ldrb	r6, [r4]	@ zero_extendqisi2
	ldr	r0, [r4, #4]
	strh	r1, [r3, #28]	@ movhi
	lsl	ip, ip, #6
	ldr	r1, [r4, #28]
	ldr	r4, .L8+28
	add	ip, ip, #4
	ldrb	r5, [r5]	@ zero_extendqisi2
	strh	ip, [r3, #36]	@ movhi
	and	lr, lr, r2
	ldrb	ip, [r4]	@ zero_extendqisi2
	and	r0, r0, r2
	lsl	r1, r1, #6
	orr	lr, lr, #16384
	orr	r0, r0, #16384
	add	r1, r1, #4
	strh	r5, [r3, #32]	@ movhi
	strh	lr, [r3, #34]	@ movhi
	strh	r6, [r3, #40]	@ movhi
	strh	r0, [r3, #42]	@ movhi
	strh	r1, [r3, #44]	@ movhi
	strh	ip, [r3, #48]	@ movhi
	ldr	r0, [r4, #4]
	ldr	r1, [r4, #28]
	and	r2, r2, r0
	lsl	r1, r1, #6
	orr	r2, r2, #16384
	add	r1, r1, #4
	strh	r2, [r3, #50]	@ movhi
	strh	r1, [r3, #52]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	teleport
	.word	511
	.word	shadowOAM
	.word	teleport2
	.word	teleport3
	.word	teleport4
	.word	teleport5
	.word	teleport6
	.size	drawTeleport4.part.0, .-drawTeleport4.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawMouth4.part.0, %function
drawMouth4.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L12
	ldr	r2, .L12+4
	ldr	r1, [ip, #4]
	ldr	r3, .L12+8
	and	r1, r1, r2
	orr	r1, r1, #16384
	push	{r4, r5, r6, lr}
	strh	r1, [r3, #58]	@ movhi
	ldr	r1, [ip, #28]
	ldr	r0, .L12+12
	ldrb	r6, [ip]	@ zero_extendqisi2
	lsl	r1, r1, #6
	add	r1, r1, #6
	ldr	lr, .L12+16
	ldr	ip, [r0, #28]
	strh	r6, [r3, #56]	@ movhi
	strh	r1, [r3, #60]	@ movhi
	ldr	r6, [r0, #4]
	ldrb	r1, [r0]	@ zero_extendqisi2
	ldr	r5, .L12+20
	ldr	r0, [lr, #4]
	strh	r1, [r3, #64]	@ movhi
	and	r6, r6, r2
	ldr	r1, [lr, #28]
	lsl	ip, ip, #6
	orr	r6, r6, #16384
	add	ip, ip, #6
	ldr	r4, .L12+24
	strh	r6, [r3, #66]	@ movhi
	strh	ip, [r3, #68]	@ movhi
	ldrb	r6, [lr]	@ zero_extendqisi2
	ldr	ip, [r5, #28]
	and	r0, r0, r2
	lsl	r1, r1, #6
	orr	r0, r0, #16384
	add	r1, r1, #6
	ldr	lr, [r5, #4]
	strh	r6, [r3, #72]	@ movhi
	strh	r0, [r3, #74]	@ movhi
	ldrb	r6, [r4]	@ zero_extendqisi2
	ldr	r0, [r4, #4]
	strh	r1, [r3, #76]	@ movhi
	lsl	ip, ip, #6
	ldr	r1, [r4, #28]
	ldr	r4, .L12+28
	add	ip, ip, #6
	ldrb	r5, [r5]	@ zero_extendqisi2
	strh	ip, [r3, #84]	@ movhi
	and	lr, lr, r2
	ldrb	ip, [r4]	@ zero_extendqisi2
	and	r0, r0, r2
	lsl	r1, r1, #6
	orr	lr, lr, #16384
	orr	r0, r0, #16384
	add	r1, r1, #6
	strh	r5, [r3, #80]	@ movhi
	strh	lr, [r3, #82]	@ movhi
	strh	r6, [r3, #88]	@ movhi
	strh	r0, [r3, #90]	@ movhi
	strh	r1, [r3, #92]	@ movhi
	strh	ip, [r3, #96]	@ movhi
	ldr	r0, [r4, #4]
	ldr	r1, [r4, #28]
	and	r2, r2, r0
	lsl	r1, r1, #6
	orr	r2, r2, #16384
	add	r1, r1, #6
	strh	r2, [r3, #98]	@ movhi
	strh	r1, [r3, #100]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	mouth
	.word	511
	.word	shadowOAM
	.word	mouth2
	.word	mouth3
	.word	mouth4
	.word	mouth5
	.word	mouth6
	.size	drawMouth4.part.0, .-drawMouth4.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGate4.part.0, %function
updateGate4.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L18
	ldr	r3, [r2, #28]
	add	r3, r3, #1
	cmp	r3, #3
	movgt	r3, #0
	str	r3, [r2, #28]
	mov	r3, #0
	str	r3, [r2, #24]
	bx	lr
.L19:
	.align	2
.L18:
	.word	finalgate
	.size	updateGate4.part.0, .-updateGate4.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGate4.part.0, %function
drawGate4.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L21
	ldr	r3, [r0, #4]
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r2, [r0, #28]
	ldr	r1, .L21+4
	ldrb	r0, [r0]	@ zero_extendqisi2
	lsl	r2, r2, #7
	add	r2, r2, #10
	strh	r3, [r1, #106]	@ movhi
	strh	r0, [r1, #104]	@ movhi
	strh	r2, [r1, #108]	@ movhi
	bx	lr
.L22:
	.align	2
.L21:
	.word	finalgate
	.word	shadowOAM
	.size	drawGate4.part.0, .-drawGate4.part.0
	.align	2
	.global	drawLevel4
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLevel4, %function
drawLevel4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L36
	ldr	r3, [r3, #44]
	cmp	r3, #0
	push	{r4, lr}
	beq	.L24
	ldr	r2, .L36+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	ldr	r3, .L36+8
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L26
.L33:
	ldr	r2, .L36+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	ldr	r3, .L36+12
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L28
.L34:
	ldr	r2, .L36+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	ldr	r3, .L36+16
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L30
.L35:
	ldr	r2, .L36+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
.L31:
	ldr	r3, .L36+20
	mov	lr, pc
	bx	r3
	ldr	r4, .L36+24
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L36+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L36+28
	ldrh	r1, [r2]
	ldr	r2, .L36+32
	ldrh	r2, [r2]
	strh	r1, [r3, #24]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #26]	@ movhi
	bx	lr
.L24:
	bl	drawPlayer4.part.0
	ldr	r3, .L36+8
	ldr	r3, [r3, #44]
	cmp	r3, #0
	bne	.L33
.L26:
	bl	drawTeleport4.part.0
	ldr	r3, .L36+12
	ldr	r3, [r3, #44]
	cmp	r3, #0
	bne	.L34
.L28:
	bl	drawMouth4.part.0
	ldr	r3, .L36+16
	ldr	r3, [r3, #44]
	cmp	r3, #0
	bne	.L35
.L30:
	bl	drawGate4.part.0
	b	.L31
.L37:
	.align	2
.L36:
	.word	player
	.word	shadowOAM
	.word	teleport
	.word	mouth
	.word	finalgate
	.word	waitForVBlank
	.word	DMANow
	.word	hOff
	.word	vOff
	.size	drawLevel4, .-drawLevel4
	.align	2
	.global	initPlayer4
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer4, %function
initPlayer4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	ip, #16
	mov	lr, #8
	mov	r4, #3
	mov	r0, #20
	mov	r1, #0
	mov	r2, #1
	ldr	r3, .L40
	str	lr, [r3, #16]
	str	lr, [r3, #20]
	str	r4, [r3, #40]
	str	ip, [r3, #8]
	str	ip, [r3, #12]
	str	r0, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #24]
	str	r1, [r3, #36]
	str	r2, [r3, #28]
	str	r2, [r3, #48]
	pop	{r4, lr}
	bx	lr
.L41:
	.align	2
.L40:
	.word	player
	.size	initPlayer4, .-initPlayer4
	.align	2
	.global	drawPlayer4
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer4, %function
drawPlayer4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L46
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L43
	ldr	r2, .L46+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L43:
	b	drawPlayer4.part.0
.L47:
	.align	2
.L46:
	.word	player
	.word	shadowOAM
	.size	drawPlayer4, .-drawPlayer4
	.align	2
	.global	initTeleport4
	.syntax unified
	.arm
	.fpu softvfp
	.type	initTeleport4, %function
initTeleport4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r2, #16
	mov	lr, #80
	mov	r0, #208
	mov	ip, #176
	mov	r1, #64
	mov	r3, #0
	mov	r6, #4
	mov	r7, #112
	mov	r8, #32
	ldr	r5, .L50
	stm	r5, {r2, lr}
	ldr	lr, .L50+4
	ldr	r4, .L50+8
	str	r0, [lr, #4]
	ldr	r0, .L50+12
	stm	r4, {r2, ip}
	str	r1, [r0, #4]
	ldr	ip, .L50+16
	ldr	r1, .L50+20
	stm	ip, {r7, r8}
	str	r2, [r5, #16]
	str	r2, [r5, #20]
	str	r2, [r4, #16]
	str	r2, [r4, #20]
	str	r2, [lr, #16]
	str	r2, [lr, #20]
	str	r8, [lr]
	str	r7, [r0]
	str	r7, [r1]
	str	r7, [r1, #4]
	str	r3, [r5, #24]
	str	r3, [r5, #36]
	str	r3, [r5, #28]
	str	r3, [r4, #24]
	str	r3, [r4, #36]
	str	r3, [r4, #28]
	str	r6, [r5, #40]
	str	r2, [ip, #16]
	str	r2, [ip, #20]
	str	r2, [r0, #16]
	str	r2, [r0, #20]
	str	r2, [r1, #16]
	str	r2, [r1, #20]
	str	r6, [r4, #40]
	str	r3, [lr, #24]
	str	r3, [lr, #36]
	str	r6, [lr, #40]
	str	r3, [lr, #28]
	str	r6, [ip, #40]
	str	r6, [r0, #40]
	str	r6, [r1, #40]
	str	r3, [ip, #24]
	str	r3, [ip, #36]
	str	r3, [ip, #28]
	str	r3, [r0, #24]
	str	r3, [r0, #36]
	str	r3, [r0, #28]
	str	r3, [r1, #24]
	str	r3, [r1, #36]
	str	r3, [r1, #28]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L51:
	.align	2
.L50:
	.word	teleport
	.word	teleport3
	.word	teleport2
	.word	teleport5
	.word	teleport4
	.word	teleport6
	.size	initTeleport4, .-initTeleport4
	.align	2
	.global	updateTeleport4
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateTeleport4, %function
updateTeleport4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L77
	ldr	r3, [r2, #24]
	add	r3, r3, #1
	cmp	r3, #15
	str	r3, [r2, #24]
	bne	.L53
	ldr	r3, [r2, #28]
	add	r3, r3, #1
	cmp	r3, #2
	movgt	r3, #0
	str	r3, [r2, #28]
	mov	r3, #0
	str	r3, [r2, #24]
.L53:
	ldr	r2, .L77+4
	ldr	r3, [r2, #24]
	add	r3, r3, #1
	cmp	r3, #15
	str	r3, [r2, #24]
	bne	.L56
	ldr	r3, [r2, #28]
	add	r3, r3, #1
	cmp	r3, #2
	movgt	r3, #0
	str	r3, [r2, #28]
	mov	r3, #0
	str	r3, [r2, #24]
.L56:
	ldr	r2, .L77+8
	ldr	r3, [r2, #24]
	add	r3, r3, #1
	cmp	r3, #15
	str	r3, [r2, #24]
	bne	.L59
	ldr	r3, [r2, #28]
	add	r3, r3, #1
	cmp	r3, #2
	movgt	r3, #0
	str	r3, [r2, #28]
	mov	r3, #0
	str	r3, [r2, #24]
.L59:
	ldr	r2, .L77+12
	ldr	r3, [r2, #24]
	add	r3, r3, #1
	cmp	r3, #15
	str	r3, [r2, #24]
	bne	.L62
	ldr	r3, [r2, #28]
	add	r3, r3, #1
	cmp	r3, #2
	movgt	r3, #0
	str	r3, [r2, #28]
	mov	r3, #0
	str	r3, [r2, #24]
.L62:
	ldr	r2, .L77+16
	ldr	r3, [r2, #24]
	add	r3, r3, #1
	cmp	r3, #15
	str	r3, [r2, #24]
	bne	.L65
	ldr	r3, [r2, #28]
	add	r3, r3, #1
	cmp	r3, #2
	movgt	r3, #0
	str	r3, [r2, #28]
	mov	r3, #0
	str	r3, [r2, #24]
.L65:
	ldr	r2, .L77+20
	ldr	r3, [r2, #24]
	add	r3, r3, #1
	cmp	r3, #15
	str	r3, [r2, #24]
	bxne	lr
	ldr	r3, [r2, #28]
	add	r3, r3, #1
	cmp	r3, #2
	movgt	r3, #0
	str	r3, [r2, #28]
	mov	r3, #0
	str	r3, [r2, #24]
	bx	lr
.L78:
	.align	2
.L77:
	.word	teleport
	.word	teleport2
	.word	teleport3
	.word	teleport4
	.word	teleport5
	.word	teleport6
	.size	updateTeleport4, .-updateTeleport4
	.align	2
	.global	drawTeleport4
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawTeleport4, %function
drawTeleport4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L83
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L80
	ldr	r2, .L83+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L80:
	b	drawTeleport4.part.0
.L84:
	.align	2
.L83:
	.word	teleport
	.word	shadowOAM
	.size	drawTeleport4, .-drawTeleport4
	.align	2
	.global	initMouth4
	.syntax unified
	.arm
	.fpu softvfp
	.type	initMouth4, %function
initMouth4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #32
	mov	r3, #0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r2, #16
	mov	r6, #4
	mov	r7, #112
	mov	r9, #48
	mov	r8, #144
	mov	fp, #128
	mov	r10, #176
	ldr	r4, .L87
	ldr	r5, .L87+4
	ldr	lr, .L87+8
	ldr	ip, .L87+12
	ldr	r0, .L87+16
	str	r1, [r4]
	ldr	r1, .L87+20
	str	r2, [r5, #16]
	str	r2, [r5, #20]
	str	r2, [r5]
	str	r2, [r4, #16]
	str	r2, [r4, #20]
	str	r2, [lr, #16]
	str	r2, [lr, #20]
	str	r2, [lr]
	str	r9, [r5, #4]
	str	r9, [ip, #4]
	str	r3, [r5, #24]
	str	r3, [r5, #36]
	str	r3, [r5, #28]
	str	r3, [r4, #24]
	str	r3, [r4, #36]
	str	r3, [r4, #28]
	str	r3, [lr, #24]
	str	r3, [lr, #36]
	str	r3, [lr, #28]
	str	r6, [r5, #40]
	str	r6, [r4, #40]
	str	r6, [lr, #40]
	str	r7, [r4, #4]
	str	r7, [ip]
	str	r2, [ip, #16]
	str	r2, [ip, #20]
	str	r2, [r0, #16]
	str	r2, [r0, #20]
	str	r2, [r1, #16]
	str	r2, [r1, #20]
	str	r8, [lr, #4]
	stm	r0, {r7, r8}
	str	r6, [ip, #40]
	str	r6, [r0, #40]
	str	r6, [r1, #40]
	str	fp, [r1]
	str	r10, [r1, #4]
	str	r3, [ip, #24]
	str	r3, [ip, #36]
	str	r3, [ip, #28]
	str	r3, [r0, #24]
	str	r3, [r0, #36]
	str	r3, [r0, #28]
	str	r3, [r1, #24]
	str	r3, [r1, #36]
	str	r3, [r1, #28]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L88:
	.align	2
.L87:
	.word	mouth2
	.word	mouth
	.word	mouth3
	.word	mouth4
	.word	mouth5
	.word	mouth6
	.size	initMouth4, .-initMouth4
	.align	2
	.global	initLevel4
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLevel4, %function
initLevel4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	ip, #8
	mov	r4, #0
	mov	r1, #20
	mov	r5, #3
	mov	r2, #1
	mov	r0, #16
	ldr	r3, .L91
	str	ip, [r3, #16]
	str	ip, [r3, #20]
	str	r1, [r3]
	str	r1, [r3, #4]
	str	r4, [r3, #24]
	str	r4, [r3, #36]
	str	r5, [r3, #40]
	str	r2, [r3, #28]
	str	r2, [r3, #48]
	str	r0, [r3, #8]
	str	r0, [r3, #12]
	bl	initTeleport4
	bl	initMouth4
	mov	r3, #64
	mov	r2, #112
	mov	r1, #4
	mov	lr, #32
	ldr	ip, .L91+4
	ldr	r6, .L91+8
	str	r3, [ip]
	str	r2, [ip, #4]
	str	r1, [ip, #40]
	mov	r0, r5
	mov	r3, #1024
	ldr	r2, .L91+12
	ldr	r1, .L91+16
	str	r4, [ip, #24]
	str	r4, [ip, #36]
	str	r4, [ip, #28]
	str	lr, [ip, #16]
	str	lr, [ip, #20]
	mov	lr, pc
	bx	r6
	mov	r0, r5
	mov	r3, #48
	ldr	r2, .L91+20
	ldr	r1, .L91+24
	mov	lr, pc
	bx	r6
	mov	r0, r5
	mov	r3, #1024
	ldr	r2, .L91+28
	ldr	r1, .L91+32
	mov	lr, pc
	bx	r6
	mov	r0, #62
	mov	r2, #9
	ldr	lr, .L91+36
	ldr	ip, .L91+40
	ldr	r1, .L91+44
	ldr	r3, .L91+48
	str	r4, [lr]
	str	r4, [ip]
	str	r0, [r1]
	str	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L92:
	.align	2
.L91:
	.word	player
	.word	finalgate
	.word	DMANow
	.word	100724736
	.word	tilesCollision4Map
	.word	100696064
	.word	tilesCollision4Tiles
	.word	100726784
	.word	background4Map
	.word	reachfinalgate
	.word	cheatMode
	.word	tilesRemaining4
	.word	hOff
	.size	initLevel4, .-initLevel4
	.align	2
	.global	updateMouth4
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateMouth4, %function
updateMouth4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L118
	ldr	r3, [r2, #24]
	add	r3, r3, #1
	cmp	r3, #15
	str	r3, [r2, #24]
	bne	.L94
	ldr	r3, [r2, #28]
	add	r3, r3, #1
	cmp	r3, #3
	movgt	r3, #0
	str	r3, [r2, #28]
	mov	r3, #0
	str	r3, [r2, #24]
.L94:
	ldr	r2, .L118+4
	ldr	r3, [r2, #24]
	add	r3, r3, #1
	cmp	r3, #15
	str	r3, [r2, #24]
	bne	.L97
	ldr	r3, [r2, #28]
	add	r3, r3, #1
	cmp	r3, #3
	movgt	r3, #0
	str	r3, [r2, #28]
	mov	r3, #0
	str	r3, [r2, #24]
.L97:
	ldr	r2, .L118+8
	ldr	r3, [r2, #24]
	add	r3, r3, #1
	cmp	r3, #15
	str	r3, [r2, #24]
	bne	.L100
	ldr	r3, [r2, #28]
	add	r3, r3, #1
	cmp	r3, #3
	movgt	r3, #0
	str	r3, [r2, #28]
	mov	r3, #0
	str	r3, [r2, #24]
.L100:
	ldr	r2, .L118+12
	ldr	r3, [r2, #24]
	add	r3, r3, #1
	cmp	r3, #15
	str	r3, [r2, #24]
	bne	.L103
	ldr	r3, [r2, #28]
	add	r3, r3, #1
	cmp	r3, #3
	movgt	r3, #0
	str	r3, [r2, #28]
	mov	r3, #0
	str	r3, [r2, #24]
.L103:
	ldr	r2, .L118+16
	ldr	r3, [r2, #24]
	add	r3, r3, #1
	cmp	r3, #15
	str	r3, [r2, #24]
	bne	.L106
	ldr	r3, [r2, #28]
	add	r3, r3, #1
	cmp	r3, #3
	movgt	r3, #0
	str	r3, [r2, #28]
	mov	r3, #0
	str	r3, [r2, #24]
.L106:
	ldr	r2, .L118+20
	ldr	r3, [r2, #24]
	add	r3, r3, #1
	cmp	r3, #15
	str	r3, [r2, #24]
	bxne	lr
	ldr	r3, [r2, #28]
	add	r3, r3, #1
	cmp	r3, #3
	movgt	r3, #0
	str	r3, [r2, #28]
	mov	r3, #0
	str	r3, [r2, #24]
	bx	lr
.L119:
	.align	2
.L118:
	.word	mouth
	.word	mouth2
	.word	mouth3
	.word	mouth4
	.word	mouth5
	.word	mouth6
	.size	updateMouth4, .-updateMouth4
	.align	2
	.global	drawMouth4
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawMouth4, %function
drawMouth4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L124
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L121
	ldr	r2, .L124+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L121:
	b	drawMouth4.part.0
.L125:
	.align	2
.L124:
	.word	mouth
	.word	shadowOAM
	.size	drawMouth4, .-drawMouth4
	.align	2
	.global	initGate4
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGate4, %function
initGate4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #0
	mov	r1, #32
	mov	lr, #64
	mov	ip, #112
	mov	r0, #4
	ldr	r3, .L128
	str	lr, [r3]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	ip, [r3, #4]
	str	r0, [r3, #40]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r2, [r3, #28]
	ldr	lr, [sp], #4
	bx	lr
.L129:
	.align	2
.L128:
	.word	finalgate
	.size	initGate4, .-initGate4
	.align	2
	.global	updateGate4
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGate4, %function
updateGate4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L132
	ldr	r3, [r2, #24]
	add	r3, r3, #1
	cmp	r3, #15
	str	r3, [r2, #24]
	bxne	lr
	b	updateGate4.part.0
.L133:
	.align	2
.L132:
	.word	finalgate
	.size	updateGate4, .-updateGate4
	.align	2
	.global	drawGate4
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGate4, %function
drawGate4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L138
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L135
	ldr	r2, .L138+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L135:
	b	drawGate4.part.0
.L139:
	.align	2
.L138:
	.word	finalgate
	.word	shadowOAM
	.size	drawGate4, .-drawGate4
	.align	2
	.global	eraseTiles4
	.syntax unified
	.arm
	.fpu softvfp
	.type	eraseTiles4, %function
eraseTiles4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, #0
	ldr	r2, .L158
	lsl	r6, r0, #3
	add	r3, r0, r1, lsl #5
	add	ip, r6, #2048
	lsl	r3, r3, #1
	strh	r4, [r2, r3]	@ movhi
	add	r7, ip, #8
	ldr	r2, .L158+4
	add	r8, r7, r1, lsl #11
	add	lr, ip, r1, lsl #11
	lsl	r9, r1, #5
	lsl	r5, r1, #11
.L141:
	sub	r3, lr, #2048
.L142:
	ldr	r1, [r2]
	strb	r4, [r1, r3]
	add	r3, r3, #256
	cmp	r3, lr
	bne	.L142
	add	lr, r3, #1
	cmp	lr, r8
	bne	.L141
	mov	r10, #0
	add	r8, r0, #1
	ldr	r1, .L158
	add	r3, r9, r8
	add	r6, r6, #2064
	lsl	r3, r3, #1
	add	lr, ip, #8
	strh	r4, [r1, r3]	@ movhi
	add	fp, r6, r5
	add	r4, lr, r5
.L144:
	sub	r3, r4, #2048
.L145:
	ldr	r1, [r2]
	strb	r10, [r1, r3]
	add	r3, r3, #256
	cmp	r3, r4
	bne	.L145
	add	r4, r3, #1
	cmp	r4, fp
	bne	.L144
	mov	r4, #0
	sub	r9, r9, #32
	ldr	r1, .L158
	add	r3, r9, r0
	lsl	r3, r3, #1
	sub	r5, r5, #2048
	strh	r10, [r1, r3]	@ movhi
	add	ip, r5, ip
	add	r7, r5, r7
.L147:
	sub	r3, ip, #2048
.L148:
	ldr	r1, [r2]
	strb	r4, [r1, r3]
	add	r3, r3, #256
	cmp	ip, r3
	bne	.L148
	add	ip, ip, #1
	cmp	ip, r7
	bne	.L147
	mov	ip, #0
	ldr	r1, .L158
	add	r9, r8, r9
	lsl	r3, r9, #1
	strh	r4, [r1, r3]	@ movhi
	add	r0, lr, r5
	add	r6, r6, r5
.L150:
	sub	r3, r0, #2048
.L151:
	ldr	r1, [r2]
	strb	ip, [r1, r3]
	add	r3, r3, #256
	cmp	r0, r3
	bne	.L151
	add	r0, r0, #1
	cmp	r6, r0
	bne	.L150
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L159:
	.align	2
.L158:
	.word	100726784
	.word	.LANCHOR0
	.size	eraseTiles4, .-eraseTiles4
	.align	2
	.global	updatePlayer4
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer4, %function
updatePlayer4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r7, .L247
	ldr	r3, [r7]
	ldr	r4, .L247+4
	cmp	r3, #0
	ldr	r6, [r4]
	ldr	r5, [r4, #4]
	sub	sp, sp, #16
	bne	.L161
	adds	r3, r6, #8
	addmi	r3, r6, #15
	cmp	r5, #0
	add	r2, r5, #7
	movge	r2, r5
	asr	r3, r3, #3
	lsl	r3, r3, #5
	add	r3, r3, r2, asr #3
	ldr	r2, .L247+8
	lsl	r3, r3, #1
	ldrh	r2, [r2, r3]
	cmp	r2, #0
	beq	.L237
.L161:
	ldr	r8, .L247+12
	ldrh	r3, [r8]
	tst	r3, #64
	beq	.L162
	ldr	r2, .L247+16
	ldrh	r2, [r2]
	ands	r2, r2, #64
	beq	.L238
.L162:
	tst	r3, #128
	beq	.L165
	ldr	r2, .L247+16
	ldrh	r2, [r2]
	ands	r2, r2, #128
	beq	.L239
.L165:
	tst	r3, #32
	beq	.L168
	ldr	r2, .L247+16
	ldrh	r2, [r2]
	ands	r2, r2, #32
	beq	.L240
.L168:
	tst	r3, #16
	beq	.L235
	ldr	r3, .L247+16
	ldrh	r2, [r3]
	ands	r8, r2, #16
	beq	.L241
.L235:
	ldr	r0, [r4, #4]
	ldr	r1, [r4]
.L236:
	add	r2, r4, #16
	ldm	r2, {r2, r3}
.L172:
	ldr	lr, [r4, #24]
	ldr	ip, .L247+20
	add	lr, lr, #1
	smull	r6, r5, ip, lr
	asr	ip, lr, #31
	rsb	ip, ip, r5, asr #2
	add	ip, ip, ip, lsl #2
	subs	ip, lr, ip, lsl #1
	str	lr, [r4, #24]
	bne	.L177
	ldr	lr, [r4, #36]
	ldr	r5, [r4, #40]
	add	lr, lr, #1
	cmp	lr, r5
	movne	ip, lr
	str	ip, [r4, #36]
.L177:
	ldr	ip, .L247+24
	add	r5, ip, #16
	ldm	r5, {r5, lr}
	str	lr, [sp, #12]
	ldr	lr, [ip]
	ldr	ip, [ip, #4]
	str	r5, [sp, #8]
	stm	sp, {ip, lr}
	ldr	r5, .L247+28
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L179
	ldr	r0, [r4, #4]
	ldr	r1, [r4]
.L180:
	ldr	r3, .L247+32
	ldr	r2, [r3, #20]
	ldr	ip, [r3, #16]
	str	r2, [sp, #12]
	ldm	r3, {r2, r3}
	stmib	sp, {r2, ip}
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L181
	ldr	r0, [r4, #4]
	ldr	r1, [r4]
.L182:
	ldr	r3, .L247+36
	ldr	r2, [r3, #20]
	ldr	ip, [r3, #16]
	str	r2, [sp, #12]
	ldm	r3, {r2, r3}
	stmib	sp, {r2, ip}
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L183
	ldr	r0, [r4, #4]
	ldr	r1, [r4]
.L184:
	ldr	r3, .L247+40
	ldr	r2, [r3, #20]
	ldr	ip, [r3, #16]
	str	r2, [sp, #12]
	ldm	r3, {r2, r3}
	stmib	sp, {r2, ip}
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L185
	ldr	r0, [r4, #4]
	ldr	r1, [r4]
.L186:
	ldr	r3, .L247+44
	ldr	r2, [r3, #20]
	ldr	ip, [r3, #16]
	str	r2, [sp, #12]
	ldm	r3, {r2, r3}
	stmib	sp, {r2, ip}
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L187
	ldr	r0, [r4, #4]
	ldr	r1, [r4]
.L188:
	ldr	r3, .L247+48
	ldr	r2, [r3, #20]
	ldr	ip, [r3, #16]
	str	r2, [sp, #12]
	ldm	r3, {r2, r3}
	stmib	sp, {r2, ip}
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L189
	ldr	r0, [r4, #4]
	ldr	r1, [r4]
.L190:
	ldr	r3, .L247+52
	ldr	r2, [r3, #20]
	ldr	ip, [r3, #16]
	str	r2, [sp, #12]
	ldm	r3, {r2, r3}
	stmib	sp, {r2, ip}
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L193
	ldr	r3, .L247+56
	ldr	r0, [r3, #20]
	ldr	r1, [r3, #16]
	ldm	r3, {r2, r3}
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L242
.L193:
	mov	r2, #0
	ldr	r3, .L247+60
	ldr	r0, .L247+64
	ldr	r1, [r3]
	ldr	r3, .L247+68
	str	r2, [r4, #48]
	mov	lr, pc
	bx	r3
.L192:
	ldr	r3, .L247+72
	ldr	r0, [r3, #20]
	ldr	r1, [r3, #16]
	ldm	r3, {r2, r3}
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	movne	r2, #1
	ldrne	r3, .L247+76
	strne	r2, [r3]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L187:
	ldr	r3, .L247+80
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L247+84
	ldr	r3, .L247+68
	mov	lr, pc
	bx	r3
	mov	r2, #36
	mov	r3, #180
	mov	r1, r2
	mov	r0, r3
	stm	r4, {r2, r3}
	b	.L188
.L185:
	ldr	r3, .L247+80
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L247+84
	ldr	r3, .L247+68
	mov	lr, pc
	bx	r3
	mov	r2, #84
	mov	r3, #52
	mov	r1, r2
	mov	r0, r3
	stm	r4, {r2, r3}
	b	.L186
.L189:
	ldr	r3, .L247+80
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L247+84
	ldr	r3, .L247+68
	mov	lr, pc
	bx	r3
	mov	r2, #36
	mov	r3, #84
	mov	r1, r2
	mov	r0, r3
	stm	r4, {r2, r3}
	b	.L190
.L179:
	ldr	r3, .L247+80
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L247+84
	ldr	r3, .L247+68
	mov	lr, pc
	bx	r3
	mov	r2, #132
	mov	r3, #212
	mov	r1, r2
	mov	r0, r3
	stm	r4, {r2, r3}
	b	.L180
.L183:
	ldr	r3, .L247+80
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L247+84
	ldr	r3, .L247+68
	mov	lr, pc
	bx	r3
	mov	r2, #132
	mov	r3, #52
	mov	r1, r2
	mov	r0, r3
	stm	r4, {r2, r3}
	b	.L184
.L181:
	ldr	r3, .L247+80
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L247+84
	ldr	r3, .L247+68
	mov	lr, pc
	bx	r3
	mov	r2, #132
	mov	r3, #116
	mov	r1, r2
	mov	r0, r3
	stm	r4, {r2, r3}
	b	.L182
.L242:
	ldr	r3, .L247+88
	ldr	r0, [r3, #20]
	ldr	r1, [r3, #16]
	ldm	r3, {r2, r3}
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L193
	ldr	r3, .L247+92
	ldr	r0, [r3, #20]
	ldr	r1, [r3, #16]
	ldm	r3, {r2, r3}
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L193
	ldr	r3, .L247+96
	ldr	r0, [r3, #20]
	ldr	r1, [r3, #16]
	ldm	r3, {r2, r3}
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L193
	ldr	r3, .L247+100
	ldr	r0, [r3, #20]
	ldr	r1, [r3, #16]
	ldm	r3, {r2, r3}
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L193
	b	.L192
.L237:
	ldr	r3, .L247+104
	ldr	r0, .L247+108
	ldr	r1, [r3]
	ldr	r3, .L247+68
	str	r2, [r4, #48]
	mov	lr, pc
	bx	r3
	b	.L161
.L238:
	ldr	r3, .L247+112
	ldr	r0, .L247+116
	ldr	r1, [r3]
	ldr	r3, .L247+68
	mov	lr, pc
	bx	r3
	mov	r3, #2
	ldr	r2, [r7]
	cmp	r2, #1
	str	r3, [r4, #28]
	beq	.L243
	ldr	r3, [r4]
	ldr	r2, [r4, #8]
	sub	r3, r3, r2
	ldr	r2, [r4, #4]
	cmp	r3, r6
	cmpeq	r2, r5
	ldr	r1, .L247+120
	ldr	r2, [r1]
	sub	r2, r2, #1
	moveq	r6, r3
	str	r2, [r1]
	str	r3, [r4]
	beq	.L164
	adds	r1, r6, #8
	addmi	r1, r6, #15
	cmp	r5, #0
	add	r0, r5, #7
	movge	r0, r5
	asr	r1, r1, #3
	asr	r0, r0, #3
	bl	eraseTiles4
	ldr	r6, [r4]
.L164:
	ldrh	r3, [r8]
	b	.L162
.L239:
	ldr	r3, .L247+112
	ldr	r0, .L247+116
	ldr	r1, [r3]
	ldr	r3, .L247+68
	mov	lr, pc
	bx	r3
	mov	r3, #3
	ldr	r2, [r7]
	cmp	r2, #1
	str	r3, [r4, #28]
	beq	.L244
	ldr	r3, [r4]
	ldr	r2, [r4, #12]
	add	r3, r3, r2
	ldr	r2, [r4, #4]
	cmp	r3, r6
	cmpeq	r2, r5
	ldr	r1, .L247+120
	ldr	r2, [r1]
	sub	r2, r2, #1
	moveq	r6, r3
	str	r2, [r1]
	str	r3, [r4]
	beq	.L167
	adds	r1, r6, #8
	addmi	r1, r6, #15
	cmp	r5, #0
	add	r0, r5, #7
	movge	r0, r5
	asr	r1, r1, #3
	asr	r0, r0, #3
	bl	eraseTiles4
	ldr	r6, [r4]
.L167:
	ldrh	r3, [r8]
	b	.L165
.L240:
	ldr	r3, .L247+112
	ldr	r0, .L247+116
	ldr	r1, [r3]
	ldr	r3, .L247+68
	mov	lr, pc
	bx	r3
	mov	r3, #1
	ldr	r2, [r7]
	cmp	r2, r3
	str	r3, [r4, #28]
	beq	.L245
	ldr	r3, [r4, #4]
	ldr	r2, [r4, #12]
	sub	r3, r3, r2
	ldr	r2, [r4]
	cmp	r3, r5
	cmpeq	r2, r6
	ldr	r1, .L247+120
	ldr	r2, [r1]
	sub	r2, r2, #1
	moveq	r5, r3
	str	r2, [r1]
	str	r3, [r4, #4]
	beq	.L170
	adds	r1, r6, #8
	addmi	r1, r6, #15
	cmp	r5, #0
	add	r0, r5, #7
	movge	r0, r5
	asr	r1, r1, #3
	asr	r0, r0, #3
	bl	eraseTiles4
	ldr	r5, [r4, #4]
.L170:
	ldrh	r3, [r8]
	b	.L168
.L241:
	ldr	r3, .L247+112
	mov	r2, r8
	ldr	r1, [r3]
	ldr	r0, .L247+116
	ldr	r3, .L247+68
	mov	lr, pc
	bx	r3
	ldr	r3, [r7]
	cmp	r3, #1
	str	r8, [r4, #28]
	beq	.L246
	ldr	r3, [r4, #4]
	ldr	r0, [r4, #12]
	ldr	r1, [r4]
	add	r0, r3, r0
	cmp	r1, r6
	cmpeq	r0, r5
	ldr	r2, .L247+120
	ldr	r3, [r2]
	sub	r3, r3, #1
	str	r3, [r2]
	str	r0, [r4, #4]
	beq	.L236
	adds	r1, r6, #8
	addmi	r1, r6, #15
	cmp	r5, #0
	add	r0, r5, #7
	movge	r0, r5
	asr	r1, r1, #3
	asr	r0, r0, #3
	bl	eraseTiles4
	b	.L235
.L245:
	ldr	r0, [r4, #4]
	ldr	r1, [r4, #12]
	cmp	r0, r1
	ldrh	r3, [r8]
	blt	.L168
	ldr	ip, .L247+124
	ldr	r2, [r4]
	ldr	ip, [ip]
	rsb	lr, r2, r2, lsl #4
	sub	r1, r0, r1
	add	r0, ip, lr, lsl #4
	ldrb	r0, [r0, r1]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L168
	ldr	r0, [r4, #20]
	add	r2, r2, r0
	sub	r2, r2, #1
	rsb	r2, r2, r2, lsl #4
	add	r2, ip, r2, lsl #4
	ldrb	r2, [r2, r1]	@ zero_extendqisi2
	cmp	r2, #0
	strne	r1, [r4, #4]
	b	.L168
.L246:
	ldr	r0, [r4, #4]
	ldr	r2, [r4, #16]
	ldr	r5, [r4, #12]
	add	ip, r0, r2
	rsb	r3, r5, #240
	cmp	ip, r3
	ldr	r1, [r4]
	ldr	r3, [r4, #20]
	bgt	.L172
	ldr	lr, .L247+124
	ldr	r6, [lr]
	add	ip, ip, r5
	rsb	lr, r1, r1, lsl #4
	sub	ip, ip, #1
	add	lr, r6, lr, lsl #4
	ldrb	lr, [lr, ip]	@ zero_extendqisi2
	cmp	lr, #0
	beq	.L172
	add	lr, r1, r3
	sub	lr, lr, #1
	rsb	lr, lr, lr, lsl #4
	add	r6, r6, lr, lsl #4
	ldrb	ip, [r6, ip]	@ zero_extendqisi2
	cmp	ip, #0
	addne	r0, r0, r5
	strne	r0, [r4, #4]
	b	.L172
.L244:
	ldr	r1, [r4]
	ldr	r2, [r4, #20]
	ldr	r0, [r4, #12]
	add	r2, r1, r2
	rsb	r3, r0, #160
	cmp	r2, r3
	ldrh	r3, [r8]
	bgt	.L165
	ldr	lr, [r4, #8]
	ldr	ip, .L247+124
	add	r2, r2, lr
	ldr	ip, [ip]
	sub	r2, r2, #1
	ldr	lr, [r4, #4]
	rsb	r2, r2, r2, lsl #4
	add	r2, ip, r2, lsl #4
	ldrb	ip, [r2, lr]	@ zero_extendqisi2
	cmp	ip, #0
	add	r2, r2, lr
	beq	.L165
	ldr	ip, [r4, #16]
	add	r2, r2, ip
	ldrb	r2, [r2, #-1]	@ zero_extendqisi2
	cmp	r2, #0
	addne	r1, r1, r0
	strne	r1, [r4]
	b	.L165
.L243:
	ldr	r2, [r4]
	cmp	r2, #0
	ldrh	r3, [r8]
	ble	.L162
	ldr	r0, .L247+124
	ldr	r1, [r4, #8]
	sub	r1, r2, r1
	ldr	r2, [r0]
	rsb	ip, r1, r1, lsl #4
	ldr	r0, [r4, #4]
	add	r2, r2, ip, lsl #4
	ldrb	ip, [r2, r0]	@ zero_extendqisi2
	cmp	ip, #0
	add	r2, r2, r0
	beq	.L162
	ldr	r0, [r4, #16]
	add	r2, r2, r0
	ldrb	r2, [r2, #-1]	@ zero_extendqisi2
	cmp	r2, #0
	strne	r1, [r4]
	b	.L162
.L248:
	.align	2
.L247:
	.word	cheatMode
	.word	player
	.word	100726784
	.word	oldButtons
	.word	buttons
	.word	1717986919
	.word	teleport
	.word	collision
	.word	teleport2
	.word	teleport3
	.word	teleport4
	.word	teleport5
	.word	teleport6
	.word	mouth
	.word	mouth2
	.word	biteSound_length
	.word	biteSound_data
	.word	playSoundB
	.word	finalgate
	.word	reachfinalgate
	.word	teleportSound_length
	.word	teleportSound_data
	.word	mouth3
	.word	mouth4
	.word	mouth5
	.word	mouth6
	.word	dyingSound_length
	.word	dyingSound_data
	.word	clickSound_length
	.word	clickSound_data
	.word	tilesRemaining4
	.word	.LANCHOR0
	.size	updatePlayer4, .-updatePlayer4
	.align	2
	.global	updateLevel4
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateLevel4, %function
updateLevel4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	updatePlayer4
	bl	updateMouth4
	ldr	r2, .L252
	ldr	r3, [r2, #24]
	add	r3, r3, #1
	cmp	r3, #15
	str	r3, [r2, #24]
	bleq	updateGate4.part.0
.L250:
	bl	updateTeleport4
	ldr	r2, .L252+4
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	pop	{r4, lr}
	bx	lr
.L253:
	.align	2
.L252:
	.word	finalgate
	.word	hOff
	.size	updateLevel4, .-updateLevel4
	.comm	cheatMode,4,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	reachfinalgate,4,4
	.comm	tilesRemaining4,4,4
	.global	backgroundcollision4
	.comm	finalgate,52,4
	.comm	mouth6,52,4
	.comm	mouth5,52,4
	.comm	mouth4,52,4
	.comm	mouth3,52,4
	.comm	mouth2,52,4
	.comm	mouth,52,4
	.comm	teleport6,52,4
	.comm	teleport5,52,4
	.comm	teleport4,52,4
	.comm	teleport3,52,4
	.comm	teleport2,52,4
	.comm	teleport,52,4
	.comm	player,52,4
	.comm	shadowOAM,1024,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	backgroundcollision4, %object
	.size	backgroundcollision4, 4
backgroundcollision4:
	.word	backgroundcollision4Bitmap
	.ident	"GCC: (devkitARM release 53) 9.1.0"
