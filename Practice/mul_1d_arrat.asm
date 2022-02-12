DATA SEGMENT
    ARR1 DB 1H,2H,3H,4H,5H,6H
   
DATA ENDS

CODE SEGMENT
          ASSUME CS:CODE , DS:DATA
    START:
          MOV    AX,DATA
          MOV    DS,AX
          MOV    CX,06H
    LOOP1:MOV    BX ,[SI]
          MUL    BX
          INC    SI
          LOOP   LOOP1
        
          HLT
CODE ENDS
END START