clear screen
clear columns
clear break

set linesize 62
set pagesize 50000
set underline =


	spool "Expenses by Expense Type.txt"

TTITLE LEFT 'Expenses By Type' RIGHT 'page' SQL.PNO SKIP 2-

COLUMN TYPE HEADING 'Expense Type' FORMAT A20
COL DATEINCURRED HEADING 'Date' FORMAT A11
COL OBJECT HEADING 'Item' FORMAT A20
COL COST HEADING 'Debit' FORMAT $999.99

BREAK ON TYPE SKIP PAGE
COMPUTE SUM LABEL 'Total' OF COST ON TYPE

SELECT TYPE, DATEINCURRED, OBJECT, COST FROM expenseList NATURAL JOIN expenses ORDER BY EXPENSELIST_ID;

	spool off