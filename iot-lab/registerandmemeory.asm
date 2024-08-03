MOV R0,#50H ;R0 is the pointer to the data
MOV R1,#10H ;R1 is the counter
MOV B,#0 ;B=0
 BACK:MOV A,@R0 ;move a number to A
CJNE A,B,LOOP ;compare with B
 LOOP:JC LOOP1 ;if A<B, jump to loop1
MOV B,A ;if A>B, move it to B ie., the biggest number should be in B
INC R0 ;increment the pointer
DJNZ R1,BACK ;repeat until the counter=0
SJMP NEXT ;jump to EXIT, the biggest number is in B
 
 LOOP1:INC R0 ;this is another loop, taken when the biggest number was already in buffer 
 ;as comparison
DJNZ R1,BACK ;repeat until the counter=0
 NEXT:MOV A,B ;transfer the biggest number to A register
MOV 60H,A ;transfer the result to ROM location 6011
END ;end of asm source file