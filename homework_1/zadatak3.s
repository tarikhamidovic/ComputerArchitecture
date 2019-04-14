.section .data
  adresa: .word 0

.section .text
.set noreorder
.global main
main:
  addi $s0, $0, 200
  
  la $t0, adresa
  sw $s0, ($t0)
  
  // Instrukcijom lb ucitavamo prvih 8 bita sa adrese
  // koja se nalazi u registru $t0 i kopiramo tih 8
  // bita u donjih 8 bita registra $s1. Registar $s1
  // moze imati i negativne vrijednosti jer instrukcija
  // lb popunjava preostale bite na osnovu zadnjeg bita.
  // Opseg: -128 do 127

  lb $s1, ($t0)
  
  // Instrukcijom lbu ucitavamo prvih 8 bita sa adrese
  // koja se nalazi u registru $t0 i kopiramo tih 8
  // bita u donjih 8 bita registra $s2. Registar $s2
  // moze imati samo pozitivne vrijednosi jer instrukcija
  // lbu popunjava sve preosale bite nulama.
  // Opseg: 0 do 255

  lbu $s2, ($t0)
  
  // Instrukcijom lh ucitavamo prvih 16 bita sa adrese
  // koja se nalazi u registru $t0 i kopiramo tih 16 bita
  // u donjih 16 bita registra $s3.
  
  lh $s3, ($t0)
  
  addi $v0, $0, 0
  jr $ra
  nop
