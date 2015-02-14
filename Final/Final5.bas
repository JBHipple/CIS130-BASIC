REM Joshua Hipple - Final - Question 5
REM Read salaries into array and print
DIM Name$(1 TO 6)
DIM Salary(1 TO 6)
CLS
GOSUB InitializeHeaders
GOSUB PrintHeaders
GOSUB LoadArrays
GOSUB ProcessDetail
GOSUB PrintAverage
END

REM ** InitializeHeaders **
InitializeHeaders:
LET T1$ = "   Salary Average Report"
LET H1$ = "  Employees with Above Average Salary"
LET H2$ = " Name              Salary"
LET D1$ = "\           \     $##,###"
LET D2$ = " Average Salary:  $##,###"
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
PRINT H2$
PRINT
RETURN

REM ** LoadArrays **
LoadArrays:
FOR I = 1 TO 6
	READ Name$(I), Salary(I)
NEXT I
DATA "T. Angel", 43000
DATA "F. Smith", 31000
DATA "K. Johnston", 22000
DATA "P. Miner", 18000
DATA "C. Altman", 27000
DATA "A. Lu", 19000
RETURN

REM ** ProcessDetail **
ProcessDetail:
GOSUB FindAverage
FOR I = 1 TO 6
	IF Salary(I) > AverageSalary THEN
		GOSUB PrintDetail
	END IF
NEXT I
RETURN

REM ** FindAverage **
FindAverage:
FOR I = 1 TO 6
	LET TotalSalary = TotalSalary + Salary(I)
NEXT I
LET AverageSalary = TotalSalary / 6
RETURN

REM ** PrintDetail **
PrintDetail:
PRINT USING D1$; Name$(I), Salary(I)
RETURN

REM ** PrintAverage ** 
PrintAverage:
PRINT
PRINT USING D2$; AverageSalary
RETURN