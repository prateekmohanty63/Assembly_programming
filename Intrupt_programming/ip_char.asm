
CODE SEGMENT
    START:
          ASSUME CS:CODE
          MOV    AH,01H
          INT    21
CODE ENDS
END START