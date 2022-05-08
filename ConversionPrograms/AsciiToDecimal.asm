;ASCII to Decimal

mov r0,#50h
mov a,@r0
subb a,#30h
mov 51h,a
end