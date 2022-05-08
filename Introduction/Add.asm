mov r2,#00h
mov a,20h
add a,21h
mov 22h,a
jnc skip
inc r2
skip: mov 23h,r2
here :sjmp here