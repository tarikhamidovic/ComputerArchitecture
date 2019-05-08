.section .data
  brojevi: .word 1,2,3,4
  rezultat: .word 0,0,0,0

.section .text
.set noreorder
.global main
main:
  addiu $sp, $sp, -24
  sw $ra, 16($sp)

  la $t0, brojevi
  lw $a0, ($t0)
  lw $a1, 4($t0)
  lw $a2, 8($t0)
  lw $a3, 12($t0)
  
  jal f
  nop

  la $t0, rezultat
  sw $v0, ($t0)

  lw $ra, 16($sp)
  addiu $sp, $sp, 24
  jr $ra
  nop

f:
  add $t1, $a0, $a1
  add $t2, $a2, $a3
  sub $v0, $t1, $t2
  addi $v0, $v0, -6
  jr $ra
  nop

