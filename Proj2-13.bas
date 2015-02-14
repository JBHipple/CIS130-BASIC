REM Joshua Hipple - Project 2.13
REM Calculate deductions on gross pay, output net pay.

CLS
GOSUB GetInput
GOSUB CalcDeductions
GOSUB OutputPay
END

REM ** GetInput Subroutine         **
REM ** Get user to input gross pay **
GetInput:
CLS
INPUT "What is your gross pay"; GrossPay
RETURN

REM ** CalcDeductions Subroutine                                   **
REM ** Calculate pay deductions for FICA, State, and Federal Taxes **
CalcDeductions:
FICA = .0715 * GROSSPAY
FICA = INT(FICA * 100 + .5) / 100
Fed = .14 * GROSSPAY
State = .09 * GROSSPAY
Deductions = FICA + Fed + State
NetPay = GROSSPAY - Deductions
RETURN

REM ** OutputPay Subroutine                     **
REM ** Output calculated deductions and net pay **
OutputPay:
CLS
PRINT "Pay before deductions: $"; GrossPay
PRINT  " "
PRINT "Deductions:"
PRINT " FICA Tax: ", " ", "$"; FICA
PRINT " Federal Tax: ", "$"; Fed
PRINT " State Tax: ", " ",  "$"; State
PRINT "Total Deductions: ", "$"; Deductions
PRINT " "
PRINT "Pay after deductions: $"; NetPay
END
