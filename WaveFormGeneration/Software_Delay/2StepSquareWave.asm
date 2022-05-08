;2 step square wave
clr p0.7
mov a,#00h

up: mov p1,a
    LCALL delay
    add a,#33h
	cjne a,#66h,up

down: mov p1,a
      LCALL delay
      subb a,#33h
      cjne a,#00h,down

SJMP up

delay: mov r3,#0fh
		loop: NOP
			  djnz r3,loop
		ret