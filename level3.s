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
	.file	"level3.c"
	.text
	.align	2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer3.part.0, %function
drawPlayer3.part.0:
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
	.size	drawPlayer3.part.0, .-drawPlayer3.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawTeleport3.part.0, %function
drawTeleport3.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L8
	ldr	ip, .L8+4
	ldr	r2, [r5, #28]
	ldr	r3, .L8+8
	ldr	r1, [ip, #4]
	ldr	r0, [ip, #28]
	ldrb	ip, [ip]	@ zero_extendqisi2
	lsl	r2, r2, #22
	strh	ip, [r3, #8]	@ movhi
	add	r2, r2, #262144
	ldr	ip, .L8+12
	lsr	r2, r2, #16
	ldr	r6, .L8+16
	strh	r2, [r3, #28]	@ movhi
	strh	r2, [r3, #36]	@ movhi
	strh	r2, [r3, #44]	@ movhi
	and	r2, r1, ip
	orr	r2, r2, #16384
	ldr	r1, [r6, #4]
	strh	r2, [r3, #10]	@ movhi
	lsl	r0, r0, #6
	ldr	r2, [r6, #28]
	add	r0, r0, #4
	ldr	r4, .L8+20
	ldr	lr, .L8+24
	strh	r0, [r3, #12]	@ movhi
	and	r1, r1, ip
	ldrb	r0, [r6]	@ zero_extendqisi2
	lsl	r2, r2, #6
	orr	r1, r1, #16384
	add	r2, r2, #4
	strh	r0, [r3, #16]	@ movhi
	strh	r1, [r3, #18]	@ movhi
	ldr	r0, [r5, #4]
	ldr	r1, [r4, #4]
	strh	r2, [r3, #20]	@ movhi
	ldr	r2, [lr, #4]
	ldrb	r5, [r5]	@ zero_extendqisi2
	ldrb	r4, [r4]	@ zero_extendqisi2
	ldrb	lr, [lr]	@ zero_extendqisi2
	and	r0, r0, ip
	and	r1, r1, ip
	and	r2, r2, ip
	orr	r0, r0, #16384
	orr	r1, r1, #16384
	orr	r2, r2, #16384
	strh	r5, [r3, #24]	@ movhi
	strh	r0, [r3, #26]	@ movhi
	strh	r4, [r3, #32]	@ movhi
	strh	r1, [r3, #34]	@ movhi
	strh	r2, [r3, #42]	@ movhi
	strh	lr, [r3, #40]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	teleport3
	.word	teleport
	.word	shadowOAM
	.word	511
	.word	teleport2
	.word	teleport4
	.word	teleport5
	.size	drawTeleport3.part.0, .-drawTeleport3.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawMouth3.part.0, %function
drawMouth3.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L12
	push	{r4, r5, r6, lr}
	ldr	ip, .L12+4
	ldr	r6, .L12+8
	ldr	r0, [r1, #4]
	ldr	r3, .L12+12
	ldrb	lr, [r1]	@ zero_extendqisi2
	ldr	r2, [r1, #28]
	and	r0, r0, r6
	ldr	r1, [ip, #4]
	orr	r0, r0, #16384
	ldr	r5, .L12+16
	ldr	r4, .L12+20
	and	r1, r1, r6
	strh	r0, [r3, #50]	@ movhi
	lsl	r2, r2, #6
	ldrb	r0, [ip]	@ zero_extendqisi2
	add	r2, r2, #6
	orr	r1, r1, #16384
	strh	lr, [r3, #48]	@ movhi
	strh	r2, [r3, #52]	@ movhi
	ldr	lr, [ip, #28]
	ldr	r2, [r4, #28]
	ldr	ip, [r5, #4]
	strh	r0, [r3, #56]	@ movhi
	strh	r1, [r3, #58]	@ movhi
	ldr	r0, [r5, #28]
	ldr	r1, [r4, #4]
	ldrb	r5, [r5]	@ zero_extendqisi2
	ldrb	r4, [r4]	@ zero_extendqisi2
	and	ip, ip, r6
	and	r1, r1, r6
	lsl	lr, lr, #6
	lsl	r0, r0, #6
	lsl	r2, r2, #6
	add	lr, lr, #6
	orr	ip, ip, #16384
	add	r0, r0, #6
	orr	r1, r1, #16384
	add	r2, r2, #6
	strh	lr, [r3, #60]	@ movhi
	strh	r5, [r3, #64]	@ movhi
	strh	r4, [r3, #72]	@ movhi
	strh	ip, [r3, #66]	@ movhi
	strh	r0, [r3, #68]	@ movhi
	strh	r1, [r3, #74]	@ movhi
	strh	r2, [r3, #76]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	mouth
	.word	mouth2
	.word	511
	.word	shadowOAM
	.word	mouth3
	.word	mouth4
	.size	drawMouth3.part.0, .-drawMouth3.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGate3.part.0, %function
updateGate3.part.0:
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
	.word	gate
	.size	updateGate3.part.0, .-updateGate3.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGate3.part.0, %function
drawGate3.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L21
	ldr	r3, [r0, #4]
	ldr	r2, [r0, #28]
	lsl	r3, r3, #23
	ldr	r1, .L21+4
	ldrb	r0, [r0]	@ zero_extendqisi2
	lsr	r3, r3, #23
	lsl	r2, r2, #6
	orr	r3, r3, #16384
	add	r2, r2, #8
	strh	r3, [r1, #82]	@ movhi
	strh	r0, [r1, #80]	@ movhi
	strh	r2, [r1, #84]	@ movhi
	bx	lr
.L22:
	.align	2
.L21:
	.word	gate
	.word	shadowOAM
	.size	drawGate3.part.0, .-drawGate3.part.0
	.align	2
	.global	drawLevel3
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLevel3, %function
drawLevel3:
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
	bl	drawPlayer3.part.0
	ldr	r3, .L36+8
	ldr	r3, [r3, #44]
	cmp	r3, #0
	bne	.L33
.L26:
	bl	drawTeleport3.part.0
	ldr	r3, .L36+12
	ldr	r3, [r3, #44]
	cmp	r3, #0
	bne	.L34
.L28:
	bl	drawMouth3.part.0
	ldr	r3, .L36+16
	ldr	r3, [r3, #44]
	cmp	r3, #0
	bne	.L35
.L30:
	bl	drawGate3.part.0
	b	.L31
.L37:
	.align	2
.L36:
	.word	player
	.word	shadowOAM
	.word	teleport
	.word	mouth
	.word	gate
	.word	waitForVBlank
	.word	DMANow
	.word	hOff
	.word	vOff
	.size	drawLevel3, .-drawLevel3
	.align	2
	.global	initPlayer3
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer3, %function
initPlayer3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	ip, #8
	mov	r5, #20
	mov	r4, #92
	mov	lr, #3
	mov	r0, #16
	mov	r1, #0
	mov	r2, #1
	ldr	r3, .L40
	str	r5, [r3]
	str	r4, [r3, #4]
	str	lr, [r3, #40]
	str	ip, [r3, #16]
	str	ip, [r3, #20]
	str	r0, [r3, #8]
	str	r0, [r3, #12]
	str	r1, [r3, #24]
	str	r1, [r3, #36]
	str	r2, [r3, #28]
	str	r2, [r3, #48]
	pop	{r4, r5, lr}
	bx	lr
.L41:
	.align	2
.L40:
	.word	player
	.size	initPlayer3, .-initPlayer3
	.align	2
	.global	drawPlayer3
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer3, %function
drawPlayer3:
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
	b	drawPlayer3.part.0
.L47:
	.align	2
.L46:
	.word	player
	.word	shadowOAM
	.size	drawPlayer3, .-drawPlayer3
	.align	2
	.global	initTeleport3
	.syntax unified
	.arm
	.fpu softvfp
	.type	initTeleport3, %function
initTeleport3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r8, #48
	mov	lr, #104
	mov	ip, #192
	mov	r0, #208
	mov	r1, #32
	mov	r3, #0
	mov	r2, #16
	mov	r5, #4
	mov	r7, #40
	mov	r6, #56
	ldr	r4, .L50
	stm	r4, {r8, lr}
	ldr	lr, .L50+4
	str	ip, [lr, #4]
	ldr	ip, .L50+8
	str	r0, [ip, #4]
	ldr	r0, .L50+12
	str	r1, [r0, #4]
	ldr	r1, .L50+16
	str	r2, [r4, #16]
	str	r2, [r4, #20]
	str	r3, [r4, #24]
	str	r2, [lr, #16]
	str	r2, [lr, #20]
	str	r7, [lr]
	str	r6, [ip]
	str	r7, [r0]
	str	r6, [r1]
	str	r3, [r4, #36]
	str	r3, [r4, #28]
	str	r3, [lr, #24]
	str	r3, [lr, #36]
	str	r3, [lr, #28]
	str	r5, [r4, #40]
	str	r5, [lr, #40]
	str	r2, [ip, #16]
	str	r2, [ip, #20]
	str	r2, [r0, #16]
	str	r2, [r0, #20]
	str	r2, [r1, #16]
	str	r2, [r1, #20]
	str	r2, [r1, #4]
	str	r3, [ip, #24]
	str	r3, [ip, #36]
	str	r3, [ip, #28]
	str	r5, [ip, #40]
	str	r5, [r0, #40]
	str	r5, [r1, #40]
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
	.word	teleport2
	.word	teleport3
	.word	teleport4
	.word	teleport5
	.size	initTeleport3, .-initTeleport3
	.align	2
	.global	updateTeleport3
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateTeleport3, %function
updateTeleport3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L73
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
	ldr	r2, .L73+4
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
	ldr	r2, .L73+8
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
	ldr	r2, .L73+12
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
	ldr	r2, .L73+16
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
.L74:
	.align	2
.L73:
	.word	teleport
	.word	teleport2
	.word	teleport3
	.word	teleport4
	.word	teleport5
	.size	updateTeleport3, .-updateTeleport3
	.align	2
	.global	drawTeleport3
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawTeleport3, %function
drawTeleport3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L79
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L76
	ldr	r2, .L79+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L76:
	b	drawTeleport3.part.0
.L80:
	.align	2
.L79:
	.word	teleport
	.word	shadowOAM
	.size	drawTeleport3, .-drawTeleport3
	.align	2
	.global	initMouth3
	.syntax unified
	.arm
	.fpu softvfp
	.type	initMouth3, %function
initMouth3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r3, #0
	mov	lr, #16
	mov	r4, #4
	mov	r8, #24
	mov	r7, #32
	mov	r6, #56
	mov	r5, #192
	ldr	ip, .L83
	ldr	r0, .L83+4
	ldr	r1, .L83+8
	ldr	r2, .L83+12
	str	lr, [ip, #16]
	str	lr, [ip, #20]
	str	lr, [r0, #16]
	str	lr, [r0, #20]
	str	lr, [r1, #16]
	str	lr, [r1, #20]
	str	lr, [r2, #16]
	str	lr, [r2, #20]
	str	r8, [ip]
	str	r8, [r1]
	str	r7, [ip, #4]
	str	r7, [r0, #4]
	str	r4, [ip, #40]
	str	r4, [r0, #40]
	str	r4, [r1, #40]
	str	r4, [r2, #40]
	str	r6, [r0]
	str	r6, [r2]
	str	r5, [r1, #4]
	str	r3, [ip, #24]
	str	r3, [ip, #36]
	str	r3, [ip, #28]
	str	r3, [r0, #24]
	str	r3, [r0, #36]
	str	r3, [r0, #28]
	str	r3, [r1, #24]
	str	r3, [r1, #36]
	str	r3, [r1, #28]
	str	r3, [r2, #24]
	str	r3, [r2, #36]
	str	r3, [r2, #28]
	str	r5, [r2, #4]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L84:
	.align	2
.L83:
	.word	mouth
	.word	mouth2
	.word	mouth3
	.word	mouth4
	.size	initMouth3, .-initMouth3
	.align	2
	.global	initLevel3
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLevel3, %function
initLevel3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r1, #8
	mov	r4, #0
	mov	r6, #16
	mov	r5, #3
	mov	r2, #1
	mov	ip, #20
	mov	r0, #92
	ldr	r3, .L87
	stmib	r3, {r0, r6}
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	ip, [r3]
	str	r6, [r3, #12]
	str	r4, [r3, #24]
	str	r4, [r3, #36]
	str	r5, [r3, #40]
	str	r2, [r3, #28]
	str	r2, [r3, #48]
	bl	initTeleport3
	bl	initMouth3
	mov	r2, #112
	mov	r1, #120
	mov	lr, #4
	ldr	ip, .L87+4
	mov	r0, r5
	str	r6, [ip, #16]
	str	r6, [ip, #20]
	str	r2, [ip]
	str	r1, [ip, #4]
	ldr	r6, .L87+8
	mov	r3, #1024
	ldr	r2, .L87+12
	ldr	r1, .L87+16
	str	r4, [ip, #24]
	str	r4, [ip, #36]
	str	r4, [ip, #28]
	str	lr, [ip, #40]
	mov	lr, pc
	bx	r6
	mov	r0, r5
	mov	r3, #48
	ldr	r2, .L87+20
	ldr	r1, .L87+24
	mov	lr, pc
	bx	r6
	mov	r0, r5
	mov	r3, #1024
	ldr	r2, .L87+28
	ldr	r1, .L87+32
	mov	lr, pc
	bx	r6
	mov	r0, #48
	mov	r2, #9
	ldr	lr, .L87+36
	ldr	ip, .L87+40
	ldr	r1, .L87+44
	ldr	r3, .L87+48
	str	r4, [lr]
	str	r4, [ip]
	str	r0, [r1]
	str	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L88:
	.align	2
.L87:
	.word	player
	.word	gate
	.word	DMANow
	.word	100724736
	.word	tilesCollision3Map
	.word	100696064
	.word	tilesCollision3Tiles
	.word	100726784
	.word	background3Map
	.word	reachGate3
	.word	cheatMode
	.word	tilesRemaining3
	.word	hOff
	.size	initLevel3, .-initLevel3
	.align	2
	.global	updateMouth3
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateMouth3, %function
updateMouth3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L106
	ldr	r3, [r2, #24]
	add	r3, r3, #1
	cmp	r3, #15
	str	r3, [r2, #24]
	bne	.L90
	ldr	r3, [r2, #28]
	add	r3, r3, #1
	cmp	r3, #3
	movgt	r3, #0
	str	r3, [r2, #28]
	mov	r3, #0
	str	r3, [r2, #24]
.L90:
	ldr	r2, .L106+4
	ldr	r3, [r2, #24]
	add	r3, r3, #1
	cmp	r3, #15
	str	r3, [r2, #24]
	bne	.L93
	ldr	r3, [r2, #28]
	add	r3, r3, #1
	cmp	r3, #3
	movgt	r3, #0
	str	r3, [r2, #28]
	mov	r3, #0
	str	r3, [r2, #24]
.L93:
	ldr	r2, .L106+8
	ldr	r3, [r2, #24]
	add	r3, r3, #1
	cmp	r3, #15
	str	r3, [r2, #24]
	bne	.L96
	ldr	r3, [r2, #28]
	add	r3, r3, #1
	cmp	r3, #3
	movgt	r3, #0
	str	r3, [r2, #28]
	mov	r3, #0
	str	r3, [r2, #24]
.L96:
	ldr	r2, .L106+12
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
.L107:
	.align	2
.L106:
	.word	mouth
	.word	mouth2
	.word	mouth3
	.word	mouth4
	.size	updateMouth3, .-updateMouth3
	.align	2
	.global	drawMouth3
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawMouth3, %function
drawMouth3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L112
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L109
	ldr	r2, .L112+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L109:
	b	drawMouth3.part.0
.L113:
	.align	2
.L112:
	.word	mouth
	.word	shadowOAM
	.size	drawMouth3, .-drawMouth3
	.align	2
	.global	initGate3
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGate3, %function
initGate3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #0
	mov	r1, #16
	mov	lr, #112
	mov	ip, #120
	mov	r0, #4
	ldr	r3, .L116
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
.L117:
	.align	2
.L116:
	.word	gate
	.size	initGate3, .-initGate3
	.align	2
	.global	updateGate3
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGate3, %function
updateGate3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L120
	ldr	r3, [r2, #24]
	add	r3, r3, #1
	cmp	r3, #15
	str	r3, [r2, #24]
	bxne	lr
	b	updateGate3.part.0
.L121:
	.align	2
.L120:
	.word	gate
	.size	updateGate3, .-updateGate3
	.align	2
	.global	drawGate3
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGate3, %function
drawGate3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L126
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L123
	ldr	r2, .L126+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L123:
	b	drawGate3.part.0
.L127:
	.align	2
.L126:
	.word	gate
	.word	shadowOAM
	.size	drawGate3, .-drawGate3
	.align	2
	.global	eraseTiles3
	.syntax unified
	.arm
	.fpu softvfp
	.type	eraseTiles3, %function
eraseTiles3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, #0
	ldr	r2, .L146
	lsl	r6, r0, #3
	add	r3, r0, r1, lsl #5
	add	ip, r6, #2048
	lsl	r3, r3, #1
	strh	r4, [r2, r3]	@ movhi
	add	r7, ip, #8
	ldr	r2, .L146+4
	add	r8, r7, r1, lsl #11
	add	lr, ip, r1, lsl #11
	lsl	r9, r1, #5
	lsl	r5, r1, #11
.L129:
	sub	r3, lr, #2048
.L130:
	ldr	r1, [r2]
	strb	r4, [r1, r3]
	add	r3, r3, #256
	cmp	r3, lr
	bne	.L130
	add	lr, r3, #1
	cmp	lr, r8
	bne	.L129
	mov	r10, #0
	add	r8, r0, #1
	ldr	r1, .L146
	add	r3, r9, r8
	add	r6, r6, #2064
	lsl	r3, r3, #1
	add	lr, ip, #8
	strh	r4, [r1, r3]	@ movhi
	add	fp, r6, r5
	add	r4, lr, r5
.L132:
	sub	r3, r4, #2048
.L133:
	ldr	r1, [r2]
	strb	r10, [r1, r3]
	add	r3, r3, #256
	cmp	r3, r4
	bne	.L133
	add	r4, r3, #1
	cmp	r4, fp
	bne	.L132
	mov	r4, #0
	sub	r9, r9, #32
	ldr	r1, .L146
	add	r3, r9, r0
	lsl	r3, r3, #1
	sub	r5, r5, #2048
	strh	r10, [r1, r3]	@ movhi
	add	ip, r5, ip
	add	r7, r5, r7
.L135:
	sub	r3, ip, #2048
.L136:
	ldr	r1, [r2]
	strb	r4, [r1, r3]
	add	r3, r3, #256
	cmp	ip, r3
	bne	.L136
	add	ip, ip, #1
	cmp	ip, r7
	bne	.L135
	mov	ip, #0
	ldr	r1, .L146
	add	r9, r8, r9
	lsl	r3, r9, #1
	strh	r4, [r1, r3]	@ movhi
	add	r0, lr, r5
	add	r6, r6, r5
.L138:
	sub	r3, r0, #2048
.L139:
	ldr	r1, [r2]
	strb	ip, [r1, r3]
	add	r3, r3, #256
	cmp	r0, r3
	bne	.L139
	add	r0, r0, #1
	cmp	r6, r0
	bne	.L138
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L147:
	.align	2
.L146:
	.word	100726784
	.word	.LANCHOR0
	.size	eraseTiles3, .-eraseTiles3
	.align	2
	.global	updatePlayer3
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer3, %function
updatePlayer3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r7, .L233
	ldr	r3, [r7]
	ldr	r4, .L233+4
	cmp	r3, #0
	ldr	r6, [r4]
	ldr	r5, [r4, #4]
	sub	sp, sp, #16
	bne	.L149
	adds	r3, r6, #8
	addmi	r3, r6, #15
	cmp	r5, #0
	add	r2, r5, #7
	movge	r2, r5
	asr	r3, r3, #3
	lsl	r3, r3, #5
	add	r3, r3, r2, asr #3
	ldr	r2, .L233+8
	lsl	r3, r3, #1
	ldrh	r2, [r2, r3]
	cmp	r2, #0
	beq	.L223
.L149:
	ldr	r8, .L233+12
	ldrh	r3, [r8]
	tst	r3, #64
	beq	.L150
	ldr	r2, .L233+16
	ldrh	r2, [r2]
	ands	r2, r2, #64
	beq	.L224
.L150:
	tst	r3, #128
	beq	.L153
	ldr	r2, .L233+16
	ldrh	r2, [r2]
	ands	r2, r2, #128
	beq	.L225
.L153:
	tst	r3, #32
	beq	.L156
	ldr	r2, .L233+16
	ldrh	r2, [r2]
	ands	r2, r2, #32
	beq	.L226
.L156:
	tst	r3, #16
	beq	.L221
	ldr	r3, .L233+16
	ldrh	r2, [r3]
	ands	r8, r2, #16
	beq	.L227
.L221:
	ldr	r0, [r4, #4]
	ldr	r1, [r4]
.L222:
	add	r2, r4, #16
	ldm	r2, {r2, r3}
.L160:
	ldr	lr, [r4, #24]
	ldr	ip, .L233+20
	add	lr, lr, #1
	smull	r6, r5, ip, lr
	asr	ip, lr, #31
	rsb	ip, ip, r5, asr #2
	add	ip, ip, ip, lsl #2
	subs	ip, lr, ip, lsl #1
	str	lr, [r4, #24]
	bne	.L165
	ldr	lr, [r4, #36]
	ldr	r5, [r4, #40]
	add	lr, lr, #1
	cmp	lr, r5
	movne	ip, lr
	str	ip, [r4, #36]
.L165:
	ldr	ip, .L233+24
	add	r5, ip, #16
	ldm	r5, {r5, lr}
	str	lr, [sp, #12]
	ldr	lr, [ip]
	ldr	ip, [ip, #4]
	str	r5, [sp, #8]
	stm	sp, {ip, lr}
	ldr	r5, .L233+28
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L167
	ldr	r0, [r4, #4]
	ldr	r1, [r4]
.L168:
	ldr	r3, .L233+32
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
	bne	.L169
	ldr	r0, [r4, #4]
	ldr	r1, [r4]
.L170:
	ldr	r3, .L233+36
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
	bne	.L171
	ldr	r0, [r4, #4]
	ldr	r1, [r4]
.L172:
	ldr	r3, .L233+40
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
	bne	.L173
	ldr	r0, [r4, #4]
	ldr	r1, [r4]
.L174:
	ldr	r3, .L233+44
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
	bne	.L175
	ldr	r0, [r4, #4]
	ldr	r1, [r4]
.L176:
	ldr	r3, .L233+48
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
	bne	.L179
	ldr	r3, .L233+52
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
	beq	.L228
.L179:
	ldr	r3, .L233+56
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L233+60
	ldr	r3, .L233+64
	mov	lr, pc
	bx	r3
	mov	r3, #0
	str	r3, [r4, #48]
.L178:
	ldr	r3, .L233+68
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
	ldrne	r3, .L233+72
	strne	r2, [r3]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L167:
	ldr	r3, .L233+76
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L233+80
	ldr	r3, .L233+64
	mov	lr, pc
	bx	r3
	mov	r2, #12
	mov	r3, #180
	mov	r1, r2
	mov	r0, r3
	stm	r4, {r2, r3}
	b	.L168
.L175:
	ldr	r3, .L233+76
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L233+80
	ldr	r3, .L233+64
	mov	lr, pc
	bx	r3
	mov	r2, #100
	mov	r3, #124
	mov	r1, r2
	mov	r0, r3
	stm	r4, {r2, r3}
	b	.L176
.L173:
	ldr	r3, .L233+76
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L233+80
	ldr	r3, .L233+64
	mov	lr, pc
	bx	r3
	mov	r2, #28
	mov	r3, #180
	mov	r1, r2
	mov	r0, r3
	stm	r4, {r2, r3}
	b	.L174
.L171:
	ldr	r3, .L233+76
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L233+80
	ldr	r3, .L233+64
	mov	lr, pc
	bx	r3
	mov	r2, #28
	mov	r3, #52
	mov	r1, r2
	mov	r0, r3
	stm	r4, {r2, r3}
	b	.L172
.L169:
	ldr	r3, .L233+76
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L233+80
	ldr	r3, .L233+64
	mov	lr, pc
	bx	r3
	mov	r2, #12
	mov	r3, #52
	mov	r1, r2
	mov	r0, r3
	stm	r4, {r2, r3}
	b	.L170
.L228:
	ldr	r3, .L233+84
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
	bne	.L179
	ldr	r3, .L233+88
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
	bne	.L179
	b	.L178
.L223:
	ldr	r3, .L233+92
	ldr	r0, .L233+96
	ldr	r1, [r3]
	ldr	r3, .L233+64
	str	r2, [r4, #48]
	mov	lr, pc
	bx	r3
	b	.L149
.L224:
	ldr	r3, .L233+100
	ldr	r0, .L233+104
	ldr	r1, [r3]
	ldr	r3, .L233+64
	mov	lr, pc
	bx	r3
	mov	r3, #2
	ldr	r2, [r7]
	cmp	r2, #1
	str	r3, [r4, #28]
	beq	.L229
	ldr	r3, [r4]
	ldr	r2, [r4, #8]
	sub	r3, r3, r2
	ldr	r2, [r4, #4]
	cmp	r3, r6
	cmpeq	r2, r5
	ldr	r1, .L233+108
	ldr	r2, [r1]
	sub	r2, r2, #1
	moveq	r6, r3
	str	r2, [r1]
	str	r3, [r4]
	beq	.L152
	adds	r1, r6, #8
	addmi	r1, r6, #15
	cmp	r5, #0
	add	r0, r5, #7
	movge	r0, r5
	asr	r1, r1, #3
	asr	r0, r0, #3
	bl	eraseTiles3
	ldr	r6, [r4]
.L152:
	ldrh	r3, [r8]
	b	.L150
.L225:
	ldr	r3, .L233+100
	ldr	r0, .L233+104
	ldr	r1, [r3]
	ldr	r3, .L233+64
	mov	lr, pc
	bx	r3
	mov	r3, #3
	ldr	r2, [r7]
	cmp	r2, #1
	str	r3, [r4, #28]
	beq	.L230
	ldr	r3, [r4]
	ldr	r2, [r4, #12]
	add	r3, r3, r2
	ldr	r2, [r4, #4]
	cmp	r3, r6
	cmpeq	r2, r5
	ldr	r1, .L233+108
	ldr	r2, [r1]
	sub	r2, r2, #1
	moveq	r6, r3
	str	r2, [r1]
	str	r3, [r4]
	beq	.L155
	adds	r1, r6, #8
	addmi	r1, r6, #15
	cmp	r5, #0
	add	r0, r5, #7
	movge	r0, r5
	asr	r1, r1, #3
	asr	r0, r0, #3
	bl	eraseTiles3
	ldr	r6, [r4]
.L155:
	ldrh	r3, [r8]
	b	.L153
.L226:
	ldr	r3, .L233+100
	ldr	r0, .L233+104
	ldr	r1, [r3]
	ldr	r3, .L233+64
	mov	lr, pc
	bx	r3
	mov	r3, #1
	ldr	r2, [r7]
	cmp	r2, r3
	str	r3, [r4, #28]
	beq	.L231
	ldr	r3, [r4, #4]
	ldr	r2, [r4, #12]
	sub	r3, r3, r2
	ldr	r2, [r4]
	cmp	r3, r5
	cmpeq	r2, r6
	ldr	r1, .L233+108
	ldr	r2, [r1]
	sub	r2, r2, #1
	moveq	r5, r3
	str	r2, [r1]
	str	r3, [r4, #4]
	beq	.L158
	adds	r1, r6, #8
	addmi	r1, r6, #15
	cmp	r5, #0
	add	r0, r5, #7
	movge	r0, r5
	asr	r1, r1, #3
	asr	r0, r0, #3
	bl	eraseTiles3
	ldr	r5, [r4, #4]
.L158:
	ldrh	r3, [r8]
	b	.L156
.L227:
	ldr	r3, .L233+100
	mov	r2, r8
	ldr	r1, [r3]
	ldr	r0, .L233+104
	ldr	r3, .L233+64
	mov	lr, pc
	bx	r3
	ldr	r3, [r7]
	cmp	r3, #1
	str	r8, [r4, #28]
	beq	.L232
	ldr	r3, [r4, #4]
	ldr	r0, [r4, #12]
	ldr	r1, [r4]
	add	r0, r3, r0
	cmp	r1, r6
	cmpeq	r0, r5
	ldr	r2, .L233+108
	ldr	r3, [r2]
	sub	r3, r3, #1
	str	r3, [r2]
	str	r0, [r4, #4]
	beq	.L222
	adds	r1, r6, #8
	addmi	r1, r6, #15
	cmp	r5, #0
	add	r0, r5, #7
	movge	r0, r5
	asr	r1, r1, #3
	asr	r0, r0, #3
	bl	eraseTiles3
	b	.L221
.L231:
	ldr	r0, [r4, #4]
	ldr	r1, [r4, #12]
	cmp	r0, r1
	ldrh	r3, [r8]
	blt	.L156
	ldr	ip, .L233+112
	ldr	r2, [r4]
	ldr	ip, [ip]
	rsb	lr, r2, r2, lsl #4
	sub	r1, r0, r1
	add	r0, ip, lr, lsl #4
	ldrb	r0, [r0, r1]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L156
	ldr	r0, [r4, #20]
	add	r2, r2, r0
	sub	r2, r2, #1
	rsb	r2, r2, r2, lsl #4
	add	r2, ip, r2, lsl #4
	ldrb	r2, [r2, r1]	@ zero_extendqisi2
	cmp	r2, #0
	strne	r1, [r4, #4]
	b	.L156
.L232:
	ldr	r0, [r4, #4]
	ldr	r2, [r4, #16]
	ldr	r5, [r4, #12]
	add	ip, r0, r2
	rsb	r3, r5, #240
	cmp	ip, r3
	ldr	r1, [r4]
	ldr	r3, [r4, #20]
	bgt	.L160
	ldr	lr, .L233+112
	ldr	r6, [lr]
	add	ip, ip, r5
	rsb	lr, r1, r1, lsl #4
	sub	ip, ip, #1
	add	lr, r6, lr, lsl #4
	ldrb	lr, [lr, ip]	@ zero_extendqisi2
	cmp	lr, #0
	beq	.L160
	add	lr, r1, r3
	sub	lr, lr, #1
	rsb	lr, lr, lr, lsl #4
	add	r6, r6, lr, lsl #4
	ldrb	ip, [r6, ip]	@ zero_extendqisi2
	cmp	ip, #0
	addne	r0, r0, r5
	strne	r0, [r4, #4]
	b	.L160
.L230:
	ldr	r1, [r4]
	ldr	r2, [r4, #20]
	ldr	r0, [r4, #12]
	add	r2, r1, r2
	rsb	r3, r0, #160
	cmp	r2, r3
	ldrh	r3, [r8]
	bgt	.L153
	ldr	lr, [r4, #8]
	ldr	ip, .L233+112
	add	r2, r2, lr
	ldr	ip, [ip]
	sub	r2, r2, #1
	ldr	lr, [r4, #4]
	rsb	r2, r2, r2, lsl #4
	add	r2, ip, r2, lsl #4
	ldrb	ip, [r2, lr]	@ zero_extendqisi2
	cmp	ip, #0
	add	r2, r2, lr
	beq	.L153
	ldr	ip, [r4, #16]
	add	r2, r2, ip
	ldrb	r2, [r2, #-1]	@ zero_extendqisi2
	cmp	r2, #0
	addne	r1, r1, r0
	strne	r1, [r4]
	b	.L153
.L229:
	ldr	r2, [r4]
	cmp	r2, #0
	ldrh	r3, [r8]
	ble	.L150
	ldr	r0, .L233+112
	ldr	r1, [r4, #8]
	sub	r1, r2, r1
	ldr	r2, [r0]
	rsb	ip, r1, r1, lsl #4
	ldr	r0, [r4, #4]
	add	r2, r2, ip, lsl #4
	ldrb	ip, [r2, r0]	@ zero_extendqisi2
	cmp	ip, #0
	add	r2, r2, r0
	beq	.L150
	ldr	r0, [r4, #16]
	add	r2, r2, r0
	ldrb	r2, [r2, #-1]	@ zero_extendqisi2
	cmp	r2, #0
	strne	r1, [r4]
	b	.L150
.L234:
	.align	2
.L233:
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
	.word	mouth
	.word	mouth2
	.word	biteSound_length
	.word	biteSound_data
	.word	playSoundB
	.word	gate
	.word	reachGate3
	.word	teleportSound_length
	.word	teleportSound_data
	.word	mouth3
	.word	mouth4
	.word	dyingSound_length
	.word	dyingSound_data
	.word	clickSound_length
	.word	clickSound_data
	.word	tilesRemaining3
	.word	.LANCHOR0
	.size	updatePlayer3, .-updatePlayer3
	.align	2
	.global	updateLevel3
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateLevel3, %function
updateLevel3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	updatePlayer3
	bl	updateMouth3
	ldr	r2, .L238
	ldr	r3, [r2, #24]
	add	r3, r3, #1
	cmp	r3, #15
	str	r3, [r2, #24]
	bleq	updateGate3.part.0
.L236:
	bl	updateTeleport3
	ldr	r2, .L238+4
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	pop	{r4, lr}
	bx	lr
.L239:
	.align	2
.L238:
	.word	gate
	.word	hOff
	.size	updateLevel3, .-updateLevel3
	.comm	cheatMode,4,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	reachGate3,4,4
	.comm	tilesRemaining3,4,4
	.global	backgroundcollision3
	.comm	gate,56,4
	.comm	mouth4,56,4
	.comm	mouth3,56,4
	.comm	mouth2,56,4
	.comm	mouth,56,4
	.comm	teleport5,56,4
	.comm	teleport4,56,4
	.comm	teleport3,56,4
	.comm	teleport2,56,4
	.comm	teleport,56,4
	.comm	player,56,4
	.comm	shadowOAM,1024,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	backgroundcollision3, %object
	.size	backgroundcollision3, 4
backgroundcollision3:
	.word	backgroundcollision3Bitmap
	.ident	"GCC: (devkitARM release 53) 9.1.0"
