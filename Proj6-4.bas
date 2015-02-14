REM Joshua Hipple - Project 6.4
REM Output revenue report, subtotaling for each type.
CLS
GOSUB InitializeVariables
GOSUB PrintHeaders
GOSUB ProcessDetail
GOSUB PrintTotals
END

REM ** InitializeVariables                     **
REM ** Initialize variables and line templates **
InitializeVariables:
T1$ = "            YACHT SALES REVENUE REPORT"
H1$ = "YACHT TYPE           SIZE     RATE      CHARTER HOURS    REVENUE"
D1$ = "\                \    ##     ###.##           ##.#       ###,###.##"
ST$ = "              SUBTOTAL                       ###.#       ###,###.##"
RT$ = "          REPORT TOTAL                       ###.#       ###,###.##"
MaxLines = 16
LineCount = 0
RETURN

REM ** PrintHeaders      **
REM ** Print the headers **
PrintHeaders:
CLS
PRINT
PRINT T1$
PRINT
PRINT
PRINT H1$
PRINT
LineCount = 0
RETURN

REM ** ProcessDetail                                           **
REM ** Process through the data, calculate and print to screen **
ProcessDetail:
GOSUB ReadData
YachtType$ = UCASE$(YachtType$)
YachtSave$ = YachtType$
DO UNTIL YachtType$ = "END"
    GOSUB CalculateRevenue
    GOSUB CalculateSubtotal
    IF LineCount >= MaxLines THEN
        PRINT "Press any key to continute..."
        DO
            A$ = INKEY$
        LOOP WHILE A$ = ""
        A$ = ""
        GOSUB PrintHeaders
    END IF
    GOSUB PrintDetail
    GOSUB ReadData
    YachtType$ = UCASE$(YachtType$)
    IF YachtSave$ <> YachtType$ THEN
        GOSUB PrintSubtotal
        YachtSave$ = YachtType$
    END IF
LOOP
RETURN

REM ** ReadData        **
REM ** Reads from data **
ReadData:
READ YachtType$, Size, Rate, Hours
DATA Ranger, 22, 95, 24
DATA Ranger, 22, 69, 12
DATA Wavelength, 24, 69, 6
DATA Wavelength, 24, 89, 12
DATA Catalina, 27, 160, 24
DATA Catalina, 27, 99, 6
DATA Catalina, 30, 190, 12
DATA Catalina, 30, 225, 24
DATA Catalina, 36, 185, 6
DATA Catalina, 36, 320, 24
DATA Coronado, 32, 230, 24
DATA Hobie, 33, 192, 33
DATA Hobie, 33, 235, 24
DATA Hobie, 33, 137, 6
DATA Hobie, 33, 235, 24
DATA C & C, 34, 290, 24
DATA C & C, 34, 175, 6
DATA Hans Christian, 38, 400, 24
DATA Hans Christian, 38, 250, 6
DATA Excaliber, 45, 550, 24
DATA Excaliber, 45, 295, 6
DATA END, 0, 0, 0
RETURN

REM ** CalculateRevenue                      **
REM ** Calculates revenue for current record **
CalculateRevenue:
Revenue = RATE * HOURS
RETURN

REM ** CalculateSubtotal            **
REM ** Adds to the current subtotal **
CalculateSubtotal:
SubHours = SubHours + HOURS
SubRevenue = SubRevenue + Revenue
RETURN

REM ** PrintDetail                                      **
REM ** Prints record to screen, with calculated revenue **
PrintDetail:
PRINT USING D1$; YachtType$, Size, Rate, Hours, Revenue
LineCount = LineCount + 1
RETURN

REM ** PrintSubtotal                                          **
REM ** Prints the subtotal, adds its to total, and zeroes out **
PrintSubtotal:
PRINT
PRINT USING ST$; SubHours, SubRevenue
PRINT
LineCount = LineCount + 3
TotalHours = TotalHours + SubHours
TotalRevenue = TotalRevenue + SubRevenue
SubHours = 0
SubRevenue = 0
RETURN

REM ** PrintTotals         **
REM ** Print report totals **
PrintTotals:
PRINT USING RT$; TotalHours, TotalRevenue
RETURN
