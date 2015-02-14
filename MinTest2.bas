REM Joshua Hipple - Mini Test #2
REM Take input via Read Data statements, calculate cost, output to screen
CLS
GOSUB InitializeVariables
GOSUB PrintHeaders
GOSUB ProcessDetail
GOSUB PrintTotals
END

REM ** InitializeVariables                         **
REM ** Initialize headers and variables to be used **
InitializeVariables:
T1$ = "                 Rampage Seminars Inc."
T2$ = "                  Client Price Report"
H1$ = "Client Name              Number of Attendees     Price"
D1$ = "\                     \           ##            $$###"
TL$ = "               Total:            ###            $####"
RETURN

REM ** PrintHeaders      **
REM ** Print the headers **
PrintHeaders:
PRINT
PRINT T1$
PRINT T2$
PRINT
PRINT
PRINT H1$
PRINT
RETURN

REM ** ProcessDetail                                          **
REM ** Calculate cost based on dynamic price, print to screen **
ProcessDetail :
GOSUB ReadData
Name$ = UCASE$(Name$)
DO UNTIL Name$ = "END"
    GOSUB CalculatePrice
    GOSUB PrintDetails
    GOSUB ReadData
LOOP
RETURN

REM ** ReadData                                           **
REM ** Read from data statements into Name$ and Attendees **
ReadData:
READ Name$, Attendees
DATA ABC Company, 5
DATA NBC Corporation, 7
DATA XLR Company, 8
DATA Lucent Corp, 12
DATA Ameritech, 3
DATA Rambo Mart, 0
DATA END, 0
RETURN

REM ** CalculatePrice                                        **
REM ** Calculates price, saves to Price, adds Price to Totals**
CalculatePrice:
IF Attendees < 1 THEN
    Price = ATTENDEES * 0
    ELSEIF Attendees < 5 THEN
    Price = ATTENDEES * 100
    ELSEIF Attendees < 11 THEN
    Price = ATTENDEES * 80
    ELSE
    Price = ATTENDEES * 60
END IF
AttendeesTotal = AttendeesTotal + ATTENDEES
PriceTotal = PriceTotal + Price
RETURN
 
REM ** PrintDetails                                                 **
REM ** Print company info and cost from Name$, Attendees, and Price **
PrintDetails:
PRINT USING D1$; Name$, Attendees, Price
RETURN

REM ** PrintTotals                                                        **
REM ** Print the totals to the screen from AttendeesTotal, and PriceTotal **
PrintTotals:
PRINT
PRINT USING TL$; AttendeesTotal, PriceTotal
RETURN
