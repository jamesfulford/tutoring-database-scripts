SET LINESIZE 100

TTITLE CENTER 'Tax Summary' SKIP 1 -
LEFT 'Radio Silence Tutoring'-
RIGHT 'Accounting Department' SKIP 1-

CENTER '==============================================================================================================' SKIP 2-
RIGHT 'Page ' FORMAT 999 SQL.PNO

COLUMN expenseList_Id HEADING 'Schedule C' FORMAT 



SELECT expenses.costCents/100, expenses.object
