REM Joshua Hipple - Final Question 7 Part 2
REM Read from a file and output
CLS
GOSUB OpenFile
GOSUB PrintHeader
GOSUB ProcessDetail
GOSUB CloseFile
END

REM ** OpenFile **
OpenFile:
OPEN "Employee.dat" FOR INPUT AS #1
RETURN

REM ** PrintHeader **
PrintHeader:
D1$ = "\          \    #.#       ##       $###.##"
PRINT
PRINT
PRINT "   Employee Salary Report"
PRINT
PRINT
PRINT     " Employee     Pay Rate   Hours    Gross Pay"
PRINT
RETURN

REM ** ProcessDetail **
ProcessDetail:
GOSUB InputData
DO UNTIL UCASE$(EmpName$) = "END"
    GOSUB CalcPay
    GOSUB PrintDetail
    GOSUB InputData
LOOP
RETURN

REM ** InputData **
InputData:
INPUT #1, EmpName$, Rate, Hours
RETURN

REM ** CalcPay **
CalcPay:
Pay = RATE * HOURS
RETURN

REM ** PrintDetail **
PrintDetail:
PRINT USING D1$; EmpName$, Rate, Hours, Pay
RETURN

REM ** CloseFile **
CloseFile:
Close #1
RETURN
