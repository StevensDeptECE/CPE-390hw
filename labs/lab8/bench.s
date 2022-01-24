	.file	"bench.cc"
	.text
	.p2align 4
	.globl	_Z2b3j
	.type	_Z2b3j, @function
_Z2b3j:
.LFB2417:
	.cfi_startproc
	endbr64
	testl	%edi, %edi
	je	.L4
	xorl	%eax, %eax
	xorl	%r8d, %r8d
	.p2align 4,,10
	.p2align 3
.L3:
	addl	%eax, %r8d
	addl	$1, %eax
	cmpl	%eax, %edi
	jne	.L3
	movl	%r8d, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L4:
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	ret
	.cfi_endproc
.LFE2417:
	.size	_Z2b3j, .-_Z2b3j
	.p2align 4
	.globl	_Z2b4j
	.type	_Z2b4j, @function
_Z2b4j:
.LFB2419:
	.cfi_startproc
	endbr64
	xorl	%eax, %eax
	testl	%edi, %edi
	je	.L10
	.p2align 4,,10
	.p2align 3
.L9:
	addl	%edi, %eax
	subl	$1, %edi
	jne	.L9
	ret
	.p2align 4,,10
	.p2align 3
.L10:
	ret
	.cfi_endproc
.LFE2419:
	.size	_Z2b4j, .-_Z2b4j
	.p2align 4
	.globl	_Z2b5j
	.type	_Z2b5j, @function
_Z2b5j:
.LFB2420:
	.cfi_startproc
	endbr64
	testl	%edi, %edi
	je	.L15
	addl	$1, %edi
	movl	$1, %eax
	movl	$1, %r8d
	.p2align 4,,10
	.p2align 3
.L14:
	imull	%eax, %r8d
	addl	$1, %eax
	cmpl	%eax, %edi
	jne	.L14
	movl	%r8d, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L15:
	movl	$1, %r8d
	movl	%r8d, %eax
	ret
	.cfi_endproc
.LFE2420:
	.size	_Z2b5j, .-_Z2b5j
	.p2align 4
	.globl	_Z2b6j
	.type	_Z2b6j, @function
_Z2b6j:
.LFB2421:
	.cfi_startproc
	endbr64
	testl	%edi, %edi
	je	.L20
	addl	$1, %edi
	movl	$1, %ecx
	movl	$100200301, %eax
	.p2align 4,,10
	.p2align 3
.L19:
	xorl	%edx, %edx
	divl	%ecx
	addl	$1, %ecx
	cmpl	%ecx, %edi
	jne	.L19
	ret
	.p2align 4,,10
	.p2align 3
.L20:
	movl	$100200301, %eax
	ret
	.cfi_endproc
.LFE2421:
	.size	_Z2b6j, .-_Z2b6j
	.p2align 4
	.globl	_Z2b7j
	.type	_Z2b7j, @function
_Z2b7j:
.LFB2422:
	.cfi_startproc
	endbr64
	testl	%edi, %edi
	je	.L25
	addl	$1, %edi
	movl	$1, %edx
	xorl	%r8d, %r8d
	.p2align 4,,10
	.p2align 3
.L24:
	movl	%edx, %eax
	movl	%edx, %ecx
	addl	$1, %edx
	imulq	$701575699, %rax, %rax
	shrq	$46, %rax
	imull	$100301, %eax, %eax
	subl	%eax, %ecx
	addl	%ecx, %r8d
	cmpl	%edx, %edi
	jne	.L24
	movl	%r8d, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L25:
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	ret
	.cfi_endproc
.LFE2422:
	.size	_Z2b7j, .-_Z2b7j
	.p2align 4
	.globl	_Z2b1j
	.type	_Z2b1j, @function
_Z2b1j:
.LFB2414:
	.cfi_startproc
	endbr64
	testl	%edi, %edi
	je	.L35
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%edi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	xorl	%ebx, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	.p2align 4,,10
	.p2align 3
.L29:
	call	_Z1fv@PLT
	addl	$1, %ebx
	cmpl	%ebp, %ebx
	jne	.L29
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L35:
	.cfi_restore 3
	.cfi_restore 6
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE2414:
	.size	_Z2b1j, .-_Z2b1j
	.p2align 4
	.globl	_Z2b2j
	.type	_Z2b2j, @function
