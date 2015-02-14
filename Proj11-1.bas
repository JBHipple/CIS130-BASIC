REM Joshua Hipple - Project 11.1
REM Output list of data based on parallel arrays
DIM IDNum(1 TO 14)
DIM Income(1 TO 14)
DIM Persons(1 TO 14)
CLS
GOSUB InitializeHeaders
GOSUB LoadArrays
GOSUB PrintArrays
GOSUB AboveAverage
GOSUB Poverty
END

REM ** InitializeHeaders **
InitializeHeaders:
H1$ = "  ID Number     Annual Income     Number of Persons"
D1$ = "    ####            ##,###               #"
RETURN

REM ** LoadArrays **
LoadArrays:
FOR I = 1 TO 14
    READ IDNum(I), Income(I), Persons(I)
NEXT I
DATA 2497, 12500, 2
DATA 3323, 13000, 5
DATA 4521, 18210, 4
DATA 6789, 8000, 2
DATA 5476, 6000, 1
DATA 4423, 16400, 3
DATA 6587, 25000, 4
DATA 3221, 10500, 4
DATA 5555, 15000, 2
DATA 0085, 19700, 3
DATA 3097, 20000, 8
DATA 4480, 23400, 5
DATA 0265, 19700, 2
DATA 8901, 13000, 3
RETURN

REM ** PrintArrays **
PrintArrays:
CLS
PRINT H1$
FOR I = 1 TO 14
    PRINT USING D1$; IDNum(I), Income(I), Persons(I)
NEXT I
PRINT "Press any key to continue..."
DO
    A$ = INKEY$
LOOP WHILE A$ = ""
A$ = ""
RETURN

REM ** AboveAverage **
AboveAverage:
GOSUB CalcAverage
GOSUB PrintAboveAverage
RETURN

REM ** CalcAverage **
CalcAverage:
Total = 0
FOR I = 1 TO 14
    Total = Total + Income(I)
NEXT I
Average = Total / 14
RETURN

REM ** PrintAboveAverage **
PrintAboveAverage:
CLS
PRINT "The following households are above average income of"; Average
FOR I = 1 TO 14
    IF Income(I) > Average THEN
        PRINT USING D1$; IDNum(I), Income(I), Persons(I)
    END IF
NEXT I
PRINT "Press any key to continue..."
DO
    A$ = INKEY$
LOOP WHILE A$ = ""
A$ = ""
RETURN

REM ** Poverty **
Poverty:
GOSUB CalcPoverty
GOSUB PrintPoverty
RETURN

REM ** CalcPoverty **
CalcPoverty:
NumOfPoverty = 0
FOR I = 1 TO 14
    IF Persons(I) > 2 THEN
        PovertyLevel = 8000 + ((Persons(I) - 2) * 2000)
        ELSE
        PovertyLevel = 8000
    END IF
    IF Income(I) < PovertyLevel THEN
        NumOfPoverty = NumOfPoverty + 1
    END IF
NEXT I
PovertyPercent = (NumOfPoverty / 14) * 100
RETURN

REM ** PrintPoverty **
PrintPoverty:
CLS
PRINT
PRINT
PRINT PovertyPercent; "% of households are under the poverty line"
RETURN
