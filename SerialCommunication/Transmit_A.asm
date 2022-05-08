;Transmit 'A' serially @4800 baud rate
mov tmod,#20h
mov th1,#-6
mov scon,#50h
setb tr1

loop:
	mov sbuf,#'A'
	here : JNB ti,here
	clr ti
	sjmp loop
