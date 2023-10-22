org 0000h
	
mov a, #65			; giving 65h value to a register.
mov 50h, #00h		; clears 50h memory location.

mov r1, #50h
mov r2, #00h

sum:
mov b, #10
div ab				; divides a by 10
mov r3, a
mov a, b			; remainder is moved to a.

add a, @r1
mov @r1, a			; sum is stored in 50h memory location.
mov a, r3
cjne a, #00h, sum	; repeated untill number becomes 0.
end