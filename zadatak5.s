.section .data
  rezultat: .word 0

.section .text
.set noreorder
.global main
main:
  addi $s0, $0, 100
  ori $s1, $0, 40000
  lui $s3, 0xffff
  ori $s3, $s3, 0xffff
  
  add $s4, $s0, $s1
  add $s4, $s4, $s3
  
  la $s5, rezultat
  sw $s4, ($s5)
  
  addi $v0, $0, 0
  jr $ra
  nop
