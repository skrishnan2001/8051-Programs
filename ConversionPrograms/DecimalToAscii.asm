;Decimal to ASCII
mov r0,#50h
mov a,@r0
anl a,#0fh
add a,#30h
mov 51h,a
end