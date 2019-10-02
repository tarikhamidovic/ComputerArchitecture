.section .data
.globl c
c: .float 2.5
a: .word 5

.section .text
.global foo
foo:
    la $t0, c
    lwc1 $f4, ($t0) # load to coprocessor1
    la $t1, a
    lw $t1, ($t1)
    mtc1 $t1, $f5   # move t1 to coprocessors f5
    cvt.s.w $f5, $f5 # convert f5 from word to single precision
    add.s $f4, $f4, $f5 
    s.s $f4, ($a0)  # store
    jr $ra
