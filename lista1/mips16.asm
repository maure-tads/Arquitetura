.text

main:
	addi $v0, $zero, 5
	syscall
	
	addi $t0, $zero, 2
	div $v0, $t0
	
	mfhi $a0
	mul $a0, $a0, -1
	
	addi $v0, $zero, 1
	syscall
	
	addi $v0, $zero, 10
	syscall