REM Joshua Hipple - Project 10.12
REM Total all the numbers from 1 to 100 and output
CLS
GOSUB FindTotal
GOSUB PrintTotal
END

REM ** FindTotal                                   **
REM ** Find the total of the numbers 1 through 100 **
FindTotal:
Total = 0
FOR Count = 1 TO 100
    Total = Total + COUNT
NEXT Count
RETURN

REM ** PrintTotal                    **
REM ** Print the total to the screen **
PrintTotal:
Print "The total of 1 through 100 is:"; Total
RETURN

DATA 2497, 12500, 2
DATA 3323, 13000, 5
DATA 4521, 18210, 4
DATA 6789, 8000, 2
DATA 5476, 6000, 1
DATA 4423, 16400, 3
DATA 6587, 25000, 4
DATA 3221, 10500, 4
DATA 5555, 15000, 2
DATA 0085, 19700, 3
DATA 3097, 20000, 8
DATA 4480, 23400, 5
DATA 0265, 19700, 2
DATA 8901, 13000, 3