.section .data
  brojevi: .word 2, 4, 8, 9, 5, 1, 4, 2, 5, 7, 4, 1, 3, 5, 6
  rezultat: .word 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

.section .text
.set noreorder
.globl main
main:
  addiu $sp, $sp, -24
  sw $ra, 16($sp)

  la $t0, niz
  la $t1, rezultat
  addi $t2, $0, 0
  j uslov
  nop
tijelo:
  sll $t3, $t2, 2
  add $t4, $t3, $t0
  add $t5, $t3, $t1
  lw $a0, 0($t4)
  jal f_rezultat
  nop
  sw $v0, 0($t5)
  addi $t2, $t2, 1
uslov:
  slti $s0, $t2, 13
  bne $s0, $0, tijelo
  nop
  
  lw $ra, 16($sp)
  addiu $sp, $sp, 24
  addi $v0, $0, 0
  jr $ra
  nop
