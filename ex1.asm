	.data	
var1:	.word 2,6,4,7,9 
var2:	.word 1,5,9,3,1
	.text
	.globl main
	
main: 
	beq $t1, 0, L0
	beq $t1, 1, L1
	beq $t1, 2, L2
	beq $t1, 3, L3

	L0:
		add $t1, $s0, $s1 # f = i + j
	L1:
		add $t1, $s2, $s3   # f = g + h
	L2:
		sub $t1, $s2, $s3   # f = g - h
	L3:
		sub $t1, $s0, $s3   # f = i - h
		
	li $v0, 1
	addi $s0, $t1, 0
	syscall 