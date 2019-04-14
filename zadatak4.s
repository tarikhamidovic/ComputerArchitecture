.section .data
  adresa: .word 0

.section .text
.set noreorder
.global main
main:
  addi $s0, $0, 1
  addi $s1, $0, 2
  addi $s2, $0, 3
  
  la $t0, adresa
  sb $s0, ($t0)
  sb $s1, 1($t0)
  sb $s2, 2($t0)
  
  addi $v0, $0, 0
  jr $ra
  nop
