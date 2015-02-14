REM Joshua Hipple - Midterm, Project 4-4
REM Print books read for each patron, and points earned
CLS
GOSUB InitializeVariables
GOSUB PrintHeaders
GOSUB ProcessDetail
GOSUB PrintTotals
END

REM ** InitializeVariables                   **
REM ** Initialize variables and headers used **
InitializeVariables:
T1$ = "             READING PROGRAM"
T2$ = "              POINTS REPORT"
H1$ = "NAME               BOOKS          POINTS"
H2$ = "                   READ           EARNED"
D1$ = "\                \    ##             ###"
TL$ = "       TOTAL:        ###            ####"
BooksTotal = 0
PointsTotal = 0
RETURN

REM ** PrintHeaders                                  **
REM ** Prints the header from T1$, T2$, H1$, AND H2$ **
PrintHeaders:
PRINT
PRINT T1$
PRINT T2$
PRINT
PRINT
PRINT H1$
PRINT H2$
PRINT
RETURN

REM ** ProcessDetail
REM ** Read data, perform calculations, print to screen **
ProcessDetail:
GOSUB ReadData
DO UNTIL Name$ = "END"
    GOSUB CalculatePoints
    GOSUB PrintDetail
    GOSUB ReadData
LOOP
RETURN

REM ** ReadData                         **
REM ** Reads data lines to Name$, Books **
ReadData:
READ Name$, Books
DATA Sam Song, 4
DATA Linda Lou, 2
DATA P. Dexter, 8
DATA K. C. Smith, 6
DATA END, 0
RETURN

REM ** CalculatePoints                        **
REM ** Calculate points earned, add to totals **
CalculatePoints:
IF Books > 6 THEN
    Points = ((BOOKS - 6) * 20) + 75
    ELSEIF Books > 3 THEN
    Points = ((BOOKS - 3) * 15) + 30
    ELSE
    Points = BOOKS * 10
END IF
BooksTotal = BooksTotal + BOOKS
PointsTotal = PointsTotal + Points
RETURN

REM ** PrintDetail                           **
REM ** Prints Name$, Books, Points to screen **
PrintDetail:
PRINT USING D1$; Name$, Books, Points
RETURN

REM ** PrintTotals                                  **
REM ** Prints BooksTotal, and PointsTotal to screen **
PrintTotals:
Print
Print USING TL$; BooksTotal, PointsTotal
RETURN
