REM Joshua Hipple - Final - Question 1
REM Read data and compute final salaries.
CLS
GOSUB InitializeHeaders
GOSUB PrintHeaders
GOSUB ProcessDetail
END

REM ** InitializeHeaders **
InitializeHeaders:
LET T1$ = "          Calculated Earnings Report"
LET H1$ = "      Salesperson            Total Earnings"
LET D1$ = "     \            \            $$#,###.##"
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
	GOSUB CalculateSalary
	GOSUB PrintDetail
	GOSUB ReadData
LOOP
RETURN

REM ** ReadData **
ReadData:
READ Name$, Sales
DATA "Carlos Ortiz", 90000
DATA "Jill Johnson", 70000
DATA "Don Williams", 20000
DATA "Dee Jones", 95000
DATA "Al Ennis", 40000
DATA "END", 0
RETURN

REM ** CalculateSalary **
CalculateSalary:
LET Commission = Sales * .1
Salary = 10000 + Commission
IF Sales > 80000 THEN
	Salary = Salary + 500
END IF
RETURN

REM ** PrintDetail **
PrintDetail:
PRINT USING D1$; Name$, Salary
RETURN