; Faca um programa que percorre 
; um vetor e armazena o maior elemento
; encontrado em uma variavel.
;	i = 0; j = 0;
;	while (i < 10){
;		j = j + 3;
;		v[i] = j;
;		i++;
;	}
;

main
	ldi r1,0
	ldw r2,max
repete
	slt r4,r1,r2
	bez r4,fim
	
	ldi r5,v
	add r5,r5,r1
	add r5,r5,r1
	slt r3,r5,r3
	
	add r1,1
	bez r3,maior
	bnz r7,repete

maior
	stw r5,maior_n
	bnz r7,repete

fim
	hcf

maior_n	0
max	10
v	1 4 2 0 6 7 5 9 3 2
