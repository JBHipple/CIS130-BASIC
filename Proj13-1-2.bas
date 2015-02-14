REM Joshua Hipple - Project 13.1.2
REM Read data from a sequential DAT file
CLS
GOSUB OpenFile
GOSUB PrintHeader
GOSUB PrintRecords
GOSUB CloseFile
END

REM ** OpenFile **
OpenFile:
OPEN "Sales.dat" FOR INPUT AS #1
RETURN

REM ** PrintHeader **
PrintHeader:
D1$ = "  \    \       \                \      ####.##           #.#            ###.##"
PRINT
PRINT
PRINT     "                Sales Commission Report"
PRINT
PRINT
PRINT     "Sales Number    Salesman's Name      Sales Amount  Commission Rate    Commission"
PRINT
RETURN

REM ** PrintRecords **
PrintRecords:
INPUT #1, SalesNum$, Name$, Sales, Rate
DO UNTIL UCASE$(SalesNum$) = "END"
    Commission = ((SALES * RATE) / 100)
    PRINT USING D1$; SalesNum$, Name$, Sales, Rate, Commission
    INPUT #1, SalesNum$, Name$, Sales, Rate
LOOP
RETURN

REM ** CloseFile **
CloseFile:
Close #1
RETURN
