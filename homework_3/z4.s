.section .data
  a: .word 3

.section .text
.set noreorder
.global foo
foo:
  la $t0, a
  lw $t1, ($t0)

  mtc1 $a2, $f6
  mtc1 $a3, $f7

  mtc1 $t1, $f4
  cvt.s.w $f4, $f4

  mul.s $f14, $f14, $f4

  cvt.d.s $f14, $f14
  cvt.d.s $f12, $f12

  add.d $f0, $f12, $f14
  sub.d $f0, $f0, $f6

  jr $ra
  nop
