	.global _Z7setbitsii
	.global _Z8clearBitii
	.global _Z4flipii
	.global _Z11replaceBitsiii
	.global _Z10buildColoriii
_Z7setBitsii:
	mov r2, #1 @set r2 to the number 1 in order to shift the bit to desired location
	lsl r2, r2, r1 @shift r2 by r1. r1 contains input for setBits for the bit location we want set
	orr r0, r0, r2 @set bit 
	bx lr @exit function

_Z8clearBitii:
	mov r2, #1 @set r2 to 1 so we can play with it
	lsl r2, r2, r1 @shift r2 by r1 which contains location of clear bit
	bic r0, r0, r2
	bx lr

_Z4flipii:
	mov r2, #1 @set r2 to 1 to play with
	lsl r2, r2, r1 @shift into desired position
	eor r0, r0, r2 @ toggle desired bit
	bx lr

_Z11replaceBitsiii:
	and r1, r1, r0 @ clear bits to be replaced
	orr r0, r1, r2
	bx lr

_Z10buildColoriii:
	lsl r0, r0, #8 @shift to the left to make room for next nums
	orr r0, r0, r1 @read in next color
	lsl r0, r0, #8 @shift to the left to make room
	orr r0, r0, r2
	bx lr
