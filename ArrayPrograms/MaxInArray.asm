mov 40h,#05h
mov 41h,#09h
mov 42h,#06h
mov 43h,#05h
mov 44h,#03h
mov 45h,#07h
mov 46h,#0ah
mov 47h,#0bh
mov 48h,#7fh
mov 49h,#04h
;Adding the elements

;Finding the largest element
mov r0,#40h
mov r3,#0ah
mov 60h,#00h

loop1:
mov a,@r0
cjne a,60h,loop2
loop3:inc r0
djnz r3,loop1

mov a,60h
mov @r0,a

hlt:sjmp hlt

loop2:
jc loop3
mov 60h,a
sjmp loop3