_Z2b2j:
.LFB2416:
	.cfi_startproc
	endbr64
	testl	%edi, %edi
	je	.L46
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%edi, %ebx
	.p2align 4,,10
	.p2align 3
.L40:
	call	_Z1fv@PLT
	subl	$1, %ebx
	jne	.L40
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L46:
	.cfi_restore 3
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE2416:
	.size	_Z2b2j, .-_Z2b2j
	.p2align 4
	.globl	_Z3b1bj
	.type	_Z3b1bj, @function
_Z3b1bj:
.LFB2415:
	.cfi_startproc
	endbr64
	testl	%edi, %edi
	je	.L57
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%edi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	xorl	%ebx, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	.p2align 4,,10
	.p2align 3
.L51:
	movl	%ebx, %r8d
	movl	%ebx, %edi
	movl	$7, %ecx
	movl	$5, %edx
	movl	$3, %esi
	addl	$1, %ebx
	call	_Z1fiiiii@PLT
	cmpl	%ebp, %ebx
	jne	.L51
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L57:
	.cfi_restore 3
	.cfi_restore 6
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE2415:
	.size	_Z3b1bj, .-_Z3b1bj
	.p2align 4
	.globl	_Z3b3bm
	.type	_Z3b3bm, @function
_Z3b3bm:
.LFB2418:
	.cfi_startproc
	endbr64
	testq	%rdi, %rdi
	je	.L63
	xorl	%eax, %eax
	xorl	%r8d, %r8d
	.p2align 4,,10
	.p2align 3
.L62:
	addq	%rax, %r8
	addq	$1, %rax
	cmpq	%rdi, %rax
	jne	.L62
	movq	%r8, %rax
	ret
	.p2align 4,,10
	.p2align 3
.L63:
	xorl	%r8d, %r8d
	movq	%r8, %rax
	ret
	.cfi_endproc
.LFE2418:
	.size	_Z3b3bm, .-_Z3b3bm
	.p2align 4
	.globl	_Z2b8j
	.type	_Z2b8j, @function
_Z2b8j:
.LFB2423:
	.cfi_startproc
	endbr64
	movl	%edi, %eax
	pxor	%xmm2, %xmm2
	cvtsi2sdq	%rax, %xmm2
	testl	%edi, %edi
	je	.L70
	movsd	.LC0(%rip), %xmm3
	pxor	%xmm1, %xmm1
	movapd	%xmm3, %xmm0
	.p2align 4,,10
	.p2align 3
.L69:
	addsd	%xmm0, %xmm1
	addsd	%xmm3, %xmm0
	comisd	%xmm0, %xmm2
	jnb	.L69
	cvttsd2siq	%xmm1, %rax
	ret
	.p2align 4,,10
	.p2align 3
.L70:
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE2423:
	.size	_Z2b8j, .-_Z2b8j
	.p2align 4
	.globl	_Z2b9j
	.type	_Z2b9j, @function
_Z2b9j:
.LFB2424:
	.cfi_startproc
	endbr64
	testl	%edi, %edi
	je	.L75
	movsd	.LC2(%rip), %xmm0
	movsd	.LC0(%rip), %xmm1
	movsd	.LC3(%rip), %xmm2
	.p2align 4,,10
	.p2align 3
.L74:
	mulsd	%xmm0, %xmm1
	addsd	%xmm2, %xmm0
	subl	$1, %edi
	jne	.L74
	cvttsd2siq	%xmm1, %rax
	ret
	.p2align 4,,10
	.p2align 3
.L75:
	movl	$1, %eax
	ret
	.cfi_endproc
.LFE2424:
	.size	_Z2b9j, .-_Z2b9j
	.p2align 4
	.globl	_Z3b10j
	.type	_Z3b10j, @function
_Z3b10j:
.LFB2425:
	.cfi_startproc
	endbr64
	testl	%edi, %edi
	je	.L80
	movsd	.LC2(%rip), %xmm0
	movsd	.LC0(%rip), %xmm1
	movsd	.LC3(%rip), %xmm2
	.p2align 4,,10
	.p2align 3
.L79:
	divsd	%xmm0, %xmm1
	addsd	%xmm2, %xmm0
	subl	$1, %edi
	jne	.L79
	cvttsd2siq	%xmm1, %rax
	ret
	.p2align 4,,10
	.p2align 3
