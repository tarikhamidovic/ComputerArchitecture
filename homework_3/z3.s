.section .data
.set noreorder
.global foo
foo:
  lwc1 $f4, ($a2)
  lwc1 $f5, 4($a2)

  lwc1 $f6, 16($sp)
  lwc1 $f7, 20($sp)

  add.d $f0, $f4, $f6
  add.d $f0, $f0, $f12

  jr $ra
  nop
