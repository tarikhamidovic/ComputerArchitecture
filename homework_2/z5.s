.section .text
.set noreorder
.global test
test:
  addiu $sp, $sp, -24
  sw $s3, 20($sp)
  sw $s6, 24($sp)

  slti $s3, $a0, 4
  beq $s3, $0, else
  nop
  addi $v0, $0, 0
  j kraj
  nop

else:
  sll $s6, $a0, 1
  addi $v0, $s6, 6

kraj:
  lw $s6, 24($sp)
  lw $s3, 20($sp)
  addiu $sp, $sp, 24
  jr $ra
  nop
