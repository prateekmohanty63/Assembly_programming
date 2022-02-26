DATA SEGMENT
    STRING1 DB  "I AM PRATEEK$"
    STRING2 EQU "$"
DATA ENDS

CODE SEGMENT
          ASSUME CS:CODE ,DS:DATA
    START:
          MOV    AX,DATA
          MOV    DS,AX
          LEA    SI,STRING1
          MOV    BL,STRING2
          XOR    CX,CX

    LOOP1:
          MOV    AL,[SI]
          INC    CX
          INC    SI
          CMP    AL,BL
          JNZ    LOOP1
          DEC    CX
          HLT

CODE ENDS
END START





