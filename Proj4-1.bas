REM Joshua Hipple - Project 4.1
REM Read data, calculate pay, output to screen
CLS
GOSUB InitializeVariables
GOSUB PrintHeaders
GOSUB ProcessDetail
GOSUB PrintTotals
END

REM ** Initialize Variables              **
REM ** Initializes variables and headers **
InitializeVariables:
TotalPieces = 0
TotalPay = 0
T1$ = "        PIECEWORK WEEKLY REPORT"
H1$ = "   NAME             PIECES     PAY"
D1$ = "\                 \  ###      ###.##"
TL$ = "   TOTALS           ####     ####.##"
RETURN

REM ** PrintHeaders              **
REM ** Prints headers for output **
PrintHeaders:
PRINT
PRINT T1$
PRINT
PRINT H1$
PRINT
RETURN

REM ** ProcessDetail                    **
REM ** Processes data by set and prints **
ProcessDetail:
GOSUB ReadData
DO UNTIL UCASE$(Name$) = "END"
    GOSUB CalculatePay
    GOSUB PrintDetail
    GOSUB ReadData
LOOP
RETURN

REM ** ReadData   **
REM ** Reads data **
ReadData:
READ Name$, Pieces
DATA JOHNNY BEGOOD, 265
DATA SALLY GREAT, 650
DATA SAM KLUTZ, 177
DATA PETE PRECISE, 400
DATA FANNIE FANTASTIC, 399
DATA MORRIE MELLOW, 200
DATA END, 0
RETURN

REM ** CalculatePay                  **
REM ** Calculate pay for each person **
CalculatePay:
IF PIECES < 200 THEN
    Pay = PIECES * .5
    ELSEIF Pieces < 400 THEN
    Pay = PIECES * .55
    ELSEIF Pieces < 600 THEN
    Pay = PIECES * .6
    Else
    Pay = PIECES * .65
END IF
TotalPieces = TotalPieces + PIECES
TotalPay = TotalPay + Pay
RETURN

REM ** PrintDetail                    **
REM ** Prints results for each person **
PrintDetail:
PRINT USING D1$; Name$, Pieces, Pay
RETURN

REM ** PrintTotals             **
REM ** Prints totals to screen **
PrintTotals:
PRINT
PRINT USING TL$; TotalPieces, TotalPay
Return
