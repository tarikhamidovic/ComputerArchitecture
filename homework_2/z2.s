.section .data
  n: .word 10
  niz1: .byte 3, 4, -44, 34, -34, 0, -43, -3, 34, 55, 34, 34, 33, 4, 54, 4, 5, 0, 0, 34
  niz2: .word 34, 4, 3, 4, 4, 43, 2, 23, 4, 4, 4, 4, -43, 0, 0, 0, 0, 3243, 33, 12
  niz3: .word 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

.section .text
.set noreorder
.global main
main:
  addiu $sp, $sp, -24
  sw $s0, 16($sp)
  sw $s1, 20($sp)
  sw $s2, 24($sp)
  la $s0, n
  lw $t0, ($s0)
  la $s0, niz1
  la $s1, niz2
  la $s2, niz3
  addi $t1, $0, 0 # counter for .byte
  addi $t2, $0, 0 # counter for .word

loop:
  slt $t3, $t1, $t0
  beq $t3, $0, end
  nop
  add $s0, $s0, $t1
  add $s1, $s1, $t2
  add $s2, $s2, $t2
  lb $t4, ($s0)
  lw $t5, ($s1)
  add $t6, $t4, $t5
  sw $t6, ($s2)
  add $t1, $t1, 1
  add $t2, $t2, 4
  j loop
  nop

end:
  lw $s0, 16($sp)
  lw $s1, 20($sp)
  lw $s2, 24($sp)
  addiu $sp, $sp, 24
  addi $v0, $0, 0
  jr $ra
  nop
