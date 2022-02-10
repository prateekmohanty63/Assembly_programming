
DATA SEGMENT
       ARR1 DW  1H,2H,3H,4H,5H,6H,7H,8H,9H,10H,11H,12H,13H,14H,15H
       EV   EQU 04H
DATA ENDS

CODE SEGMENT
              ASSUME CS:CODE ,DS:DATA

              START
              MOV    AX,DATA
              MOV    DS,AX
              LEA    SI,ARR1
              MOV    DX,00H
              XOR    AX,AX
              MOV    DL,EV
              MOV    CX,015H
              MOV    DH,00H

       LOOP1: 
              MOV    AX,ARR1[SI]
              DIV    DL
              CMP    AH,00H
              JNZ    LABEL1
              ADD    SI,02H
              INC    DH
              LOOP   LOOP1




       LABEL1:
              ADD    SI,02H
              LOOP   LOOP1

              HLT
CODE ENDS
END START


