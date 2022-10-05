.text

main:
	addi $a0, $zero, 'H'
	addi $v0, $zero, 11
	syscall

	addi $a0, $zero, 'e'
	addi $v0, $zero, 11
	syscall
	
	addi $a0, $zero, 'l'
	addi $v0, $zero, 11
	syscall
	
	addi $a0, $zero, 'l'
	addi $v0, $zero, 11
	syscall
	
	addi $a0, $zero, 'o'
	addi $v0, $zero, 11
	syscall

	addi $a0, $zero, ' '
	addi $v0, $zero, 11
	syscall

	addi $a0, $zero, 'W'
	addi $v0, $zero, 11
	syscall
	
	addi $a0, $zero, 'o'
	addi $v0, $zero, 11
	syscall
	
	addi $a0, $zero, 'r'
	addi $v0, $zero, 11
	syscall
	
	addi $a0, $zero, 'l'
	addi $v0, $zero, 11
	syscall
	
	addi $a0, $zero, 'd'
	addi $v0, $zero, 11
	syscall
	
	addi $v0, $zero, 10
	syscall
