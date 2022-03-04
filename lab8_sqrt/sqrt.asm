DATA SEGMENT
       NUM    EQU 4H
       RESULT DB  1 DUP(?)
DATA ENDS

CODE SEGMENT
              ASSUME CS:CODE,DS:DATA

       START: 
              MOV    AX,DATA
              MOV    DS,AX

              MOV    BX,NUM
              MOV    CX,1
              MOV    AX,1

       LOOP1: 
              MUL    CX
              CMP    AX,BX
              JZ     LABEL2
              INC    CX
              INC    AX
              JMP    LOOP1

       LABEL2:
              HLT

CODE ENDS
END START