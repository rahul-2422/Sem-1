org 0000h
constant equ 02h				; constant value 02h
	
mov r1, #40h
mov @r1, #12h
inc r1
mov @r1, #04h
mov a, 40h						; direct addressing mode
mov b, 41h						; value at 41h is moved to b.
subb a, b
mov r3, a						; vlaue of  X - Y  is moved to r3.
mov a, 40h
mov b, 41h
add a,b
mov b, r3
div ab
add a, #constant
mov 50h, a 						; moving result into 50h memory location.

here: sjmp here
end