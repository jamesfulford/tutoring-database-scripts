clear screen
clear columns
clear break

set linesize 136
set pagesize 50000
set underline =


	spool "Expenses by Person Claimed.txt"

TTITLE LEFT 'Expenses by Person Claimed' RIGHT 'page' SQL.PNO SKIP 2-

COL FIRSTNAME HEADING 'Ordered by' FORMAT A20
COL LASTNAME HEADING '' FORMAT A20
COL DATEINCURRED HEADING 'Date' FORMAT A11
COLUMN TYPE HEADING 'Expense Type' FORMAT A20
COL OBJECT HEADING 'Item' FORMAT A20
COL COST HEADING 'Debit' FORMAT $999.99
COL QUANTITY HEADING 'Number'
COL SOURCE HEADING 'Supplier' FORMAT A20

COMPUTE SUM LABEL 'Total' OF COST ON FIRSTNAME
BREAK ON FIRSTNAME SKIP PAGE ON LASTNAME SKIP 1


SELECT FIRSTNAME, LASTNAME, DATEINCURRED, TYPE, OBJECT, COST, QUANTITY, SOURCE FROM (expenseList NATURAL JOIN expenses) JOIN contacts ON contacts.contact_Id=expenses.personclaimed ORDER BY contact_Id, DATEINCURRED, TYPE;
	spool off