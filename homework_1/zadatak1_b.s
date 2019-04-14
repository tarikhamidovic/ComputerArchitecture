.section .data
  adresa: .word 0, 0, 0, 0, 0, 0, 0, 0
  broj1: .word 0
  broj2: .word 0

.section .text
.set noreorder
.global main
main:
  la $s2, broj1
  lw $s0, ($s2)
  
  la $s2, broj2
  lw $s1, ($s2)
  
  add $t0, $s0, $0
  add $t1, $s1, $0
  add $t2, $t0, $t1
  addi $t2, $t2, 1
  add $t3, $t1, $t2
  addi $t3, $t3, 1
  add $t4, $t2, $t3
  addi $t4, $t4, 1
  add $t5, $t3, $t4
  addi $t5, $t5, 1
  add $t6, $t4, $t5
  addi $t6, $t6, 1
  add $t7, $t5, $t6
  addi $t7, $t7, 1
  
  la $t8, adresa
  sw $t0, ($t8)
  sw $t1, 4($t8)
  sw $t2, 8($t8)
  sw $t3, 12($t8)
  sw $t4, 16($t8)
  sw $t5, 20($t8)
  sw $t6, 24($t8)
  sw $t7, 28($t8)
  
  lb $s0, ($t8)
  lb $s1, 4($t8)
  lb $s2, 8($t8)
  lb $s3, 12($t8)
  lb $s4, 16($t8)
  lb $s5, 20($t8)
  lb $s6, 24($t8)
  lb $s7, 28($t8)

  // Vrijednosti iz $t0-$t7 registra smo snimili u memoriju kao
  // word tj. jednu vrijednost iz registra smo snimili na 4 byte-a 
  // u memoriji. Instrukcijom lb ucitavamo samo prvi byte sa proslijedjene
  // adrese, pa ce se samo donjih 8 bita ucitati iz memorije u registre $s?.
  // Instrukcija lb preostale bite popunjava na osnovu zadnjeg bita, tj. 0 ako je 
  // zadnji bit 0 i 1 ako je zadnji bit 1.

  lbu $s0, ($t8)
  lbu $s1, 4($t8)
  lbu $s2, 8($t8)
  lbu $s3, 12($t8)
  lbu $s4, 16($t8)
  lbu $s5, 20($t8)
  lbu $s6, 24($t8)
  lbu $s7, 28($t8)
  
  // Instrukcija lbu ucitava prvih 8 bita iz memorije sa proslijedjene 
  // adrese u registre, s tim da ce se vrijednosti ucitavati bez 
  // predznaka (preostali biti se popunjavaju nulama). Ovo implicira
  // da mozemo dobiti drugacije vrijednosti za razliku od onih koje
  // dobijemo instrukcijom lb.

  addi $v0, $0, 0
  jr $ra
  nop
