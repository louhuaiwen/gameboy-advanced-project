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
	.file	"final.c"
	.text
	.align	2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer5.part.0, %function
drawPlayer5.part.0:
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
	.size	drawPlayer5.part.0, .-drawPlayer5.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLock.part.0, %function
drawLock.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L7
	ldr	r3, [r0, #4]
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r2, [r0, #28]
	ldr	r1, .L7+4
	ldrb	r0, [r0]	@ zero_extendqisi2
	lsl	r2, r2, #7
	add	r2, r2, #19
	strh	r3, [r1, #10]	@ movhi
	strh	r0, [r1, #8]	@ movhi
	strh	r2, [r1, #12]	@ movhi
	bx	lr
.L8:
	.align	2
.L7:
	.word	lock
	.word	shadowOAM
	.size	drawLock.part.0, .-drawLock.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateKey.part.0, %function
updateKey.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L13
	ldr	r3, [r2, #28]
	add	r3, r3, #1
	cmp	r3, #3
	movgt	r3, #0
	str	r3, [r2, #28]
	mov	r3, #0
	str	r3, [r2, #24]
	bx	lr
.L14:
	.align	2
.L13:
	.word	key
	.size	updateKey.part.0, .-updateKey.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawKey.part.0, %function
drawKey.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L16
	ldr	r2, [r0, #4]
	ldr	r3, [r0, #28]
	ldr	r1, .L16+4
	ldrb	r0, [r0]	@ zero_extendqisi2
	lsl	r2, r2, #23
	lsl	r3, r3, #5
	lsr	r2, r2, #23
	add	r3, r3, #18
	strh	r2, [r1, #18]	@ movhi
	strh	r0, [r1, #16]	@ movhi
	strh	r3, [r1, #20]	@ movhi
	bx	lr
.L17:
	.align	2
.L16:
	.word	key
	.word	shadowOAM
	.size	drawKey.part.0, .-drawKey.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateFinalTeleport.part.0, %function
updateFinalTeleport.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L22
	ldr	r3, [r2, #28]
	add	r3, r3, #1
	cmp	r3, #2
	movgt	r3, #0
	str	r3, [r2, #28]
	mov	r3, #0
	str	r3, [r2, #24]
	bx	lr
.L23:
	.align	2
.L22:
	.word	finalTeleport
	.size	updateFinalTeleport.part.0, .-updateFinalTeleport.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFinalTeleport.part.0, %function
drawFinalTeleport.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L25
	ldr	r3, [r0, #4]
	ldr	r2, [r0, #28]
	lsl	r3, r3, #23
	ldr	r1, .L25+4
	ldrb	r0, [r0]	@ zero_extendqisi2
	lsr	r3, r3, #23
	lsl	r2, r2, #6
	orr	r3, r3, #16384
	add	r2, r2, #4
	strh	r3, [r1, #34]	@ movhi
	strh	r0, [r1, #32]	@ movhi
	strh	r2, [r1, #36]	@ movhi
	bx	lr
.L26:
	.align	2
.L25:
	.word	finalTeleport
	.word	shadowOAM
	.size	drawFinalTeleport.part.0, .-drawFinalTeleport.part.0
	.align	2
	.global	initFinalScene
	.syntax unified
	.arm
	.fpu softvfp
	.type	initFinalScene, %function
initFinalScene:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r3, #0
	mov	r1, #8
	mov	lr, #1
	mov	r4, #105
	mov	fp, #218
	mov	r10, #3
	mov	r0, #4
	mov	r9, #184
	mov	ip, #32
	mov	r8, #81
	mov	r7, #144
	mov	r6, #97
	mov	r5, #16
	ldr	r2, .L29
	str	r1, [r2, #16]
	str	r1, [r2, #20]
	str	fp, [r2, #4]
	str	r10, [r2, #40]
	str	lr, [r2, #28]
	str	r4, [r2]
	str	r3, [r2, #24]
	str	r3, [r2, #36]
	str	lr, [r2, #8]
	str	lr, [r2, #12]
	str	lr, [r2, #48]
	ldr	r2, .L29+4
	str	r1, [r2, #16]
	str	r1, [r2, #20]
	str	r4, [r2]
	str	r9, [r2, #4]
	str	r3, [r2, #24]
	str	r3, [r2, #36]
	str	r3, [r2, #28]
	str	r0, [r2, #40]
	ldr	r2, .L29+8
	ldr	lr, .L29+12
	str	r8, [r2]
	str	r7, [r2, #4]
	str	ip, [r2, #16]
	str	ip, [r2, #20]
	str	r3, [r2, #24]
	str	r3, [r2, #36]
	str	r0, [r2, #40]
	str	r3, [r2, #28]
	ldr	r2, .L29+16
	str	ip, [lr, #16]
	str	ip, [lr, #20]
	str	r6, [lr]
	str	r3, [lr, #24]
	str	r5, [lr, #4]
	str	r1, [r2, #16]
	str	r1, [r2, #20]
	mov	r1, #157
	ldr	ip, .L29+20
	str	r3, [lr, #36]
	str	r3, [ip]
	str	r0, [lr, #40]
	str	r3, [lr, #28]
	ldr	ip, .L29+24
	ldr	lr, .L29+28
	str	r4, [r2]
	str	r3, [lr]
	str	r3, [r2, #24]
	str	r3, [r2, #36]
	str	r0, [r2, #40]
	str	r3, [r2, #28]
	str	r1, [r2, #4]
	str	r3, [ip]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L30:
	.align	2
.L29:
	.word	player
	.word	key
	.word	lock
	.word	finalTeleport
	.word	friend
	.word	reachFinalTeleport
	.word	reachKey
	.word	reachFriend
	.size	initFinalScene, .-initFinalScene
	.align	2
	.global	initPlayer5
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer5, %function
initPlayer5:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #1
	mov	r0, #8
	mov	r4, #105
	mov	lr, #218
	mov	r1, #0
	mov	ip, #3
	ldr	r3, .L33
	stm	r3, {r4, lr}
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	ip, [r3, #40]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r2, [r3, #28]
	str	r2, [r3, #48]
	str	r1, [r3, #24]
	str	r1, [r3, #36]
	pop	{r4, lr}
	bx	lr
.L34:
	.align	2
.L33:
	.word	player
	.size	initPlayer5, .-initPlayer5
	.align	2
	.global	updatePlayer5
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer5, %function
updatePlayer5:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L91
	ldrh	r3, [r3]
	ldr	r4, .L91+4
	tst	r3, #64
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	ldr	r2, [r4, #16]
	sub	sp, sp, #16
	beq	.L36
	ldr	ip, .L91+8
	ldrh	ip, [ip]
	tst	ip, #64
	beq	.L86
.L36:
	tst	r3, #128
	ldr	r3, [r4, #20]
	beq	.L37
	ldr	ip, .L91+8
	ldrh	ip, [ip]
	tst	ip, #128
	beq	.L87
.L37:
	ldr	ip, .L91+12
	ldrh	ip, [ip, #48]
	tst	ip, #32
	bne	.L38
	mov	ip, #1
	ldr	lr, [r4, #12]
	cmp	lr, r0
	str	ip, [r4, #28]
	ble	.L88
.L38:
	ldr	ip, .L91+12
	ldrh	ip, [ip, #48]
	ands	ip, ip, #16
	bne	.L39
	ldr	r5, [r4, #12]
	add	lr, r0, r2
	rsb	r6, r5, #240
	cmp	lr, r6
	str	ip, [r4, #28]
	ble	.L89
.L39:
	ldr	lr, [r4, #24]
	ldr	ip, .L91+16
	add	lr, lr, #1
	smull	r6, r5, ip, lr
	asr	ip, lr, #31
	rsb	ip, ip, r5, asr #2
	add	ip, ip, ip, lsl #2
	subs	ip, lr, ip, lsl #1
	str	lr, [r4, #24]
	bne	.L41
	ldr	lr, [r4, #36]
	ldr	r5, [r4, #40]
	add	lr, lr, #1
	cmp	lr, r5
	movne	ip, lr
	str	ip, [r4, #36]
.L41:
	ldr	r5, .L91+20
	add	ip, r5, #16
	ldm	ip, {ip, lr}
	str	lr, [sp, #12]
	ldr	lr, [r5]
	str	ip, [sp, #8]
	ldr	ip, [r5, #4]
	ldr	r6, .L91+24
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	bne	.L90
.L43:
	ldr	r3, .L91+28
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
	bx	r6
	cmp	r0, #0
	movne	r2, #1
	ldrne	r3, .L91+32
	strne	r2, [r3]
	ldr	r3, .L91+36
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
	bx	r6
	cmp	r0, #0
	beq	.L35
	ldr	r3, .L91+32
	ldr	r3, [r3]
	cmp	r3, #1
	ldreq	r2, .L91+40
	streq	r3, [r2]
.L35:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L89:
	ldr	ip, .L91+44
	ldr	r6, [ip]
	add	lr, lr, r5
	rsb	ip, r1, r1, lsl #4
	sub	lr, lr, #1
	add	ip, r6, ip, lsl #4
	ldrb	ip, [ip, lr]	@ zero_extendqisi2
	cmp	ip, #0
	beq	.L39
	add	ip, r1, r3
	sub	ip, ip, #1
	rsb	ip, ip, ip, lsl #4
	add	r6, r6, ip, lsl #4
	ldrb	ip, [r6, lr]	@ zero_extendqisi2
	cmp	ip, #0
	addne	r0, r0, r5
	strne	r0, [r4, #4]
	b	.L39
.L88:
	ldr	ip, .L91+44
	ldr	r5, [ip]
	rsb	ip, r1, r1, lsl #4
	sub	lr, r0, lr
	add	ip, r5, ip, lsl #4
	ldrb	ip, [ip, lr]	@ zero_extendqisi2
	cmp	ip, #0
	beq	.L38
	add	ip, r1, r3
	sub	ip, ip, #1
	rsb	ip, ip, ip, lsl #4
	add	r5, r5, ip, lsl #4
	ldrb	ip, [r5, lr]	@ zero_extendqisi2
	cmp	ip, #0
	movne	r0, lr
	strne	lr, [r4, #4]
	b	.L38
.L87:
	mov	lr, #3
	ldr	r5, [r4, #12]
	add	ip, r1, r3
	rsb	r6, r5, #160
	cmp	ip, r6
	str	lr, [r4, #28]
	bgt	.L37
	ldr	r6, [r4, #8]
	ldr	lr, .L91+44
	add	ip, ip, r6
	ldr	lr, [lr]
	sub	ip, ip, #1
	rsb	ip, ip, ip, lsl #4
	add	ip, lr, ip, lsl #4
	ldrb	lr, [ip, r0]	@ zero_extendqisi2
	cmp	lr, #0
	add	ip, ip, r0
	beq	.L37
	add	ip, ip, r2
	ldrb	ip, [ip, #-1]	@ zero_extendqisi2
	cmp	ip, #0
	addne	r1, r1, r5
	strne	r1, [r4]
	b	.L37
.L86:
	mov	ip, #2
	cmp	r1, #0
	str	ip, [r4, #28]
	ble	.L36
	ldr	lr, [r4, #8]
	ldr	ip, .L91+44
	sub	lr, r1, lr
	ldr	ip, [ip]
	rsb	r5, lr, lr, lsl #4
	add	ip, ip, r5, lsl #4
	ldrb	r5, [ip, r0]	@ zero_extendqisi2
	cmp	r5, #0
	add	ip, ip, r0
	beq	.L36
	add	ip, ip, r2
	ldrb	ip, [ip, #-1]	@ zero_extendqisi2
	cmp	ip, #0
	movne	r1, lr
	strne	lr, [r4]
	b	.L36
.L90:
	mov	ip, #1
	ldr	r2, .L91+48
	ldr	r3, .L91+52
	ldr	r1, [r2]
	str	ip, [r3]
	mov	r2, #0
	ldr	r3, .L91+56
	ldr	r0, .L91+60
	mov	lr, pc
	bx	r3
	ldr	r3, [r5]
	sub	r3, r3, #8
	str	r3, [r5]
	b	.L43
.L92:
	.align	2
.L91:
	.word	oldButtons
	.word	player
	.word	buttons
	.word	67109120
	.word	1717986919
	.word	key
	.word	collision
	.word	friend
	.word	reachFriend
	.word	finalTeleport
	.word	reachFinalTeleport
	.word	.LANCHOR0
	.word	doorSound_length
	.word	reachKey
	.word	playSoundB
	.word	doorSound_data
	.size	updatePlayer5, .-updatePlayer5
	.align	2
	.global	drawPlayer5
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer5, %function
drawPlayer5:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L97
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L94
	ldr	r2, .L97+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L94:
	b	drawPlayer5.part.0
.L98:
	.align	2
.L97:
	.word	player
	.word	shadowOAM
	.size	drawPlayer5, .-drawPlayer5
	.align	2
	.global	initLock
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLock, %function
initLock:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #0
	mov	r1, #32
	mov	lr, #81
	mov	ip, #144
	mov	r0, #4
	ldr	r3, .L101
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
.L102:
	.align	2
.L101:
	.word	lock
	.size	initLock, .-initLock
	.align	2
	.global	updateLock
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateLock, %function
updateLock:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L109
	ldr	r3, [r2, #24]
	add	r3, r3, #1
	cmp	r3, #15
	str	r3, [r2, #24]
	bne	.L104
	ldr	r3, [r2, #28]
	add	r3, r3, #1
	cmp	r3, #2
	movgt	r3, #0
	str	r3, [r2, #28]
	mov	r3, #0
	str	r3, [r2, #24]
.L104:
	ldr	r3, .L109+4
	ldr	r3, [r3]
	cmp	r3, #1
	moveq	r1, #49
	moveq	r3, #144
	stmeq	r2, {r1, r3}
	bx	lr
.L110:
	.align	2
.L109:
	.word	lock
	.word	reachKey
	.size	updateLock, .-updateLock
	.align	2
	.global	drawLock
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLock, %function
drawLock:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L115
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L112
	ldr	r2, .L115+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L112:
	b	drawLock.part.0
.L116:
	.align	2
.L115:
	.word	lock
	.word	shadowOAM
	.size	drawLock, .-drawLock
	.align	2
	.global	initKey
	.syntax unified
	.arm
	.fpu softvfp
	.type	initKey, %function
initKey:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #0
	mov	r1, #8
	mov	lr, #105
	mov	ip, #184
	mov	r0, #4
	ldr	r3, .L119
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
.L120:
	.align	2
.L119:
	.word	key
	.size	initKey, .-initKey
	.align	2
	.global	updateKey
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateKey, %function
updateKey:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L123
	ldr	r3, [r2, #24]
	add	r3, r3, #1
	cmp	r3, #15
	str	r3, [r2, #24]
	bxne	lr
	b	updateKey.part.0
.L124:
	.align	2
.L123:
	.word	key
	.size	updateKey, .-updateKey
	.align	2
	.global	drawKey
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawKey, %function
drawKey:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L129
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L126
	ldr	r2, .L129+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L126:
	b	drawKey.part.0
.L130:
	.align	2
.L129:
	.word	key
	.word	shadowOAM
	.size	drawKey, .-drawKey
	.align	2
	.global	initFinalTeleport
	.syntax unified
	.arm
	.fpu softvfp
	.type	initFinalTeleport, %function
initFinalTeleport:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #0
	mov	r1, #32
	mov	lr, #97
	mov	ip, #16
	mov	r0, #4
	ldr	r3, .L133
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
.L134:
	.align	2
.L133:
	.word	finalTeleport
	.size	initFinalTeleport, .-initFinalTeleport
	.align	2
	.global	updateFinalTeleport
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateFinalTeleport, %function
updateFinalTeleport:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L137
	ldr	r3, [r2, #24]
	add	r3, r3, #1
	cmp	r3, #15
	str	r3, [r2, #24]
	bxne	lr
	b	updateFinalTeleport.part.0
.L138:
	.align	2
.L137:
	.word	finalTeleport
	.size	updateFinalTeleport, .-updateFinalTeleport
	.align	2
	.global	drawFinalTeleport
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFinalTeleport, %function
drawFinalTeleport:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L143
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L140
	ldr	r2, .L143+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L140:
	b	drawFinalTeleport.part.0
.L144:
	.align	2
.L143:
	.word	finalTeleport
	.word	shadowOAM
	.size	drawFinalTeleport, .-drawFinalTeleport
	.align	2
	.global	initFriend
	.syntax unified
	.arm
	.fpu softvfp
	.type	initFriend, %function
initFriend:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #0
	mov	r1, #8
	mov	lr, #105
	mov	ip, #157
	mov	r0, #4
	ldr	r3, .L147
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
.L148:
	.align	2
.L147:
	.word	friend
	.size	initFriend, .-initFriend
	.align	2
	.global	updateFriend
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateFriend, %function
updateFriend:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L184
	ldr	r2, [r3, #24]
	add	r2, r2, #1
	cmp	r2, #15
	str	r2, [r3, #24]
	bne	.L150
	ldr	r2, [r3, #28]
	add	r2, r2, #1
	cmp	r2, #3
	movgt	r2, #0
	str	r2, [r3, #28]
	mov	r2, #0
	str	r2, [r3, #24]
.L150:
	ldr	r2, .L184+4
	ldr	r2, [r2]
	cmp	r2, #1
	bxne	lr
	ldr	r2, .L184+8
	ldrh	r2, [r2]
	tst	r2, #64
	str	lr, [sp, #-4]!
	beq	.L155
	ldr	r1, .L184+12
	ldrh	r1, [r1]
	tst	r1, #64
	moveq	r1, #2
	streq	r1, [r3, #28]
.L155:
	tst	r2, #128
	beq	.L156
	ldr	r2, .L184+12
	ldrh	r2, [r2]
	tst	r2, #128
	moveq	r2, #3
	streq	r2, [r3, #28]
.L156:
	ldr	r2, .L184+16
	ldrh	r2, [r2, #48]
	tst	r2, #32
	bne	.L158
	mov	r1, #1
	ldr	r2, [r3, #4]
	ldr	r0, [r3, #12]
	cmp	r2, r0
	str	r1, [r3, #28]
	blt	.L158
	ldr	ip, .L184+20
	ldr	r1, [r3]
	ldr	lr, [ip]
	rsb	ip, r1, r1, lsl #4
	sub	r2, r2, r0
	add	r0, lr, ip, lsl #4
	ldrb	r0, [r0, r2]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L158
	ldr	r0, [r3, #20]
	add	r1, r1, r0
	sub	r1, r1, #1
	rsb	r1, r1, r1, lsl #4
	add	r1, lr, r1, lsl #4
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L158
	ldr	r1, .L184+24
	ldr	r2, [r1, #4]
	ldr	r1, [r1, #12]
	add	r2, r2, #8
	sub	r2, r2, r1
	str	r2, [r3, #4]
.L158:
	ldr	r2, .L184+16
	ldrh	r2, [r2, #48]
	ands	r2, r2, #16
	bne	.L149
	ldr	r1, [r3, #4]
	ldr	r0, [r3, #12]
	cmp	r1, r0
	str	r2, [r3, #28]
	blt	.L149
	ldr	ip, .L184+20
	ldr	r2, [r3]
	ldr	lr, [ip]
	rsb	ip, r2, r2, lsl #4
	sub	r1, r1, r0
	add	r0, lr, ip, lsl #4
	ldrb	r0, [r0, r1]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L149
	ldr	r0, [r3, #20]
	add	r2, r2, r0
	sub	r2, r2, #1
	rsb	r2, r2, r2, lsl #4
	add	r2, lr, r2, lsl #4
	ldrb	r2, [r2, r1]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L149
	ldr	r1, .L184+24
	ldr	r2, [r1, #4]
	ldr	r1, [r1, #12]
	sub	r2, r2, #8
	add	r2, r2, r1
	str	r2, [r3, #4]
.L149:
	ldr	lr, [sp], #4
	bx	lr
.L185:
	.align	2
.L184:
	.word	friend
	.word	reachFriend
	.word	oldButtons
	.word	buttons
	.word	67109120
	.word	.LANCHOR0
	.word	player
	.size	updateFriend, .-updateFriend
	.align	2
	.global	updateFinalScene
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateFinalScene, %function
updateFinalScene:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	updatePlayer5
	bl	updateLock
	ldr	r2, .L190
	ldr	r3, [r2, #24]
	add	r3, r3, #1
	cmp	r3, #15
	str	r3, [r2, #24]
	bleq	updateKey.part.0
.L187:
	ldr	r2, .L190+4
	ldr	r3, [r2, #24]
	add	r3, r3, #1
	cmp	r3, #15
	str	r3, [r2, #24]
	bleq	updateFinalTeleport.part.0
.L188:
	pop	{r4, lr}
	b	updateFriend
.L191:
	.align	2
.L190:
	.word	key
	.word	finalTeleport
	.size	updateFinalScene, .-updateFinalScene
	.align	2
	.global	drawFriend
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFriend, %function
drawFriend:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L196
	ldr	r3, [r2, #44]
	cmp	r3, #0
	beq	.L193
	ldr	r2, .L196+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L193:
	ldr	r0, .L196+8
	ldr	ip, [r0]
	ldr	r1, [r2, #4]
	ldr	r0, .L196+4
	ldr	r3, [r2, #28]
	ldrb	r2, [r2]	@ zero_extendqisi2
	cmp	ip, #1
	strh	r2, [r0, #24]	@ movhi
	ldreq	r2, .L196+12
	ldreq	r2, [r2, #28]
	lsl	r3, r3, #21
	lsr	r3, r3, #16
	lsl	r1, r1, #23
	addeq	r2, r2, #14
	lsr	r1, r1, #23
	addeq	r3, r3, r2
	addne	r3, r3, #14
	strh	r1, [r0, #26]	@ movhi
	strh	r3, [r0, #28]	@ movhi
	bx	lr
.L197:
	.align	2
.L196:
	.word	friend
	.word	shadowOAM
	.word	reachFriend
	.word	player
	.size	drawFriend, .-drawFriend
	.align	2
	.global	drawFinalScene
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFinalScene, %function
drawFinalScene:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L211
	ldr	r3, [r3, #44]
	cmp	r3, #0
	push	{r4, lr}
	beq	.L199
	ldr	r2, .L211+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	ldr	r3, .L211+8
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L201
.L208:
	ldr	r2, .L211+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	ldr	r3, .L211+12
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L203
.L209:
	ldr	r2, .L211+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	ldr	r3, .L211+16
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L205
.L210:
	ldr	r2, .L211+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
.L206:
	bl	drawFriend
	ldr	r3, .L211+20
	mov	lr, pc
	bx	r3
	ldr	r4, .L211+24
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L211+4
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L199:
	bl	drawPlayer5.part.0
	ldr	r3, .L211+8
	ldr	r3, [r3, #44]
	cmp	r3, #0
	bne	.L208
.L201:
	bl	drawLock.part.0
	ldr	r3, .L211+12
	ldr	r3, [r3, #44]
	cmp	r3, #0
	bne	.L209
.L203:
	bl	drawKey.part.0
	ldr	r3, .L211+16
	ldr	r3, [r3, #44]
	cmp	r3, #0
	bne	.L210
.L205:
	bl	drawFinalTeleport.part.0
	b	.L206
.L212:
	.align	2
.L211:
	.word	player
	.word	shadowOAM
	.word	lock
	.word	key
	.word	finalTeleport
	.word	waitForVBlank
	.word	DMANow
	.size	drawFinalScene, .-drawFinalScene
	.comm	reachKey,4,4
	.comm	reachFriend,4,4
	.comm	reachFinalTeleport,4,4
	.global	finalSceneCollision
	.comm	finalTeleport,52,4
	.comm	friend,52,4
	.comm	lock,52,4
	.comm	key,52,4
	.comm	player,52,4
	.comm	shadowOAM,1024,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	finalSceneCollision, %object
	.size	finalSceneCollision, 4
finalSceneCollision:
	.word	finalSceneCollisionBitmap
	.ident	"GCC: (devkitARM release 53) 9.1.0"