.L80:
	movl	$1, %eax
	ret
	.cfi_endproc
.LFE2425:
	.size	_Z3b10j, .-_Z3b10j
	.p2align 4
	.globl	_Z6array1PKjj
	.type	_Z6array1PKjj, @function
_Z6array1PKjj:
.LFB2426:
	.cfi_startproc
	endbr64
	testl	%esi, %esi
	je	.L85
	leal	-1(%rsi), %eax
	leaq	4(%rdi,%rax,4), %rcx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L84:
	movl	(%rdi), %edx
	addq	$4, %rdi
	addq	%rdx, %rax
	cmpq	%rcx, %rdi
	jne	.L84
	ret
	.p2align 4,,10
	.p2align 3
.L85:
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE2426:
	.size	_Z6array1PKjj, .-_Z6array1PKjj
	.p2align 4
	.globl	_Z6array2Pjj
	.type	_Z6array2Pjj, @function
_Z6array2Pjj:
.LFB2427:
	.cfi_startproc
	endbr64
	movl	%esi, %eax
	movl	%esi, %ecx
	subl	$1, %eax
	je	.L90
	movl	%eax, %eax
	salq	$2, %rax
	leaq	-4(%rdi,%rax), %rsi
	leaq	(%rdi,%rax), %rdx
	leal	-2(%rcx), %eax
	salq	$2, %rax
	subq	%rax, %rsi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L89:
	movl	(%rdx), %ecx
	subq	$4, %rdx
	addq	%rcx, %rax
	cmpq	%rsi, %rdx
	jne	.L89
	movl	(%rdi), %edx
	addq	%rdx, %rax
	ret
	.p2align 4,,10
	.p2align 3
.L90:
	movl	(%rdi), %edx
	xorl	%eax, %eax
	addq	%rdx, %rax
	ret
	.cfi_endproc
.LFE2427:
	.size	_Z6array2Pjj, .-_Z6array2Pjj
	.p2align 4
	.globl	_Z6array3Pjj
	.type	_Z6array3Pjj, @function
_Z6array3Pjj:
.LFB2428:
	.cfi_startproc
	endbr64
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE2428:
	.size	_Z6array3Pjj, .-_Z6array3Pjj
	.p2align 4
	.globl	_Z6array4Pjj
	.type	_Z6array4Pjj, @function
_Z6array4Pjj:
.LFB2950:
	.cfi_startproc
	endbr64
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE2950:
	.size	_Z6array4Pjj, .-_Z6array4Pjj
	.p2align 4
	.globl	_Z6array5Pjj
	.type	_Z6array5Pjj, @function
_Z6array5Pjj:
.LFB2430:
	.cfi_startproc
	endbr64
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	.p2align 4,,10
	.p2align 3
.L97:
	cmpl	%ecx, %esi
	jbe	.L95
	movl	%ecx, %eax
	.p2align 4,,10
	.p2align 3
.L96:
	movl	%eax, %edx
	addl	$32, %eax
	movl	(%rdi,%rdx,4), %edx
	addq	%rdx, %r8
	cmpl	%eax, %esi
	ja	.L96
.L95:
	addl	$1, %ecx
	cmpl	$32, %ecx
	jne	.L97
	movq	%r8, %rax
	ret
	.cfi_endproc
.LFE2430:
	.size	_Z6array5Pjj, .-_Z6array5Pjj
	.p2align 4
	.globl	_Z6array6Pjj
	.type	_Z6array6Pjj, @function
_Z6array6Pjj:
.LFB2431:
	.cfi_startproc
	endbr64
	movl	%esi, %ecx
	xorl	%r8d, %r8d
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L103:
	cmpl	%esi, %ecx
	jbe	.L101
	movl	%esi, %eax
	.p2align 4,,10
	.p2align 3
.L102:
	movl	%eax, %edx
	addl	$1024, %eax
	movl	(%rdi,%rdx,4), %edx
	addq	%rdx, %r8
	cmpl	%eax, %ecx
	ja	.L102
.L101:
	addl	$1, %esi
	cmpl	$1024, %esi
	jne	.L103
	movq	%r8, %rax
	ret
	.cfi_endproc
.LFE2431:
	.size	_Z6array6Pjj, .-_Z6array6Pjj
	.p2align 4
	.globl	_Z6array7Pjj
	.type	_Z6array7Pjj, @function
