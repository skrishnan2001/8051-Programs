;mov r1,#40h
;mov r3,#05h
;mov r0, #15h

;loop:
;mov a,r0
;mov @r1,a
;INC r1
;INC r0
;djnz r3, loop

;end

;The above piece of code writes 15
; to 19 in memory locations 40h to
; 45h

;Now, computing sum of elements
mov r1, #40h
mov r0, #00h
mov r3, #05h
loop:
mov a,@r1
addc a,r0
mov r0,a
inc r1
djnz r3,loop

mov a,r0
mov @r1,a
end


