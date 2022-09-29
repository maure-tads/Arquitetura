.text

main:
	addi $v0, $zero, 5
	syscall
	
	add $s0, $v0, $zero
	
	addi $t0, $zero, 3600
	addi $t1, $zero, 60
	
	div $s0, $t0
	mflo $s1
	
	mul $s2, $s1, $t0
	sub $s0, $s0, $s2
	
	div $s0, $t1
	mflo $s3
	
	mul $t2, $s3, $t1
	sub $s0, $s0, $t2
	
	add $a0, $zero, $s1
	addi $v0, $zero, 1
	syscall
	
	add $a0, $zero, ':'
	addi $v0, $zero, 11
	syscall
	
	add $a0, $zero, $s3
	addi $v0, $zero, 1
	syscall

	add $a0, $zero, ':'
	addi $v0, $zero, 11
	syscall
	
	add $a0, $zero, $s0
	addi $v0, $zero, 1
	syscall

	addi $v0, $zero, 10
	syscall
	