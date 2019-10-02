.section .text
.global foo
foo:
    mtc1 $a2, $f5   # move t1 to coprocessors f5
    cvt.w.s $f5, $f5 # convert f5 from word to single precision5
    mfc1 $t1, $f5
    add $t1, $a0, $t1
    add $v0, $a1, $t1
    jr $ra
    nop
