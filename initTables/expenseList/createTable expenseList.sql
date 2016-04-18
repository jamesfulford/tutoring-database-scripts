CREATE TABLE expenseList
(
expenseList_Id 	CHAR(4) 	NOT NULL	PRIMARY KEY,
type		varchar2(40)	UNIQUE,
description 	varchar2(255)
) TABLESPACE radiosilence
/