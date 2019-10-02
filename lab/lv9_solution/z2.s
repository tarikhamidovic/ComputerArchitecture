.section .data
a: .double 10.25

.section .text
.globl foo
foo:
    la $t0, a                  
    lwc1 $f6, ($t0)
    lwc1 $f7, 4($t0)
    mtc1 $a2, $f8
    mtc1 $a3, $f9
    mtc1 $a0, $f10
    cvt.d.w $f10, $f10
    add.d $f6, $f6, $f8
    add.d $f0, $f6, $f10
    jr $ra
    nop
