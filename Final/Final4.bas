REM Joshua Hipple - Final - Question 4
REM Calculate Exam averages
CLS
GOSUB InitializeVariables
GOSUB PrintHeaders
GOSUB ProcessDetail
GOSUB CalcTotals
GOSUB PrintTotals
END

REM ** InitializeVariables **
InitializeVariables:
T1$ = "    Class Exam Averages"
H1$ = "Student             Exam 1    Exam 2    Exam 3      Average    Letter Grade"
D1$ = "\               \     ##        ##        ##          ##            \ \"
D2$ = "Class Averages        ##        ##        ##          ##            \ \"
Exam1Total = 0
Exam2Total = 0
Exam3Total = 0
NumOfStudents = 0
RETURN

REM ** PrintHeaders **
PrintHeaders:
PRINT
PRINT
PRINT T1$
PRINT
PRINT
PRINT H1$
RETURN

REM ** ProcessDetail **
ProcessDetail:
GOSUB ReadData
DO UNTIL UCASE$(Name$) = "END"
    GOSUB IncrementTotals
    GOSUB CalcAverage
    GOSUB FindLetterGrade
    GOSUB PrintDetail
    GOSUB ReadData
LOOP
RETURN

REM ** ReadData **
ReadData:
READ Name$, Exam1, Exam2, Exam3
DATA "Jo Smith", 70, 80, 90
DATA "Ed Lynn", 40, 65, 59
DATA "Richard Johnson", 86, 93, 72
DATA "Linda Harris", 95, 75, 86
DATA "Wendy Williams", 77, 83, 78
DATA "David Rudolph", 55, 83, 78
DATA "END", 0, 0, 0
RETURN

REM ** IncrementTotals **
IncrementTotals:
NumOfStudents = NumOfStudents + 1
Exam1Total = Exam1Total + EXAM1
Exam2Total = Exam2Total + EXAM2
Exam3Total = Exam3Total + EXAM3
RETURN

REM ** CalcAverage **
CalcAverage:
ExamAverage = (EXAM1 + EXAM2 + EXAM3) / 3
RETURN

REM ** FindLetterGrade **
FindLetterGrade:
IF ExamAverage >= 90 THEN
    LetterGrade$ = "A"
    ELSEIF ExamAverage >= 80 THEN
    LetterGrade$ = "B"
    ELSEIF ExamAverage >= 70 THEN
    LetterGrade$ = "C"
    ELSEIF ExamAverage >= 60 THEN
    LetterGrade$ = "D"
    ELSE
    LetterGrade$ = "F"
END IF
RETURN

REM ** PrintDetail **
PrintDetail:
PRINT USING D1$; Name$, Exam1, Exam2, Exam3, ExamAverage, LetterGrade$
RETURN

REM ** CalcTotals **
CalcTotals:
Exam1Average = Exam1Total / NumOfStudents
Exam2Average = Exam2Total / NumOfStudents
Exam3Average = Exam3Total / NumOfStudents
ExamAverage = (Exam1Average + Exam2Average + Exam3Average) / 3
GOSUB FindLetterGrade
RETURN

REM ** PrintTotals **
PrintTotals:
PRINT
PRINT USING D2$; Exam1Average, Exam2Average, Exam3Average, ExamAverage, LetterGrade$
RETURN
