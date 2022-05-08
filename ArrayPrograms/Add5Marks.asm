;Adding the marks of 5 students 
mov 50h,#85h
mov 51h,#90h
mov 52h,#92h
mov 53h,#98h
mov 54h,#72h

;Adding 5 marks for each student
mov r1,#50h
mov r3,#05h
loop:
mov a,@r1
addc a,#05h
mov @r1,a
inc r1
djnz r3,loop

stop: sjmp stop
