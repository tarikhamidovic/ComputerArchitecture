.section .data
  adresa: .word 0, 0, 0, 0, 0, 0, 0, 0
  broj1: .word 0
  broj2: .word 0

.section .text
.set noreorder
.global main
main:
  la $s2, broj1
  lw $s0, ($s2)
  
  la $s2, broj2
  lw $s1, ($s2)
  
  add $t0, $s0, $0
  add $t1, $s1, $0
  add $t2, $t0, $t1
  add $t3, $t1, $t2
  add $t4, $t2, $t3
  add $t5, $t3, $t4
  add $t6, $t4, $t5
  add $t7, $t5, $t6
  
  addi $v0, $0, 0
  jr $ra
  nop
