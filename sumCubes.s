	.global _Z8sumCubesii

_Z8sumCubesii:
	mov r2, #0 @set r2 to 0 for sum 
	
1:	mul r3, r0, r0 @square r0 and put in r3
	mul r3, r3, r0 @cube r0 and store in r3
	add r2, r2, r3 @add cubed num to running total
	add r0, r0, #1
	cmp r0, r1
	ble 1b
	mov r0, r2
	bx lr
