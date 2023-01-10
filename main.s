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
	.file	"main.c"
	.text
	.align	2
	.global	goToStart
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #67108864
	mov	r2, #7936
	mov	r4, #512
	mov	r5, #0
	strh	r2, [r3, #10]	@ movhi
	strh	r4, [r3]	@ movhi
	ldr	r3, .L4
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r2, #83886080
	ldr	r4, .L4+4
	mov	r0, #3
	ldr	r1, .L4+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L4+12
	ldr	r1, .L4+16
	mov	lr, pc
	bx	r4
	ldr	r1, .L4+20
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L4+24
	mov	lr, pc
	bx	r4
	ldr	r2, .L4+28
	ldr	r3, .L4+32
	str	r5, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+36
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L4+40
	ldr	r3, .L4+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+48
	str	r5, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	waitForVBlank
	.word	DMANow
	.word	welcomePal
	.word	8304
	.word	welcomeTiles
	.word	welcomeMap
	.word	100726784
	.word	state
	.word	stopSound
	.word	spookySong_length
	.word	spookySong_data
	.word	playSoundA
	.word	seed
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r1, #5632
	mov	r0, #7936
	push	{r4, lr}
	ldr	r2, .L8
	strh	r0, [r3, #10]	@ movhi
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #12]	@ movhi
	ldr	r3, .L8+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+8
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToStart
.L9:
	.align	2
.L8:
	.word	7174
	.word	setupSounds
	.word	setupInterrupts
	.size	initialize, .-initialize
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause.part.0, %function
pause.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L12
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L12+4
	ldr	r3, .L12+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L12+12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToStart
.L13:
	.align	2
.L12:
	.word	clickSound_length
	.word	clickSound_data
	.word	playSoundB
	.word	hideSprites
	.size	pause.part.0, .-pause.part.0
	.set	pause5.part.0,pause.part.0
	.set	win.part.0,pause.part.0
	.set	pause4.part.0,pause.part.0
	.set	pause3.part.0,pause.part.0
	.set	pause2.part.0,pause.part.0
	.align	2
	.global	goToLevel1
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLevel1, %function
goToLevel1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r1, #7936
	mov	r5, #67108864
	mov	r2, #5632
	ldr	r3, .L16
	ldr	r4, .L16+4
	strh	r1, [r5, #10]	@ movhi
	strh	r2, [r5]	@ movhi
	strh	r3, [r5, #12]	@ movhi
	mov	r0, #3
	mov	r3, #1136
	ldr	r2, .L16+8
	ldr	r1, .L16+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L16+16
	mov	r3, #1024
	ldr	r2, .L16+20
	mov	lr, pc
	bx	r4
	ldr	r3, .L16+24
	ldrh	r2, [r3]
	ldr	r3, .L16+28
	strh	r2, [r5, #24]	@ movhi
	ldrh	r2, [r3]
	ldr	r3, .L16+32
	strh	r2, [r5, #26]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L16+36
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L16+40
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L16+44
	ldr	r1, .L16+48
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L16+52
	ldr	r1, .L16+56
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L16+60
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L16+64
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L16+68
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L17:
	.align	2
.L16:
	.word	7174
	.word	DMANow
	.word	100679680
	.word	movingBackgroundTiles
	.word	movingBackgroundMap
	.word	100720640
	.word	vOff
	.word	hOff
	.word	waitForVBlank
	.word	backgroundPal
	.word	backgroundTiles
	.word	100728832
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToLevel1, .-goToLevel1
	.align	2
	.global	goToLevel2
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLevel2, %function
goToLevel2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r1, #7936
	mov	r5, #67108864
	mov	r2, #5632
	ldr	r3, .L20
	ldr	r4, .L20+4
	strh	r1, [r5, #10]	@ movhi
	strh	r2, [r5]	@ movhi
	strh	r3, [r5, #12]	@ movhi
	mov	r0, #3
	mov	r3, #1136
	ldr	r2, .L20+8
	ldr	r1, .L20+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L20+16
	mov	r3, #1024
	ldr	r2, .L20+20
	mov	lr, pc
	bx	r4
	ldr	r3, .L20+24
	ldrh	r2, [r3]
	ldr	r3, .L20+28
	strh	r2, [r5, #24]	@ movhi
	ldrh	r2, [r3]
	ldr	r3, .L20+32
	strh	r2, [r5, #26]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L20+36
	mov	lr, pc
	bx	r4
	mov	r3, #1408
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L20+40
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L20+44
	ldr	r1, .L20+48
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L20+52
	ldr	r1, .L20+56
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L20+60
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L20+64
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L20+68
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L21:
	.align	2
.L20:
	.word	7174
	.word	DMANow
	.word	100679680
	.word	movingBackgroundTiles
	.word	movingBackgroundMap
	.word	100720640
	.word	vOff
	.word	hOff
	.word	waitForVBlank
	.word	background2Pal
	.word	background2Tiles
	.word	100728832
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToLevel2, .-goToLevel2
	.align	2
	.global	goToLevel3
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLevel3, %function
goToLevel3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r1, #7936
	mov	r5, #67108864
	mov	r2, #5632
	ldr	r3, .L24
	ldr	r4, .L24+4
	strh	r1, [r5, #10]	@ movhi
	strh	r2, [r5]	@ movhi
	strh	r3, [r5, #12]	@ movhi
	mov	r0, #3
	mov	r3, #1136
	ldr	r2, .L24+8
	ldr	r1, .L24+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L24+16
	mov	r3, #1024
	ldr	r2, .L24+20
	mov	lr, pc
	bx	r4
	ldr	r3, .L24+24
	ldrh	r2, [r3]
	ldr	r3, .L24+28
	strh	r2, [r5, #24]	@ movhi
	ldrh	r2, [r3]
	ldr	r3, .L24+32
	strh	r2, [r5, #26]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L24+36
	mov	lr, pc
	bx	r4
	mov	r3, #640
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L24+40
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L24+44
	ldr	r1, .L24+48
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L24+52
	ldr	r1, .L24+56
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L24+60
	mov	lr, pc
	bx	r3
	mov	r2, #117440512
	ldr	r1, .L24+64
	mov	r3, #512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L24+68
	mov	lr, pc
	bx	r3
	ldr	r3, .L24+72
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L24+76
	ldr	r3, .L24+80
	mov	lr, pc
	bx	r3
	mov	r2, #6
	ldr	r3, .L24+84
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L25:
	.align	2
.L24:
	.word	7172
	.word	DMANow
	.word	100679680
	.word	movingBackgroundTiles
	.word	movingBackgroundMap
	.word	100720640
	.word	vOff
	.word	hOff
	.word	waitForVBlank
	.word	background3Pal
	.word	background3Tiles
	.word	100728832
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	hideSprites
	.word	shadowOAM
	.word	stopSound
	.word	intenseSong_length
	.word	intenseSong_data
	.word	playSoundA
	.word	state
	.size	goToLevel3, .-goToLevel3
	.align	2
	.global	goToLevel4
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLevel4, %function
goToLevel4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r1, #7936
	mov	r5, #67108864
	mov	r2, #5632
	ldr	r3, .L28
	ldr	r4, .L28+4
	strh	r1, [r5, #10]	@ movhi
	strh	r2, [r5]	@ movhi
	strh	r3, [r5, #12]	@ movhi
	mov	r0, #3
	mov	r3, #1136
	ldr	r2, .L28+8
	ldr	r1, .L28+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L28+16
	mov	r3, #1024
	ldr	r2, .L28+20
	mov	lr, pc
	bx	r4
	ldr	r3, .L28+24
	ldrh	r2, [r3]
	ldr	r3, .L28+28
	strh	r2, [r5, #24]	@ movhi
	ldrh	r2, [r3]
	ldr	r3, .L28+32
	strh	r2, [r5, #26]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L28+36
	mov	lr, pc
	bx	r4
	mov	r3, #752
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L28+40
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L28+44
	ldr	r1, .L28+48
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L28+52
	ldr	r1, .L28+56
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L28+60
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L28+64
	mov	lr, pc
	bx	r4
	mov	r2, #7
	ldr	r3, .L28+68
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L29:
	.align	2
.L28:
	.word	7172
	.word	DMANow
	.word	100679680
	.word	movingBackgroundTiles
	.word	movingBackgroundMap
	.word	100720640
	.word	vOff
	.word	hOff
	.word	waitForVBlank
	.word	background4Pal
	.word	background4Tiles
	.word	100728832
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToLevel4, .-goToLevel4
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #1536
	mov	r5, #67108864
	ldr	r1, .L32
	ldr	r3, .L32+4
	ldr	r4, .L32+8
	strh	r1, [r5, #10]	@ movhi
	strh	r2, [r5]	@ movhi
	strh	r3, [r5, #12]	@ movhi
	mov	r0, #3
	mov	r3, #1136
	ldr	r2, .L32+12
	ldr	r1, .L32+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L32+20
	ldr	r1, .L32+24
	mov	lr, pc
	bx	r4
	mov	r1, #9
	ldr	r3, .L32+28
	ldr	r2, .L32+32
	ldrh	r0, [r3]
	strh	r0, [r5, #24]	@ movhi
	ldrh	r0, [r2]
	ldr	r2, .L32+36
	strh	r0, [r5, #26]	@ movhi
	str	r1, [r3]
	mov	lr, pc
	bx	r2
	mov	r3, #512
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L32+40
	mov	lr, pc
	bx	r4
	mov	r3, #2496
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L32+44
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L32+48
	mov	r0, #3
	ldr	r1, .L32+52
	mov	lr, pc
	bx	r4
	mov	r2, #8
	ldr	r3, .L32+56
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L33:
	.align	2
.L32:
	.word	7426
	.word	7172
	.word	DMANow
	.word	100679680
	.word	movingBackgroundTiles
	.word	100720640
	.word	movingBackgroundMap
	.word	hOff
	.word	vOff
	.word	waitForVBlank
	.word	pausedPal
	.word	pausedTiles
	.word	100722688
	.word	pausedMap
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	goToPause2
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause2, %function
goToPause2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #1536
	mov	r5, #67108864
	mov	r6, #9
	ldr	r1, .L36
	ldr	r3, .L36+4
	ldr	r4, .L36+8
	strh	r1, [r5, #10]	@ movhi
	strh	r2, [r5]	@ movhi
	strh	r3, [r5, #12]	@ movhi
	mov	r0, #3
	mov	r3, #1136
	ldr	r2, .L36+12
	ldr	r1, .L36+16
	mov	lr, pc
	bx	r4
	mov	r0, #3
	mov	r3, #1024
	ldr	r2, .L36+20
	ldr	r1, .L36+24
	mov	lr, pc
	bx	r4
	ldr	r3, .L36+28
	ldr	r2, .L36+32
	ldrh	r1, [r3]
	strh	r1, [r5, #24]	@ movhi
	ldrh	r1, [r2]
	ldr	r2, .L36+36
	strh	r1, [r5, #26]	@ movhi
	str	r6, [r3]
	mov	lr, pc
	bx	r2
	mov	r3, #512
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L36+40
	mov	lr, pc
	bx	r4
	mov	r3, #2496
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L36+44
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L36+48
	ldr	r1, .L36+52
	mov	lr, pc
	bx	r4
	ldr	r3, .L36+56
	str	r6, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L37:
	.align	2
.L36:
	.word	7426
	.word	7172
	.word	DMANow
	.word	100679680
	.word	movingBackgroundTiles
	.word	100720640
	.word	movingBackgroundMap
	.word	hOff
	.word	vOff
	.word	waitForVBlank
	.word	pausedPal
	.word	pausedTiles
	.word	100722688
	.word	pausedMap
	.word	state
	.size	goToPause2, .-goToPause2
	.align	2
	.global	goToPause3
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause3, %function
goToPause3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #1536
	mov	r5, #67108864
	ldr	r1, .L40
	ldr	r3, .L40+4
	ldr	r4, .L40+8
	strh	r1, [r5, #10]	@ movhi
	strh	r2, [r5]	@ movhi
	strh	r3, [r5, #12]	@ movhi
	mov	r0, #3
	mov	r3, #1136
	ldr	r2, .L40+12
	ldr	r1, .L40+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L40+20
	ldr	r1, .L40+24
	mov	lr, pc
	bx	r4
	mov	r1, #9
	ldr	r3, .L40+28
	ldr	r2, .L40+32
	ldrh	r0, [r3]
	strh	r0, [r5, #24]	@ movhi
	ldrh	r0, [r2]
	ldr	r2, .L40+36
	strh	r0, [r5, #26]	@ movhi
	str	r1, [r3]
	mov	lr, pc
	bx	r2
	mov	r3, #512
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L40+40
	mov	lr, pc
	bx	r4
	mov	r3, #2496
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L40+44
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L40+48
	mov	r0, #3
	ldr	r1, .L40+52
	mov	lr, pc
	bx	r4
	mov	r2, #10
	ldr	r3, .L40+56
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L41:
	.align	2
.L40:
	.word	7426
	.word	7172
	.word	DMANow
	.word	100679680
	.word	movingBackgroundTiles
	.word	100720640
	.word	movingBackgroundMap
	.word	hOff
	.word	vOff
	.word	waitForVBlank
	.word	pausedPal
	.word	pausedTiles
	.word	100722688
	.word	pausedMap
	.word	state
	.size	goToPause3, .-goToPause3
	.align	2
	.global	goToPause4
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause4, %function
goToPause4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #1536
	mov	r5, #67108864
	ldr	r1, .L44
	ldr	r3, .L44+4
	ldr	r4, .L44+8
	strh	r1, [r5, #10]	@ movhi
	strh	r2, [r5]	@ movhi
	strh	r3, [r5, #12]	@ movhi
	mov	r0, #3
	mov	r3, #1136
	ldr	r2, .L44+12
	ldr	r1, .L44+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L44+20
	ldr	r1, .L44+24
	mov	lr, pc
	bx	r4
	mov	r1, #9
	ldr	r3, .L44+28
	ldr	r2, .L44+32
	ldrh	r0, [r3]
	strh	r0, [r5, #24]	@ movhi
	ldrh	r0, [r2]
	ldr	r2, .L44+36
	strh	r0, [r5, #26]	@ movhi
	str	r1, [r3]
	mov	lr, pc
	bx	r2
	mov	r3, #512
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L44+40
	mov	lr, pc
	bx	r4
	mov	r3, #2496
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L44+44
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L44+48
	mov	r0, #3
	ldr	r1, .L44+52
	mov	lr, pc
	bx	r4
	mov	r2, #11
	ldr	r3, .L44+56
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L45:
	.align	2
.L44:
	.word	7426
	.word	7172
	.word	DMANow
	.word	100679680
	.word	movingBackgroundTiles
	.word	100720640
	.word	movingBackgroundMap
	.word	hOff
	.word	vOff
	.word	waitForVBlank
	.word	pausedPal
	.word	pausedTiles
	.word	100722688
	.word	pausedMap
	.word	state
	.size	goToPause4, .-goToPause4
	.align	2
	.global	goToPause5
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause5, %function
goToPause5:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #1536
	mov	r5, #67108864
	ldr	r1, .L48
	ldr	r3, .L48+4
	ldr	r4, .L48+8
	strh	r1, [r5, #10]	@ movhi
	strh	r2, [r5]	@ movhi
	strh	r3, [r5, #12]	@ movhi
	mov	r0, #3
	mov	r3, #1136
	ldr	r2, .L48+12
	ldr	r1, .L48+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L48+20
	ldr	r1, .L48+24
	mov	lr, pc
	bx	r4
	mov	r1, #9
	ldr	r3, .L48+28
	ldr	r2, .L48+32
	ldrh	r0, [r3]
	strh	r0, [r5, #24]	@ movhi
	ldrh	r0, [r2]
	ldr	r2, .L48+36
	strh	r0, [r5, #26]	@ movhi
	str	r1, [r3]
	mov	lr, pc
	bx	r2
	mov	r3, #512
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L48+40
	mov	lr, pc
	bx	r4
	mov	r3, #2496
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L48+44
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L48+48
	mov	r0, #3
	ldr	r1, .L48+52
	mov	lr, pc
	bx	r4
	mov	r2, #12
	ldr	r3, .L48+56
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L49:
	.align	2
.L48:
	.word	7426
	.word	7172
	.word	DMANow
	.word	100679680
	.word	movingBackgroundTiles
	.word	100720640
	.word	movingBackgroundMap
	.word	hOff
	.word	vOff
	.word	waitForVBlank
	.word	pausedPal
	.word	pausedTiles
	.word	100722688
	.word	pausedMap
	.word	state
	.size	goToPause5, .-goToPause5
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #67108864
	ldr	r1, .L62
	ldr	r3, [r1]
	lsl	r2, r3, #16
	lsr	r2, r2, #16
	push	{r4, lr}
	strh	r2, [r0, #24]	@ movhi
	ldr	r2, .L62+4
	ldrh	r2, [r2]
	add	r3, r3, #1
	strh	r2, [r0, #26]	@ movhi
	ldr	r2, .L62+8
	str	r3, [r1]
	mov	lr, pc
	bx	r2
	ldr	r3, .L62+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L51
	ldr	r2, .L62+16
	ldrh	r2, [r2]
	ands	r2, r2, #8
	beq	.L60
.L51:
	tst	r3, #4
	beq	.L50
	ldr	r3, .L62+16
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L61
.L50:
	pop	{r4, lr}
	bx	lr
.L60:
	ldr	r3, .L62+20
	ldr	r0, .L62+24
	ldr	r1, [r3]
	ldr	r3, .L62+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L62+32
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToLevel1
.L61:
	pop	{r4, lr}
	b	pause.part.0
.L63:
	.align	2
.L62:
	.word	hOff
	.word	vOff
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	clickSound_length
	.word	clickSound_data
	.word	playSoundB
	.word	hideSprites
	.size	pause, .-pause
	.align	2
	.global	pause2
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause2, %function
pause2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #67108864
	ldr	r1, .L76
	ldr	r3, [r1]
	lsl	r2, r3, #16
	lsr	r2, r2, #16
	push	{r4, lr}
	strh	r2, [r0, #24]	@ movhi
	ldr	r2, .L76+4
	ldrh	r2, [r2]
	add	r3, r3, #1
	strh	r2, [r0, #26]	@ movhi
	ldr	r2, .L76+8
	str	r3, [r1]
	mov	lr, pc
	bx	r2
	ldr	r3, .L76+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L65
	ldr	r2, .L76+16
	ldrh	r2, [r2]
	ands	r2, r2, #8
	beq	.L74
.L65:
	tst	r3, #4
	beq	.L64
	ldr	r3, .L76+16
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L75
.L64:
	pop	{r4, lr}
	bx	lr
.L74:
	ldr	r3, .L76+20
	ldr	r0, .L76+24
	ldr	r1, [r3]
	ldr	r3, .L76+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L76+32
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToLevel2
.L75:
	pop	{r4, lr}
	b	pause2.part.0
.L77:
	.align	2
.L76:
	.word	hOff
	.word	vOff
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	clickSound_length
	.word	clickSound_data
	.word	playSoundB
	.word	hideSprites
	.size	pause2, .-pause2
	.align	2
	.global	pause3
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause3, %function
pause3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #67108864
	ldr	r1, .L90
	ldr	r3, [r1]
	lsl	r2, r3, #16
	lsr	r2, r2, #16
	push	{r4, lr}
	strh	r2, [r0, #24]	@ movhi
	ldr	r2, .L90+4
	ldrh	r2, [r2]
	add	r3, r3, #1
	strh	r2, [r0, #26]	@ movhi
	ldr	r2, .L90+8
	str	r3, [r1]
	mov	lr, pc
	bx	r2
	ldr	r3, .L90+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L79
	ldr	r2, .L90+16
	ldrh	r2, [r2]
	ands	r2, r2, #8
	beq	.L88
.L79:
	tst	r3, #4
	beq	.L78
	ldr	r3, .L90+16
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L89
.L78:
	pop	{r4, lr}
	bx	lr
.L88:
	ldr	r3, .L90+20
	ldr	r0, .L90+24
	ldr	r1, [r3]
	ldr	r3, .L90+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L90+32
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToLevel3
.L89:
	pop	{r4, lr}
	b	pause3.part.0
.L91:
	.align	2
.L90:
	.word	hOff
	.word	vOff
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	clickSound_length
	.word	clickSound_data
	.word	playSoundB
	.word	hideSprites
	.size	pause3, .-pause3
	.align	2
	.global	pause4
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause4, %function
pause4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #67108864
	ldr	r1, .L104
	ldr	r3, [r1]
	lsl	r2, r3, #16
	lsr	r2, r2, #16
	push	{r4, lr}
	strh	r2, [r0, #24]	@ movhi
	ldr	r2, .L104+4
	ldrh	r2, [r2]
	add	r3, r3, #1
	strh	r2, [r0, #26]	@ movhi
	ldr	r2, .L104+8
	str	r3, [r1]
	mov	lr, pc
	bx	r2
	ldr	r3, .L104+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L93
	ldr	r2, .L104+16
	ldrh	r2, [r2]
	ands	r2, r2, #8
	beq	.L102
.L93:
	tst	r3, #4
	beq	.L92
	ldr	r3, .L104+16
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L103
.L92:
	pop	{r4, lr}
	bx	lr
.L102:
	ldr	r3, .L104+20
	ldr	r0, .L104+24
	ldr	r1, [r3]
	ldr	r3, .L104+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L104+32
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToLevel4
.L103:
	pop	{r4, lr}
	b	pause4.part.0
.L105:
	.align	2
.L104:
	.word	hOff
	.word	vOff
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	clickSound_length
	.word	clickSound_data
	.word	playSoundB
	.word	hideSprites
	.size	pause4, .-pause4
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #67108864
	mov	r2, #7936
	mov	r4, #512
	strh	r2, [r3, #10]	@ movhi
	strh	r4, [r3]	@ movhi
	ldr	r3, .L108
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r2, #83886080
	ldr	r4, .L108+4
	mov	r0, #3
	ldr	r1, .L108+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L108+12
	ldr	r1, .L108+16
	mov	lr, pc
	bx	r4
	ldr	r2, .L108+20
	ldr	r1, .L108+24
	mov	r3, #1024
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L108+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L108+32
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L108+36
	ldr	r3, .L108+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L108+44
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L108+48
	ldr	r3, .L108+52
	mov	lr, pc
	bx	r3
	mov	r2, #13
	ldr	r3, .L108+56
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L109:
	.align	2
.L108:
	.word	waitForVBlank
	.word	DMANow
	.word	winPal
	.word	8432
	.word	winTiles
	.word	100726784
	.word	winMap
	.word	stopSound
	.word	teleportSound_length
	.word	teleportSound_data
	.word	playSoundB
	.word	relaxMusic_length
	.word	relaxMusic_data
	.word	playSoundA
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r1, #7936
	mov	r2, #1536
	push	{r4, lr}
	strh	r1, [r3, #10]	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	r3, .L112
	mov	lr, pc
	bx	r3
	ldr	r4, .L112+4
	mov	r3, #512
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L112+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L112+12
	ldr	r1, .L112+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L112+20
	mov	r0, #3
	ldr	r1, .L112+24
	mov	lr, pc
	bx	r4
	mov	r2, #14
	ldr	r3, .L112+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L113:
	.align	2
.L112:
	.word	waitForVBlank
	.word	DMANow
	.word	losePal
	.word	4240
	.word	loseTiles
	.word	100726784
	.word	loseMap
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	level1
	.syntax unified
	.arm
	.fpu softvfp
	.type	level1, %function
level1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L147
	ldr	r4, .L147+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L147+8
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L115
	ldr	r2, .L147+12
	ldrh	r2, [r2]
	ands	r2, r2, #8
	beq	.L140
.L115:
	tst	r3, #4
	bne	.L141
.L116:
	tst	r3, #1
	beq	.L117
	ldr	r2, .L147+12
	ldrh	r2, [r2]
	ands	r2, r2, #1
	beq	.L142
.L117:
	tst	r3, #2
	beq	.L118
	ldr	r3, .L147+12
	ldrh	r2, [r3]
	ands	r2, r2, #2
	beq	.L143
.L118:
	ldr	r3, .L147+16
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L120
	ldr	r4, .L147+20
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L144
.L121:
	cmp	r3, #0
	ble	.L123
	ldr	r3, .L147+24
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L145
.L123:
	ldr	r3, .L147+28
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L146
.L114:
	pop	{r4, lr}
	bx	lr
.L141:
	ldr	r2, .L147+12
	ldrh	r2, [r2]
	ands	r2, r2, #4
	bne	.L116
	ldr	r3, .L147+32
	ldr	r0, .L147+36
	ldr	r1, [r3]
	ldr	r3, .L147+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L147+44
	mov	lr, pc
	bx	r3
	bl	goToLose
	ldrh	r3, [r4]
	b	.L116
.L144:
	ldr	r3, .L147+24
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L123
	ldr	r2, .L147+48
	ldr	r3, .L147+52
	ldr	r0, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L147+56
	mov	lr, pc
	bx	r3
	bl	goToLevel2
	ldr	r3, [r4]
	b	.L121
.L120:
	cmp	r3, #1
	beq	.L119
	ldr	r3, .L147+28
	ldr	r3, [r3, #48]
	cmp	r3, #0
	bne	.L114
.L146:
	pop	{r4, lr}
	b	goToLose
.L140:
	ldr	r3, .L147+32
	ldr	r0, .L147+36
	ldr	r1, [r3]
	ldr	r3, .L147+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L147+44
	mov	lr, pc
	bx	r3
	bl	goToPause
	ldrh	r3, [r4]
	b	.L116
.L142:
	ldr	r3, .L147+32
	ldr	r0, .L147+36
	ldr	r1, [r3]
	ldr	r3, .L147+40
	mov	lr, pc
	bx	r3
	ldr	r2, .L147+48
	ldr	r3, .L147+52
	ldr	r0, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L147+56
	mov	lr, pc
	bx	r3
	bl	goToLevel2
	ldrh	r3, [r4]
	b	.L117
.L143:
	ldr	r3, .L147+32
	ldr	r0, .L147+36
	ldr	r1, [r3]
	ldr	r3, .L147+40
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L147+16
	str	r2, [r3]
.L119:
	ldr	r3, .L147+24
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L123
	ldr	r2, .L147+48
	ldr	r3, .L147+52
	ldr	r0, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L147+56
	mov	lr, pc
	bx	r3
	bl	goToLevel2
	b	.L123
.L145:
	bl	goToLose
	b	.L123
.L148:
	.align	2
.L147:
	.word	updateGame
	.word	oldButtons
	.word	drawGame
	.word	buttons
	.word	cheatMode
	.word	tilesRemaining
	.word	reachGate
	.word	player
	.word	clickSound_length
	.word	clickSound_data
	.word	playSoundB
	.word	hideSprites
	.word	seed
	.word	srand
	.word	initLevel2
	.size	level1, .-level1
	.align	2
	.global	goToLose2
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose2, %function
goToLose2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r1, #7936
	mov	r2, #1536
	push	{r4, lr}
	strh	r1, [r3, #10]	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	r3, .L151
	mov	lr, pc
	bx	r3
	ldr	r4, .L151+4
	mov	r3, #512
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L151+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L151+12
	ldr	r1, .L151+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L151+20
	mov	r0, #3
	ldr	r1, .L151+24
	mov	lr, pc
	bx	r4
	mov	r2, #15
	ldr	r3, .L151+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L152:
	.align	2
.L151:
	.word	waitForVBlank
	.word	DMANow
	.word	losePal
	.word	4240
	.word	loseTiles
	.word	100726784
	.word	loseMap
	.word	state
	.size	goToLose2, .-goToLose2
	.align	2
	.global	level2
	.syntax unified
	.arm
	.fpu softvfp
	.type	level2, %function
level2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L186
	ldr	r4, .L186+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L186+8
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L154
	ldr	r2, .L186+12
	ldrh	r2, [r2]
	ands	r2, r2, #8
	beq	.L179
.L154:
	tst	r3, #4
	bne	.L180
.L155:
	tst	r3, #1
	beq	.L156
	ldr	r2, .L186+12
	ldrh	r2, [r2]
	ands	r2, r2, #1
	beq	.L181
.L156:
	tst	r3, #2
	beq	.L157
	ldr	r3, .L186+12
	ldrh	r2, [r3]
	ands	r2, r2, #2
	beq	.L182
.L157:
	ldr	r3, .L186+16
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L159
	ldr	r4, .L186+20
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L183
.L160:
	cmp	r3, #0
	ble	.L162
	ldr	r3, .L186+24
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L184
.L162:
	ldr	r3, .L186+28
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L185
.L153:
	pop	{r4, lr}
	bx	lr
.L180:
	ldr	r2, .L186+12
	ldrh	r2, [r2]
	ands	r2, r2, #4
	bne	.L155
	ldr	r3, .L186+32
	ldr	r0, .L186+36
	ldr	r1, [r3]
	ldr	r3, .L186+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L186+44
	mov	lr, pc
	bx	r3
	bl	goToLose2
	ldrh	r3, [r4]
	b	.L155
.L183:
	ldr	r3, .L186+24
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L162
	ldr	r2, .L186+48
	ldr	r3, .L186+52
	ldr	r0, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L186+56
	mov	lr, pc
	bx	r3
	bl	goToLevel3
	ldr	r3, [r4]
	b	.L160
.L159:
	cmp	r3, #1
	beq	.L158
	ldr	r3, .L186+28
	ldr	r3, [r3, #48]
	cmp	r3, #0
	bne	.L153
.L185:
	pop	{r4, lr}
	b	goToLose2
.L179:
	ldr	r3, .L186+32
	ldr	r0, .L186+36
	ldr	r1, [r3]
	ldr	r3, .L186+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L186+44
	mov	lr, pc
	bx	r3
	bl	goToPause2
	ldrh	r3, [r4]
	b	.L155
.L181:
	ldr	r3, .L186+32
	ldr	r0, .L186+36
	ldr	r1, [r3]
	ldr	r3, .L186+40
	mov	lr, pc
	bx	r3
	ldr	r2, .L186+48
	ldr	r3, .L186+52
	ldr	r0, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L186+56
	mov	lr, pc
	bx	r3
	bl	goToLevel3
	ldrh	r3, [r4]
	b	.L156
.L182:
	ldr	r3, .L186+32
	ldr	r0, .L186+36
	ldr	r1, [r3]
	ldr	r3, .L186+40
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L186+16
	str	r2, [r3]
.L158:
	ldr	r3, .L186+24
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L162
	ldr	r2, .L186+48
	ldr	r3, .L186+52
	ldr	r0, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L186+56
	mov	lr, pc
	bx	r3
	bl	goToLevel3
	b	.L162
.L184:
	bl	goToLose2
	b	.L162
.L187:
	.align	2
.L186:
	.word	updateLevel2
	.word	oldButtons
	.word	drawLevel2
	.word	buttons
	.word	cheatMode
	.word	tilesRemaining2
	.word	reachGate2
	.word	player
	.word	clickSound_length
	.word	clickSound_data
	.word	playSoundB
	.word	hideSprites
	.word	seed
	.word	srand
	.word	initLevel3
	.size	level2, .-level2
	.align	2
	.global	goToLose3
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose3, %function
goToLose3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r1, #7936
	mov	r2, #1536
	push	{r4, lr}
	strh	r1, [r3, #10]	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	r3, .L190
	mov	lr, pc
	bx	r3
	ldr	r4, .L190+4
	mov	r3, #512
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L190+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L190+12
	ldr	r1, .L190+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L190+20
	mov	r0, #3
	ldr	r1, .L190+24
	mov	lr, pc
	bx	r4
	mov	r2, #16
	ldr	r3, .L190+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L191:
	.align	2
.L190:
	.word	waitForVBlank
	.word	DMANow
	.word	losePal
	.word	4240
	.word	loseTiles
	.word	100726784
	.word	loseMap
	.word	state
	.size	goToLose3, .-goToLose3
	.align	2
	.global	level3
	.syntax unified
	.arm
	.fpu softvfp
	.type	level3, %function
level3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L225
	ldr	r4, .L225+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L225+8
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L193
	ldr	r2, .L225+12
	ldrh	r2, [r2]
	ands	r2, r2, #8
	beq	.L218
.L193:
	tst	r3, #4
	bne	.L219
.L194:
	tst	r3, #1
	beq	.L195
	ldr	r2, .L225+12
	ldrh	r2, [r2]
	ands	r2, r2, #1
	beq	.L220
.L195:
	tst	r3, #2
	beq	.L196
	ldr	r3, .L225+12
	ldrh	r2, [r3]
	ands	r2, r2, #2
	beq	.L221
.L196:
	ldr	r3, .L225+16
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L198
	ldr	r4, .L225+20
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L222
.L199:
	cmp	r3, #0
	ble	.L201
	ldr	r3, .L225+24
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L223
.L201:
	ldr	r3, .L225+28
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L224
.L192:
	pop	{r4, lr}
	bx	lr
.L219:
	ldr	r2, .L225+12
	ldrh	r2, [r2]
	ands	r2, r2, #4
	bne	.L194
	ldr	r3, .L225+32
	ldr	r0, .L225+36
	ldr	r1, [r3]
	ldr	r3, .L225+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L225+44
	mov	lr, pc
	bx	r3
	bl	goToLose3
	ldrh	r3, [r4]
	b	.L194
.L222:
	ldr	r3, .L225+24
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L201
	ldr	r2, .L225+48
	ldr	r3, .L225+52
	ldr	r0, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L225+56
	mov	lr, pc
	bx	r3
	bl	goToLevel4
	ldr	r3, [r4]
	b	.L199
.L198:
	cmp	r3, #1
	beq	.L197
	ldr	r3, .L225+28
	ldr	r3, [r3, #48]
	cmp	r3, #0
	bne	.L192
.L224:
	pop	{r4, lr}
	b	goToLose3
.L218:
	ldr	r3, .L225+32
	ldr	r0, .L225+36
	ldr	r1, [r3]
	ldr	r3, .L225+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L225+44
	mov	lr, pc
	bx	r3
	bl	goToPause3
	ldrh	r3, [r4]
	b	.L194
.L220:
	ldr	r3, .L225+32
	ldr	r0, .L225+36
	ldr	r1, [r3]
	ldr	r3, .L225+40
	mov	lr, pc
	bx	r3
	ldr	r2, .L225+48
	ldr	r3, .L225+52
	ldr	r0, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L225+56
	mov	lr, pc
	bx	r3
	bl	goToLevel4
	ldrh	r3, [r4]
	b	.L195
.L221:
	ldr	r3, .L225+32
	ldr	r0, .L225+36
	ldr	r1, [r3]
	ldr	r3, .L225+40
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L225+16
	str	r2, [r3]
.L197:
	ldr	r3, .L225+24
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L201
	ldr	r2, .L225+48
	ldr	r3, .L225+52
	ldr	r0, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L225+56
	mov	lr, pc
	bx	r3
	bl	goToLevel4
	b	.L201
.L223:
	bl	goToLose3
	b	.L201
.L226:
	.align	2
.L225:
	.word	updateLevel3
	.word	oldButtons
	.word	drawLevel3
	.word	buttons
	.word	cheatMode
	.word	tilesRemaining3
	.word	reachGate3
	.word	player
	.word	clickSound_length
	.word	clickSound_data
	.word	playSoundB
	.word	hideSprites
	.word	seed
	.word	srand
	.word	initLevel4
	.size	level3, .-level3
	.align	2
	.global	goToLose4
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose4, %function
goToLose4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r1, #7936
	mov	r2, #1536
	push	{r4, lr}
	strh	r1, [r3, #10]	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	r3, .L229
	mov	lr, pc
	bx	r3
	ldr	r4, .L229+4
	mov	r3, #512
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L229+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L229+12
	ldr	r1, .L229+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L229+20
	mov	r0, #3
	ldr	r1, .L229+24
	mov	lr, pc
	bx	r4
	mov	r2, #17
	ldr	r3, .L229+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L230:
	.align	2
.L229:
	.word	waitForVBlank
	.word	DMANow
	.word	losePal
	.word	4240
	.word	loseTiles
	.word	100726784
	.word	loseMap
	.word	state
	.size	goToLose4, .-goToLose4
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L238
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L238+4
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L231
	ldr	r3, .L238+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L237
.L231:
	pop	{r4, lr}
	bx	lr
.L237:
	pop	{r4, lr}
	b	win.part.0
.L239:
	.align	2
.L238:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.size	win, .-win
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L252
	ldr	r3, .L252+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L241
	ldr	r2, .L252+8
	ldrh	r2, [r2]
	ands	r2, r2, #4
	beq	.L250
.L241:
	tst	r3, #8
	beq	.L240
	ldr	r3, .L252+8
	ldrh	r2, [r3]
	ands	r2, r2, #8
	beq	.L251
.L240:
	pop	{r4, lr}
	bx	lr
.L251:
	ldr	r3, .L252+12
	ldr	r0, .L252+16
	ldr	r1, [r3]
	ldr	r3, .L252+20
	mov	lr, pc
	bx	r3
	ldr	r2, .L252+24
	ldr	r3, .L252+28
	ldr	r0, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L252+32
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToLevel1
.L250:
	ldr	r3, .L252+12
	ldr	r0, .L252+16
	ldr	r1, [r3]
	ldr	r3, .L252+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L252+36
	mov	lr, pc
	bx	r3
	bl	goToStart
	ldrh	r3, [r4]
	b	.L241
.L253:
	.align	2
.L252:
	.word	oldButtons
	.word	waitForVBlank
	.word	buttons
	.word	clickSound_length
	.word	clickSound_data
	.word	playSoundB
	.word	seed
	.word	srand
	.word	initGame
	.word	hideSprites
	.size	lose, .-lose
	.align	2
	.global	lose2
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose2, %function
lose2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L266
	ldr	r3, .L266+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L255
	ldr	r2, .L266+8
	ldrh	r2, [r2]
	ands	r2, r2, #4
	beq	.L264
.L255:
	tst	r3, #8
	beq	.L254
	ldr	r3, .L266+8
	ldrh	r2, [r3]
	ands	r2, r2, #8
	beq	.L265
.L254:
	pop	{r4, lr}
	bx	lr
.L265:
	ldr	r3, .L266+12
	ldr	r0, .L266+16
	ldr	r1, [r3]
	ldr	r3, .L266+20
	mov	lr, pc
	bx	r3
	ldr	r2, .L266+24
	ldr	r3, .L266+28
	ldr	r0, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L266+32
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToLevel2
.L264:
	ldr	r3, .L266+12
	ldr	r0, .L266+16
	ldr	r1, [r3]
	ldr	r3, .L266+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L266+36
	mov	lr, pc
	bx	r3
	bl	goToStart
	ldrh	r3, [r4]
	b	.L255
.L267:
	.align	2
.L266:
	.word	oldButtons
	.word	waitForVBlank
	.word	buttons
	.word	clickSound_length
	.word	clickSound_data
	.word	playSoundB
	.word	seed
	.word	srand
	.word	initLevel2
	.word	hideSprites
	.size	lose2, .-lose2
	.align	2
	.global	lose3
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose3, %function
lose3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L280
	ldr	r3, .L280+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L269
	ldr	r2, .L280+8
	ldrh	r2, [r2]
	ands	r2, r2, #4
	beq	.L278
.L269:
	tst	r3, #8
	beq	.L268
	ldr	r3, .L280+8
	ldrh	r2, [r3]
	ands	r2, r2, #8
	beq	.L279
.L268:
	pop	{r4, lr}
	bx	lr
.L279:
	ldr	r3, .L280+12
	ldr	r0, .L280+16
	ldr	r1, [r3]
	ldr	r3, .L280+20
	mov	lr, pc
	bx	r3
	ldr	r2, .L280+24
	ldr	r3, .L280+28
	ldr	r0, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L280+32
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToLevel3
.L278:
	ldr	r3, .L280+12
	ldr	r0, .L280+16
	ldr	r1, [r3]
	ldr	r3, .L280+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L280+36
	mov	lr, pc
	bx	r3
	bl	goToStart
	ldrh	r3, [r4]
	b	.L269
.L281:
	.align	2
.L280:
	.word	oldButtons
	.word	waitForVBlank
	.word	buttons
	.word	clickSound_length
	.word	clickSound_data
	.word	playSoundB
	.word	seed
	.word	srand
	.word	initLevel3
	.word	hideSprites
	.size	lose3, .-lose3
	.align	2
	.global	lose4
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose4, %function
lose4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L294
	ldr	r3, .L294+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L283
	ldr	r2, .L294+8
	ldrh	r2, [r2]
	ands	r2, r2, #4
	beq	.L292
.L283:
	tst	r3, #8
	beq	.L282
	ldr	r3, .L294+8
	ldrh	r2, [r3]
	ands	r2, r2, #8
	beq	.L293
.L282:
	pop	{r4, lr}
	bx	lr
.L293:
	ldr	r3, .L294+12
	ldr	r0, .L294+16
	ldr	r1, [r3]
	ldr	r3, .L294+20
	mov	lr, pc
	bx	r3
	ldr	r2, .L294+24
	ldr	r3, .L294+28
	ldr	r0, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L294+32
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToLevel4
.L292:
	ldr	r3, .L294+12
	ldr	r0, .L294+16
	ldr	r1, [r3]
	ldr	r3, .L294+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L294+36
	mov	lr, pc
	bx	r3
	bl	goToStart
	ldrh	r3, [r4]
	b	.L283
.L295:
	.align	2
.L294:
	.word	oldButtons
	.word	waitForVBlank
	.word	buttons
	.word	clickSound_length
	.word	clickSound_data
	.word	playSoundB
	.word	seed
	.word	srand
	.word	initLevel4
	.word	hideSprites
	.size	lose4, .-lose4
	.align	2
	.global	goToIntroduction
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToIntroduction, %function
goToIntroduction:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r1, #7936
	mov	r2, #1536
	push	{r4, lr}
	strh	r1, [r3, #10]	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	r3, .L298
	mov	lr, pc
	bx	r3
	ldr	r4, .L298+4
	mov	r3, #512
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L298+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L298+12
	ldr	r1, .L298+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L298+20
	mov	r0, #3
	ldr	r1, .L298+24
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L298+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L299:
	.align	2
.L298:
	.word	waitForVBlank
	.word	DMANow
	.word	introductionPal
	.word	5664
	.word	introductionTiles
	.word	100726784
	.word	introductionMap
	.word	state
	.size	goToIntroduction, .-goToIntroduction
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L308
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L308+4
	ldrh	r2, [r3]
	ands	r2, r2, #8
	bxne	lr
	push	{r4, lr}
	ldr	r3, .L308+8
	ldr	r0, .L308+12
	ldr	r1, [r3]
	ldr	r3, .L308+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L308+20
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToIntroduction
.L309:
	.align	2
.L308:
	.word	oldButtons
	.word	buttons
	.word	clickSound_length
	.word	clickSound_data
	.word	playSoundB
	.word	hideSprites
	.size	start, .-start
	.align	2
	.global	goToIntroduction2
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToIntroduction2, %function
goToIntroduction2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r1, #7936
	mov	r2, #1536
	push	{r4, lr}
	strh	r1, [r3, #10]	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	r3, .L312
	mov	lr, pc
	bx	r3
	ldr	r4, .L312+4
	mov	r3, #512
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L312+8
	mov	lr, pc
	bx	r4
	mov	r3, #5824
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L312+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L312+16
	mov	r0, #3
	ldr	r1, .L312+20
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L312+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L313:
	.align	2
.L312:
	.word	waitForVBlank
	.word	DMANow
	.word	introduction2Pal
	.word	introduction2Tiles
	.word	100726784
	.word	introduction2Map
	.word	state
	.size	goToIntroduction2, .-goToIntroduction2
	.align	2
	.global	introduction
	.syntax unified
	.arm
	.fpu softvfp
	.type	introduction, %function
introduction:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L321
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L321+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L314
	ldr	r3, .L321+8
	ldrh	r2, [r3]
	ands	r2, r2, #8
	beq	.L320
.L314:
	pop	{r4, lr}
	bx	lr
.L320:
	ldr	r3, .L321+12
	ldr	r0, .L321+16
	ldr	r1, [r3]
	ldr	r3, .L321+20
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToIntroduction2
.L322:
	.align	2
.L321:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	clickSound_length
	.word	clickSound_data
	.word	playSoundB
	.size	introduction, .-introduction
	.align	2
	.global	introduction3
	.syntax unified
	.arm
	.fpu softvfp
	.type	introduction3, %function
introduction3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L330
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L330+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L323
	ldr	r3, .L330+8
	ldrh	r2, [r3]
	ands	r2, r2, #8
	beq	.L329
.L323:
	pop	{r4, lr}
	bx	lr
.L329:
	ldr	r3, .L330+12
	ldr	r0, .L330+16
	ldr	r1, [r3]
	ldr	r3, .L330+20
	mov	lr, pc
	bx	r3
	ldr	r2, .L330+24
	ldr	r3, .L330+28
	ldr	r0, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L330+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L330+36
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L330+40
	ldr	r3, .L330+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L330+48
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToLevel1
.L331:
	.align	2
.L330:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	clickSound_length
	.word	clickSound_data
	.word	playSoundB
	.word	seed
	.word	srand
	.word	stopSound
	.word	darkSong_length
	.word	darkSong_data
	.word	playSoundA
	.word	initGame
	.size	introduction3, .-introduction3
	.align	2
	.global	goToIntroduction3
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToIntroduction3, %function
goToIntroduction3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r1, #7936
	mov	r2, #1536
	push	{r4, lr}
	strh	r1, [r3, #10]	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	r3, .L334
	mov	lr, pc
	bx	r3
	ldr	r4, .L334+4
	mov	r3, #512
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L334+8
	mov	lr, pc
	bx	r4
	mov	r3, #5312
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L334+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L334+16
	mov	r0, #3
	ldr	r1, .L334+20
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L334+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L335:
	.align	2
.L334:
	.word	waitForVBlank
	.word	DMANow
	.word	introduction3Pal
	.word	introduction3Tiles
	.word	100726784
	.word	introduction3Map
	.word	state
	.size	goToIntroduction3, .-goToIntroduction3
	.align	2
	.global	introduction2
	.syntax unified
	.arm
	.fpu softvfp
	.type	introduction2, %function
introduction2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L343
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L343+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L336
	ldr	r3, .L343+8
	ldrh	r2, [r3]
	ands	r2, r2, #8
	beq	.L342
.L336:
	pop	{r4, lr}
	bx	lr
.L342:
	ldr	r3, .L343+12
	ldr	r0, .L343+16
	ldr	r1, [r3]
	ldr	r3, .L343+20
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToIntroduction3
.L344:
	.align	2
.L343:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	clickSound_length
	.word	clickSound_data
	.word	playSoundB
	.size	introduction2, .-introduction2
	.align	2
	.global	goToFinal
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToFinal, %function
goToFinal:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r1, #7936
	mov	r2, #4608
	push	{r4, lr}
	strh	r1, [r3, #10]	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	r3, .L347
	ldr	r4, .L347+4
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L347+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L347+12
	ldr	r1, .L347+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L347+20
	ldr	r1, .L347+24
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L347+28
	ldr	r1, .L347+32
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L347+36
	ldr	r1, .L347+40
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L347+44
	mov	lr, pc
	bx	r3
	mov	r2, #117440512
	ldr	r1, .L347+48
	mov	r3, #512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L347+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L347+56
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L347+60
	ldr	r3, .L347+64
	mov	lr, pc
	bx	r3
	mov	r2, #19
	ldr	r3, .L347+68
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L348:
	.align	2
.L347:
	.word	waitForVBlank
	.word	DMANow
	.word	finalScenePal
	.word	8848
	.word	finalSceneTiles
	.word	100726784
	.word	finalSceneMap
	.word	100728832
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	hideSprites
	.word	shadowOAM
	.word	stopSound
	.word	spookySong_length
	.word	spookySong_data
	.word	playSoundA
	.word	state
	.size	goToFinal, .-goToFinal
	.align	2
	.global	level4
	.syntax unified
	.arm
	.fpu softvfp
	.type	level4, %function
level4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L382
	ldr	r4, .L382+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L382+8
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L350
	ldr	r2, .L382+12
	ldrh	r2, [r2]
	ands	r2, r2, #8
	beq	.L375
.L350:
	tst	r3, #4
	bne	.L376
.L351:
	tst	r3, #1
	beq	.L352
	ldr	r2, .L382+12
	ldrh	r2, [r2]
	ands	r2, r2, #1
	beq	.L377
.L352:
	tst	r3, #2
	beq	.L353
	ldr	r3, .L382+12
	ldrh	r2, [r3]
	ands	r2, r2, #2
	beq	.L378
.L353:
	ldr	r3, .L382+16
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L355
	ldr	r4, .L382+20
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L379
.L356:
	cmp	r3, #0
	ble	.L358
	ldr	r3, .L382+24
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L380
.L358:
	ldr	r3, .L382+28
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L381
.L349:
	pop	{r4, lr}
	bx	lr
.L376:
	ldr	r2, .L382+12
	ldrh	r2, [r2]
	ands	r2, r2, #4
	bne	.L351
	ldr	r3, .L382+32
	ldr	r0, .L382+36
	ldr	r1, [r3]
	ldr	r3, .L382+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L382+44
	mov	lr, pc
	bx	r3
	bl	goToLose4
	ldrh	r3, [r4]
	b	.L351
.L379:
	ldr	r3, .L382+24
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L358
	ldr	r2, .L382+48
	ldr	r3, .L382+52
	ldr	r0, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L382+56
	mov	lr, pc
	bx	r3
	bl	goToFinal
	ldr	r3, [r4]
	b	.L356
.L355:
	cmp	r3, #1
	beq	.L354
	ldr	r3, .L382+28
	ldr	r3, [r3, #48]
	cmp	r3, #0
	bne	.L349
.L381:
	pop	{r4, lr}
	b	goToLose4
.L375:
	ldr	r3, .L382+32
	ldr	r0, .L382+36
	ldr	r1, [r3]
	ldr	r3, .L382+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L382+44
	mov	lr, pc
	bx	r3
	bl	goToPause4
	ldrh	r3, [r4]
	b	.L351
.L377:
	ldr	r3, .L382+32
	ldr	r0, .L382+36
	ldr	r1, [r3]
	ldr	r3, .L382+40
	mov	lr, pc
	bx	r3
	ldr	r2, .L382+48
	ldr	r3, .L382+52
	ldr	r0, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L382+56
	mov	lr, pc
	bx	r3
	bl	goToFinal
	ldrh	r3, [r4]
	b	.L352
.L378:
	ldr	r3, .L382+32
	ldr	r0, .L382+36
	ldr	r1, [r3]
	ldr	r3, .L382+40
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L382+16
	str	r2, [r3]
.L354:
	ldr	r3, .L382+24
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L358
	ldr	r2, .L382+48
	ldr	r3, .L382+52
	ldr	r0, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L382+56
	mov	lr, pc
	bx	r3
	bl	goToFinal
	b	.L358
.L380:
	bl	goToLose4
	b	.L358
.L383:
	.align	2
.L382:
	.word	updateLevel4
	.word	oldButtons
	.word	drawLevel4
	.word	buttons
	.word	cheatMode
	.word	tilesRemaining4
	.word	reachfinalgate
	.word	player
	.word	clickSound_length
	.word	clickSound_data
	.word	playSoundB
	.word	hideSprites
	.word	seed
	.word	srand
	.word	initFinalScene
	.size	level4, .-level4
	.align	2
	.global	pause5
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause5, %function
pause5:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #67108864
	ldr	r1, .L396
	ldr	r3, [r1]
	lsl	r2, r3, #16
	lsr	r2, r2, #16
	push	{r4, lr}
	strh	r2, [r0, #24]	@ movhi
	ldr	r2, .L396+4
	ldrh	r2, [r2]
	add	r3, r3, #1
	strh	r2, [r0, #26]	@ movhi
	ldr	r2, .L396+8
	str	r3, [r1]
	mov	lr, pc
	bx	r2
	ldr	r3, .L396+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L385
	ldr	r2, .L396+16
	ldrh	r2, [r2]
	ands	r2, r2, #8
	beq	.L394
.L385:
	tst	r3, #4
	beq	.L384
	ldr	r3, .L396+16
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L395
.L384:
	pop	{r4, lr}
	bx	lr
.L394:
	ldr	r3, .L396+20
	ldr	r0, .L396+24
	ldr	r1, [r3]
	ldr	r3, .L396+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L396+32
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToFinal
.L395:
	pop	{r4, lr}
	b	pause5.part.0
.L397:
	.align	2
.L396:
	.word	hOff
	.word	vOff
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	clickSound_length
	.word	clickSound_data
	.word	playSoundB
	.word	hideSprites
	.size	pause5, .-pause5
	.align	2
	.global	final
	.syntax unified
	.arm
	.fpu softvfp
	.type	final, %function
final:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L417
	ldr	r4, .L417+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L417+8
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L399
	ldr	r2, .L417+12
	ldrh	r2, [r2]
	ands	r2, r2, #8
	beq	.L413
.L399:
	tst	r3, #4
	bne	.L414
.L400:
	tst	r3, #1
	beq	.L401
	ldr	r3, .L417+12
	ldrh	r2, [r3]
	ands	r2, r2, #1
	beq	.L415
.L401:
	ldr	r3, .L417+16
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L416
.L398:
	pop	{r4, lr}
	bx	lr
.L414:
	ldr	r2, .L417+12
	ldrh	r2, [r2]
	ands	r2, r2, #4
	bne	.L400
	ldr	r3, .L417+20
	ldr	r0, .L417+24
	ldr	r1, [r3]
	ldr	r3, .L417+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L417+32
	mov	lr, pc
	bx	r3
	bl	goToStart
	ldrh	r3, [r4]
	b	.L400
.L416:
	ldr	r3, .L417+36
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L398
	pop	{r4, lr}
	b	goToWin
.L413:
	ldr	r3, .L417+20
	ldr	r0, .L417+24
	ldr	r1, [r3]
	ldr	r3, .L417+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L417+32
	mov	lr, pc
	bx	r3
	bl	goToPause5
	ldrh	r3, [r4]
	b	.L400
.L415:
	ldr	r3, .L417+20
	ldr	r0, .L417+24
	ldr	r1, [r3]
	ldr	r3, .L417+28
	mov	lr, pc
	bx	r3
	bl	goToWin
	b	.L401
.L418:
	.align	2
.L417:
	.word	updateFinalScene
	.word	oldButtons
	.word	drawFinalScene
	.word	buttons
	.word	reachFriend
	.word	clickSound_length
	.word	clickSound_data
	.word	playSoundB
	.word	hideSprites
	.word	reachFinalTeleport
	.size	final, .-final
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	ldr	r3, .L445
	mov	lr, pc
	bx	r3
	ldr	r6, .L445+4
	ldr	r7, .L445+8
	ldr	r5, .L445+12
	ldr	fp, .L445+16
	ldr	r10, .L445+20
	ldr	r9, .L445+24
	ldr	r8, .L445+28
	ldr	r4, .L445+32
.L420:
	ldr	r2, [r6]
	ldrh	r3, [r7]
.L421:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r7]	@ movhi
	cmp	r2, #19
	ldrls	pc, [pc, r2, asl #2]
	b	.L421
.L423:
	.word	.L441
	.word	.L440
	.word	.L439
	.word	.L438
	.word	.L437
	.word	.L436
	.word	.L435
	.word	.L434
	.word	.L433
	.word	.L432
	.word	.L431
	.word	.L430
	.word	.L429
	.word	.L428
	.word	.L427
	.word	.L426
	.word	.L425
	.word	.L424
	.word	.L421
	.word	.L422
.L422:
	ldr	r3, .L445+36
	mov	lr, pc
	bx	r3
	b	.L420
.L424:
	ldr	r3, .L445+40
	mov	lr, pc
	bx	r3
	b	.L420
.L425:
	ldr	r3, .L445+44
	mov	lr, pc
	bx	r3
	b	.L420
.L426:
	mov	lr, pc
	bx	r8
	b	.L420
.L427:
	mov	lr, pc
	bx	r9
	b	.L420
.L428:
	ldr	r3, .L445+48
	mov	lr, pc
	bx	r3
	b	.L420
.L429:
	ldr	r3, .L445+52
	mov	lr, pc
	bx	r3
	b	.L420
.L430:
	ldr	r3, .L445+56
	mov	lr, pc
	bx	r3
	b	.L420
.L431:
	ldr	r3, .L445+60
	mov	lr, pc
	bx	r3
	b	.L420
.L432:
	ldr	r3, .L445+64
	mov	lr, pc
	bx	r3
	b	.L420
.L433:
	ldr	r3, .L445+68
	mov	lr, pc
	bx	r3
	b	.L420
.L434:
	mov	lr, pc
	bx	r10
	b	.L420
.L435:
	mov	lr, pc
	bx	fp
	b	.L420
.L436:
	ldr	r3, .L445+72
	mov	lr, pc
	bx	r3
	b	.L420
.L437:
	ldr	r3, .L445+76
	mov	lr, pc
	bx	r3
	b	.L420
.L438:
	ldr	r3, .L445+80
	mov	lr, pc
	bx	r3
	b	.L420
.L439:
	ldr	r3, .L445+84
	mov	lr, pc
	bx	r3
	b	.L420
.L440:
	ldr	r3, .L445+88
	mov	lr, pc
	bx	r3
	b	.L420
.L441:
	ldr	r3, .L445+92
	mov	lr, pc
	bx	r3
	b	.L420
.L446:
	.align	2
.L445:
	.word	initialize
	.word	state
	.word	buttons
	.word	oldButtons
	.word	level3
	.word	level4
	.word	lose
	.word	lose2
	.word	67109120
	.word	final
	.word	lose4
	.word	lose3
	.word	win
	.word	pause5
	.word	pause4
	.word	pause3
	.word	pause2
	.word	pause
	.word	level2
	.word	level1
	.word	introduction3
	.word	introduction2
	.word	introduction
	.word	start
	.size	main, .-main
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	seed,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
