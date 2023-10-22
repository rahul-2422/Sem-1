org 0000h
	
mov r1, #40h
mov a, #0ah				; Imediate addressing mode.
mov b, #12h				; moving 12h to b register.
mov r3, a
orl a, r3
cpl a					; calculating A'

mov @r1, a				; storing A' in memory at 40h location.
mov a, b
mov r2, b
orl a, r2
cpl a					; calculating B'

inc r1
mov @r1, a				; storing B' in memory at 41h location.
orl a, 40h
cpl a					; apllying (a' + b')' = a.b
mov 50h, a				; storing result in 50h location.
end