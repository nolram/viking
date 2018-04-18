; if (a <= b || a == 7){
;	d = 1;
; }else{
;	if (b > c){
;		d = 2;
;	}else{
;		d = 3;
;	}
; }

main
	ldw r1,a
	ldw r2,b
	slt r3,r2,r1
	bez r3,menor_igual_sete
	sub r1,7
	bez r1,menor_igual_sete
	bnz r7,else1

menor_igual_sete
	ldi r4,1
	stw r4,d
	bnz r7,fim

else1
	ldw r1,c
	slt r3,r2,r1
	bez r3,if2
	ldi r4,3
	stw r4,d
	bnz r7,fim

if2
	ldi r4,2
	stw r4,d
	bnz r7,fim

fim
	hcf

a	6
b	3
c	4
d	0

