REM Joshua Hipple - Midterm, Project 5.3
REM Create inventory list from data
CLS
GOSUB InitializeVariables
GOSUB PrintHeaders
GOSUB ProcessDetail
GOSUB PrintTotal
END

REM ** Initialize Variables                   **
REM ** Initializes variables and headers used **
InitializeVariables:
T1$ = "                          MODEL CAR INVENTORY"
H1$ = "MANUFACTURER #  YEAR   MAKE    MODEL   DESCRIPTION                 PRICE"
D1$ = "\           \    ##    \     \ \    \   \                      \   ##.##"
TL$ = "                                               TOTAL PRICE:      $$##.##"
PriceTotal = 0
RETURN

REM ** PrintHeaders                    **
REM ** Print the headers to the screen **
PrintHeaders:
PRINT
PRINT T1$
PRINT
PRINT
PRINT H1$
PRINT
RETURN

REM ** ProcessDetail                               **
REM ** Read data, print it to screen, add to total **
ProcessDetail:
GOSUB ReadData
DO UNTIL ManNumber$ = "END"
    GOSUB IncreaseTotal
    GOSUB PrintDetail
    GOSUB ReadData
LOOP
RETURN

REM ** ReadData                                                          **
REM ** Contains data read. ManNumber$, Year, Make$, Model$, Desc$, Price **
ReadData:
READ ManNumber$, Year, Make$, Model$, Desc$, Price
DATA BMR-R79, 49, FIAT, 500B, GILLETTE RAZOR, 7.99
DATA HOTWELS-34, 57, CHEVY, NOMAD, 4/DR STATION WAGON, 12.95
DATA MATCHBX-878, 73, FORD, BRONC, 3/DR 4X4 RED SPARE WHL, 25.99
DATA MATCHBX-72, 69, BUICK, CENTY, YELLOW TAXI, 1.49
DATA BRM-R88, 34, BUGAT, TY575, "RACER, BLACK", 35.00
DATA MATCHBX-25, 80, LINCO, MRKIV, "WHITE, LIMOUSINE", 14.99
DATA LESNEY-Y42, 82, CHEVY, MALBU, 4/DR GREEN PASSENGER, 1.99
DATA HASBRO-119, 75, AMC, GRMLN, "2/DR SEDAN, YELLOW", 1.69
DATA TABY-6332, 71, TOYOT, CELIC, "2/DR SEDAN, BLUE", 2.99
DATA BRM-SY238, 36, ROLRY, SYLVC, "4/DR SEDAN, SILVER-GRAY", 60.00
DATA END, 0, 0, 0, 0, 0
RETURN

REM ** IncreaseTotal                   **
REM ** Add current price to PriceTotal **
IncreaseTotal:
PriceTotal = PriceTotal + PRICE
RETURN

REM ** PrintDetail                           **
REM ** Print information to screen using D1$ **
PrintDetail:
PRINT USING D1$; ManNumber$, Year, Make$, Model$, Desc$, Price
RETURN

REM ** PrintTotal                        **
REM ** Print total price price to screen **
PrintTotal:
PRINT
PRINT USING TL$; PriceTotal
RETURN
