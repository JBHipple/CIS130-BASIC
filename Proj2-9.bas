REM Joshua Hipple - Project 2.9
REM Determine the sale price of a discounted item.

CLS
GOSUB InputSub
GOSUB CalcSub
GOSUB PrintSub
END

REM ** InputSub Subroutine   **
REM ** Prompt for data input **
InputSub:
CLS
INPUT "What is the item's description"; Description$
INPUT "What is the price of the item"; BasePrice
INPUT "What is the sale percentage"; SalePercent
RETURN

REM ** CalcSub Subroutine        **
REM ** Calculate the sales price **
CalcSub:
Discount = BASEPRICE * (SALEPERCENT / 100)
SalePrice = BASEPRICE - Discount
RETURN

REM ** PrintSub Subroutine   **
REM ** Print out the results **
PrintSub:
CLS
PRINT "The Item's Description is", Description$
PRINT "The Item's Original Price was", "$"; BasePrice
PRINT "The discount on the item was", " "; SalePercent; "%"
PRINT "The Item's sale price is", "",  "$";SalePrice
RETURN
