DATA SEGMENT
    ARR1 DB 01H,07H,06H,02H

DATA ENDS

CODE SEGMENT
           ASSUME CS:CODE, DS:DATA
    START: MOV    AX,DATA
           MOV    DS,AX
           LEA    SI,ARR1
           MOV    BL,[SI]
           INC    SI
           MOV    CX,03H

    LOOP1: 
           MOV    AL,[SI]
           CMP    AL,BL
           JG     LABEL1
           INC    SI
           LOOP   LOOP1
           CMP    CX,00H
           JZ     LABEL2

    LABEL1:
           MOV    BL,[SI]
           INC    SI
           LOOP   LOOP1

    LABEL2:
           XOR    AX,AX
           MOV    AL,BL

           HLT
CODE ENDS
END START
