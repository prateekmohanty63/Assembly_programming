CODE SEGMENT
    ASSUME CS:CODE
    START:
     MOV AX,2000H
     MOV DS,AX
     MOV SI,0300H
     MOV AX,[SI]

CODE ENDS
END START
