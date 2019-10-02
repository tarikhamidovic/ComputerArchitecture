.section .data
a: .word 5

.section .text
.globl foo
foo:
    la $t0, a                  
    lw $t0, ($t0)
    mtc1 $t0, $f4
    cvt.d.w $f4, $f4
    mtc1 $a3, $f9
    mtc1 $a2, $f8
    add.d $f4, $f4, $f8
    l.d $f6, ($a0)              # pointer to p is in a0
    add.d $f4, $f4, $f6
    s.d $f4, ($a0)
    jr $ra