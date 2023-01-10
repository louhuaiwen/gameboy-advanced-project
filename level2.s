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
	.file	"level2.c"
	.text
	.align	2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer2.part.0, %function
drawPlayer2.part.0:
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
	.size	drawPlayer2.part.0, .-drawPlayer2.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawTeleport2.part.0, %function
drawTeleport2.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L8
	push	{r4, r5, r6, r7, lr}
	ldr	r2, [r0, #4]
	ldr	r6, .L8+4
	ldr	r3, .L8+8
	ldr	r1, .L8+12
	ldr	r4, .L8+16
	and	r2, r2, r6
	orr	r2, r2, #16384
	ldrb	r7, [r0]	@ zero_extendqisi2
	ldrb	r5, [r1]	@ zero_extendqisi2
	ldr	lr, [r0, #28]
	ldr	ip, [r1, #4]
	ldr	r0, [r1, #28]
	strh	r2, [r3, #10]	@ movhi
	ldr	r1, [r4, #4]
	ldr	r2, [r4, #28]
	and	ip, ip, r6
	ldrb	r4, [r4]	@ zero_extendqisi2
	and	r1, r1, r6
	lsl	lr, lr, #6
	lsl	r0, r0, #6
	lsl	r2, r2, #6
	add	lr, lr, #4
	orr	ip, ip, #16384
	add	r0, r0, #4
	orr	r1, r1, #16384
	add	r2, r2, #4
	strh	r7, [r3, #8]	@ movhi
	strh	lr, [r3, #12]	@ movhi
	strh	r5, [r3, #16]	@ movhi
	strh	r4, [r3, #24]	@ movhi
	strh	ip, [r3, #18]	@ movhi
	strh	r0, [r3, #20]	@ movhi
	strh	r1, [r3, #26]	@ movhi
	strh	r2, [r3, #28]	@ movhi
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	teleport
	.word	511
	.word	shadowOAM
	.word	teleport2
	.word	teleport3
	.size	drawTeleport2.part.0, .-drawTeleport2.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawMouth2.part.0, %function
drawMouth2.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L12
	ldr	lr, .L12+4
	ldr	r2, .L12+8
	ldr	ip, [r4, #4]
	ldr	r0, [lr, #4]
	ldr	r1, [r4, #28]
	and	ip, ip, r2
	and	r0, r0, r2
	ldr	r2, [lr, #28]
	ldr	r3, .L12+12
	ldrb	r4, [r4]	@ zero_extendqisi2
	ldrb	lr, [lr]	@ zero_extendqisi2
	lsl	r1, r1, #6
	lsl	r2, r2, #6
	orr	ip, ip, #16384
	orr	r0, r0, #16384
	add	r1, r1, #6
	add	r2, r2, #6
	strh	r4, [r3, #32]	@ movhi
	strh	lr, [r3, #40]	@ movhi
	strh	ip, [r3, #34]	@ movhi
	strh	r0, [r3, #42]	@ movhi
	strh	r1, [r3, #36]	@ movhi
	strh	r2, [r3, #44]	@ movhi
	pop	{r4, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	mouth
	.word	mouth2
	.word	511
	.word	shadowOAM
	.size	drawMouth2.part.0, .-drawMouth2.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGate2.part.0, %function
updateGate2.part.0:
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
	.size	updateGate2.part.0, .-updateGate2.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGate2.part.0, %function
drawGate2.part.0:
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
	strh	r3, [r1, #50]	@ movhi
	strh	r0, [r1, #48]	@ movhi
	strh	r2, [r1, #52]	@ movhi
	bx	lr
.L22:
	.align	2
.L21:
	.word	gate
	.word	shadowOAM
	.size	drawGate2.part.0, .-drawGate2.part.0
	.align	2
	.global	drawLevel2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLevel2, %function
drawLevel2:
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
	bl	drawPlayer2.part.0
	ldr	r3, .L36+8
	ldr	r3, [r3, #44]
	cmp	r3, #0
	bne	.L33
.L26:
	bl	drawTeleport2.part.0
	ldr	r3, .L36+12
	ldr	r3, [r3, #44]
	cmp	r3, #0
	bne	.L34
.L28:
	bl	drawMouth2.part.0
	ldr	r3, .L36+16
	ldr	r3, [r3, #44]
	cmp	r3, #0
	bne	.L35
.L30:
	bl	drawGate2.part.0
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
	.size	drawLevel2, .-drawLevel2
	.align	2
	.global	initPlayer2
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer2, %function
initPlayer2:
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
	.size	initPlayer2, .-initPlayer2
	.align	2
	.global	drawPlayer2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer2, %function
drawPlayer2:
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
	b	drawPlayer2.part.0
.L47:
	.align	2
.L46:
	.word	player
	.word	shadowOAM
	.size	drawPlayer2, .-drawPlayer2
	.align	2
	.global	initTeleport2
	.syntax unified
	.arm
	.fpu softvfp
	.type	initTeleport2, %function
initTeleport2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #176
	push	{r4, r5, lr}
	mov	r3, #0
	mov	ip, #16
	mov	lr, #4
	mov	r5, #80
	mov	r4, #128
	ldr	r0, .L50
	ldr	r1, .L50+4
	str	r2, [r0, #4]
	ldr	r2, .L50+8
	stm	r1, {r4, r5}
	str	r5, [r0]
	str	r4, [r2]
	str	lr, [r0, #40]
	str	lr, [r1, #40]
	str	lr, [r2, #40]
	str	ip, [r0, #16]
	str	ip, [r0, #20]
	str	ip, [r1, #16]
	str	ip, [r1, #20]
	str	ip, [r2, #16]
	str	ip, [r2, #20]
	str	ip, [r2, #4]
	str	r3, [r0, #24]
	str	r3, [r0, #36]
	str	r3, [r0, #28]
	str	r3, [r1, #24]
	str	r3, [r1, #36]
	str	r3, [r1, #28]
	str	r3, [r2, #24]
	str	r3, [r2, #36]
	str	r3, [r2, #28]
	pop	{r4, r5, lr}
	bx	lr
.L51:
	.align	2
.L50:
	.word	teleport
	.word	teleport2
	.word	teleport3
	.size	initTeleport2, .-initTeleport2
	.align	2
	.global	updateTeleport2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateTeleport2, %function
updateTeleport2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L65
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
	ldr	r2, .L65+4
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
	ldr	r2, .L65+8
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
.L66:
	.align	2
.L65:
	.word	teleport
	.word	teleport2
	.word	teleport3
	.size	updateTeleport2, .-updateTeleport2
	.align	2
	.global	drawTeleport2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawTeleport2, %function
drawTeleport2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L71
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L68
	ldr	r2, .L71+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L68:
	b	drawTeleport2.part.0
.L72:
	.align	2
.L71:
	.word	teleport
	.word	shadowOAM
	.size	drawTeleport2, .-drawTeleport2
	.align	2
	.global	initMouth2
	.syntax unified
	.arm
	.fpu softvfp
	.type	initMouth2, %function
initMouth2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #64
	push	{r4, lr}
	mov	r1, #0
	mov	r0, #16
	mov	lr, #48
	mov	r4, #192
	mov	ip, #4
	ldr	r2, .L75
	str	r3, [r2, #4]
	ldr	r3, .L75+4
	str	lr, [r2]
	str	r4, [r3, #4]
	str	lr, [r3]
	str	r0, [r2, #16]
	str	r0, [r2, #20]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r1, [r2, #24]
	str	r1, [r2, #36]
	str	r1, [r2, #28]
	str	r1, [r3, #24]
	str	r1, [r3, #36]
	str	r1, [r3, #28]
	str	ip, [r2, #40]
	str	ip, [r3, #40]
	pop	{r4, lr}
	bx	lr
.L76:
	.align	2
.L75:
	.word	mouth
	.word	mouth2
	.size	initMouth2, .-initMouth2
	.align	2
	.global	initLevel2
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLevel2, %function
initLevel2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r1, #20
	mov	r4, #0
	mov	r6, #16
	mov	r5, #3
	mov	r2, #1
	mov	r0, #8
	ldr	r3, .L79
	str	r6, [r3, #8]
	str	r6, [r3, #12]
	str	r1, [r3]
	str	r1, [r3, #4]
	str	r4, [r3, #24]
	str	r4, [r3, #36]
	str	r5, [r3, #40]
	str	r2, [r3, #28]
	str	r2, [r3, #48]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	bl	initTeleport2
	bl	initMouth2
	mov	r2, #104
	mov	r1, #208
	mov	lr, #4
	ldr	ip, .L79+4
	mov	r0, r5
	str	r6, [ip, #16]
	str	r6, [ip, #20]
	str	r2, [ip]
	str	r1, [ip, #4]
	ldr	r6, .L79+8
	mov	r3, #1024
	ldr	r2, .L79+12
	ldr	r1, .L79+16
	str	r4, [ip, #24]
	str	r4, [ip, #36]
	str	r4, [ip, #28]
	str	lr, [ip, #40]
	mov	lr, pc
	bx	r6
	mov	r0, r5
	mov	r3, #48
	ldr	r2, .L79+20
	ldr	r1, .L79+24
	mov	lr, pc
	bx	r6
	mov	r0, r5
	mov	r3, #1024
	ldr	r2, .L79+28
	ldr	r1, .L79+32
	mov	lr, pc
	bx	r6
	mov	r0, #47
	mov	r2, #9
	ldr	lr, .L79+36
	ldr	ip, .L79+40
	ldr	r1, .L79+44
	ldr	r3, .L79+48
	str	r4, [lr]
	str	r4, [ip]
	str	r0, [r1]
	str	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L80:
	.align	2
.L79:
	.word	player
	.word	gate
	.word	DMANow
	.word	100724736
	.word	tilesCollision2Map
	.word	100696064
	.word	tilesCollision2Tiles
	.word	100726784
	.word	background2Map
	.word	reachGate2
	.word	cheatMode
	.word	tilesRemaining2
	.word	hOff
	.size	initLevel2, .-initLevel2
	.align	2
	.global	updateMouth2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateMouth2, %function
updateMouth2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L90
	ldr	r3, [r2, #24]
	add	r3, r3, #1
	cmp	r3, #15
	str	r3, [r2, #24]
	bne	.L82
	ldr	r3, [r2, #28]
	add	r3, r3, #1
	cmp	r3, #3
	movgt	r3, #0
	str	r3, [r2, #28]
	mov	r3, #0
	str	r3, [r2, #24]
.L82:
	ldr	r2, .L90+4
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
.L91:
	.align	2
.L90:
	.word	mouth
	.word	mouth2
	.size	updateMouth2, .-updateMouth2
	.align	2
	.global	drawMouth2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawMouth2, %function
drawMouth2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L96
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L93
	ldr	r2, .L96+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L93:
	b	drawMouth2.part.0
.L97:
	.align	2
.L96:
	.word	mouth
	.word	shadowOAM
	.size	drawMouth2, .-drawMouth2
	.align	2
	.global	initGate2
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGate2, %function
initGate2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #0
	mov	r1, #16
	mov	lr, #104
	mov	ip, #208
	mov	r0, #4
	ldr	r3, .L100
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
.L101:
	.align	2
.L100:
	.word	gate
	.size	initGate2, .-initGate2
	.align	2
	.global	updateGate2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGate2, %function
updateGate2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L104
	ldr	r3, [r2, #24]
	add	r3, r3, #1
	cmp	r3, #15
	str	r3, [r2, #24]
	bxne	lr
	b	updateGate2.part.0
.L105:
	.align	2
.L104:
	.word	gate
	.size	updateGate2, .-updateGate2
	.align	2
	.global	drawGate2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGate2, %function
drawGate2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L110
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L107
	ldr	r2, .L110+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L107:
	b	drawGate2.part.0
.L111:
	.align	2
.L110:
	.word	gate
	.word	shadowOAM
	.size	drawGate2, .-drawGate2
	.align	2
	.global	eraseTiles2
	.syntax unified
	.arm
	.fpu softvfp
	.type	eraseTiles2, %function
eraseTiles2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, #0
	ldr	r2, .L130
	lsl	r6, r0, #3
	add	r3, r0, r1, lsl #5
	add	ip, r6, #2048
	lsl	r3, r3, #1
	strh	r4, [r2, r3]	@ movhi
	add	r7, ip, #8
	ldr	r2, .L130+4
	add	r8, r7, r1, lsl #11
	add	lr, ip, r1, lsl #11
	lsl	r9, r1, #5
	lsl	r5, r1, #11
.L113:
	sub	r3, lr, #2048
.L114:
	ldr	r1, [r2]
	strb	r4, [r1, r3]
	add	r3, r3, #256
	cmp	r3, lr
	bne	.L114
	add	lr, r3, #1
	cmp	lr, r8
	bne	.L113
	mov	r10, #0
	add	r8, r0, #1
	ldr	r1, .L130
	add	r3, r9, r8
	add	r6, r6, #2064
	lsl	r3, r3, #1
	add	lr, ip, #8
	strh	r4, [r1, r3]	@ movhi
	add	fp, r6, r5
	add	r4, lr, r5
.L116:
	sub	r3, r4, #2048
.L117:
	ldr	r1, [r2]
	strb	r10, [r1, r3]
	add	r3, r3, #256
	cmp	r3, r4
	bne	.L117
	add	r4, r3, #1
	cmp	r4, fp
	bne	.L116
	mov	r4, #0
	sub	r9, r9, #32
	ldr	r1, .L130
	add	r3, r9, r0
	lsl	r3, r3, #1
	sub	r5, r5, #2048
	strh	r10, [r1, r3]	@ movhi
	add	ip, r5, ip
	add	r7, r5, r7
.L119:
	sub	r3, ip, #2048
.L120:
	ldr	r1, [r2]
	strb	r4, [r1, r3]
	add	r3, r3, #256
	cmp	ip, r3
	bne	.L120
	add	ip, ip, #1
	cmp	ip, r7
	bne	.L119
	mov	ip, #0
	ldr	r1, .L130
	add	r9, r8, r9
	lsl	r3, r9, #1
	strh	r4, [r1, r3]	@ movhi
	add	r0, lr, r5
	add	r6, r6, r5
.L122:
	sub	r3, r0, #2048
.L123:
	ldr	r1, [r2]
	strb	ip, [r1, r3]
	add	r3, r3, #256
	cmp	r0, r3
	bne	.L123
	add	r0, r0, #1
	cmp	r6, r0
	bne	.L122
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L131:
	.align	2
.L130:
	.word	100726784
	.word	.LANCHOR0
	.size	eraseTiles2, .-eraseTiles2
	.align	2
	.global	updatePlayer2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer2, %function
updatePlayer2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r7, .L213
	ldr	r3, [r7]
	ldr	r4, .L213+4
	cmp	r3, #0
	ldr	r6, [r4]
	ldr	r5, [r4, #4]
	sub	sp, sp, #16
	bne	.L133
	adds	r3, r6, #8
	addmi	r3, r6, #15
	cmp	r5, #0
	add	r2, r5, #7
	movge	r2, r5
	asr	r3, r3, #3
	lsl	r3, r3, #5
	add	r3, r3, r2, asr #3
	ldr	r2, .L213+8
	lsl	r3, r3, #1
	ldrh	r2, [r2, r3]
	cmp	r2, #0
	beq	.L203
.L133:
	ldr	r8, .L213+12
	ldrh	r3, [r8]
	tst	r3, #64
	beq	.L134
	ldr	r2, .L213+16
	ldrh	r2, [r2]
	ands	r2, r2, #64
	beq	.L204
.L134:
	tst	r3, #128
	beq	.L137
	ldr	r2, .L213+16
	ldrh	r2, [r2]
	ands	r2, r2, #128
	beq	.L205
.L137:
	tst	r3, #32
	beq	.L140
	ldr	r2, .L213+16
	ldrh	r2, [r2]
	ands	r2, r2, #32
	beq	.L206
.L140:
	tst	r3, #16
	beq	.L201
	ldr	r3, .L213+16
	ldrh	r2, [r3]
	ands	r8, r2, #16
	beq	.L207
.L201:
	ldr	r0, [r4, #4]
	ldr	r1, [r4]
.L202:
	add	r2, r4, #16
	ldm	r2, {r2, r3}
.L144:
	ldr	lr, [r4, #24]
	ldr	ip, .L213+20
	add	lr, lr, #1
	smull	r6, r5, ip, lr
	asr	ip, lr, #31
	rsb	ip, ip, r5, asr #2
	add	ip, ip, ip, lsl #2
	subs	ip, lr, ip, lsl #1
	str	lr, [r4, #24]
	bne	.L149
	ldr	lr, [r4, #36]
	ldr	r5, [r4, #40]
	add	lr, lr, #1
	cmp	lr, r5
	movne	ip, lr
	str	ip, [r4, #36]
.L149:
	ldr	ip, .L213+24
	add	r5, ip, #16
	ldm	r5, {r5, lr}
	str	lr, [sp, #12]
	ldr	lr, [ip]
	ldr	ip, [ip, #4]
	str	r5, [sp, #8]
	stm	sp, {ip, lr}
	ldr	r5, .L213+28
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L151
	ldr	r0, [r4, #4]
	ldr	r1, [r4]
.L152:
	ldr	r3, .L213+32
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
	bne	.L153
	ldr	r0, [r4, #4]
	ldr	r1, [r4]
.L154:
	ldr	r3, .L213+36
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
	bne	.L155
	ldr	r0, [r4, #4]
	ldr	r1, [r4]
.L156:
	ldr	r3, .L213+40
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
	bne	.L159
	ldr	r3, .L213+44
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
	bne	.L159
.L158:
	ldr	r3, .L213+48
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
	bne	.L208
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L159:
	ldr	r3, .L213+52
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L213+56
	ldr	r3, .L213+60
	mov	lr, pc
	bx	r3
	mov	r3, #0
	str	r3, [r4, #48]
	b	.L158
.L208:
	ldr	r3, .L213+52
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L213+56
	ldr	r3, .L213+60
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L213+64
	str	r2, [r3]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L155:
	ldr	r3, .L213+68
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L213+72
	ldr	r3, .L213+60
	mov	lr, pc
	bx	r3
	mov	r2, #108
	mov	r3, #164
	mov	r1, r2
	mov	r0, r3
	stm	r4, {r2, r3}
	b	.L156
.L153:
	ldr	r3, .L213+68
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L213+72
	ldr	r3, .L213+60
	mov	lr, pc
	bx	r3
	mov	r2, #84
	mov	r3, #52
	mov	r1, r2
	mov	r0, r3
	stm	r4, {r2, r3}
	b	.L154
.L151:
	ldr	r3, .L213+68
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L213+72
	ldr	r3, .L213+60
	mov	lr, pc
	bx	r3
	mov	r3, #52
	mov	r1, r3
	mov	r0, r3
	str	r3, [r4]
	str	r3, [r4, #4]
	b	.L152
.L207:
	ldr	r3, .L213+76
	mov	r2, r8
	ldr	r1, [r3]
	ldr	r0, .L213+80
	ldr	r3, .L213+60
	mov	lr, pc
	bx	r3
	ldr	r3, [r7]
	cmp	r3, #1
	str	r8, [r4, #28]
	beq	.L209
	ldr	r3, [r4, #4]
	ldr	r0, [r4, #12]
	ldr	r1, [r4]
	add	r0, r3, r0
	cmp	r1, r6
	cmpeq	r0, r5
	ldr	r2, .L213+84
	ldr	r3, [r2]
	sub	r3, r3, #1
	str	r3, [r2]
	str	r0, [r4, #4]
	beq	.L202
	adds	r1, r6, #8
	addmi	r1, r6, #15
	cmp	r5, #0
	add	r0, r5, #7
	movge	r0, r5
	asr	r1, r1, #3
	asr	r0, r0, #3
	bl	eraseTiles2
	b	.L201
.L203:
	ldr	r3, .L213+88
	ldr	r0, .L213+92
	ldr	r1, [r3]
	ldr	r3, .L213+60
	str	r2, [r4, #48]
	mov	lr, pc
	bx	r3
	b	.L133
.L205:
	ldr	r3, .L213+76
	ldr	r0, .L213+80
	ldr	r1, [r3]
	ldr	r3, .L213+60
	mov	lr, pc
	bx	r3
	mov	r3, #3
	ldr	r2, [r7]
	cmp	r2, #1
	str	r3, [r4, #28]
	beq	.L210
	ldr	r3, [r4]
	ldr	r2, [r4, #12]
	add	r3, r3, r2
	ldr	r2, [r4, #4]
	cmp	r3, r6
	cmpeq	r2, r5
	ldr	r1, .L213+84
	ldr	r2, [r1]
	sub	r2, r2, #1
	moveq	r6, r3
	str	r2, [r1]
	str	r3, [r4]
	beq	.L139
	adds	r1, r6, #8
	addmi	r1, r6, #15
	cmp	r5, #0
	add	r0, r5, #7
	movge	r0, r5
	asr	r1, r1, #3
	asr	r0, r0, #3
	bl	eraseTiles2
	ldr	r6, [r4]
.L139:
	ldrh	r3, [r8]
	b	.L137
.L206:
	ldr	r3, .L213+76
	ldr	r0, .L213+80
	ldr	r1, [r3]
	ldr	r3, .L213+60
	mov	lr, pc
	bx	r3
	mov	r3, #1
	ldr	r2, [r7]
	cmp	r2, r3
	str	r3, [r4, #28]
	beq	.L211
	ldr	r3, [r4, #4]
	ldr	r2, [r4, #12]
	sub	r3, r3, r2
	ldr	r2, [r4]
	cmp	r3, r5
	cmpeq	r2, r6
	ldr	r1, .L213+84
	ldr	r2, [r1]
	sub	r2, r2, #1
	moveq	r5, r3
	str	r2, [r1]
	str	r3, [r4, #4]
	beq	.L142
	adds	r1, r6, #8
	addmi	r1, r6, #15
	cmp	r5, #0
	add	r0, r5, #7
	movge	r0, r5
	asr	r1, r1, #3
	asr	r0, r0, #3
	bl	eraseTiles2
	ldr	r5, [r4, #4]
.L142:
	ldrh	r3, [r8]
	b	.L140
.L204:
	ldr	r3, .L213+76
	ldr	r0, .L213+80
	ldr	r1, [r3]
	ldr	r3, .L213+60
	mov	lr, pc
	bx	r3
	mov	r3, #2
	ldr	r2, [r7]
	cmp	r2, #1
	str	r3, [r4, #28]
	beq	.L212
	ldr	r3, [r4]
	ldr	r2, [r4, #8]
	sub	r3, r3, r2
	ldr	r2, [r4, #4]
	cmp	r3, r6
	cmpeq	r2, r5
	ldr	r1, .L213+84
	ldr	r2, [r1]
	sub	r2, r2, #1
	moveq	r6, r3
	str	r2, [r1]
	str	r3, [r4]
	beq	.L136
	adds	r1, r6, #8
	addmi	r1, r6, #15
	cmp	r5, #0
	add	r0, r5, #7
	movge	r0, r5
	asr	r1, r1, #3
	asr	r0, r0, #3
	bl	eraseTiles2
	ldr	r6, [r4]
.L136:
	ldrh	r3, [r8]
	b	.L134
.L212:
	ldr	r2, [r4]
	cmp	r2, #0
	ldrh	r3, [r8]
	ble	.L134
	ldr	r0, .L213+96
	ldr	r1, [r4, #8]
	sub	r1, r2, r1
	ldr	r2, [r0]
	rsb	ip, r1, r1, lsl #4
	ldr	r0, [r4, #4]
	add	r2, r2, ip, lsl #4
	ldrb	ip, [r2, r0]	@ zero_extendqisi2
	cmp	ip, #0
	add	r2, r2, r0
	beq	.L134
	ldr	r0, [r4, #16]
	add	r2, r2, r0
	ldrb	r2, [r2, #-1]	@ zero_extendqisi2
	cmp	r2, #0
	strne	r1, [r4]
	b	.L134
.L209:
	ldr	r0, [r4, #4]
	ldr	r2, [r4, #16]
	ldr	r5, [r4, #12]
	add	ip, r0, r2
	rsb	r3, r5, #240
	cmp	ip, r3
	ldr	r1, [r4]
	ldr	r3, [r4, #20]
	bgt	.L144
	ldr	lr, .L213+96
	ldr	r6, [lr]
	add	ip, ip, r5
	rsb	lr, r1, r1, lsl #4
	sub	ip, ip, #1
	add	lr, r6, lr, lsl #4
	ldrb	lr, [lr, ip]	@ zero_extendqisi2
	cmp	lr, #0
	beq	.L144
	add	lr, r1, r3
	sub	lr, lr, #1
	rsb	lr, lr, lr, lsl #4
	add	r6, r6, lr, lsl #4
	ldrb	ip, [r6, ip]	@ zero_extendqisi2
	cmp	ip, #0
	addne	r0, r0, r5
	strne	r0, [r4, #4]
	b	.L144
.L211:
	ldr	r0, [r4, #4]
	ldr	r1, [r4, #12]
	cmp	r0, r1
	ldrh	r3, [r8]
	blt	.L140
	ldr	ip, .L213+96
	ldr	r2, [r4]
	ldr	ip, [ip]
	rsb	lr, r2, r2, lsl #4
	sub	r1, r0, r1
	add	r0, ip, lr, lsl #4
	ldrb	r0, [r0, r1]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L140
	ldr	r0, [r4, #20]
	add	r2, r2, r0
	sub	r2, r2, #1
	rsb	r2, r2, r2, lsl #4
	add	r2, ip, r2, lsl #4
	ldrb	r2, [r2, r1]	@ zero_extendqisi2
	cmp	r2, #0
	strne	r1, [r4, #4]
	b	.L140
.L210:
	ldr	r1, [r4]
	ldr	r2, [r4, #20]
	ldr	r0, [r4, #12]
	add	r2, r1, r2
	rsb	r3, r0, #160
	cmp	r2, r3
	ldrh	r3, [r8]
	bgt	.L137
	ldr	lr, [r4, #8]
	ldr	ip, .L213+96
	add	r2, r2, lr
	ldr	ip, [ip]
	sub	r2, r2, #1
	ldr	lr, [r4, #4]
	rsb	r2, r2, r2, lsl #4
	add	r2, ip, r2, lsl #4
	ldrb	ip, [r2, lr]	@ zero_extendqisi2
	cmp	ip, #0
	add	r2, r2, lr
	beq	.L137
	ldr	ip, [r4, #16]
	add	r2, r2, ip
	ldrb	r2, [r2, #-1]	@ zero_extendqisi2
	cmp	r2, #0
	addne	r1, r1, r0
	strne	r1, [r4]
	b	.L137
.L214:
	.align	2
.L213:
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
	.word	mouth
	.word	mouth2
	.word	gate
	.word	biteSound_length
	.word	biteSound_data
	.word	playSoundB
	.word	reachGate2
	.word	teleportSound_length
	.word	teleportSound_data
	.word	clickSound_length
	.word	clickSound_data
	.word	tilesRemaining2
	.word	dyingSound_length
	.word	dyingSound_data
	.word	.LANCHOR0
	.size	updatePlayer2, .-updatePlayer2
	.align	2
	.global	updateLevel2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateLevel2, %function
updateLevel2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	updatePlayer2
	bl	updateMouth2
	ldr	r2, .L218
	ldr	r3, [r2, #24]
	add	r3, r3, #1
	cmp	r3, #15
	str	r3, [r2, #24]
	bleq	updateGate2.part.0
.L216:
	bl	updateTeleport2
	ldr	r2, .L218+4
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	pop	{r4, lr}
	bx	lr
.L219:
	.align	2
.L218:
	.word	gate
	.word	hOff
	.size	updateLevel2, .-updateLevel2
	.comm	cheatMode,4,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	reachGate2,4,4
	.comm	tilesRemaining2,4,4
	.global	backgroundcollision2
	.comm	gate,52,4
	.comm	mouth2,52,4
	.comm	mouth,52,4
	.comm	teleport3,52,4
	.comm	teleport2,52,4
	.comm	teleport,52,4
	.comm	player,52,4
	.comm	shadowOAM,1024,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	backgroundcollision2, %object
	.size	backgroundcollision2, 4
backgroundcollision2:
	.word	backgroundcollision2Bitmap
	.ident	"GCC: (devkitARM release 53) 9.1.0"
