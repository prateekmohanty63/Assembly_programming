ASSUME CS:CODE ,DS:DATA
CODE segment
         MOV AX,DATA
         MOV DS,AX
         MOV AH,00H
         MOV AL,CHAR
         ADD AL, CHAR1
         MOV RES,AX
         HLT
CODE ENDS

DATA segment
    CHAR  DB '8'
    CHAR1 DB '6'
    RES   DW ?
DATA ENDS
END