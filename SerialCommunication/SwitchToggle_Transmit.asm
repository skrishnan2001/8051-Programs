;For switch at P2.0 monitor the 
;status and send 2 messages to
;serial port continuously if 0 then
;"N" if 1 then "Y" @4800 baud rate

mov tmod,#20h
mov scon,#50h
mov th1,#-6
setb tr1

loop:
	jnb p2.0,no
	yes: mov sbuf,#'Y'
	LCALL wait
	sjmp loop

no:
	mov sbuf,#'N'
	LCALL wait
	sjmp loop

wait: jnb ti, wait
	  clr ti
      ret
	