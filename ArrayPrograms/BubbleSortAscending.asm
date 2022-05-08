;Sort 5 nos from loc 20h in
;ascending order

org 0
mov r7,#04h
back2: mov r6,#04h
		mov r0,#20h

back1: mov a,@r0
		inc r0
		mov b,@r0
		cjne a,b,next

next: JC skip
	   mov @r0,a
	   dec r0
	   mov @r0,b
	   inc r0

skip: djnz r6, back1
	   djnz r7, back2

here: sjmp here
		
