.text

main:
	addi $t0, $v0, 10
	addi $t1, $v0, 100
	addi $t2, $v0, 1000

	addi $v0, $zero, 5
	syscall
	
	add $t3, $v0, $zero  #Sobrará o alg das unidades
	
	div $t3, $t2
	mflo $s0 #Algarismo dos milhares
	
	mul $t4, $s0, $t2
	sub $t3, $t3, $t4
	
	div $t3, $t1
	mflo $s1 #Algarismo das centenas
	
	mul $t4, $s1, $t1
	sub $t3, $t3, $t4
	
	div $t3, $t0
	mflo $s2 #Algarismo das dezenas
	
	mul $t4, $s2, $t0
	sub $t3, $t3, $t4
	
	add $a0, $t3, $zero
	addi $v0, $zero, 1
	syscall
	
	addi $a0, $zero, '\n'
	addi $v0, $zero, 11
	syscall
	
	add $a0, $s2, $zero
	addi $v0, $zero, 1
	syscall	
	
	addi $a0, $zero, '\n'
	addi $v0, $zero, 11
	syscall
	
	add $a0, $s1, $zero
	addi $v0, $zero, 1
	syscall
	
	addi $a0, $zero, '\n'
	addi $v0, $zero, 11
	syscall
	
	add $a0, $s0, $zero
	addi $v0, $zero, 1
	syscall
	
	addi $a0, $zero, '\n'
	addi $v0, $zero, 11
	syscall
	
	addi $v0, $zero, 10
	syscall