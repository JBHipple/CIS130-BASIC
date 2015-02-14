REM Joshua Hipple - Final - Question 6
REM Create, manipulate, and output a two dimensional array
DIM TheArray(1 TO 3, 1 TO 3)
CLS
GOSUB LoadArray
GOSUB AddToArray
GOSUB PrintArray
END

REM ** LoadArray **
LoadArray:
FOR Row% = 1 TO 3
	FOR Col% = 1 TO 3
		READ TheArray(Row%, Col%)
	NEXT Col%
NEXT Row%
DATA 8, 7, 3, 2, 4, 1, 6, 5, 8
RETURN

REM ** AddToArray **
AddToArray:
FOR Row% = 1 TO 3
	FOR Col% = 1 TO 3
		TheArray(Row%, Col%) = TheArray(Row%, Col%) + 5
	NEXT Col%
NEXT Row%
RETURN

REM ** PrintArray **
PrintArray:
FOR Row% = 1 TO 3
	PRINT TheArray(Row%, 1), TheArray(Row%, 2), TheArray(Row%, 3)
NEXT Row%
RETURN