.text

main: addi $v0, $zero, 5
      syscall
      
      add $t0, $v0, $zero
      
      addi $v0, $zero, 5
      syscall
      add $t1, $v0, $zero
      
      add $t2, $t0, $t1
      
      addi $t3, $zero, 2
      
      div $t4, $t2, $t3
      
      add $a0, $t4, $zero
      addi $v0, $zero, 1
      syscall