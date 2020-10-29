        .globl _Z2a1j
_Z2a1j:
	.cfi_startproc
	endbr64
	xorq	%rax,   %rax
.L1:	
	addq	$1,   %rax
	cmpq	%rax, %rdi
	jne    .L1
	ret
	.cfi_endproc
	
	.globl	_Z2a2j
_Z2a2j:
	.cfi_startproc
	endbr64
.L2:	
	subq	$1, %rdi
	jne	.L2
	ret
	.cfi_endproc

	.globl _Z15readOneLocationPji
_Z15readOneLocationPji:
	.cfi_startproc
	endbr64
.L3:				
	movl	(%rdi), %eax	# read the same 32-bit number over and over
	subq	$1, %rsi	# count down
	jne	.L3		# do it again
	ret
	.cfi_endproc

	.globl _Z9readArrayPji
_Z9readArrayPji:
	.cfi_startproc
	endbr64
.L4:				
	movl	(%rdi),	 %eax   # read 32 bit number from memory
	addq	$4, %rdi	# advance to next element
	subq	$1, %rsi        # count down 
	jne	.L4		# and do it again
	ret
	.cfi_endproc

	.globl _Z10writeArrayPji
_Z10writeArrayPji:
	.cfi_startproc
	endbr64
	xorq	%rax,%rax	# rax = 0
.L5:				
	movl	%eax, (%rdi)    # write zero from eax into memory
	addq	$4, %rdi	# advance to next element
	subq	$1, %rsi        # count down 
	jne	.L5		# and do it again
	ret
	.cfi_endproc
