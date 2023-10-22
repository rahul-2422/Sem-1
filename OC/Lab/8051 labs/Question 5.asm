org 0000h
	
mov p1, #89			; giving temperature input of 89f.

mov a, p1
subb a, #32
mov b, #05
mul ab
mov b, #09
div ab				; temperature is converted to celcius.
mov 41h, a			; temperature is stored in 41h location.
mov 40h, b
end