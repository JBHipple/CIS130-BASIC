REM Joshua Hipple - Final - Question 1 Part 1
REM Create a DAT file
CLS
GOSUB CreateFile
GOSUB LoadFile
GOSUB CloseFile
END

REM ** CreateFile **
CreateFile:
OPEN "Employee.dat" FOR OUTPUT AS #1
RETURN

REM ** LoadFile **
LoadFile:
INPUT "Enter Employee Name ('END' to quit): ", EmpName$
DO UNTIL UCASE$(EmpName$) = "END"
	INPUT "Pay Rate:      ", Rate
	INPUT "Hours Worked:  ", Hours
	WRITE #1, EmpName$, Rate, Hours
	CLS
	INPUT "Enter Employee Name ('END' to quit): ", EmpName$
LOOP
WRITE #1, "END", 0, 0
RETURN

REM ** CloseFile **
CloseFile:
Close #1
RETURN