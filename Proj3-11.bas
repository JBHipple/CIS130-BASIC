REM Joshua Hipple - Project 3.11
REM Take length and width of rectange, pring area and perimeter
CLS
GOSUB GetInput
DO WHILE Width <> 0 OR Length <> 0
    GOSUB CalcNumbers
    GOSUB ResultPrint
    GOSUB GetInput
LOOP
END

REM ** GetsInput                       **
REM ** Takes input of width and height **
GetInput:
INPUT "What is the width of the rectangle (0 to quit)"; Width
INPUT "What is the length of the rectangle (0 to quit)"; Length
RETURN

REM ** CalcNumbers                   **
REM ** Calculates area and perimeter **
CalcNumbers:
AREA = LENGTH * WIDTH
PERIMETER = (LENGTH + WIDTH) * 2
RETURN

REM ** ResultPrint                                   **
REM ** Print the results of NumberCalc to the screen **
ResultPrint:
CLS
PRINT "Length:"; Length
PRINT "Width:"; Width
PRINT "Area:"; Area
PRINT "Perimeter:"; Perimeter
RETURN
