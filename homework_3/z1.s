.section .data
  bubroj: .byte 178 # unsigned
  wbroj: .word 393 # signed
  fbroj1: .float 388.444 # sp fp broj
  fbroj2: .float -3.625 # sp fp broj
  frezultat: .float 0.0 # sp fp broj

.section .text
.set noreorder
.global main
main:
  addiu $sp, $sp, -24
  swc1 $f20, 16($sp)

  la $t0, bubroj
  lbu $t1, ($t0)
  
  la $t0, wbroj
  lw $t2, ($t0)

  la $t0, fbroj1
  lwc1 $f4, ($t0)

  la $t0, fbroj2
  lwc1 $f6, ($t0)

  mtc1 $t1, $f8 # bubroj
  mtc1 $t2, $f10 # wbroj
  
  cvt.s.w $f8, $f8
  cvt.s.w $f10, $f10

  mul.s $f20, $f4, $f6 # fbroj1*fbroj2
  
  addi $t1, $0, -21
  addi $t2, $0, 2
  mtc1 $t1, $f16
  mtc1 $t2, $f18
  cvt.s.w $f16, $f16
  cvt.s.w $f18, $f18
  div.s $f16, $f16, $f18 # -10.5

  add.s $f16, $f16, $f20 # fbroj1*fbroj2 - 10.5

  addi $t1, $0, 32
  mtc1 $t1, $f18
  cvt.s.w $f18, $f18
  mul.s $f18, $f18, $f8 # bubroj*32

  addi $t1, $0, 7
  mtc1 $t1, $f20
  cvt.s.w $f20, $f20
  mul.s $f20, $f20, $f10 # wbroj*7
  mul.s $f20, $f20, $f6 # wbroj*7*fbroj2
  add.s $f20, $f20, $f18 # bubroj*32 + wbroj*7*fbroj2
  c.lt.s $f16, $0
  bc1t negative
  nop
  j end
  nop

negative:
  sub.s $f16, $0, $f16

end:
  div.s $f16, $f16, $f20
  la $t0, frezultat
  swc1 $f16, ($t0)

  lwc1 $f20, 16($sp)
  addiu $sp, $sp, 24

  addi $v0, $0, 0
  jr $ra
  nop
  
