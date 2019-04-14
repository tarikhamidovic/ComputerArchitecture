.section .data
  sval: .byte -2
  uval: .byte 254
  rez: .word 0

.section .text
.set noreorder
.global main
main:
  la $t0, sval
  lb $s0, ($t0)
  
  // Instrukcijom lb ucitavamo signed byte tj. mozemo
  // ucitati vrijednost sa memorijske lokacije sval u
  // opsegu od -128 do 127.

  la $t0, uval
  lbu $s1, ($t0)
  
  // Instrukcijom lbu ucitavamo unsigned byte tj. mozemo
  // ucitati vrijednost sa memorijske lokacije uval u
  // opsegu od 0 do 255.

  add $s2, $s0, $s1
  
  la $t0, rez
  sw $s2, ($t0)
  
  addi $v0, $0, 0
  jr $ra
  nop
