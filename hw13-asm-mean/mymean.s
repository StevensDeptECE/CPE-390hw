	# %rdi is the pointer to the array
	# %esi is 32 bit counter (length)

_Z4meanPKdi:
.LFB0:
	.cfi_startproc
	endbr64
	pxor	%xmm0, %xmm0      # sum = 0
	movl	%esi, %eax 	  # make a copy of n for later
.L3:
	addsd	(%rdi), %xmm0
	addq	$8, %rdi
	subl	$1, %esi
	jne	.L3
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0   # xmm0 = xmm0 / xmm1 or is it xmm0 = xmm1 / xmm0
	ret
	.cfi_endproc
