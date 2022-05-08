;Triangular waveform
clr p0.7
mov a,#66h

UP: mov p1,a
	inc a
	cjne a,#99h,UP

DOWN: mov p1,a
      dec a
      cjne a,#66h,DOWN

SJMP UP