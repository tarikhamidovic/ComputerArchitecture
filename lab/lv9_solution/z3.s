.section .data
a: .double 10.25

.section .text
.globl foo
foo:
    la $t0, a                  
    l.d $f6, ($t0)
    add.d $f6, $f6, $f14
    cvt.s.d $f6, $f6
    add.s $f0, $f6, $f12
    jr $ra
    nop
