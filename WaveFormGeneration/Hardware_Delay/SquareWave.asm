;Program to generate a sq wave of 
;1KHz on a display device connected
;to pin p1.2

clr p0.7
main: clr p1.2
acall delay
setb p1.2
acall delay
sjmp main

delay: 
	mov tmod,#01h
	mov tl0,#0ch
	mov th0,#0feh
	;mov tcon,#10h
	setb tr0;

	wait: JNB TF0, wait
	clr tr0
	clr tf0
	ret