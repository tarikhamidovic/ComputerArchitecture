.section .data
  tekst: .asciiz "Ovo je neki tekst KOJI SLUzi za prOBU. 1 2 3 itd."
  kodovi: .byte 'a', 'O', 'A', '1', 32, 'e', 98
  test: .word 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

.section .text
.set noreorder
.global main
main:
  addiu $sp, $sp, -40
  sw $ra, 16($sp)
  sw $s0, 20($sp)
  sw $s1, 24($sp)
  sw $s2, 28($sp)
  sw $s3, 32($sp)
  sw $s4, 36($sp)
  sw $s6, 40($sp)

  la $s0, tekst
  la $s1, kodovi
  la $s2, test
  addi $s3, $0, 0 # counter for kodovi

loop:
  slti $s4, $s3, 7
  beq $s4, $0, end
  nop
  add $s1, $s1, $s3
  lb $s6, ($s1)
  addi $a0, $s0, 0
  addi $a1, $s6, 0
  jal postoji_znak
  nop
  sw $v0, ($s2)
  addi $s2, $s2, 4
  addi $s3, $s3, 1
  j loop
  nop

postoji_znak:
  addi $t0, $0, 0 # counter for tekst
floop:
  slti $t1, $t0, 50
  beq $t1, $0, fend
  nop
  add $a0, $a0, $t0
  lb $t2, ($a0)
  beq $t2, $a1, found
  nop
  addi $t0, $t0, 1
  j floop
  nop
found:
  add $v0, $t2, $0
  jr $ra
  nop
fend:
  addi $v0, $0, 0
  jr $ra
  nop

end:
  lw $ra, 16($sp)
  lw $s0, 20($sp)
  lw $s1, 24($sp)
  lw $s2, 28($sp)
  lw $s3, 32($sp)
  lw $s4, 36($sp)
  lw $s6, 40($sp)
  addiu $sp, $sp, 40
  addi $v0, $0, 0
  jr $ra
  nop
