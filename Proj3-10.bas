REM Joshua Hipple - Project 3.10
REM Take number as input, print number, square and cube, loop until 999
CLS
GOSUB TakeInput
DO UNTIL InputNumber = 999
    GOSUB NumberCalc
    GOSUB DisplayNumbers
    GOSUB TakeInput
LOOP
END

REM ** FirstInput Subroutine        **
REM ** Gets first input for program **
TakeInput:
INPUT "Enter a number (999 to quit)"; InputNumber
RETURN

REM ** NumberCalc                            **
REM ** Calculate the numbers for the program **
NumberCalc:
SQUARE = INPUTNUMBER * INPUTNUMBER
CUBE = INPUTNUMBER * INPUTNUMBER * INPUTNUMBER
RETURN

REM ** DisplayNumbers             **
REM ** Displays results to screen **
DisplayNumbers:
CLS
PRINT "Number is:"; InputNumber
PRINT "Number squared is:"; Square
PRINT "Number cubed is:"; Cube
RETURN
