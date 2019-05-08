.section .data
  brojevi: .word 1,2,3,4,5,6,7,8,9,10
  rezultat: .word 0,0,0,0,0,0,0,0,0,0

.section .text
.set noreorder
.global main
main:
  addiu $sp, $sp, -24
  sw $ra, 16($sp)
  sw $s0, 20($sp)
  sw $s1, 24($sp)

  la $s0, brojevi
  la $s1, rezultat
  addi $t0, $0, 0 # counter

while:
  slti $t1, $t0, 36
  beq $t1, $0, end
  nop
  addu $s0, $s0, $t0
  addu $s1, $s1, $t0
  lw $t2, ($s0)
  addi $a0, $t2, 0
  jal f
  nop
  sw $v0, ($s1)
  addi $t0, $t0, 4
  j while
  nop

end:
  lw $s1, 24($sp)
  lw $s0, 20($sp)
  lw $ra, 16($sp)
  addiu $sp, $sp, 24
  addi $v0, $0, 0
  jr $ra
  nop


f:
  addiu $sp, $sp, -24
  sw $ra, 16($sp)

  addi $t3, $a0, 0
  sll $t3, $t3, 31
  beq $t3, $0, paran
  nop
  sll $t3, $a0, 1
  addi $a0, $t3, 0
  jal f1
  nop
  add $v0, $v0, $t3
  j endf
  nop
paran:
  sll $t3, $a0, 1
  addi $a1, $t3, 0
  add $t3, $t3, $a0
  addi $a1, $a1, -3
  jal f2
  nop
  add $v0, $v0, $t3
endf:
  lw $ra, 16($sp)
  addiu $sp, $sp, 24
  jr $ra
  nop


f1:
  slti $t4, $a0, 10
  bne $t4, $0, lessthan10
  nop
  addi $v0, $a0, -17
  j endf1
  nop
lessthan10:
  sll $v0, $a0, 2
  add $v0, $v0, $a0
  addi $v0, $v0, 7
endf1:
  jr $ra
  nop


f2:
  addi $t4, $0, 5
  beq $a0, $t4, equal
  nop
  sll $t4, $a0, 2
  add $t4, $t4, $a0
  sll $v0, $a1, 1
  add $v0, $v0, $t4
  j endf2
  nop
equal:
  sll $v0, $a0, 2
  add $v0, $v0, $a1
endf2:
  jr $ra
  nop
