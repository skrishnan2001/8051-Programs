;2 step square rectangular wave
clr p0.7
start: mov a,#00h

up: mov p1,a
	lcall delay
	add a,#33h
	cjne a,#66h,up

mov p1,a
lcall delay

down:
	  lcall delay
      subb a,#33h
	   mov p1,a
	  cjne a,#00h,down

sjmp start

delay: mov r3,#0fh
		loop: NOP
			  djnz r3, loop
		ret
