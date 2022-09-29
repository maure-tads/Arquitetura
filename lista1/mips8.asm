.text

main:
	addi $v0, $zero, 5
	syscall
	
	add $t0, $v0, $zero
	
	addi $v0, $zero, 5
	syscall
	
	add $t1, $v0, $zero
	
	addi $v0, $zero, 5
	syscall
	
	add $t2, $v0, $zero
	
	addi $s0, $zero, 3600
	mul $s0, $t0, $s0
	
	addi $s1, $zero, 60
	mul $s1, $t1, $s1
	
	add $s2, $s0, $s1
	add $a0, $s2, $t2
	
	addi $v0, $zero, 1
	syscall

	addi $v0, $zero, 10
	syscall	
	