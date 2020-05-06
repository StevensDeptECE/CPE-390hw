	.global _Z4pow2i
_Z4pow2i:
	orr r0, r0, lsr, #16
	orr r0, r0, lsr, #8



	.global  _Z7fastpowi
_Z7fastpowi:
	@ use clz          00000000010010010000000000  32 - whatever clz
	@ then shift 1 left?

	@ or, another approach, start with 1 on the left
	@                  1000 000000000000000000000
	@                 0x80000000  then shift right to correct position
	
