;Square wave
clr p0.7

back: mov a,#66h
      mov p1,a
      acall delay
      mov a,#99h
      mov p1,a
      acall delay
      sjmp back

delay: mov r3,#0fh
       loop: NOP
             DJNZ r3, loop

RET