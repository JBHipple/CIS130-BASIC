REM Joshua Hipple - Project 9.2
REM Use a menu to drive a currency conversion program
CLS
DO
	GOSUB DisplayMenu
	SELECT CASE Choice$
		CASE "1"
			GOSUB UsToEuro
		CASE "2"
			GOSUB EuroToUs
		CASE "3"
			GOSUB UsToCan
		CASE "4"
			GOSUB CanToUs
		CASE ELSE
	END SELECT
LOOP UNTIL Choice$ = "5"
END

REM ** DisplayMenu      **
REM ** Display the menu **
DisplayMenu:
CLS
LOCATE 3,10
PRINT "Currency Conversion Menu"
LOCATE 6, 7
PRINT "1. U.S. Dollar to Euro"
LOCATE 7, 7
PRINT "2. Euro to U.S. Dollar"
LOCATE 8, 7
PRINT "3. U.S. Dollar to Canadian Dollar"
LOCATE 9, 7
PRINT "4. Canadian Dollar to U.S. Dollar"
LOCATE 10, 7
PRINT "5. Exit"
LOCATE 13, 10
INPUT "Enter Selection: ", Choice$
RETURN

REM ** UsToEuro                        **
REM ** Converts US to Euro and outputs **
UsToEuro:
LET CurrencyIn$ = "U.S. Dollar"
LET CurrencyOut$ = "Euro"
GOSUB GetInput
LET NewValue = InputValue * .8
GOSUB DisplayResult
RETURN

REM ** EuroToUS                      **
REM ** Convert Euro to US and output **
EuroToUs:
LET CurrencyIn$ = "Euro"
LET CurrencyOut$ = "U.S. Dollar"
GOSUB GetInput
LET NewValue = InputValue * 1.24
GOSUB DisplayResult
RETURN

REM ** UsToCan                           **
REM ** Convert US to Canadian and output **
UsToCan:
LET CurrencyIn$ = "U.S. Dollar"
LET CurrencyOut$ = "Canadian Dollar"
GOSUB GetInput
LET NewValue = InputValue * 1.14
GOSUB DisplayResult
RETURN

REM ** CanToUs                           **
REM ** Convert Canadian to US and output **
CanToUs:
LET CurrencyIn$ = "Canadian Dollar"
LET CurrencyOut$ = "U.S. Dollar"
GOSUB GetInput
LET NewValue = InputValue * .88
GOSUB DisplayResult
RETURN

REM ** GetInput					**
REM ** Get input for conversion **
GetInput:
CLS
LOCATE 6, 10
PRINT "Enter amount of "; CurrencyIn$; " to convert."
INPUT "Amount: ", InputValue
RETURN

REM ** DisplayResult                 **
REM ** Display results of conversion **
DisplayResult:
CLS
LOCATE 6, 4
PRINT InputValue; " in "; CurrencyIn$; " is equal to"; NewValue; " in "; CurrencyOut$
PRINT "Press any key to continue..."
DO
	A$ = INKEY$
LOOP WHILE A$ = ""
A$ = ""
RETURN