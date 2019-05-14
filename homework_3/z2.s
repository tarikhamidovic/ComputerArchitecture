.section .text
.set noreorder
.global stepen
stepen:
  addi $t0, $0, 1
  mtc1 $t0, $f0
  cvt.s.w $f0, $f0
  addi $t0, $a1, 0

loop:
  beq $t0, $0, end
  nop
  mul.s $f0, $f0, $f12
  addi $t0, $t0, -1
  j loop
  nop

end:
  jr $ra
  nop

