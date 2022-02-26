ASSUME CS:CODE

CODE SEGMENT

  START:
        MOV AX,83H
        MOV BX,AX
        AND BX,0FH
        ADD BX,30H

        MOV CL,4
        ROR AX,CL

        AND AX,0FH
        ADD AX,30H
        HLT

CODE ENDS
END START