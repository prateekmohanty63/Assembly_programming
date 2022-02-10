DATA SEGMENT
    ARR1 DB 08H DUP(00H)
DATA ENDS

CODE SEGMENT

          ASSUME CS:CODE ,DS:DATA
    START:
          LEA    SI,ARR1
          MOV    CX,008H

    LOOP1:
          MOV    [SI],001H
          INC    SI
          DEC    CX
          JNZ    LOOP1
    

          HLT
CODE ENDS
END START