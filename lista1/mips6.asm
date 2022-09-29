.text

main:
	addi $t0, $v0, 10 	#CARREGA O VALOR 10 NO REGISTRADOR T0
	addi $t1, $v0, 100	#CARREGA O VALOR 100 NO REGISTRADOR T1

	addi $v0, $zero, 5	#L� A ENTRADA DE UM NUMERO INTEIRO
	syscall
	
	add $t2, $v0, $zero	#CARREGA O VALOR LIDO NO REGISTRADOR T2
	
	div $t2, $t1		#DIVIDE O VALOR LIDO, POR 100
	mflo $t4		#GUARDA NO REGISTRADOR T4 A PARTE INTEIRA DA DIVISAO DO VALOR LIDO POR 100 (ALGARISMO DAS CENTENAS)
	
	mul $t6, $t4, $t1	#MULTIPLICA A PARTE INTEIRA DA DIVISAO POR 100, PARA ENCONTRAR O VALOR DA CENTENA E GUARDA O VALOR EM T6
	sub $t2, $t2, $t6	#SUBTRAI O VALOR LIDO, POR SUA PARTE DAS CENTENAS, SOBRANDO O VALOR DAS DEZENAS + UNIDADES
	
	div $t2, $t0		#DIVIDE O VALOR LIDO, POR 10
	mflo $t5		#GUARDA NO REGISTRADOR T4 A PARTE INTEIRA DA DIVISAO DO VALOR LIDO POR 10 (ALGARISMO DAS DEZENAS)
	
	mul $t7, $t5, $t0	#MULTIPLICA A PARTE INTEIRA DA DIVISAO POR 10, PARA ENCONTRAR O VALOR DA CENTENA E GUARDA O VALOR EM T5
	sub $t2, $t2, $t7	#SUBTRAI O VALOR LIDO, POR SUA PARTE DAS CENTENAS, SOBRANDO O VALOR DAS UNIDADES
	
				#T2 -> UNIDADE; T5 -> DEZENA; T4 -> CENTENA
				
	add $a0, $t4, $zero
	addi $v0, $zero, 1
	syscall
							
	add $a0, $t5, $zero
	addi $v0, $zero, 1
	syscall
		
	add $a0, $t2, $zero
	addi $v0, $zero, 1
	syscall

	addi $v0, $zero, 10
	syscall
		
	