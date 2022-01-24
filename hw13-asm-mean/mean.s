	.file	"mean.cc"
	.text
	.p2align 4
	.globl	_Z4meanPKdi
	.type	_Z4meanPKdi, @function
_Z4meanPKdi:
.LFB0:
	.cfi_startproc
	endbr64
	testl	%esi, %esi      #n = %esi
	jle	.L4
	leal	-1(%rsi), %eax
	pxor	%xmm0, %xmm0
	leaq	8(%rdi,%rax,8), %rax
	.p2align 4,,10
	.p2align 3
.L3:
	addsd	(%rdi), %xmm0
	addq	$8, %rdi
	cmpq	%rax, %rdi
	jne	.L3
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%esi, %xmm1
	divsd	%xmm1, %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L4:
	pxor	%xmm1, %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%esi, %xmm1
	divsd	%xmm1, %xmm0
	ret
	.cfi_endproc
.LFE0:
	.size	_Z4meanPKdi, .-_Z4meanPKdi
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
