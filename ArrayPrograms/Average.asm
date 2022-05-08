mov 50h,#82h
mov 51h,#78h
mov 52h,#90h
mov 53h,#95h
mov 54h,#67h

;Now, computing avg of elements
mov r1, #50h
mov r0, #00h
mov r3, #05h
loop:
mov a,@r1
addc a,r0
mov r0,a
inc r1
djnz r3,loop

mov a,r0
;a has the sum of elements
;mov b,#05h
;div ab
mov @r1,a
;inc r1
;mov @r1,b
end


