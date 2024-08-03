1.ADDITION:
CLR C ;make CY=0
MOV A,#45H ;load the low byte into A
ADD A,#0ECH ;add the low byte ,now A=31,CY=1
MOV R0,A ;Save the low byte of sum in R0
MOV A,#02H ;load the high byte into A
ADD A,#0FCH ;add the high bytes with carry
MOV R1,A ;save the high byte of result n R1
2.SUBTRACTION:
i) Subtraction with CY=0:
CLR C ;make CY=0
MOV A,#3FH ;load 3FH into A(A=3FH)
MOV R3,#23H ;load 23H into R3(R3=23H)
SUBB A,R3 ;subtract A-R3,place the result in A
ii) Subtraction with CY=1:
MOV A,62H ;A=62H
SUBB A,#96H ;62H-96H=CCH with CY=1
MOV R7,A ;save the result
MOV A,#27H ;A=27H
SUBB A,#12H ;27H-12H-1=14H
MOV R6,A ;save the result
3)MULTIPLICATION:
MOV A,#25H ;load 25H to reg A
MOV B,65H ;load 65H to reg B
MUL AB ;25H*65H=E99 where
 ;B=0EH and A=99H
4)DIVISION:
MOV A,#95H ;load 95 into A
MOV B,#0AH ;move the divisor into B
DIV AB ;divide the hex number by 10
MOV R0,B ;the remainder is in B, move it to R0
MOV B,#0AH ;reload the divisor into B
DIV AB ;divide the quotient by 10
MOV R1,B ;move the remainder to R1
MOV R2,A ;move the last quotient to R2