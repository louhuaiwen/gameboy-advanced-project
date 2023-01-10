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
	.file	"game.c"
	.text
	.align	2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer.part.0, %function
drawPlayer.part.0:
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
	.size	drawPlayer.part.0, .-drawPlayer.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateTeleport.part.0, %function
updateTeleport.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L10
	ldr	r3, [r2, #28]
	add	r3, r3, #1
	cmp	r3, #2
	movgt	r3, #0
	str	r3, [r2, #28]
	mov	r3, #0
	str	r3, [r2, #24]
	bx	lr
.L11:
	.align	2
.L10:
	.word	teleport
	.size	updateTeleport.part.0, .-updateTeleport.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawTeleport.part.0, %function
drawTeleport.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L13
	ldr	r3, [r0, #4]
	ldr	r2, [r0, #28]
	lsl	r3, r3, #23
	ldr	r1, .L13+4
	ldrb	r0, [r0]	@ zero_extendqisi2
	lsr	r3, r3, #23
	lsl	r2, r2, #6
	orr	r3, r3, #16384
	add	r2, r2, #4
	strh	r3, [r1, #10]	@ movhi
	strh	r0, [r1, #8]	@ movhi
	strh	r2, [r1, #12]	@ movhi
	bx	lr
.L14:
	.align	2
.L13:
	.word	teleport
	.word	shadowOAM
	.size	drawTeleport.part.0, .-drawTeleport.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateMouth.part.0, %function
updateMouth.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L19
	ldr	r3, [r2, #28]
	add	r3, r3, #1
	cmp	r3, #3
	movgt	r3, #0
	str	r3, [r2, #28]
	mov	r3, #0
	str	r3, [r2, #24]
	bx	lr
.L20:
	.align	2
.L19:
	.word	mouth
	.size	updateMouth.part.0, .-updateMouth.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawMouth.part.0, %function
drawMouth.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L22
	ldr	r3, [r0, #4]
	ldr	r2, [r0, #28]
	lsl	r3, r3, #23
	ldr	r1, .L22+4
	ldrb	r0, [r0]	@ zero_extendqisi2
	lsr	r3, r3, #23
	lsl	r2, r2, #6
	orr	r3, r3, #16384
	add	r2, r2, #6
	strh	r3, [r1, #18]	@ movhi
	strh	r0, [r1, #16]	@ movhi
	strh	r2, [r1, #20]	@ movhi
	bx	lr
.L23:
	.align	2
.L22:
	.word	mouth
	.word	shadowOAM
	.size	drawMouth.part.0, .-drawMouth.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGate.part.0, %function
updateGate.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L28
	ldr	r3, [r2, #28]
	add	r3, r3, #1
	cmp	r3, #3
	movgt	r3, #0
	str	r3, [r2, #28]
	mov	r3, #0
	str	r3, [r2, #24]
	bx	lr
.L29:
	.align	2
.L28:
	.word	gate
	.size	updateGate.part.0, .-updateGate.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGate.part.0, %function
drawGate.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L31
	ldr	r3, [r0, #4]
	ldr	r2, [r0, #28]
	lsl	r3, r3, #23
	ldr	r1, .L31+4
	ldrb	r0, [r0]	@ zero_extendqisi2
	lsr	r3, r3, #23
	lsl	r2, r2, #6
	orr	r3, r3, #16384
	add	r2, r2, #8
	strh	r3, [r1, #26]	@ movhi
	strh	r0, [r1, #24]	@ movhi
	strh	r2, [r1, #28]	@ movhi
	bx	lr
.L32:
	.align	2
.L31:
	.word	gate
	.word	shadowOAM
	.size	drawGate.part.0, .-drawGate.part.0
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r1, #16
	mov	r3, #0
	mov	r4, #3
	mov	ip, #8
	mov	lr, #1
	mov	fp, #28
	mov	r10, #204
	mov	r0, #4
	mov	r8, #104
	mov	r7, #208
	mov	r9, #120
	mov	r6, #88
	mov	r5, #192
	ldr	r2, .L35
	str	fp, [r2]
	str	ip, [r2, #16]
	str	ip, [r2, #20]
	str	r4, [r2, #40]
	str	r10, [r2, #4]
	str	r3, [r2, #24]
	str	r3, [r2, #36]
	str	lr, [r2, #28]
	str	r1, [r2, #8]
	str	r1, [r2, #12]
	str	lr, [r2, #48]
	ldr	r2, .L35+4
	ldr	r10, .L35+8
	str	r1, [r2, #16]
	str	r1, [r2, #20]
	str	r8, [r2]
	str	r3, [r2, #24]
	str	r3, [r2, #36]
	str	r0, [r2, #40]
	str	r3, [r2, #28]
	str	r7, [r2, #4]
	ldr	r2, .L35+12
	str	r1, [r10, #16]
	str	r1, [r10, #20]
	str	r1, [r2, #16]
	str	r1, [r2, #20]
	ldr	r1, .L35+16
	str	ip, [r10, #4]
	str	r3, [r10, #24]
	str	r3, [r10, #36]
	str	r3, [r10, #28]
	str	r0, [r10, #40]
	str	r6, [r2]
	str	r4, [r10, #48]
	str	r9, [r10]
	str	r5, [r2, #4]
	str	r3, [r1]
	mov	r1, #55
	mov	lr, #9
	ldr	ip, .L35+20
	str	r3, [r2, #24]
	str	r3, [r2, #36]
	str	r0, [r2, #40]
	str	r3, [r2, #28]
	ldr	r2, .L35+24
	str	r3, [ip]
	ldr	ip, .L35+28
	ldr	r5, .L35+32
	mov	r0, r4
	str	r1, [r2]
	mov	r3, #1024
	ldr	r2, .L35+36
	ldr	r1, .L35+40
	str	lr, [ip]
	mov	lr, pc
	bx	r5
	mov	r0, r4
	mov	r3, #48
	ldr	r2, .L35+44
	ldr	r1, .L35+48
	mov	lr, pc
	bx	r5
	mov	r0, r4
	mov	r3, #1024
	ldr	r2, .L35+52
	ldr	r1, .L35+56
	mov	lr, pc
	bx	r5
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L36:
	.align	2
.L35:
	.word	player
	.word	mouth
	.word	teleport
	.word	gate
	.word	cheatMode
	.word	reachGate
	.word	tilesRemaining
	.word	hOff
	.word	DMANow
	.word	100724736
	.word	tilesCollisionMap
	.word	100696064
	.word	tilesCollisionTiles
	.word	100726784
	.word	backgroundMap
	.size	initGame, .-initGame
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L50
	ldr	r3, [r3, #44]
	cmp	r3, #0
	push	{r4, lr}
	beq	.L38
	ldr	r2, .L50+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	ldr	r3, .L50+8
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L40
.L47:
	ldr	r2, .L50+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	ldr	r3, .L50+12
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L42
.L48:
	ldr	r2, .L50+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	ldr	r3, .L50+16
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L44
.L49:
	ldr	r2, .L50+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
.L45:
	ldr	r3, .L50+20
	mov	lr, pc
	bx	r3
	ldr	r4, .L50+24
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L50+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L50+28
	ldrh	r1, [r2]
	ldr	r2, .L50+32
	ldrh	r2, [r2]
	strh	r1, [r3, #24]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #26]	@ movhi
	bx	lr
.L38:
	bl	drawPlayer.part.0
	ldr	r3, .L50+8
	ldr	r3, [r3, #44]
	cmp	r3, #0
	bne	.L47
.L40:
	bl	drawTeleport.part.0
	ldr	r3, .L50+12
	ldr	r3, [r3, #44]
	cmp	r3, #0
	bne	.L48
.L42:
	bl	drawMouth.part.0
	ldr	r3, .L50+16
	ldr	r3, [r3, #44]
	cmp	r3, #0
	bne	.L49
.L44:
	bl	drawGate.part.0
	b	.L45
.L51:
	.align	2
.L50:
	.word	player
	.word	shadowOAM
	.word	teleport
	.word	mouth
	.word	gate
	.word	waitForVBlank
	.word	DMANow
	.word	hOff
	.word	vOff
	.size	drawGame, .-drawGame
	.align	2
	.global	initPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	ip, #8
	mov	r5, #28
	mov	r4, #204
	mov	lr, #3
	mov	r0, #16
	mov	r1, #0
	mov	r2, #1
	ldr	r3, .L54
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
.L55:
	.align	2
.L54:
	.word	player
	.size	initPlayer, .-initPlayer
	.align	2
	.global	drawPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L60
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L57
	ldr	r2, .L60+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L57:
	b	drawPlayer.part.0
.L61:
	.align	2
.L60:
	.word	player
	.word	shadowOAM
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	initTeleport
	.syntax unified
	.arm
	.fpu softvfp
	.type	initTeleport, %function
initTeleport:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #0
	mov	r1, #16
	mov	r4, #120
	mov	lr, #8
	mov	ip, #4
	mov	r0, #3
	ldr	r3, .L64
	stm	r3, {r4, lr}
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	ip, [r3, #40]
	str	r0, [r3, #48]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r2, [r3, #28]
	pop	{r4, lr}
	bx	lr
.L65:
	.align	2
.L64:
	.word	teleport
	.size	initTeleport, .-initTeleport
	.align	2
	.global	updateTeleport
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateTeleport, %function
updateTeleport:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L68
	ldr	r3, [r2, #24]
	add	r3, r3, #1
	cmp	r3, #15
	str	r3, [r2, #24]
	bxne	lr
	b	updateTeleport.part.0
.L69:
	.align	2
.L68:
	.word	teleport
	.size	updateTeleport, .-updateTeleport
	.align	2
	.global	drawTeleport
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawTeleport, %function
drawTeleport:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L74
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L71
	ldr	r2, .L74+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L71:
	b	drawTeleport.part.0
.L75:
	.align	2
.L74:
	.word	teleport
	.word	shadowOAM
	.size	drawTeleport, .-drawTeleport
	.align	2
	.global	initMouth
	.syntax unified
	.arm
	.fpu softvfp
	.type	initMouth, %function
initMouth:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #0
	mov	r1, #16
	mov	lr, #104
	mov	ip, #208
	mov	r0, #4
	ldr	r3, .L78
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
.L79:
	.align	2
.L78:
	.word	mouth
	.size	initMouth, .-initMouth
	.align	2
	.global	updateMouth
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateMouth, %function
updateMouth:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L82
	ldr	r3, [r2, #24]
	add	r3, r3, #1
	cmp	r3, #15
	str	r3, [r2, #24]
	bxne	lr
	b	updateMouth.part.0
.L83:
	.align	2
.L82:
	.word	mouth
	.size	updateMouth, .-updateMouth
	.align	2
	.global	drawMouth
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawMouth, %function
drawMouth:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L88
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L85
	ldr	r2, .L88+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L85:
	b	drawMouth.part.0
.L89:
	.align	2
.L88:
	.word	mouth
	.word	shadowOAM
	.size	drawMouth, .-drawMouth
	.align	2
	.global	initGate
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGate, %function
initGate:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #0
	mov	r1, #16
	mov	lr, #88
	mov	ip, #192
	mov	r0, #4
	ldr	r3, .L92
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
.L93:
	.align	2
.L92:
	.word	gate
	.size	initGate, .-initGate
	.align	2
	.global	updateGate
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGate, %function
updateGate:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L96
	ldr	r3, [r2, #24]
	add	r3, r3, #1
	cmp	r3, #15
	str	r3, [r2, #24]
	bxne	lr
	b	updateGate.part.0
.L97:
	.align	2
.L96:
	.word	gate
	.size	updateGate, .-updateGate
	.align	2
	.global	drawGate
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGate, %function
drawGate:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L102
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L99
	ldr	r2, .L102+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L99:
	b	drawGate.part.0
.L103:
	.align	2
.L102:
	.word	gate
	.word	shadowOAM
	.size	drawGate, .-drawGate
	.align	2
	.global	eraseTiles
	.syntax unified
	.arm
	.fpu softvfp
	.type	eraseTiles, %function
eraseTiles:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, #0
	ldr	r2, .L122
	lsl	r6, r0, #3
	add	r3, r0, r1, lsl #5
	add	ip, r6, #2048
	lsl	r3, r3, #1
	strh	r4, [r2, r3]	@ movhi
	add	r7, ip, #8
	ldr	r2, .L122+4
	add	r8, r7, r1, lsl #11
	add	lr, ip, r1, lsl #11
	lsl	r9, r1, #5
	lsl	r5, r1, #11
.L105:
	sub	r3, lr, #2048
.L106:
	ldr	r1, [r2]
	strb	r4, [r1, r3]
	add	r3, r3, #256
	cmp	r3, lr
	bne	.L106
	add	lr, r3, #1
	cmp	lr, r8
	bne	.L105
	mov	r10, #0
	add	r8, r0, #1
	ldr	r1, .L122
	add	r3, r9, r8
	add	r6, r6, #2064
	lsl	r3, r3, #1
	add	lr, ip, #8
	strh	r4, [r1, r3]	@ movhi
	add	fp, r6, r5
	add	r4, lr, r5
.L108:
	sub	r3, r4, #2048
.L109:
	ldr	r1, [r2]
	strb	r10, [r1, r3]
	add	r3, r3, #256
	cmp	r3, r4
	bne	.L109
	add	r4, r3, #1
	cmp	r4, fp
	bne	.L108
	mov	r4, #0
	sub	r9, r9, #32
	ldr	r1, .L122
	add	r3, r9, r0
	lsl	r3, r3, #1
	sub	r5, r5, #2048
	strh	r10, [r1, r3]	@ movhi
	add	ip, r5, ip
	add	r7, r5, r7
.L111:
	sub	r3, ip, #2048
.L112:
	ldr	r1, [r2]
	strb	r4, [r1, r3]
	add	r3, r3, #256
	cmp	ip, r3
	bne	.L112
	add	ip, ip, #1
	cmp	ip, r7
	bne	.L111
	mov	ip, #0
	ldr	r1, .L122
	add	r9, r8, r9
	lsl	r3, r9, #1
	strh	r4, [r1, r3]	@ movhi
	add	r0, lr, r5
	add	r6, r6, r5
.L114:
	sub	r3, r0, #2048
.L115:
	ldr	r1, [r2]
	strb	ip, [r1, r3]
	add	r3, r3, #256
	cmp	r0, r3
	bne	.L115
	add	r0, r0, #1
	cmp	r6, r0
	bne	.L114
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L123:
	.align	2
.L122:
	.word	100726784
	.word	.LANCHOR0
	.size	eraseTiles, .-eraseTiles
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r7, .L202
	ldr	r3, [r7]
	ldr	r4, .L202+4
	cmp	r3, #0
	ldr	r6, [r4]
	ldr	r5, [r4, #4]
	sub	sp, sp, #16
	bne	.L125
	adds	r3, r6, #8
	addmi	r3, r6, #15
	cmp	r5, #0
	add	r2, r5, #7
	movge	r2, r5
	asr	r3, r3, #3
	lsl	r3, r3, #5
	add	r3, r3, r2, asr #3
	ldr	r2, .L202+8
	lsl	r3, r3, #1
	ldrh	r2, [r2, r3]
	cmp	r2, #0
	beq	.L192
.L125:
	ldr	r8, .L202+12
	ldrh	r3, [r8]
	tst	r3, #64
	beq	.L126
	ldr	r2, .L202+16
	ldrh	r2, [r2]
	ands	r2, r2, #64
	beq	.L193
.L126:
	tst	r3, #128
	beq	.L129
	ldr	r2, .L202+16
	ldrh	r2, [r2]
	ands	r2, r2, #128
	beq	.L194
.L129:
	tst	r3, #32
	beq	.L132
	ldr	r2, .L202+16
	ldrh	r2, [r2]
	ands	r2, r2, #32
	beq	.L195
.L132:
	tst	r3, #16
	beq	.L190
	ldr	r3, .L202+16
	ldrh	r2, [r3]
	ands	r2, r2, #16
	beq	.L196
.L190:
	ldr	r0, [r4, #4]
	ldr	r1, [r4]
.L191:
	add	r2, r4, #16
	ldm	r2, {r2, r3}
.L136:
	ldr	lr, [r4, #24]
	ldr	ip, .L202+20
	add	lr, lr, #1
	smull	r6, r5, ip, lr
	asr	ip, lr, #31
	rsb	ip, ip, r5, asr #2
	add	ip, ip, ip, lsl #2
	subs	ip, lr, ip, lsl #1
	str	lr, [r4, #24]
	bne	.L141
	ldr	lr, [r4, #36]
	ldr	r5, [r4, #40]
	add	lr, lr, #1
	cmp	lr, r5
	movne	ip, lr
	str	ip, [r4, #36]
.L141:
	ldr	ip, .L202+24
	add	r5, ip, #16
	ldm	r5, {r5, lr}
	str	lr, [sp, #12]
	ldr	lr, [ip]
	ldr	ip, [ip, #4]
	str	r5, [sp, #8]
	stm	sp, {ip, lr}
	ldr	r5, .L202+28
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L143
	ldr	r0, [r4, #4]
	ldr	r1, [r4]
.L144:
	ldr	r3, .L202+32
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
	bne	.L197
.L145:
	ldr	r3, .L202+36
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
	ldrne	r3, .L202+40
	strne	r2, [r3]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L197:
	mov	r2, #0
	ldr	r3, .L202+44
	ldr	r0, .L202+48
	ldr	r1, [r3]
	ldr	r3, .L202+52
	str	r2, [r4, #48]
	mov	lr, pc
	bx	r3
	b	.L145
.L143:
	ldr	r3, .L202+56
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L202+60
	ldr	r3, .L202+52
	mov	lr, pc
	bx	r3
	mov	r2, #109
	mov	r3, #133
	mov	r1, r2
	mov	r0, r3
	stm	r4, {r2, r3}
	b	.L144
.L196:
	ldr	r3, .L202+64
	ldr	r0, .L202+68
	ldr	r1, [r3]
	ldr	r3, .L202+52
	str	r2, [r4, #28]
	mov	lr, pc
	bx	r3
	ldr	r3, [r7]
	cmp	r3, #1
	beq	.L198
	ldr	r3, [r4, #4]
	ldr	r0, [r4, #12]
	ldr	r1, [r4]
	add	r0, r3, r0
	cmp	r1, r6
	cmpeq	r0, r5
	ldr	r2, .L202+72
	ldr	r3, [r2]
	sub	r3, r3, #1
	str	r3, [r2]
	str	r0, [r4, #4]
	beq	.L191
	adds	r1, r6, #8
	addmi	r1, r6, #15
	cmp	r5, #0
	add	r0, r5, #7
	movge	r0, r5
	asr	r1, r1, #3
	asr	r0, r0, #3
	bl	eraseTiles
	b	.L190
.L192:
	ldr	r3, .L202+76
	ldr	r0, .L202+80
	ldr	r1, [r3]
	ldr	r3, .L202+52
	str	r2, [r4, #48]
	mov	lr, pc
	bx	r3
	b	.L125
.L194:
	mov	ip, #3
	ldr	r3, .L202+64
	ldr	r0, .L202+68
	ldr	r1, [r3]
	ldr	r3, .L202+52
	str	ip, [r4, #28]
	mov	lr, pc
	bx	r3
	ldr	r3, [r7]
	cmp	r3, #1
	beq	.L199
	ldr	r3, [r4]
	ldr	r2, [r4, #12]
	add	r3, r3, r2
	ldr	r2, [r4, #4]
	cmp	r3, r6
	cmpeq	r2, r5
	ldr	r1, .L202+72
	ldr	r2, [r1]
	sub	r2, r2, #1
	moveq	r6, r3
	str	r2, [r1]
	str	r3, [r4]
	beq	.L131
	adds	r1, r6, #8
	addmi	r1, r6, #15
	cmp	r5, #0
	add	r0, r5, #7
	movge	r0, r5
	asr	r1, r1, #3
	asr	r0, r0, #3
	bl	eraseTiles
	ldr	r6, [r4]
.L131:
	ldrh	r3, [r8]
	b	.L129
.L195:
	mov	ip, #1
	ldr	r3, .L202+64
	ldr	r0, .L202+68
	ldr	r1, [r3]
	ldr	r3, .L202+52
	str	ip, [r4, #28]
	mov	lr, pc
	bx	r3
	ldr	r3, [r7]
	cmp	r3, #1
	beq	.L200
	ldr	r3, [r4, #4]
	ldr	r2, [r4, #12]
	sub	r3, r3, r2
	ldr	r2, [r4]
	cmp	r3, r5
	cmpeq	r2, r6
	ldr	r1, .L202+72
	ldr	r2, [r1]
	sub	r2, r2, #1
	moveq	r5, r3
	str	r2, [r1]
	str	r3, [r4, #4]
	beq	.L134
	adds	r1, r6, #8
	addmi	r1, r6, #15
	cmp	r5, #0
	add	r0, r5, #7
	movge	r0, r5
	asr	r1, r1, #3
	asr	r0, r0, #3
	bl	eraseTiles
	ldr	r5, [r4, #4]
.L134:
	ldrh	r3, [r8]
	b	.L132
.L193:
	mov	ip, #2
	ldr	r3, .L202+64
	ldr	r0, .L202+68
	ldr	r1, [r3]
	ldr	r3, .L202+52
	str	ip, [r4, #28]
	mov	lr, pc
	bx	r3
	ldr	r3, [r7]
	cmp	r3, #1
	beq	.L201
	ldr	r3, [r4]
	ldr	r2, [r4, #8]
	sub	r3, r3, r2
	ldr	r2, [r4, #4]
	cmp	r3, r6
	cmpeq	r2, r5
	ldr	r1, .L202+72
	ldr	r2, [r1]
	sub	r2, r2, #1
	moveq	r6, r3
	str	r2, [r1]
	str	r3, [r4]
	beq	.L128
	adds	r1, r6, #8
	addmi	r1, r6, #15
	cmp	r5, #0
	add	r0, r5, #7
	movge	r0, r5
	asr	r1, r1, #3
	asr	r0, r0, #3
	bl	eraseTiles
	ldr	r6, [r4]
.L128:
	ldrh	r3, [r8]
	b	.L126
.L201:
	ldr	r2, [r4]
	cmp	r2, #0
	ldrh	r3, [r8]
	ble	.L126
	ldr	r0, .L202+84
	ldr	r1, [r4, #8]
	sub	r1, r2, r1
	ldr	r2, [r0]
	rsb	ip, r1, r1, lsl #4
	ldr	r0, [r4, #4]
	add	r2, r2, ip, lsl #4
	ldrb	ip, [r2, r0]	@ zero_extendqisi2
	cmp	ip, #0
	add	r2, r2, r0
	beq	.L126
	ldr	r0, [r4, #16]
	add	r2, r2, r0
	ldrb	r2, [r2, #-1]	@ zero_extendqisi2
	cmp	r2, #0
	strne	r1, [r4]
	b	.L126
.L198:
	ldr	r0, [r4, #4]
	ldr	r2, [r4, #16]
	ldr	r5, [r4, #12]
	add	ip, r0, r2
	rsb	r3, r5, #240
	cmp	ip, r3
	ldr	r1, [r4]
	ldr	r3, [r4, #20]
	bgt	.L136
	ldr	lr, .L202+84
	ldr	r6, [lr]
	add	ip, ip, r5
	rsb	lr, r1, r1, lsl #4
	sub	ip, ip, #1
	add	lr, r6, lr, lsl #4
	ldrb	lr, [lr, ip]	@ zero_extendqisi2
	cmp	lr, #0
	beq	.L136
	add	lr, r1, r3
	sub	lr, lr, #1
	rsb	lr, lr, lr, lsl #4
	add	r6, r6, lr, lsl #4
	ldrb	ip, [r6, ip]	@ zero_extendqisi2
	cmp	ip, #0
	addne	r0, r0, r5
	strne	r0, [r4, #4]
	b	.L136
.L200:
	ldr	r0, [r4, #4]
	ldr	r1, [r4, #12]
	cmp	r0, r1
	ldrh	r3, [r8]
	blt	.L132
	ldr	ip, .L202+84
	ldr	r2, [r4]
	ldr	ip, [ip]
	rsb	lr, r2, r2, lsl #4
	sub	r1, r0, r1
	add	r0, ip, lr, lsl #4
	ldrb	r0, [r0, r1]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L132
	ldr	r0, [r4, #20]
	add	r2, r2, r0
	sub	r2, r2, #1
	rsb	r2, r2, r2, lsl #4
	add	r2, ip, r2, lsl #4
	ldrb	r2, [r2, r1]	@ zero_extendqisi2
	cmp	r2, #0
	strne	r1, [r4, #4]
	b	.L132
.L199:
	ldr	r1, [r4]
	ldr	r2, [r4, #20]
	ldr	r0, [r4, #12]
	add	r2, r1, r2
	rsb	r3, r0, #160
	cmp	r2, r3
	ldrh	r3, [r8]
	bgt	.L129
	ldr	lr, [r4, #8]
	ldr	ip, .L202+84
	add	r2, r2, lr
	ldr	ip, [ip]
	sub	r2, r2, #1
	ldr	lr, [r4, #4]
	rsb	r2, r2, r2, lsl #4
	add	r2, ip, r2, lsl #4
	ldrb	ip, [r2, lr]	@ zero_extendqisi2
	cmp	ip, #0
	add	r2, r2, lr
	beq	.L129
	ldr	ip, [r4, #16]
	add	r2, r2, ip
	ldrb	r2, [r2, #-1]	@ zero_extendqisi2
	cmp	r2, #0
	addne	r1, r1, r0
	strne	r1, [r4]
	b	.L129
.L203:
	.align	2
.L202:
	.word	cheatMode
	.word	player
	.word	100726784
	.word	oldButtons
	.word	buttons
	.word	1717986919
	.word	teleport
	.word	collision
	.word	mouth
	.word	gate
	.word	reachGate
	.word	biteSound_length
	.word	biteSound_data
	.word	playSoundB
	.word	teleportSound_length
	.word	teleportSound_data
	.word	clickSound_length
	.word	clickSound_data
	.word	tilesRemaining
	.word	dyingSound_length
	.word	dyingSound_data
	.word	.LANCHOR0
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	updatePlayer
	ldr	r2, .L209
	ldr	r3, [r2, #24]
	add	r3, r3, #1
	cmp	r3, #15
	str	r3, [r2, #24]
	bleq	updateTeleport.part.0
.L205:
	ldr	r2, .L209+4
	ldr	r3, [r2, #24]
	add	r3, r3, #1
	cmp	r3, #15
	str	r3, [r2, #24]
	bleq	updateMouth.part.0
.L206:
	ldr	r2, .L209+8
	ldr	r3, [r2, #24]
	add	r3, r3, #1
	cmp	r3, #15
	str	r3, [r2, #24]
	bleq	updateGate.part.0
.L207:
	ldr	r2, .L209+12
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	pop	{r4, lr}
	bx	lr
.L210:
	.align	2
.L209:
	.word	teleport
	.word	mouth
	.word	gate
	.word	hOff
	.size	updateGame, .-updateGame
	.comm	cheatMode,4,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	reachGate,4,4
	.comm	tilesRemaining,4,4
	.comm	life,4,4
	.comm	collisionCheck,4,4
	.global	backgroundcollision
	.comm	gate,52,4
	.comm	mouth,52,4
	.comm	teleport,52,4
	.comm	player,52,4
	.comm	shadowOAM,1024,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	backgroundcollision, %object
	.size	backgroundcollision, 4
backgroundcollision:
	.word	backgroundcollisionBitmap
	.ident	"GCC: (devkitARM release 53) 9.1.0"
