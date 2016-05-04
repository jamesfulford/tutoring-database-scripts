CREATE TABLE expenses
( 
	expense_Id 	CHAR(13)	NOT NULL	PRIMARY KEY,
	expenseList_Id 	CHAR(4)		NOT NULL REFERENCES expenseList(expenseList_Id),
	cost		NUMBER(*,2)		,
	tax		NUMBER(*,2)		,
	object 		varchar2(80)		,
	dateIncurred	DATE			,
	personClaimed	CHAR(10)	NOT NULL REFERENCES contacts(contact_Id),
	source		varchar2(80)		,
	quantity 	INTEGER
) TABLESPACE radiosilence
/
