clr p0.7
start: mov a,#00h

up: mov p1,a
	LCALL delay
	mov a,#33h
	mov p1,a
	LCALL delay

I: INC a
	mov p1,a
	cjne a,#66h,I

D: mov p1,a
   dec a
   cjne a, #33h,D
   LCALL delay

SJMP start

delay: mov r3,#0fh
		loop: NOP
			  djnz r3,loop
		ret
