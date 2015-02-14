REM Joshua Hipple - MiniTest 4
REM Read data into an array and return specific data
DIM NumArray(1 TO 10)
CLS
GOSUB LoadArray
GOSUB PrintArray
GOSUB ReverseArray
GOSUB FirstLast
GOSUB TotalArray
GOSUB PrintSums
END

REM ** LoadArray **
LoadArray:
FOR I = 1 TO 10
	READ NumArray(I)
NEXT I
DATA 10, 12, 34, 45, 43, 56, 67, 87, 65, 90
RETURN

REM ** PrintArray **
PrintArray:
CLS
PRINT "  Contents of the array:"
FOR I = 1 TO 10
	PRINT NumArray(I)
NEXT I
PRINT "Press any key to continue..."
DO
	A$ = INKEY$
LOOP WHILE A$ = ""
A$ = ""
RETURN

REM ** ReverseArray **
ReverseArray:
CLS
PRINT "  Reverse of array contents:"
FOR I = 10 TO 1 STEP -1
	PRINT NumArray(I)
NEXT I
PRINT "Press any key to continue..."
DO
	A$ = INKEY$
LOOP WHILE A$ = ""
A$ = ""
RETURN

REM ** FirstLast **
FirstLast:
LET FirstLastSum = NumArray(1) + NumArray(10)
RETURN

REM ** TotalArray **
TotalArray:
LET ArrayTotal = 0
FOR I = 1 TO 10
	ArrayTotal = ArrayTotal + NumArray(I)
NEXT I	
RETURN

REM ** PrintSums **
PrintSums:
CLS
PRINT
PRINT
PRINT "Sum of first and last numbers is:"; FirstLastSum
PRINT
PRINT "Sum of all elements of array is:"; ArrayTotal
RETURN