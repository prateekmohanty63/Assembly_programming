DATA SEGMENT
    NUM1 EQU 01H
    NUM2 EQU 02H
DATA ENDS

CODE SEGMENT
          ASSUME CS:CODE,DS:DATA
    START:MOV    AX,NUM1
          MOV    BX,NUM2
          XOR    AX,BX

          HLT

CODE ENDS
END START
