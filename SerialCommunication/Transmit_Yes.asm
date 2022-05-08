;Transmit 'yes'
mov tmod,#20h
mov scon,#50h
mov th1,#-6
mov dptr,#mydata
setb tr1

loop:
	mov a,#00h
	movc a,@a+dptr
	jz hlt
	LCALL send
	INC dptr
	sjmp loop

hlt: sjmp hlt

send:
	mov sbuf,a
	wait: JNB ti, wait
	clr ti
	ret

mydata: DB "yes"