DATA SEGMENT
            ORG 2000h
       ARR1 DW  01H,02H,04H,04H,08H,0CH

DATA ENDS

CODE SEGMENT
              ASSUME CS:CODE ,DS:DATA
       START: 
              MOV    AX,DATA
              MOV    DS,AX
              XOR    AX,AX
              LEA    SI,ARR1
              MOV    BL,04H
              MOV    CX,06H
              XOR    DX,DX

       LOOP1: 
              MOV    AX,[SI]
              DIV    BL
              CMP    AH,00H
              JNZ    LABEL1
              INC    SI
              INC    SI
              INC    DL
              LOOP   LOOP1
              CMP    CX,00H
              JZ     LABEL2
   
   


       LABEL1:
              INC    SI
              INC    SI
              LOOP   LOOP1

       LABEL2:
              MOV    DX,[400H]
              MOV
              HLT
CODE ENDS
END START
