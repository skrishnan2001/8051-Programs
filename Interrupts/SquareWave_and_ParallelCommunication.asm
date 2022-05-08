;Square wave generation and
;parallel communication

org 0
sjmp main

org 000bh
ljmp t0isr

org 0030h
main:
	mov p0,#0ffh
	clr p0.7
	mov tmod,#01h
	mov th0,#0feh
	mov tl0,#0ch
	mov ie,#82h
	setb tr0
	clr p1.2
	here: mov a,p0
		  mov p2,a
		  sjmp here

t0isr:
	cpl p1.2
	clr tr0
	mov th0,#0feh
	mov tl0,#0ch
	setb tr0
	reti

end
	
	
