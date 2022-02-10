DATA SEGMENT
         org 2000h
    ARR1 Db  1h,2h,3h,4h,5h,6h,7h,8h,9h,10h
    num1 db  02H

DATA ENDS

CODE SEGMENT
           ASSUME CS:CODE,DS:DATA
    START: 

           MOV    AX,DATA
           MOV    DS,AX
           LEA    SI,ARR1
           MOV    CX,0AH
           XOR    AX,AX
           XOR    DL,DL
           MOV    BX,5000H


    LOOP1: 
           MOV    AL,ARR1[SI]
           MOV    BL,num1
           DIV    BL
           CMP    AH,00H
           JNZ    LABEL1
           ADD    DL,ARR1[SI]
           INC    SI
           DEC    CX
           JNZ    LOOP1
   


    LABEL1:
           INC    SI
           DEC    CX
           JNZ    LOOP1
           MOV    AL,DL
           MOV    [BX],AL
           INC    BX
           MOV    [BX],AH
           HLT
CODE ENDS
END START

    


