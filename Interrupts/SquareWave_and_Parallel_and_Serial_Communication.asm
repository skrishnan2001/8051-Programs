;Square wave generation,parallel 
;and serial communication

org 0
sjmp main

org 000bh
ljmp t0isr

org 0023h
ljmp serialISR

org 0030h
main:
	mov p0,#0ffh
	clr p0.7
	mov tmod,#21h
	mov th0,#0feh
	mov tl0,#0ch
	mov scon,#50h
	mov th1,#-6
	mov ie,#92h
	setb tr0
	setb tr1
	clr p1.2
		

	;Parallel and serial Communication
	here: mov a,p0
		  mov sbuf,a
		  mov p2,a
		  sjmp here

t0isr:
	cpl p1.2
	clr tr0
	mov th0,#0feh
	mov tl0,#0ch
	setb tr0
	reti

org 100h
serialISR:
	jb ti, trans
	mov a,sbuf
	clr ri
	reti

trans:
	clr ti
	reti

end
	
	
