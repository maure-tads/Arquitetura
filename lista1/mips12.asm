.text

main:
	addi $v0, $zero, 5
	syscall
	add $s0, $zero, $v0

	addi $v0, $zero, 5
	syscall
	add $s1, $zero, $v0

	addi $v0, $zero, 5
	syscall
	add $s2, $zero, $v0

	# $s0: Nota1
	# $s1: Nota2
	# $s2: Nota3
	

	sll $s3, $s0, 1    # $s3: Nota1 * 2
	add $s3, $s3, $s0  # $s3:(Nota1 * 2) + Nota1

	sll $s4, $s1, 3    # $s3: (Nota1 * 2) * 2 
	add $s4, $s4, $s1  # $s3: ((Nota1 * 2) * 2) - Nota1

	sll $s5, $s2, 4    # $s3: (Nota1 * 2) * 2 
	sub $s5, $s5, $s2  # $s3: ((Nota1 * 2) * 2) - Nota1
	
	add $t0, $s3, $s4
	add $t0, $t0, $s5
	
	mul $t0, $t0, 10
	addi $t1, $zero, 27
	div $t0, $t1
	
	mflo $t0
	addi $t1, $zero, 10
	div $t0, $t1

	mflo $a0
	addi $v0, $zero, 1
	syscall
	
	addi $a0, $zero, '.'
	addi $v0, $zero, 11
	syscall
	
	mfhi $a0
	addi $v0, $zero, 1
	syscall


