.section .data
  rezultat: .word 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.section .text
.set noreorder
.global main
main:
  addiu $sp, $sp, -24
  sw $ra, 16($sp)
  sw $s0, 20($sp)

  la $s0, rezultat
  addi $t0, $0, 1 # counter
  addi $t2, $0, 0

loop:
  slti $t1, $t0, 21
  beq $t1, $0, end
  nop
  addi $a0, $t0, 0
  addu $s0, $s0, $t2
  jal fr
  nop
  sw $v0, ($s0)
  addi $t0, $t0, 1
  addi $t2, $0, 4
  j loop
  nop

end:
  lw $s0, 20($sp)
  lw $ra, 16($sp)
  addiu $sp, $sp, 24
  jr $ra
  nop


fr:
  addiu $sp, $sp, -24
  sw $ra, 16($sp)

  beq $a0, $0, zero
  nop
  addi $t3, $0, 1
  beq $a0, $t3, one
  nop
  jal suma_n
  nop
  sw $v0, 20($sp)
  addi $a0, $a0, -2
  jal fr
  nop
  lw $t4, 20($sp)
  add $v0, $v0, $t4
  j endfr
  nop

zero:
  addi $v0, $0, 0
  j endfr
  nop

one:
  addi $v0, $0, 1

endfr:
  lw $ra, 16($sp)
  addiu $sp, $sp, 24
  jr $ra
  nop


suma_n:
  addi $t5, $a0, 0
  addi $v0, $0, 0

loopsum:
  beq $t5, $0, endsum
  nop
  add $v0, $v0, $t5
  addi $t5, $t5, -1
  j loopsum
  nop

endsum:
  jr $ra
  nop

