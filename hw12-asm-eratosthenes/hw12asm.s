	@r0 = array
	@r1 is the maximum number to check 1000000000
_Z3eraPii:
	mov	r2, r1  @ r2 = (n + 31) / 32
	ldr	r3, =31
	add	r2, r3
	lsr	r2, #5
	
	@ write 0xFFFFFFFF into the entire array
	@ make sure you save r0!!! we need it below



	@ r0 = array of bits
	mov	r3, #1  @ number of primes we have count so far (2 is prime)
	mov	r2, #3	@ start checking prime number 3

1:
	@split r2 into what word we are in (r2 / 32)
	@ and what bit within the word    (r2 % 32)
	@ compute the location where the word is r0 +  word index*4
	@ load that word
	@ compute 1 <<  (r2 % 32) . That is the bit to TEST

	@if your bit is TRUE (use the tst instruction)	
	@then do the following

	lsl	r4, r2, #1	@compute 2*i. This is the start of your loop
2:	
	@split r4 into what word we are in (r4 / 32)
	@ and what bit within the word    (r4 % 32)

	@ compute the location where the word is r0 +  word index*4
	@ load that word

	@ now clear the bit

	@ compute 1 <<  (r4 % 32) . That is the bit to clear
	@ use BIC to clear
	@ write it back into the array

	add	r4, r2		@for example if r4 = 3*2 = 6 next one is 9
	do this until r4 is n
	blt	2b

	add	r2, #2
	cmp	r2, r1
	blt 	1b

	@don't forget to push and pop whatever registers you needed beyond r3
	@move the answer back into r0 to return to C++



	bx	lr
