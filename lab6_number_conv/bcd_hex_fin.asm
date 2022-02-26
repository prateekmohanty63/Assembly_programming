DATA SEGMENT
    X    DW 2225H
    B    DW 0AH
DATA ENDS
CODE SEGMENT
          ASSUME CS:CODE, DS:DATA
    
    START:
          MOV    AX,DATA
          MOV    DS,AX
          MOV    AX,X
          AND    AX,0FH
          ADD    BX,AX

    LOOP1:
          MOV    CL,04H
          SHR    X,CL
          MOV    AX,X
          AND    AX,0FH
          MUL    B
          ADD    BX,AX
          MOV    AX,B
          MOV    B,0AH
          MUL    B
          MOV    B,AX
          CMP    X,0000H
          JNZ    LOOP1
          HLT

CODE ENDS
END START










