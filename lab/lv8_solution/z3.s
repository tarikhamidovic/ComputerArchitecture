.section .data
d: .double 31.25

.section .text
.globl foo
foo:
    la $t0, d 
    l.d $f6, ($t0)
    mtc1 $a0, $f4
    cvt.d.w $f4, $f4
    mtc1 $a2, $f8
    mtc1 $a3, $f9
    c.lt.d $f8, $f4
    bc1t greater
    nop
    c.eq.d $f8, $f4
    bc1t equal
    nop
    add.d $f4, $f4, $f8
    add.d $f0, $f4, $f6
    jr $ra
  greater:
    add.d $f4, $f4, $f8
    sub.d $f0, $f4, $f6
    jr $ra
  equal:
    add.d $f0, $f4, $f8
    jr $ra
