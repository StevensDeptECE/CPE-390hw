	.arch armv6
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"benchmark.cc"
	.text
	.align	2
	.global	_Z2b3j
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z2b3j, %function
_Z2b3j:
	.fnstart
.LFB2262:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	ip, r0, #0
	beq	.L4
	mov	r2, #0
	mov	r3, #0
	mov	r0, r2
	mov	r1, r3
.L3:
	adds	r0, r0, r2
	adc	r1, r1, r3
	adds	r2, r2, #1
	adc	r3, r3, #0
	cmp	ip, r2
	bhi	.L3
	bx	lr
.L4:
	mov	r0, #0
	mov	r1, #0
	bx	lr
	.cantunwind
	.fnend
	.size	_Z2b3j, .-_Z2b3j
	.align	2
	.global	_Z2b4j
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z2b4j, %function
_Z2b4j:
	.fnstart
.LFB2263:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	beq	.L10
	mov	r2, r0
	mov	r3, #0
	mov	r0, #0
	mov	r1, #0
.L9:
	adds	r0, r0, r2
	adc	r1, r1, r3
	subs	r2, r2, #1
	sbc	r3, r3, #0
	cmp	r2, #0
	bne	.L9
	bx	lr
.L10:
	mov	r0, #0
	mov	r1, #0
	bx	lr
	.cantunwind
	.fnend
	.size	_Z2b4j, .-_Z2b4j
	.align	2
	.global	_Z2b5Pjj
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z2b5Pjj, %function
_Z2b5Pjj:
	.fnstart
.LFB2264:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0
	beq	.L15
	add	ip, r0, r1, lsl #2
	mov	r3, r0
	mov	r1, #0
	mov	r0, #0
.L14:
	ldr	r2, [r3], #4
	adds	r0, r0, r2
	adc	r1, r1, #0
	cmp	ip, r3
	bne	.L14
	bx	lr
.L15:
	mov	r0, #0
	mov	r1, #0
	bx	lr
	.cantunwind
	.fnend
	.size	_Z2b5Pjj, .-_Z2b5Pjj
	.align	2
	.global	_Z2b6Pjj
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z2b6Pjj, %function
_Z2b6Pjj:
	.fnstart
.LFB2265:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #1
	push	{r4, r5, lr}
	mov	r5, #0
	ldr	r4, [r0]
	beq	.L20
	add	r1, r0, r1, lsl #2
	add	lr, r0, #4
	mov	r2, r4
	mov	r3, r5
