.section .data
  niz: .word 1,2,3,4,5,6,7,8,9,10

.section .text
.set noreorder
.global main
main:
  addiu $sp, $sp, -24
  sw $s0, 20($sp)
  la $s0, niz
  addi $t0, $0, 0 # counter

loop:
  slti $t1, $t0, 37
  beq $t1, $0, end
  nop
  add $s0, $s0, $t0
  lw $t2, ($s0)
  addi $t3, $t2, 0
  sll $t3, $t3, 31
  beq $t3, $0, even
  nop
  sll $t2, $t2, 1
  j save
  nop
even:
  sra $t2, $t2, 1
save:
  sw $t2, ($s0)
  addi $t0, $t0, 4
  j loop
  nop

end:
  lw $s0, 20($sp)
  addiu $sp, $sp, 24
  addi $v0, $0, 0
  jr $ra
  nop
