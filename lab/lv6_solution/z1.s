
.section .text
.set noreorder
.global convert
convert:
    addiu $t0, $a0, 0
    addiu $t3, $a1, 0
    addi $t2, $zero, 0
  loop:
    andi $t1, $t0, 1
    add $t4, $t3, $t2
    sb $t1, ($t4) 
    sra $t0, $t0, 1
    addi $t2, $t2, 1
    bne $t0, $zero, loop
    nop
    jr $ra
    nop