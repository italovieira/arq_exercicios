	.data	
var1:	.word 2,6,4,7,9 
var2:	.word 1,5,9,3,1
	.text
	.globl main
	
main:
	li $t1, 1
	li $s3, 5
	li $s4, 7

	beq $t1, 0, L0
	beq $t1, 1, L1
	beq $t1, 2, L2
	beq $t1, 3, L3

	L0:
		add $s0, $s1, $s2   # f = i + j
		b END
	L1:
		add $s0, $s3, $s4   # f = g + h
		b END
	L2:
		sub $s0, $s3, $s4   # f = g - h
		b END
	L3:
		sub $s0, $s1, $s4   # f = i - h
	
	END:
		li $v0, 1
		addi $a0, $s0, 0
		syscall 