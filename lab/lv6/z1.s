#1. Napisati MIPS assembly program koji pretvara 
#pozitivan cijeli decimalni broj u binarni. Svaku 
#binarnu cifru smjestiti u jedan element globalnog 
#niza koji čuva maksimalno4 cifre. Cijeli broj 
#definirati također kao globalnu varijablu.

.section .data
x: .word 4
res: .byte 0, 0, 0, 0

.section .text
.set noreorder
.global main
main:
    # t0 = x
    # t1 = x%2
    # t2 = counter
    # t3 = &res
    la $t0, x 
    lw $t0, ($t0) 
    la $t3, res
    addi $t2, $zero, 0
  loop:
    andi $t1, $t0, 1
    add $t4, $t3, $t2
    sb $t1, ($t4) 
    sra $t0, $t0, 1
    addi $t2, $t2, 1
    bne $t0, $zero, loop # if (x != 0) goto loop;
    nop

    addi $v0, $zero, 0
    jr $ra
    nop
