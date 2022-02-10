DATA SEGMENT
         org 2000h
    NUMS DB  1h,2h,3h,4h,5h,6h,7h,8h,9h,10h
    NUM  DB  ?
    NUM2 DB  ?
DATA ENDS

CODE SEGMENT
          ASSUME CS:CODE,DS:DATA
    START:
          MOV    AX,DATA
          MOV    DS,AX
          LEA    SI,NUMS
          MOV    CX,0AH
          MOV    BX,0000H
          XOR    AX,AX


    MID:  
          MOV    AL,[SI]
          AND    AL,01h
          JZ     DOWN
          INC    SI
          LOOP   MID
          CMP    CX,00h
          je     LAST


    DOWN: 
          ADD    BL,[SI]
          INC    SI
          LOOP   MID

    LAST: 
          MOV    AX,5000H
          MOV    DS,AX
          MOV    AX,BX
          MOV    SI,0000H
          MOV    [SI],AX


CODE ENDS
END START