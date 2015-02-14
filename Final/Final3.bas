REM Joshua Hipple - Final - Question 3
REM Calculate car rental costs
CLS
GOSUB InitializeHeaders
GOSUB PrintHeaders
GOSUB ProcessDetail
END

REM ** InitializeHeaders **
InitializeHeaders:
T1$ = " Rental Price Report"
H1$ = " Customer        Car Type       Days     Miles       Price"
D1$ = "\        \    \            \     ##      ####      $$,###.##"
RETURN

REM ** PrintHeaders **
PrintHeaders:
PRINT
PRINT
PRINT T1$
PRINT
PRINT
PRINT H1$
PRINT
RETURN

REM ** ProcessDetail **
ProcessDetail:
GOSUB ReadData
DO UNTIL UCASE$(Name$) = "END"
    GOSUB CalculatePrice
    GOSUB PrintDetail
    GOSUB ReadData
LOOP
RETURN

REM ** ReadData **
ReadData:
READ Name$, Type$, Days, Miles
DATA "Jones", "Large", 6, 500
DATA "Smith", "Compact", 17, 3000
DATA "Baker", "Intermediate", 8, 250
DATA "Williams", "Intermediate", 4, 1000
DATA "Winston", "Large", 3, 500
DATA "END", "END", 0, 0
RETURN

REM **  CalculatePrice **
CalculatePrice:
IF UCASE$(Type$) = "COMPACT" THEN
    GOSUB CalculateCompact
    ELSEIF UCASE$(Type$) = "INTERMEDIATE" THEN
    GOSUB CalculateInter
    ELSEIF UCASE$(Type$) = "LARGE" THEN
    GOSUB CalculateLarge
END IF
RETURN

REM ** CalulateCompact **
CalculateCompact:
Price = (DAYS * 10) + (MILES * .15)
RETURN

REM ** CalculateInter **
CalculateInter:
Price = (DAYS * 20) + (MILES * .18)
RETURN

REM ** CalculateLarge **
CalculateLarge:
Price = (DAYS * 30) + (MILES + .22)
RETURN

REM ** PrintDetail **
PrintDetail:
PRINT USING D1$; Name$, Type$, Days, Miles, Price
RETURN
