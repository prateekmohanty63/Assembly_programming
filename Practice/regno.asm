DATA SEGMENT
    ARR1 DB 01h,02h,03h,04h
   
DATA ENDS

CODE SEGMENT
          ASSUME CS:CODE , DS:DATA
    START:
          MOV    AX,DATA
          MOV    DS,AX
          XOR    AX,AX
          MOV    CX,06H
    LOOP1:MOV    BX ,[SI]
          ADD    AX,BX
          INC    SI
          LOOP   LOOP1
        
          HLT
CODE ENDS
END START 