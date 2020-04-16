	.global _Z3dotPdS_
_Z3dotPdS_:	
	@ r0 = first array    r1 = second array


	@ first element of first array x[0] = [r0]
	@ first elemetn of second array y[0] = [r1]
	@ second elements of first array x[1] =vldr.f64 d0, [r0, #8]
	@ second elements of second array y[1] = ???	

	@  [r0]    [r0, #8]   [r0, #16]

	@if the vector is BIG
	@ use [r0]
	@ add r0, #8
