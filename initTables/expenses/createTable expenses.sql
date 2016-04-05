CREATE TABLE expenses
( 
	expense_Id 	char(13)	NOT NULL,
	expenseList_Id 	char(4)		NOT NULL,
	costCents	int			,
	taxCents	int			,
	object 		varchar2(80)		,
	quantity 	int
) TABLESPACE radiosilence
/
