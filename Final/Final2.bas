REM Joshua Hipple - Final - Question 2
REM Read data and calculate charge
CLS
GOSUB InitializeHeaders
GOSUB PrintHeaders
GOSUB ProcessDetail
END

REM ** InitializeHeaders **
InitializeHeaders:
T1$ = "   Copy Service Billing Report"
H1$ = " Customer                # of Copies     Total Cost"
D1$ = "\                  \        #,###         $##.##"
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
    GOSUB CalculateCost
    GOSUB PrintDetail
    GOSUB ReadData
LOOP
RETURN

REM ** ReadData **
ReadData:
READ Name$, Copies
DATA "XYZ Amalgamated", 1200
DATA "ABC Industries", 200
DATA "TR Systems Limited", 800
DATA "END", 0
RETURN

REM ** CalculateCost **
CalculateCost:
IF Copies > 1000 THEN
    Cost = 45 + ((COPIES - 1000) * .03)
    ELSEIF Copies > 500 THEN
    Cost = 25 + ((COPIES - 500) * .04)
    ELSE
    Cost = COPIES * .05
END IF
RETURN

REM ** PrintDetail **
PrintDetail:
PRINT USING D1$; Name$, Copies, Cost
RETURN
