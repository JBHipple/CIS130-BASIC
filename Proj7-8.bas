REM Joshua Hipple - Project 7.8
REM Slowly reveal a word
CLS
GOSUB InitializeWord
GOSUB ProcessDetail
END

REM ** InitializeWord      **
REM ** Creates word to use **
InitializeWord:
TheWord$ = "ONOMATOPOEIA"
TheLength = LEN(TheWord$)
RETURN

REM ** ProcessDetail                                **
REM ** Iterate a loop, revealing 1 letter at a time **
ProcessDetail:
Position = 1
DO WHILE Position <= TheLength
    GOSUB GetOutput
    GOSUB PrintOutput
LOOP
RETURN

REM ** GetOutput                                         **
REM ** Gets the next line to output, increments position **
GetOutput:
CurrentString$ = LEFT$(TheWord$, Position)
Position = Position + 1
RETURN

REM ** PrintOutput                                **
REM ** Prints current verstion of string fragment **
PrintOutput:
Print CurrentString$
RETURN
