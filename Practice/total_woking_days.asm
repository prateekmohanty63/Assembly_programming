DATA SEGMENT
    TotalDays EQU 1FH
    Saturday  EQU 04H
    Sunday    EQU 04H
    Holiday   EQU 005H

DATA ENDS

CODE SEGMENT
          ASSUME CS:CODE,DS:DATA

    START:
          MOV    AX,DATA
          MOV    DS,AX
          XOR    AX,AX
          XOR    BX,BX
          XOR    DX,DX
          MOV    CX,06H
          MOV    AX,TotalDays
          MOV    BX, Saturday
          ADD    BX,Sunday
          ADD    BX,Holiday
          SUB    AX,BX
          MOV    DX,AX
          MUL    CX
          XOR    BX,BX
          MOV    BX,AX
          MOV    CL,01FH
          DIV    CL

          HLT

CODE ENDS
END START