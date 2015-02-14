REM Joshua Hipple - MiniQuiz 3
REM Create a menu system
CLS
DO
	GOSUB DisplayMenu
	SELECT CASE Choice$
		CASE "1"
			GOSUB CISMenu
		CASE "2"
			GOSUB ProgMenu
		CASE "3"
			GOSUB EconMenu
		CASE "4"
			GOSUB PhotoMenu
		CASE ELSE
	END SELECT
LOOP UNTIL Choice$ = "5"
END

REM ** DisplayMenu           **
REM ** Display the main menu **
DisplayMenu:
CLS
PRINT
PRINT
PRINT "  The Best Colleges for Each Major"
PRINT
PRINT
PRINT "          Choose a Major:"
PRINT
PRINT "   1. Computer Information Systems"
PRINT "   2. Computer Programming"
PRINT "   3. Business Economics"
PRINT "   4. Photography"
PRINT "   5. Quit"
PRINT
INPUT " Enter selection: ", Choice$
RETURN

REM ** CISMenu                  **
REM ** Display the list for CIS **
CISMenu:
CLS
PRINT
PRINT 
PRINT "1. Computer Information Systems - Best Schools"
PRINT
PRINT "   a. University of Twilight Zone"
PRINT "   b. Bogus University"
PRINT "   c. State Polymetric University"
PRINT "   d. College of the Loafers"
PRINT "   e. University of the Atlantic"
PRINT
INPUT " Enter selection: ", Selection$
RETURN

REM ** ProgMenu                         **
REM ** Display the list for Programming **
ProgMenu:
CLS
PRINT
PRINT
PRINT "2. Computer Programming - Best Schools"
PRINT
PRINT "   a. California Long-term College"
PRINT "   b. San Rose State University"
PRINT "   c. Romona State University"
PRINT "   d. Southern State University"
PRINT "   e. Bogus University"
PRINT
INPUT " Enter Selection: ", Selection$
RETURN

REM ** EconMenu                                **
REM ** Display the list for Business Economics **
EconMenu:
CLS
PRINT
PRINT
PRINT "3. Busienss Economics - Best Schools"
PRINT
PRINT "   a. Champain College"
PRINT "   b. Golden Bate University"
PRINT "   c. Holy Verbs College"
PRINT "   d. University of Sandy Beach"
PRINT "   e. Woodpecker University"
PRINT
INPUT " Enter Selection: ", Selection$
RETURN

REM ** PhotoMenu                        **
REM ** Display the list for Photography **
PhotoMenu:
CLS
PRINT
PRINT
PRINT "4. Photography - Best Schools"
PRINT
PRINT "   a. Art Center College"
PRINT "   b. Cooks Institute"
PRINT "   c. Coma Linda University"
PRINT "   d. Bills College"
PRINT "   e. University of Twilight Zone"
PRINT
INPUT " Enter Selection: ", Selection$
RETURN