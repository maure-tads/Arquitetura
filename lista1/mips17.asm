.text 

main:

	addi $v0, $zero, 5
	syscall
	add $t0, $zero, $v0

    	addi $v0, $zero, 5
	syscall
	add $t1, $zero, $v0

   	add $t0, $t0, $t1
	mul $t0, $t0, 10
    
    	addi $t1, $zero, 2
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

	addi $v0, $zero, 10
	syscall
