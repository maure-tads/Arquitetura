.text

main:
	addi $v0, $zero, 12
	syscall
	
	add $t0, $v0, $zero
	
	addi $a0, $zero, '\n'
	addi $v0, $zero, 11
	syscall
	
	sub $a0, $t0, 32
	addi $v0, $zero, 11
	syscall
	
	addi $v0, $zero, 10
	syscall
	