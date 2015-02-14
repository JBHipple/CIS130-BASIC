REM Joshua Hipple - Project 10.10
REM Output 10 random numbers between 1 and 100
CLS
FOR COUNT = 1 TO 10
	GOSUB GenerateNumber
	GOSUB PrintNumber
NEXT COUNT
END

REM ** GenerateNumber                           **
REM ** Generate random number between 1 and 100 **
GenerateNumber:
LET RandomNumber = INT(RND * 100 + 1)
RETURN

REM ** PrintNumber                   **
REM ** Print random number to screen **
PrintNumber:
PRINT RandomNumber
RETURN