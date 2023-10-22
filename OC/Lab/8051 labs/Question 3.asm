org 0221h
	db 1,6,4,9,5,1,3,8,2,4 		; array 1.
	db 5,8,6,4,8,3,4,7,1,9		; array 2.

org 0000h
	
mov r1, #50h					; loading offset 50f into r1.
mov dptr, #0221h				; loading array address.

moving:
clr a
movc a, @a + dptr
mov @r1, a
inc r1
inc dptr
cjne r1, #64h, moving			; moving all values.

mov r0, #50h
mov r1, #5ah

compare:
mov a, @r0
mov b, @r1
inc r0
inc r1
cjne a, b, next					; comparing each element.
setb c
cjne r0, #5ah, compare
mov a, #00h
jz last

next: clr c						; based comparision set or clear carry flag.
mov a, r0
cjne r0, #5ah, compare
last:
end