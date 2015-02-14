REM Joshua Hipple - Project 7.10
REM Use STRING$()to produce a repetition of characters
CLS
GOSUB InitializeVariables
GOSUB ProcessDetail
END

REM ** InitializeVariables                                                        **
REM ** Initialize variables for the character to be repeated and the loop counter **
InitializeVariables:
Iteration = 2
RETURN

REM ** ProcessDetail             **
REM ** Output, increment, repeat **
ProcessDetail:
DO WHILE Iteration <= 16
    GOSUB CreateTheString
    GOSUB PrintTheString
LOOP
GOSUB WaitForInput
RETURN

REM ** CreateTheString            **
REM ** Create the string to print **
CreateTheString:
TheString$ = STRING$(Iteration, "*")
RETURN

REM ** PrintTheString                                     **
REM ** Print the string, increment the interation counter by 2**
PrintTheString:
PRINT TheString$
Iteration = Iteration + 2
RETURN

REM ** WaitForInput                       **
REM ** Waits for input then clears screen **
WaitForInput:
Print "Press any key to clear the screen..."
DO
    A$ = INKEY$
LOOP WHILE A$ = ""
CLS
RETURN