_Z6array7Pjj:
.LFB2432:
	.cfi_startproc
	endbr64
	testl	%esi, %esi
	je	.L107
	leal	-1(%rsi), %eax
	leaq	4(%rdi,%rax,4), %rax
	.p2align 4,,10
	.p2align 3
.L108:
	movl	$0, (%rdi)
	addq	$4, %rdi
	cmpq	%rax, %rdi
	jne	.L108
.L107:
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE2432:
	.size	_Z6array7Pjj, .-_Z6array7Pjj
	.p2align 4
	.globl	_Z6array8Pjj
	.type	_Z6array8Pjj, @function
_Z6array8Pjj:
.LFB2433:
	.cfi_startproc
	endbr64
	testl	%esi, %esi
	je	.L114
	movl	%esi, %edx
	leal	-1(%rsi), %ecx
	salq	$2, %rdx
	salq	$2, %rcx
	leaq	(%rdi,%rdx), %rax
	leaq	-4(%rdi,%rdx), %rdx
	subq	%rcx, %rdx
	.p2align 4,,10
	.p2align 3
.L115:
	movl	$0, (%rax)
	subq	$4, %rax
	cmpq	%rdx, %rax
	jne	.L115
.L114:
	movl	$0, (%rdi)
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE2433:
	.size	_Z6array8Pjj, .-_Z6array8Pjj
	.p2align 4
	.globl	_Z6array9Pjj
	.type	_Z6array9Pjj, @function
_Z6array9Pjj:
.LFB2952:
	.cfi_startproc
	endbr64
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE2952:
	.size	_Z6array9Pjj, .-_Z6array9Pjj
	.section	.text._Z10benchmark1IPFjjEEvPKcT_jj,"axG",@progbits,_Z10benchmark1IPFjjEEvPKcT_jj,comdat
	.p2align 4
	.weak	_Z10benchmark1IPFjjEEvPKcT_jj
	.type	_Z10benchmark1IPFjjEEvPKcT_jj, @function
_Z10benchmark1IPFjjEEvPKcT_jj:
.LFB2687:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	%ecx, %eax
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movq	%rsi, 16(%rsp)
	movl	%edx, 24(%rsp)
	movl	%ecx, 28(%rsp)
	movq	%fs:40, %rcx
	movq	%rcx, 40(%rsp)
	xorl	%ecx, %ecx
	testl	%eax, %eax
	je	.L121
	leaq	_ZSt4cout(%rip), %rbx
	movq	%rdi, %r13
	leaq	39(%rsp), %r14
	xorl	%r12d, %r12d
	movq	%rbx, %r15
	jmp	.L125
	.p2align 4,,10
	.p2align 3
