DATA SEGMENT
    RAMALA  EQU 30H
    RAJ     EQU 20H
    APPLE   EQU 03H
    BANANAS EQU 02H
    KIDS    EQU 09H
DATA ENDS

CODE SEGMENT
          ASSUME CS:CODE , DS:DATA
    START:
          MOV    AX,DATA
          MOV    DS,AX
          XOR    AX,AX
          MOV    AX,RAMALA
          ADD    AX,RAJ
          SUB    AX,APPLE
          SUB    AX,BANANAS
          MOV    BL,KIDS
          DIV    BL
          HLT
CODE ENDS
END START