.L19:
	ldr	ip, [r1, #-4]!
	adds	r2, r2, ip
	adc	r3, r3, #0
	cmp	lr, r1
	bne	.L19
.L18:
	adds	r0, r4, r2
	adc	r1, r5, r3
	pop	{r4, r5, pc}
.L20:
	mov	r2, r4
	mov	r3, r5
	b	.L18
	.cantunwind
	.fnend
	.size	_Z2b6Pjj, .-_Z2b6Pjj
	.align	2
	.global	_Z3b10Pjj
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z3b10Pjj, %function
_Z3b10Pjj:
	.fnstart
.LFB2269:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	ip, r1
	mov	lr, r0
	mov	r4, #0
	mov	r0, #0
	mov	r1, #0
.L26:
	cmp	ip, r4
	bls	.L24
	mov	r3, r4
.L25:
	ldr	r2, [lr, r3, lsl #2]
	add	r3, r3, #32
	adds	r0, r0, r2
	adc	r1, r1, #0
	cmp	ip, r3
	bhi	.L25
.L24:
	add	r4, r4, #1
	cmp	r4, #32
	bne	.L26
	pop	{r4, pc}
	.cantunwind
	.fnend
	.size	_Z3b10Pjj, .-_Z3b10Pjj
	.align	2
	.global	_Z3b11Pjj
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z3b11Pjj, %function
_Z3b11Pjj:
	.fnstart
.LFB2270:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	ip, r1
	mov	lr, r0
	mov	r4, #0
	mov	r0, #0
	mov	r1, #0
.L33:
	cmp	ip, r4
	bls	.L31
	mov	r3, r4
.L32:
	ldr	r2, [lr, r3, lsl #2]
	add	r3, r3, #1024
	adds	r0, r0, r2
	adc	r1, r1, #0
	cmp	ip, r3
	bhi	.L32
.L31:
	add	r4, r4, #1
	cmp	r4, #1024
	bne	.L33
	pop	{r4, pc}
	.cantunwind
	.fnend
	.size	_Z3b11Pjj, .-_Z3b11Pjj
	.align	2
	.global	_Z3b12Pjj
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z3b12Pjj, %function
_Z3b12Pjj:
	.fnstart
.LFB2271:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0
	beq	.L41
	add	r1, r0, r1, lsl #2
	mov	r3, #0
.L40:
	str	r3, [r0], #4
	cmp	r0, r1
	bne	.L40
.L41:
	mov	r0, #0
	mov	r1, #0
	bx	lr
	.cantunwind
	.fnend
	.size	_Z3b12Pjj, .-_Z3b12Pjj
	.align	2
	.global	_Z3b13Pjj
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z3b13Pjj, %function
_Z3b13Pjj:
	.fnstart
.LFB2272:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0
	beq	.L45
	add	r1, r0, r1, lsl #2
	mov	r3, #0
.L46:
	str	r3, [r1], #-4
	cmp	r1, r0
	bne	.L46
.L45:
	mov	r3, #0
	str	r3, [r0]
	mov	r1, #0
	mov	r0, #0
	bx	lr
	.cantunwind
	.fnend
	.size	_Z3b13Pjj, .-_Z3b13Pjj
	.align	2
	.global	_Z3b14Pjj
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z3b14Pjj, %function
_Z3b14Pjj:
	.fnstart
.LFB2273:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0
	mov	r1, #0
	bx	lr
	.cantunwind
	.fnend
	.size	_Z3b14Pjj, .-_Z3b14Pjj
	.align	2
	.global	_Z3b15Pfj
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z3b15Pfj, %function
_Z3b15Pfj:
	.fnstart
.LFB2277:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0
	vldr.32	s0, .L55
	beq	.L53
	add	r1, r0, r1, lsl #2
.L52:
	vldmia.32	r0!, {s15}
	cmp	r0, r1
	vadd.f32	s0, s0, s15
	bne	.L52
	bx	lr
.L53:
	bx	lr
.L56:
	.align	2
.L55:
	.word	0
	.cantunwind
	.fnend
	.size	_Z3b15Pfj, .-_Z3b15Pfj
	.align	2
	.global	_Z3b16Pfj
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z3b16Pfj, %function
_Z3b16Pfj:
	.fnstart
.LFB2278:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0
	beq	.L61
	mov	r3, #0
	add	r1, r0, r1, lsl #2
.L60:
	str	r3, [r0], #4	@ float
	cmp	r0, r1
	bne	.L60
.L61:
	vldr.32	s0, .L63
	bx	lr
.L64:
	.align	2
.L63:
	.word	0
	.cantunwind
	.fnend
	.size	_Z3b16Pfj, .-_Z3b16Pfj
	.align	2
	.global	_Z3b17Pfj
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z3b17Pfj, %function
_Z3b17Pfj:
	.fnstart
.LFB2279:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0
	vldr.32	s0, .L70
	beq	.L68
	add	r1, r0, r1, lsl #2
.L67:
	vldmia.32	r0!, {s15}
	cmp	r0, r1
	vmul.f32	s0, s0, s15
	bne	.L67
	bx	lr
.L68:
	bx	lr
.L71:
	.align	2
.L70:
	.word	1065353216
	.cantunwind
	.fnend
	.size	_Z3b17Pfj, .-_Z3b17Pfj
	.align	2
	.global	_Z7deg2radj
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z7deg2radj, %function
_Z7deg2radj:
	.fnstart
.LFB2282:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	vldr.64	d0, .L77
	beq	.L75
	vldr.64	d4, .L77+8
	vldr.64	d5, .L77+16
	vldr.64	d6, .L77+24
	mov	r3, #0
.L74:
	vmul.f64	d0, d0, d4
	add	r3, r3, #1
	cmp	r0, r3
	vmul.f64	d7, d0, d5
	vdiv.f64	d0, d7, d6
	bne	.L74
	bx	lr
.L75:
	bx	lr
.L78:
	.align	3
.L77:
	.word	0
	.word	1072693248
	.word	-755914244
	.word	1062232653
	.word	1413754129
	.word	1074340347
	.word	0
	.word	1080459264
	.cantunwind
	.fnend
	.size	_Z7deg2radj, .-_Z7deg2radj
	.align	2
	.global	_Z4gravj
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z4gravj, %function
_Z4gravj:
	.fnstart
.LFB2283:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	beq	.L82
	vldr.64	d7, .L84
	vldr.64	d4, .L84+8
	vldr.64	d5, .L84+16
	vldr.64	d6, .L84+24
	vmov.f64	d0, d7
	mov	r3, #0
.L81:
	vmla.f64	d0, d7, d4
	add	r3, r3, #1
	cmp	r0, r3
	vadd.f64	d7, d7, d6
	vadd.f64	d0, d0, d5
	bne	.L81
	bx	lr
.L82:
	vldr.64	d0, .L84
	bx	lr
.L85:
	.align	3
.L84:
	.word	0
	.word	0
	.word	-1717986918
	.word	1069128089
	.word	-492113160
	.word	1023969822
	.word	-1688883275
	.word	1028566182
	.cantunwind
	.fnend
	.size	_Z4gravj, .-_Z4gravj
	.align	2
	.global	_Z2b1j
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z2b1j, %function
_Z2b1j:
	.fnstart
.LFB2260:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	.save {r4, r5, r6, lr}
	subs	r5, r0, #0
	beq	.L90
	mov	r4, #0
.L89:
	add	r4, r4, #1
	bl	_Z1fv
	cmp	r4, r5
	bne	.L89
.L90:
	mov	r0, #0
	mov	r1, #0
	pop	{r4, r5, r6, pc}
	.fnend
	.size	_Z2b1j, .-_Z2b1j
	.align	2
	.global	_Z2b2j
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z2b2j, %function
_Z2b2j:
	.fnstart
.LFB2261:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	.save {r4, lr}
	subs	r4, r0, #0
	beq	.L98
.L95:
	bl	_Z1fv
	subs	r4, r4, #1
	bne	.L95
.L98:
	mov	r0, #0
	mov	r1, #0
	pop	{r4, pc}
	.fnend
	.size	_Z2b2j, .-_Z2b2j
	.align	2
	.global	_Z2b8Pjj
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z2b8Pjj, %function
_Z2b8Pjj:
	.fnstart
.LFB2768:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0
	mov	r1, #0
	bx	lr
	.cantunwind
	.fnend
	.size	_Z2b8Pjj, .-_Z2b8Pjj
	.align	2
	.global	_Z2b9Pjj
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z2b9Pjj, %function
_Z2b9Pjj:
	.fnstart
.LFB2766:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0
	mov	r1, #0
	bx	lr
	.cantunwind
	.fnend
	.size	_Z2b9Pjj, .-_Z2b9Pjj
	.align	2
	.global	_Z2b7Pjj
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z2b7Pjj, %function
_Z2b7Pjj:
	.fnstart
.LFB2770:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0
	mov	r1, #0
	bx	lr
	.cantunwind
	.fnend
	.size	_Z2b7Pjj, .-_Z2b7Pjj
	.global	__aeabi_uidivmod
	.align	2
	.global	_Z12countPrimes1j
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z12countPrimes1j, %function
_Z12countPrimes1j:
	.fnstart
.LFB2274:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #1
	push	{r4, r5, r6, r7, r8, lr}
	bls	.L112
	mov	r6, r0
	mov	r5, #2
	mov	r7, #0
.L111:
	cmp	r5, #2
	bls	.L106
	tst	r5, #1
	beq	.L107
	mov	r4, #2
	b	.L109
.L110:
	bl	__aeabi_uidivmod
	cmp	r1, #0
	beq	.L107
.L109:
	add	r4, r4, #1
	cmp	r4, r5
	mov	r0, r5
	mov	r1, r4
	bne	.L110
.L106:
	add	r7, r7, #1
.L107:
	add	r5, r5, #1
	cmp	r6, r5
	bcs	.L111
	mov	r0, r7
	pop	{r4, r5, r6, r7, r8, pc}
.L112:
	mov	r7, #0
	mov	r0, r7
	pop	{r4, r5, r6, r7, r8, pc}
	.cantunwind
	.fnend
	.size	_Z12countPrimes1j, .-_Z12countPrimes1j
	.align	2
	.global	_Z12countPrimes3j
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z12countPrimes3j, %function
_Z12countPrimes3j:
	.fnstart
.LFB2275:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #4
	bls	.L134
	push	{r4, r5, r6, r7, r8, lr}
	vpush.64	{d8, d9, d10, d11}
	vldr.64	d8, .L160
	mov	r8, r0
	mov	r5, #5
	mov	r7, #2
.L133:
	vmov	s15, r5	@ int
	mov	r4, #5
	vcvt.f64.u32	d10, s15
	vsqrt.f64	d11, d10
	b	.L127
.L157:
	bl	__aeabi_uidivmod
	mov	r0, r5
	cmp	r1, #0
	add	r1, r4, #2
	beq	.L126
	bl	__aeabi_uidivmod
	add	r4, r4, #6
	cmp	r1, #0
	beq	.L126
.L127:
	vcmp.f64	d10, d8
	vmov	s15, r4	@ int
	vmrs	APSR_nzcv, FPSCR
	vcvt.f64.u32	d9, s15
	bmi	.L156
.L123:
	vcmpe.f64	d9, d11
	mov	r1, r4
	mov	r0, r5
	vmrs	APSR_nzcv, FPSCR
	bls	.L157
	add	r7, r7, #1
.L126:
	add	r6, r5, #2
	mov	r4, #5
	vmov	s15, r6	@ int
	vcvt.f64.u32	d10, s15
	vsqrt.f64	d11, d10
	b	.L132
.L159:
	bl	__aeabi_uidivmod
	mov	r0, r6
	cmp	r1, #0
	add	r1, r4, #2
	beq	.L131
	bl	__aeabi_uidivmod
	add	r4, r4, #6
	cmp	r1, #0
	beq	.L131
.L132:
	vcmp.f64	d10, d8
	vmov	s15, r4	@ int
	vmrs	APSR_nzcv, FPSCR
	vcvt.f64.u32	d9, s15
	bmi	.L158
.L128:
	vcmpe.f64	d9, d11
	mov	r1, r4
	mov	r0, r6
	vmrs	APSR_nzcv, FPSCR
	bls	.L159
	add	r7, r7, #1
.L131:
	add	r5, r5, #6
	cmp	r8, r5
	bcs	.L133
	vldm	sp!, {d8-d11}
	mov	r0, r7
	pop	{r4, r5, r6, r7, r8, pc}
.L158:
	vmov.f64	d0, d10
	bl	sqrt
	b	.L128
.L156:
	vmov.f64	d0, d10
	bl	sqrt
	b	.L123
.L134:
	mov	r0, #2
	bx	lr
.L161:
	.align	3
.L160:
	.word	0
	.word	0
	.cantunwind
	.fnend
	.size	_Z12countPrimes3j, .-_Z12countPrimes3j
	.align	2
	.global	_Z7matmultPA10_fS0_S0_
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z7matmultPA10_fS0_S0_, %function
_Z7matmultPA10_fS0_S0_:
	.fnstart
.LFB2280:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	add	r1, r1, #40
	mov	r6, #0
	add	r4, r0, #40
	add	r7, r0, #440
.L165:
	sub	ip, r4, #40
	mov	lr, r2
	sub	r5, r1, #40
.L164:
	vldr.32	s15, .L170
	mov	r3, r5
	mov	r0, lr
	str	r6, [ip]	@ float
.L163:
	mov	r8, r0
	vldmia.32	r3!, {s13}
	vldr.32	s14, [r8]
	add	r0, r0, #40
	cmp	r3, r1
	vmla.f32	s15, s13, s14
	vstr.32	s15, [ip]
	bne	.L163
	add	ip, ip, #4
	cmp	ip, r4
	add	lr, lr, #4
	bne	.L164
	add	r4, ip, #40
	cmp	r4, r7
	add	r1, r3, #40
	bne	.L165
	pop	{r4, r5, r6, r7, r8, pc}
.L171:
	.align	2
.L170:
	.word	0
	.cantunwind
	.fnend
	.size	_Z7matmultPA10_fS0_S0_, .-_Z7matmultPA10_fS0_S0_
	.align	2
	.global	_Z8matmult2PfS_S_j
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z8matmult2PfS_S_j, %function
_Z8matmult2PfS_S_j:
	.fnstart
.LFB2281:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r3, #0
	bxeq	lr
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	lsl	lr, r3, #2
	mov	r8, #0
	mov	r6, r1
	mov	r9, r0
	add	r7, r2, lr
	mov	r10, #0
.L177:
	mov	r5, r2
	add	r4, lr, r6
	mov	ip, r9
.L175:
	vldr.32	s15, .L184
	mov	r0, r5
	mov	r1, r6
	str	r8, [ip]	@ float
.L174:
	vldmia.32	r1!, {s13}
	vldr.32	s14, [r0]
	add	r0, r0, lr
	cmp	r1, r4
	vmla.f32	s15, s13, s14
	vstr.32	s15, [ip]
	bne	.L174
	add	r5, r5, #4
	cmp	r5, r7
	add	ip, ip, #4
	bne	.L175
	add	r10, r10, #1
	cmp	r3, r10
	add	r9, r9, lr
	mov	r6, r1
	bne	.L177
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L185:
	.align	2
.L184:
	.word	0
	.cantunwind
	.fnend
	.size	_Z8matmult2PfS_S_j, .-_Z8matmult2PfS_S_j
	.section	.text._Z10benchmark1IPFyjEEvPKcT_j,"axG",%progbits,_Z10benchmark1IPFyjEEvPKcT_j,comdat
	.align	2
	.weak	_Z10benchmark1IPFyjEEvPKcT_j
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z10benchmark1IPFyjEEvPKcT_j, %function
_Z10benchmark1IPFyjEEvPKcT_j:
	.fnstart
.LFB2517:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, r0
	ldr	r4, .L193
	.pad #28
	sub	sp, sp, #28
	mov	r9, r2
	mov	r8, r4
	mov	r5, #5
	mov	r7, #1
	str	r1, [sp, #12]
.L189:
	bl	clock
	ldr	r3, [sp, #12]
	mov	r10, r0
	mov	r0, r9
	blx	r3
	strd	r0, [sp]
	bl	clock
	ldr	r2, [r4]
	mov	r1, #12
	cmp	r6, #0
	ldr	r3, [r2, #-12]
	add	r3, r4, r3
	str	r1, [r3, #8]
	mov	fp, r0
	mov	r0, r6
	beq	.L192
	bl	strlen
	mov	r1, r6
	mov	r2, r0
	mov	r0, r8
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
.L188:
	ldr	r1, [r4]
	mov	ip, #18
	ldrd	r2, [sp]
	ldr	r1, [r1, #-12]
	mov	r0, r8
	add	r1, r4, r1
	str	ip, [r1, #8]
	bl	_ZNSo9_M_insertIyEERSoT_
	mov	r3, #9
	mov	r2, r7
	add	r1, sp, #23
	strb	r3, [sp, #23]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	sub	r1, fp, r10
	bl	_ZNSo9_M_insertIlEERSoT_
	mov	r3, #10
	mov	r2, r7
	add	r1, sp, #22
	strb	r3, [sp, #22]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	subs	r5, r5, #1
	bne	.L189
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L192:
	ldr	r3, [r2, #-12]
	add	r3, r4, r3
	mov	r0, r3
	ldr	r1, [r3, #20]
	orr	r1, r1, #1
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
	b	.L188
.L194:
	.align	2
.L193:
	.word	_ZSt4cout
	.fnend
	.size	_Z10benchmark1IPFyjEEvPKcT_j, .-_Z10benchmark1IPFyjEEvPKcT_j
	.section	.text._Z10benchmark2IPFyPjjEEvPKcT_j,"axG",%progbits,_Z10benchmark2IPFyPjjEEvPKcT_j,comdat
	.align	2
	.weak	_Z10benchmark2IPFyPjjEEvPKcT_j
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z10benchmark2IPFyPjjEEvPKcT_j, %function
_Z10benchmark2IPFyPjjEEvPKcT_j:
	.fnstart
.LFB2518:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #28
	sub	sp, sp, #28
	cmn	r2, #-536870910
	str	r1, [sp, #12]
	bhi	.L196
	lsl	r4, r2, #2
	mov	r6, r0
	mov	r0, r4
	mov	r5, r2
	mov	r9, r2
	bl	_Znaj
	cmp	r5, #0
	str	r0, [sp, #8]
	beq	.L199
	ldr	r3, [sp, #8]
	mov	r2, #0
	add	r0, r3, r4
.L200:
	str	r2, [r3], #4
	cmp	r3, r0
	bne	.L200
.L199:
	ldr	r4, .L207
	mov	r5, #5
	mov	r8, r4
	mov	r7, #1
	mov	fp, r9
.L198:
	bl	clock
	ldr	r3, [sp, #12]
	mov	r1, fp
	mov	r9, r0
	ldr	r0, [sp, #8]
	blx	r3
	strd	r0, [sp]
	bl	clock
	ldr	r2, [r4]
	mov	r1, #12
	cmp	r6, #0
	ldr	r3, [r2, #-12]
	add	r3, r4, r3
	str	r1, [r3, #8]
	mov	r10, r0
	beq	.L206
	mov	r0, r6
	bl	strlen
	mov	r1, r6
	mov	r2, r0
	mov	r0, r8
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
.L202:
	ldr	r1, [r4]
	mov	ip, #18
	ldrd	r2, [sp]
	ldr	r1, [r1, #-12]
	mov	r0, r8
	add	r1, r4, r1
	str	ip, [r1, #8]
	bl	_ZNSo9_M_insertIyEERSoT_
	mov	r3, #9
	mov	r2, r7
	add	r1, sp, #23
	strb	r3, [sp, #23]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	sub	r1, r10, r9
	bl	_ZNSo9_M_insertIlEERSoT_
	mov	r3, #10
	mov	r2, r7
	add	r1, sp, #22
	strb	r3, [sp, #22]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	subs	r5, r5, #1
	bne	.L198
	ldr	r0, [sp, #8]
	bl	_ZdaPv
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L206:
	ldr	r3, [r2, #-12]
	add	r3, r4, r3
	mov	r0, r3
	ldr	r1, [r3, #20]
	orr	r1, r1, #1
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
	b	.L202
.L196:
	bl	__cxa_throw_bad_array_new_length
.L208:
	.align	2
.L207:
	.word	_ZSt4cout
	.fnend
	.size	_Z10benchmark2IPFyPjjEEvPKcT_j, .-_Z10benchmark2IPFyPjjEEvPKcT_j
	.section	.text._Z10benchmark3IPFfPfjEEvPKcT_j,"axG",%progbits,_Z10benchmark3IPFfPfjEEvPKcT_j,comdat
	.align	2
	.weak	_Z10benchmark3IPFfPfjEEvPKcT_j
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z10benchmark3IPFfPfjEEvPKcT_j, %function
_Z10benchmark3IPFfPfjEEvPKcT_j:
	.fnstart
.LFB2521:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	vpush.64	{d8}
	.vsave {d8}
	cmn	r2, #-536870910
	.pad #20
	sub	sp, sp, #20
	str	r1, [sp, #4]
	bhi	.L210
	lsl	r4, r2, #2
	mov	r6, r0
	mov	r0, r4
	mov	fp, r2
	bl	_Znaj
	cmp	fp, #0
	str	r0, [sp]
	beq	.L213
	ldr	r3, [sp]
	mov	r2, #0
	add	r0, r3, r4
.L214:
	str	r2, [r3], #4	@ float
	cmp	r3, r0
	bne	.L214
.L213:
	ldr	r4, .L221
	mov	r5, #5
	mov	r8, r4
	mov	r7, #1
.L212:
	bl	clock
	mov	r1, fp
	mov	r9, r0
	ldm	sp, {r0, r3}
	blx	r3
	vmov.f32	s16, s0
	bl	clock
	ldr	r2, [r4]
	mov	r1, #12
	cmp	r6, #0
	ldr	r3, [r2, #-12]
	add	r3, r4, r3
	str	r1, [r3, #8]
	mov	r10, r0
	beq	.L220
	mov	r0, r6
	bl	strlen
	mov	r1, r6
	mov	r2, r0
	mov	r0, r8
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
.L216:
	ldr	r3, [r4]
	mov	r2, #18
	vcvt.f64.f32	d0, s16
	ldr	r3, [r3, #-12]
	mov	r0, r8
	add	r3, r4, r3
	str	r2, [r3, #8]
	bl	_ZNSo9_M_insertIdEERSoT_
	mov	r3, #9
	mov	r2, r7
	add	r1, sp, #15
	strb	r3, [sp, #15]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	sub	r1, r10, r9
	bl	_ZNSo9_M_insertIlEERSoT_
	mov	r3, #10
	mov	r2, r7
	add	r1, sp, #14
	strb	r3, [sp, #14]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	subs	r5, r5, #1
	bne	.L212
	ldr	r0, [sp]
	bl	_ZdaPv
	add	sp, sp, #20
	@ sp needed
	vldm	sp!, {d8}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L220:
	ldr	r3, [r2, #-12]
	add	r3, r4, r3
	mov	r0, r3
	ldr	r1, [r3, #20]
	orr	r1, r1, #1
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
	b	.L216
.L210:
	bl	__cxa_throw_bad_array_new_length
.L222:
	.align	2
.L221:
	.word	_ZSt4cout
	.fnend
	.size	_Z10benchmark3IPFfPfjEEvPKcT_j, .-_Z10benchmark3IPFfPfjEEvPKcT_j
	.section	.text._Z10benchmark6IPFdjEEvPKcT_j,"axG",%progbits,_Z10benchmark6IPFdjEEvPKcT_j,comdat
	.align	2
	.weak	_Z10benchmark6IPFdjEEvPKcT_j
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z10benchmark6IPFdjEEvPKcT_j, %function
_Z10benchmark6IPFdjEEvPKcT_j:
	.fnstart
.LFB2523:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	vpush.64	{d8}
	.vsave {d8}
	ldr	r4, .L230
	mov	r6, r0
	mov	fp, r1
	.pad #20
	sub	sp, sp, #20
	mov	r8, r4
	mov	r5, #5
	mov	r7, #1
	str	r2, [sp, #4]
.L226:
	bl	clock
	mov	r9, r0
	ldr	r0, [sp, #4]
	blx	fp
	vmov.f64	d8, d0
	bl	clock
	ldr	r2, [r4]
	mov	r1, #12
	cmp	r6, #0
	ldr	r3, [r2, #-12]
	add	r3, r4, r3
	str	r1, [r3, #8]
	mov	r10, r0
	mov	r0, r6
	beq	.L229
	bl	strlen
	mov	r1, r6
	mov	r2, r0
	mov	r0, r8
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
.L225:
	ldr	r3, [r4]
	mov	r2, #18
	vmov.f64	d0, d8
	ldr	r3, [r3, #-12]
	mov	r0, r8
	add	r3, r4, r3
	str	r2, [r3, #8]
	bl	_ZNSo9_M_insertIdEERSoT_
	mov	r3, #9
	mov	r2, r7
	add	r1, sp, #15
	strb	r3, [sp, #15]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	sub	r1, r10, r9
	bl	_ZNSo9_M_insertIlEERSoT_
	mov	r3, #10
	mov	r2, r7
	add	r1, sp, #14
	strb	r3, [sp, #14]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	subs	r5, r5, #1
	bne	.L226
	add	sp, sp, #20
	@ sp needed
	vldm	sp!, {d8}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L229:
	ldr	r3, [r2, #-12]
	add	r3, r4, r3
	mov	r0, r3
	ldr	r1, [r3, #20]
	orr	r1, r1, #1
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
	b	.L225
.L231:
	.align	2
.L230:
	.word	_ZSt4cout
	.fnend
	.size	_Z10benchmark6IPFdjEEvPKcT_j, .-_Z10benchmark6IPFdjEEvPKcT_j
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	.fnstart
.LFB2291:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #20
	sub	sp, sp, #20
	ldr	r2, .L244
	ldr	r1, .L244+4
	ldr	r0, .L244+8
	bl	_Z10benchmark1IPFyjEEvPKcT_j
	ldr	r2, .L244
	ldr	r1, .L244+12
	ldr	r0, .L244+16
	bl	_Z10benchmark1IPFyjEEvPKcT_j
	ldr	r2, .L244
	ldr	r1, .L244+20
	ldr	r0, .L244+24
	bl	_Z10benchmark1IPFyjEEvPKcT_j
	ldr	r2, .L244
	ldr	r1, .L244+28
	ldr	r0, .L244+32
	bl	_Z10benchmark1IPFyjEEvPKcT_j
	ldr	r2, .L244+36
	ldr	r1, .L244+40
	ldr	r0, .L244+44
	bl	_Z10benchmark2IPFyPjjEEvPKcT_j
	ldr	r2, .L244+36
	ldr	r1, .L244+48
	ldr	r0, .L244+52
	bl	_Z10benchmark2IPFyPjjEEvPKcT_j
	ldr	r2, .L244+36
	ldr	r1, .L244+56
	ldr	r0, .L244+60
	bl	_Z10benchmark2IPFyPjjEEvPKcT_j
	ldr	r2, .L244+36
	ldr	r1, .L244+64
	ldr	r0, .L244+68
	bl	_Z10benchmark2IPFyPjjEEvPKcT_j
	ldr	r2, .L244+36
	ldr	r1, .L244+72
	ldr	r0, .L244+76
	bl	_Z10benchmark2IPFyPjjEEvPKcT_j
	ldr	r2, .L244+36
	ldr	r1, .L244+80
	ldr	r0, .L244+84
	bl	_Z10benchmark2IPFyPjjEEvPKcT_j
	ldr	r2, .L244+36
	ldr	r1, .L244+88
	ldr	r0, .L244+92
	bl	_Z10benchmark2IPFyPjjEEvPKcT_j
	ldr	r2, .L244+36
	ldr	r1, .L244+96
	ldr	r0, .L244+100
	bl	_Z10benchmark2IPFyPjjEEvPKcT_j
	ldr	r2, .L244+36
	ldr	r1, .L244+104
	ldr	r0, .L244+108
	bl	_Z10benchmark2IPFyPjjEEvPKcT_j
	ldr	r2, .L244+36
	ldr	r1, .L244+112
	ldr	r0, .L244+116
	bl	_Z10benchmark2IPFyPjjEEvPKcT_j
	ldr	r4, .L244+120
	ldr	fp, .L244+124
	mov	r7, r4
	mov	r5, #5
	mov	r6, #1
.L233:
	bl	clock
	mov	r8, r0
	mov	r0, fp
	bl	_Z12countPrimes1j
	mov	r10, r0
	bl	clock
	ldr	r3, [r4]
	mov	r2, #12
	ldr	r1, .L244+128
	ldr	r3, [r3, #-12]
	add	r3, r4, r3
	str	r2, [r3, #8]
	mov	r9, r0
	mov	r0, r7
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	ldr	r1, [r4]
	mov	ip, #18
	mov	r2, r10
	ldr	r1, [r1, #-12]
	mov	r3, #0
	add	r1, r4, r1
	mov	r0, r7
	str	ip, [r1, #8]
	bl	_ZNSo9_M_insertIyEERSoT_
	mov	r3, #9
	mov	r2, r6
	add	r1, sp, #14
	strb	r3, [sp, #14]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	sub	r1, r9, r8
	bl	_ZNSo9_M_insertIlEERSoT_
	mov	r3, #10
	mov	r2, r6
	add	r1, sp, #15
	strb	r3, [sp, #15]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	subs	r5, r5, #1
	bne	.L233
	ldr	fp, .L244+132
	ldr	r7, .L244+120
	mov	r5, #5
	mov	r6, #1
.L234:
	bl	clock
	mov	r8, r0
	mov	r0, fp
	bl	_Z12countPrimes3j
	mov	r10, r0
	bl	clock
	ldr	r3, [r4]
	mov	r2, #12
	ldr	r1, .L244+136
	ldr	r3, [r3, #-12]
	add	r3, r4, r3
	str	r2, [r3, #8]
	mov	r9, r0
	mov	r0, r7
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	ldr	r1, [r4]
	mov	ip, #18
	mov	r2, r10
	ldr	r1, [r1, #-12]
	asr	r3, r10, #31
	add	r1, r4, r1
	mov	r0, r7
	str	ip, [r1, #8]
	bl	_ZNSo9_M_insertIyEERSoT_
	mov	r3, #9
	mov	r2, r6
	add	r1, sp, #12
	strb	r3, [sp, #12]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	sub	r1, r9, r8
	bl	_ZNSo9_M_insertIlEERSoT_
	mov	r3, #10
	mov	r2, r6
	add	r1, sp, #13
	strb	r3, [sp, #13]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	subs	r5, r5, #1
	bne	.L234
	ldr	r2, .L244+36
	ldr	r1, .L244+140
	ldr	r0, .L244+144
	bl	_Z10benchmark3IPFfPfjEEvPKcT_j
	ldr	r2, .L244+36
	ldr	r1, .L244+148
	ldr	r0, .L244+152
	bl	_Z10benchmark3IPFfPfjEEvPKcT_j
	ldr	r2, .L244+36
	ldr	r1, .L244+156
	ldr	r0, .L244+160
	bl	_Z10benchmark3IPFfPfjEEvPKcT_j
	mov	r0, #4194304
	bl	_Znaj
	mov	r1, #0
	mov	r9, r0
	mov	r3, r0
	add	r2, r0, #4194304
.L235:
	str	r1, [r3], #4	@ float
	cmp	r2, r3
	bne	.L235
	mov	r0, #4194304
	bl	_Znaj
	mov	r1, #0
	mov	r10, r0
	mov	r3, r0
	add	r2, r0, #4194304
.L236:
	str	r1, [r3], #4	@ float
	cmp	r3, r2
	bne	.L236
	mov	r0, #4194304
	bl	_Znaj
	ldr	r7, .L244+120
	mov	r5, #5
	mov	r6, #1
	str	r0, [sp, #4]
.L237:
	bl	clock
	mov	r3, #1024
	mov	r2, r10
	mov	r1, r9
	mov	r8, r0
	ldr	r0, [sp, #4]
	bl	_Z8matmult2PfS_S_j
	bl	clock
	mov	r3, #12
	mov	r2, #8
	ldr	r1, .L244+164
	mov	fp, r0
	ldr	r0, [r4]
	ldr	ip, [r0, #-12]
	mov	r0, r7
	add	ip, r4, ip
	str	r3, [ip, #8]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	mov	ip, #9
	mov	r2, r6
	add	r1, sp, #10
	mov	r0, r7
	strb	ip, [sp, #10]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	sub	r1, fp, r8
	bl	_ZNSo9_M_insertIlEERSoT_
	mov	r3, #10
	mov	r2, r6
	add	r1, sp, #11
	strb	r3, [sp, #11]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	subs	r5, r5, #1
	bne	.L237
	ldr	r2, .L244
	ldr	r1, .L244+168
	ldr	r0, .L244+172
	bl	_Z10benchmark6IPFdjEEvPKcT_j
	ldr	r2, .L244
	ldr	r1, .L244+176
	ldr	r0, .L244+180
	bl	_Z10benchmark6IPFdjEEvPKcT_j
	mov	r0, r5
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L245:
	.align	2
.L244:
	.word	100000000
	.word	_Z2b1j
	.word	.LC0
	.word	_Z2b2j
	.word	.LC1
	.word	_Z2b3j
	.word	.LC2
	.word	_Z2b4j
	.word	.LC3
	.word	40000000
	.word	_Z2b5Pjj
	.word	.LC4
	.word	_Z2b6Pjj
	.word	.LC5
	.word	_Z2b7Pjj
	.word	.LC6
	.word	_Z2b8Pjj
	.word	.LC7
	.word	_Z2b9Pjj
	.word	.LC8
	.word	_Z3b10Pjj
	.word	.LC9
	.word	_Z3b11Pjj
	.word	.LC10
	.word	_Z3b12Pjj
	.word	.LC11
	.word	_Z3b13Pjj
	.word	.LC12
	.word	_Z3b14Pjj
	.word	.LC13
	.word	_ZSt4cout
	.word	100000
	.word	.LC14
	.word	1000000
	.word	.LC15
	.word	_Z3b15Pfj
	.word	.LC16
	.word	_Z3b16Pfj
	.word	.LC17
	.word	_Z3b17Pfj
	.word	.LC18
	.word	.LC19
	.word	_Z7deg2radj
	.word	.LC20
	.word	_Z4gravj
	.word	.LC21
	.fnend
	.size	main, .-main
	.align	2
	.syntax unified
	.arm
	.fpu vfp
	.type	_GLOBAL__sub_I__Z2b1j, %function
_GLOBAL__sub_I__Z2b1j:
	.fnstart
.LFB2761:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L248
	mov	r0, r4
	bl	_ZNSt8ios_base4InitC1Ev
	mov	r0, r4
	ldr	r2, .L248+4
	ldr	r1, .L248+8
	pop	{r4, lr}
	b	__aeabi_atexit
.L249:
	.align	2
.L248:
	.word	.LANCHOR0
	.word	__dso_handle
	.word	_ZNSt8ios_base4InitD1Ev
	.cantunwind
	.fnend
	.size	_GLOBAL__sub_I__Z2b1j, .-_GLOBAL__sub_I__Z2b1j
	.section	.init_array,"aw"
	.align	2
	.word	_GLOBAL__sub_I__Z2b1j
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	_ZStL8__ioinit, %object
	.size	_ZStL8__ioinit, 1
_ZStL8__ioinit:
	.space	1
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"b1\000"
	.space	1
.LC1:
	.ascii	"b2\000"
	.space	1
.LC2:
	.ascii	"b3\000"
	.space	1
.LC3:
	.ascii	"b4\000"
	.space	1
.LC4:
	.ascii	"b5\000"
	.space	1
.LC5:
	.ascii	"b6\000"
	.space	1
.LC6:
	.ascii	"b7\000"
	.space	1
.LC7:
	.ascii	"b8\000"
	.space	1
.LC8:
	.ascii	"b9\000"
	.space	1
.LC9:
	.ascii	"b10\000"
.LC10:
	.ascii	"b11\000"
.LC11:
	.ascii	"b12\000"
.LC12:
	.ascii	"b13\000"
.LC13:
	.ascii	"b14\000"
.LC14:
	.ascii	"countPrimes1\000"
	.space	3
.LC15:
	.ascii	"countPrimes3\000"
	.space	3
.LC16:
	.ascii	"b15\000"
.LC17:
	.ascii	"b16\000"
.LC18:
	.ascii	"b17\000"
.LC19:
	.ascii	"matmult2\000"
	.space	3
.LC20:
	.ascii	"deg2rad\000"
.LC21:
	.ascii	"grav\000"
	.hidden	__dso_handle
	.ident	"GCC: (Raspbian 6.3.0-18+rpi1+deb9u1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",%progbits
