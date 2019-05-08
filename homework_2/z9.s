.section .text
.set noreorder
.global test
test:
  addiu $sp, $sp, -24
  sw $ra, 16($sp)

  slti $t0, $a0, 2
  beq $t0, $0, skip
  nop
  addi $v0, $0, 1
  j end
  nop
skip:  
  slti $t0, $a1, 3
  beq $t0, $0, skip2
  nop
  addi $v0, $0, 1
  j end
  nop
skip2:
  slt $t0, $a0, $a1
  beq $t0, $0, else
  nop
  sw $a0, 20($sp)
  addi $a0, $a0, -1
  addi $a1, $a1, -3
  jal test
  nop
  lw $t1, 20($sp)
  add $v0, $v0, $t1
  j end
  nop
else:
  sw $a0, 20($sp)
  sw $a1, 24($sp)
  addi $a0, $a0, -2
  addi $a1, $a1, -1
  jal test
  nop
  lw $t2, 20($sp)
  lw $t3, 24($sp)
  add $v0, $v0, $t2
  sub $v0, $v0, $t3
end:
  lw $ra, 16($sp)
  addiu $sp, $sp, 24
  jr $ra
  nop
