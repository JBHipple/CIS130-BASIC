REM Joshua Hipple - Project 13.1.1
REM Create a sequential DAT file
CLS
GOSUB CreateFile
GOSUB LoadFile
GOSUB CloseFile
END

REM ** CreateFile **
CreateFile:
OPEN "Sales.dat" FOR OUTPUT AS #1
RETURN

REM ** LoadFile **
LoadFile:
INPUT "Enter Salesman Number ('END' to quit): ", SalesNum$
DO UNTIL UCASE$(SalesNum$) = "END"
    INPUT "Salesman name:   ", Name$
    INPUT "Sales amount:    ", Sales
    INPUT "Commission rate: ", Rate
    WRITE #1, SalesNum$, Name$, Sales, Rate
    CLS
    PRINT "Next record:"
    INPUT "Enter Salesman Number ('END' to quit): ", SalesNum$
LOOP
WRITE #1, "END", "END", 0, 0
RETURN

REM ** CloseFile **
CloseFile:
CLOSE #1
RETURN
