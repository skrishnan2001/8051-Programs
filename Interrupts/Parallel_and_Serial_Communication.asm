org 0 
ljmp main
org 23h
ljmp serial

org 30h
main:
	mov p1,#0ffh
	mov tmod,#20h
	mov scon,#50h
	mov th1,#-6
	mov ie, #10010000B
	setb tr1

back:
	mov a,p1
	mov sbuf,#'Y'
	mov p2,a
	sjmp back

org 100h
serial:
	jb ti,trans
	mov a,sbuf
	clr ri
	reti

trans:
	clr ti
	reti

end