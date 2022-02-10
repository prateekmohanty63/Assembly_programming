
DATA SEGMENT
       ARR1 DW  1H,2H,3H,4H,5H,6H,7H,8H,9H,10H,11H,12H,13H,14H,15H
       EV   EQU 04H
DATA ENDS

CODE SEGMENT
              ASSUME CS:CODE ,DS:DATA

       START: 
              MOV    AX,DATA
              MOV    DS,AX
              LEA    SI,ARR1
              MOV    DX,00H
              XOR    AX,AX
              MOV    DL,EV
              MOV    CX,015h
              MOV    BX,00H

       LOOP1: 
              MOV    AX,[SI]
              DIV    DL
              CMP    AH,00H
              JNZ    LABEL1
              INC    SI
              INC    SI
              INC    BX
              DEC    CX
              JNZ    LOOP1




       LABEL1:
              INC    SI
              INC    SI
              DEC    CX
              JNZ    LOOP1
       

              INT    3

CODE ENDS
END START 

