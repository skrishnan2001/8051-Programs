setb psw.3
setb psw.4

mov a,#75h
mov b,#12h

div ab

mov r0,a
mov r1,b

here:sjmp here