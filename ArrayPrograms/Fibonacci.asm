mov r0,#40h
mov r1,#00h
mov r2,#01h
mov r3,13
mov @r0,#00h
inc r0
mov @r0,#01h
loop:
inc r0
mov a,r1
addc a,r2
mov b,r2
mov r1,b
mov r2,a
djnz r3,loop