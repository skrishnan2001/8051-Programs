;Receive bytes of data serially &
;put it in P1 at baud rate 4800

mov tmod,#20h
mov scon,#50h
mov th1,#-6
setb tr1

loop:
	here:jnb ri,here
	mov a,sbuf
	mov p1,a
	clr ri
	sjmp loop