.L123:
	movq	%r13, %rdi
	call	strlen@PLT
	movq	%r13, %rsi
	movq	%r15, %rdi
	movq	%rax, %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.L124:
	movq	(%rbx), %rax
	movq	%rbp, %rsi
	movq	%r15, %rdi
	addl	$1, %r12d
	movq	-24(%rax), %rax
	movq	$18, 16(%rbx,%rax)
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movl	$1, %edx
	movq	%r14, %rsi
	movb	$9, 39(%rsp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	8(%rsp), %rsi
	subq	(%rsp), %rsi
	movq	%rax, %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$1, %edx
	movq	%r14, %rsi
	movb	$10, 39(%rsp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	cmpl	%r12d, 28(%rsp)
	je	.L121
.L125:
	call	clock@PLT
	movl	24(%rsp), %edi
	movq	%rax, (%rsp)
	movq	16(%rsp), %rax
	call	*%rax
	movl	%eax, %ebp
	call	clock@PLT
	movq	%rax, 8(%rsp)
	movq	(%rbx), %rax
	movq	-24(%rax), %rdx
	movq	$12, 16(%rbx,%rdx)
	testq	%r13, %r13
	jne	.L123
	movq	-24(%rax), %rdi
	addq	%rbx, %rdi
	movl	32(%rdi), %esi
	orl	$1, %esi
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
	jmp	.L124
	.p2align 4,,10
	.p2align 3
.L121:
	movq	40(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L132
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L132:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE2687:
	.size	_Z10benchmark1IPFjjEEvPKcT_jj, .-_Z10benchmark1IPFjjEEvPKcT_jj
	.section	.text._Z10benchmark2IPFjPjiEEvPKcT_jjj,"axG",@progbits,_Z10benchmark2IPFjPjiEEvPKcT_jjj,comdat
	.p2align 4
	.weak	_Z10benchmark2IPFjPjiEEvPKcT_jjj
	.type	_Z10benchmark2IPFjPjiEEvPKcT_jjj, @function
_Z10benchmark2IPFjPjiEEvPKcT_jjj:
.LFB2689:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rsi, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%ecx, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	movq	%rdi, 24(%rsp)
	movl	%edx, %edi
	movl	%r8d, 36(%rsp)
	movq	%rdi, %r13
	salq	$2, %rdi
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	call	_Znam@PLT
	leal	-1(%r13), %ecx
	movq	%rax, %rbp
	xorl	%eax, %eax
	testl	%r13d, %r13d
	je	.L136
	.p2align 4,,10
	.p2align 3
.L137:
	movq	%rax, %rdx
	movl	%eax, 0(%rbp,%rax,4)
	addq	$1, %rax
	cmpq	%rdx, %rcx
	jne	.L137
.L136:
	leaq	55(%rsp), %rax
	movl	$0, 32(%rsp)
	movq	%rax, 40(%rsp)
	movl	36(%rsp), %eax
	testl	%eax, %eax
	je	.L142
	.p2align 4,,10
	.p2align 3
.L143:
	call	clock@PLT
	movq	%rax, 8(%rsp)
	testl	%r12d, %r12d
	je	.L145
	xorl	%r15d, %r15d
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L139:
	movl	%r13d, %esi
	movq	%rbp, %rdi
	addl	$1, %r15d
	call	*%r14
	addl	%eax, %ebx
	cmpl	%r15d, %r12d
	jne	.L139
.L138:
	call	clock@PLT
	leaq	_ZSt4cout(%rip), %rcx
	cmpq	$0, 24(%rsp)
	movq	%rax, 16(%rsp)
	movq	(%rcx), %rax
	movq	-24(%rax), %rdx
	movq	$12, 16(%rcx,%rdx)
	je	.L152
	movq	24(%rsp), %r15
	movq	%r15, %rdi
	call	strlen@PLT
	movq	%r15, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	movq	%rax, %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.L141:
	leaq	_ZSt4cout(%rip), %rdx
	movq	%rbx, %rsi
	movq	(%rdx), %rax
	movq	%rdx, %rdi
	movq	-24(%rax), %rax
	movq	$18, 16(%rdx,%rax)
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movq	40(%rsp), %rbx
	movl	$1, %edx
	movb	$9, 55(%rsp)
	movq	%rax, %rdi
	movq	%rbx, %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %rdi
	movq	16(%rsp), %rax
	subq	8(%rsp), %rax
	movq	%rax, %rsi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$1, %edx
	movq	%rbx, %rsi
	movb	$10, 55(%rsp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	addl	$1, 32(%rsp)
	movl	32(%rsp), %eax
	cmpl	36(%rsp), %eax
	jne	.L143
.L142:
	movq	%rbp, %rdi
	call	_ZdaPv@PLT
	movq	56(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L153
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L152:
	.cfi_restore_state
	movq	-24(%rax), %rdi
	addq	%rcx, %rdi
	movl	32(%rdi), %esi
	orl	$1, %esi
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
	jmp	.L141
	.p2align 4,,10
	.p2align 3
.L145:
	xorl	%ebx, %ebx
	jmp	.L138
.L153:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE2689:
	.size	_Z10benchmark2IPFjPjiEEvPKcT_jjj, .-_Z10benchmark2IPFjPjiEEvPKcT_jjj
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"a1"
.LC5:
	.string	"a2"
.LC6:
	.string	"b1"
.LC7:
	.string	"b1b"
.LC8:
	.string	"b2"
.LC9:
	.string	"b3"
.LC10:
	.string	"b3b"
.LC11:
	.string	"b4"
.LC12:
	.string	"b5"
.LC13:
	.string	"b6"
.LC14:
	.string	"b7"
.LC15:
	.string	"b8"
.LC16:
	.string	"b9"
.LC17:
	.string	"b10"
.LC18:
	.string	"readOneLocation"
.LC19:
	.string	"readArray"
.LC20:
	.string	"writeArray"
.LC21:
	.string	"array1"
.LC22:
	.string	"array2"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB2437:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$5, %ecx
	movl	$200000000, %edx
	leaq	.LC4(%rip), %rdi
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	$5, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	leaq	_ZSt4cout(%rip), %rbx
	movq	%rbx, %r15
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movq	_Z2a1j@GOTPCREL(%rip), %rsi
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	leaq	23(%rsp), %r12
	call	_Z10benchmark1IPFjjEEvPKcT_jj
	movl	$5, %ecx
	movq	_Z2a2j@GOTPCREL(%rip), %rsi
	movl	$200000000, %edx
	leaq	.LC5(%rip), %rdi
	call	_Z10benchmark1IPFjjEEvPKcT_jj
	movl	$5, %ecx
	movl	$200000000, %edx
	leaq	_Z2b1j(%rip), %rsi
	leaq	.LC6(%rip), %rdi
	call	_Z10benchmark1IPFjjEEvPKcT_jj
	movl	$5, %ecx
	movl	$200000000, %edx
	leaq	_Z3b1bj(%rip), %rsi
	leaq	.LC7(%rip), %rdi
	call	_Z10benchmark1IPFjjEEvPKcT_jj
	movl	$5, %ecx
	movl	$200000000, %edx
	leaq	_Z2b2j(%rip), %rsi
	leaq	.LC8(%rip), %rdi
	call	_Z10benchmark1IPFjjEEvPKcT_jj
	movl	$5, %ecx
	movl	$200000000, %edx
	leaq	_Z2b3j(%rip), %rsi
	leaq	.LC9(%rip), %rdi
	call	_Z10benchmark1IPFjjEEvPKcT_jj
	movl	$200000000, %edi
	call	_Z3b3bm
	movq	%rax, %r13
	.p2align 4,,10
	.p2align 3
.L155:
	call	clock@PLT
	movq	%rax, %r14
	call	clock@PLT
	movl	$3, %edx
	leaq	.LC10(%rip), %rsi
	movq	%r15, %rdi
	movq	%rax, (%rsp)
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	$12, 16(%rbx,%rax)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%rbx), %rax
	movq	%r13, %rsi
	movq	%r15, %rdi
	movq	-24(%rax), %rax
	movq	$18, 16(%rbx,%rax)
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movl	$1, %edx
	movq	%r12, %rsi
	movb	$9, 23(%rsp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%rsp), %rsi
	movq	%rax, %rdi
	subq	%r14, %rsi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$1, %edx
	movq	%r12, %rsi
	movb	$10, 23(%rsp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	subl	$1, %ebp
	jne	.L155
	movl	$5, %ecx
	movl	$200000000, %edx
	leaq	_Z2b4j(%rip), %rsi
	leaq	.LC11(%rip), %rdi
	call	_Z10benchmark1IPFjjEEvPKcT_jj
	movl	$5, %ecx
	movl	$200000000, %edx
	leaq	_Z2b5j(%rip), %rsi
	leaq	.LC12(%rip), %rdi
	call	_Z10benchmark1IPFjjEEvPKcT_jj
	movl	$5, %ecx
	movl	$200000000, %edx
	leaq	_Z2b6j(%rip), %rsi
	leaq	.LC13(%rip), %rdi
	call	_Z10benchmark1IPFjjEEvPKcT_jj
	movl	$5, %ecx
	movl	$200000000, %edx
	leaq	_Z2b7j(%rip), %rsi
	leaq	.LC14(%rip), %rdi
	call	_Z10benchmark1IPFjjEEvPKcT_jj
	movl	$5, %ecx
	movl	$200000000, %edx
	leaq	_Z2b7j(%rip), %rsi
	leaq	.LC15(%rip), %rdi
	call	_Z10benchmark1IPFjjEEvPKcT_jj
	movl	$5, %ecx
	movl	$200000000, %edx
	leaq	_Z2b7j(%rip), %rsi
	leaq	.LC16(%rip), %rdi
	call	_Z10benchmark1IPFjjEEvPKcT_jj
	movl	$5, %ecx
	movl	$200000000, %edx
	leaq	_Z2b7j(%rip), %rsi
	leaq	.LC17(%rip), %rdi
	call	_Z10benchmark1IPFjjEEvPKcT_jj
	movl	$5, %r8d
	movl	$200, %ecx
	movq	_Z15readOneLocationPji@GOTPCREL(%rip), %rsi
	movl	$40000000, %edx
	leaq	.LC18(%rip), %rdi
	call	_Z10benchmark2IPFjPjiEEvPKcT_jjj
	movl	$5, %r8d
	movl	$200, %ecx
	movq	_Z9readArrayPji@GOTPCREL(%rip), %rsi
	movl	$40000000, %edx
	leaq	.LC19(%rip), %rdi
	call	_Z10benchmark2IPFjPjiEEvPKcT_jjj
	movl	$5, %r8d
	movl	$200, %ecx
	movq	_Z10writeArrayPji@GOTPCREL(%rip), %rsi
	movl	$40000000, %edx
	leaq	.LC20(%rip), %rdi
	call	_Z10benchmark2IPFjPjiEEvPKcT_jjj
	movl	$160000000, %edi
	call	_Znam@PLT
	movq	%rax, %rbp
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L156:
	movl	%eax, 0(%rbp,%rax,4)
	addq	$1, %rax
	cmpq	$40000000, %rax
	jne	.L156
	movl	$5, %r13d
	leaq	_ZSt4cout(%rip), %r15
	.p2align 4,,10
	.p2align 3
.L157:
	call	clock@PLT
	movl	$40000000, %esi
	movq	%rbp, %rdi
	movq	%rax, %r14
	call	_Z6array1PKjj
	movq	%rax, (%rsp)
	call	clock@PLT
	movl	$6, %edx
	leaq	.LC21(%rip), %rsi
	movq	%r15, %rdi
	movq	%rax, 8(%rsp)
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	$12, 16(%rbx,%rax)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%rbx), %rax
	imull	$200, (%rsp), %esi
	movq	%r15, %rdi
	movq	-24(%rax), %rax
	movq	$18, 16(%rbx,%rax)
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movl	$1, %edx
	movq	%r12, %rsi
	movb	$9, 23(%rsp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	8(%rsp), %rsi
	movq	%rax, %rdi
	subq	%r14, %rsi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$1, %edx
	movq	%r12, %rsi
	movb	$10, 23(%rsp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	subl	$1, %r13d
	jne	.L157
	movq	%rbp, %rdi
	call	_ZdaPv@PLT
	movl	$160000000, %edi
	call	_Znam@PLT
	movq	%rax, %rbp
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L158:
	movl	%eax, 0(%rbp,%rax,4)
	addq	$1, %rax
	cmpq	$40000000, %rax
	jne	.L158
	movl	$5, %r13d
	leaq	_ZSt4cout(%rip), %r15
	.p2align 4,,10
	.p2align 3
.L159:
	call	clock@PLT
	movl	$40000000, %esi
	movq	%rbp, %rdi
	movq	%rax, %r14
	call	_Z6array2Pjj
	movq	%rax, (%rsp)
	call	clock@PLT
	movl	$6, %edx
	leaq	.LC22(%rip), %rsi
	movq	%r15, %rdi
	movq	%rax, 8(%rsp)
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	$12, 16(%rbx,%rax)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%rbx), %rax
	imull	$200, (%rsp), %esi
	movq	%r15, %rdi
	movq	-24(%rax), %rax
	movq	$18, 16(%rbx,%rax)
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movl	$1, %edx
	movq	%r12, %rsi
	movb	$9, 23(%rsp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	8(%rsp), %rsi
	movq	%rax, %rdi
	subq	%r14, %rsi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$1, %edx
	movq	%r12, %rsi
	movb	$10, 23(%rsp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	subl	$1, %r13d
	jne	.L159
	movq	%rbp, %rdi
	call	_ZdaPv@PLT
	movq	24(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L167
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L167:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE2437:
	.size	main, .-main
	.p2align 4
	.type	_GLOBAL__sub_I__Z2b1j, @function
_GLOBAL__sub_I__Z2b1j:
.LFB2945:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	jmp	__cxa_atexit@PLT
	.cfi_endproc
.LFE2945:
	.size	_GLOBAL__sub_I__Z2b1j, .-_GLOBAL__sub_I__Z2b1j
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z2b1j
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.align 8
.LC2:
	.long	3642132267
	.long	1072691150
	.align 8
.LC3:
	.long	2296604913
	.long	1055193269
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
