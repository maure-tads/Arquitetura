.text 

main:
    addi $v0, $zero, 5 # $v0: ano
    syscall

    addi $at, $zero, 19 # $at: temp
    div $v0, $at

    mfhi $s0 #s0 : a
    
    addi $at, $zero, 100
    div $v0, $at

    mflo $s1 #s1: b   
    mfhi $s2 #s2: c
    
    addi $at, $zero, 4
    div $s1, $at

    mflo $s3 #s3: d
    mfhi $s4 #s4: e

    addi $t1, $s1, 8
    addi $at, $zero, 25
    div $t1, $at

    mflo $s5 #s5: f
    
    sub $s6, $s1, $s5
    addi $s6, $s6, 1
    
    addi $at, $zero, 3
    div $s6, $at
    mflo $s6 #s6: g

    addi $at, $zero, 19
    mul $s7, $s0, $at
    add $s7, $s7, $s1 # +b
    sub $s7, $s7, $s3 # -d
    sub $s7, $s7, $s6 # -g
    addi $s7, $s7, 15 # +15
    addi $at, $zero, 30
    div $s7, $at
    mfhi $s7 #s7: h

    addi $at, $zero, 4
    div $s2, $at

    #free: b, c, f, g --- s1, s2, s5, s6

    mflo $s1 #s1: i
    mfhi $s2 #s2: k

    
    sll $s4, $s4, 1 # e = e*2 
    sll $s1, $s1, 1 # i = i*2
    add $at, $s1, $s4 # 2*e + 2*i
    sub $at, $at, $s7
    sub $at, $at, $s2
    
    #free: d, e, f, g --- s3, s4, s5, s6

    addi $s3, $at, 32
    addi $at, $zero, 7
    div $s3, $at
    mfhi $s3 #s3: L

    addi $at, $zero, 11
    mul $s4, $s7, $at #11*h
    sll $at, $at, 1
    mul $s5, $s3, $at #22*l
    
    add $s0, $s0, $s4
    add $s0, $s0, $s5

    addi $at, $zero, 451
    div $s0, $at
    mflo $s4 # s4: m
    addi $at, $zero, 7
    mul $s4, $s4, $at # 7*m

    add $at, $s7, $s3
    addi $at, $at, 114
    add $s0, $at, $zero #(h + L - 7 × m + 114)
    addi $at, $zero, 31
    div $s0, $at
    mflo $s1 #mes
    mfhi $s2 #dia
    addi $s2, $s2, 1
    
    addi $at, $zero, 10
    div $s2, $at
    mflo $t0
    mfhi $t1

    div $s1, $at
    mflo $t2
    mfhi $t3
    
    add $t7, $zero, $v0

    add $a0, $zero, $t0
    add $v0, $zero, 1
    syscall
   
    add $a0, $zero, $t1
    add $v0, $zero, 1
    syscall

    add $a0, $zero, '/'
    add $v0, $zero, 11
    syscall

    add $a0, $zero, $t2
    add $v0, $zero, 1
    syscall

    add $a0, $zero, $t3
    add $v0, $zero, 1
    syscall

    add $a0, $zero, '/'
    add $v0, $zero, 11
    syscall

    add $a0, $zero, $t7
    add $v0, $zero, 1
    syscall

    addi $v0, $zero, 10
    syscall
    

 