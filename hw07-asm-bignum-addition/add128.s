_Z6add128PjS_S_:

	@	ldr	r7, [r0, #12]
	@	load the rightmost value of parameter 1
	@	load the rigthmost value of parameter 2
	@	adds ra, rb     @ set the carry bit if the result is too big to fit
	@	store the answer
	@       load the next value of parameter 1
	@       load the next value of parameter 2
	@	adcs   (add with carry)  and SET THE CARRY FOR THE NEXT ONE!
	@	store the answer
	@...
	@ 	get the low digits
	@	adds  r0, r1     @ set the carry bit if the result is too big to fit

	@ adds-->	 1
	@		839
	@	+	957
	@		 96
	@       adc adds the two numbers + c. adcs also sets c for the next digit
