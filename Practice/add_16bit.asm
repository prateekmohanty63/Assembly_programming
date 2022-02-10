ASSUME CS:CODE , DS:DATA

DATA segment
    OPR1 DW 4269H
    OPR2 DW 1000H
    RES  DW ?
DATA ENDS

CODE segment
         MOV AX,DATA
         MOV DS,AX
         MOV AX,OPR1
         ADD AX,OPR2
         MOV DS,AX
         HLT
CODE ENDS
END