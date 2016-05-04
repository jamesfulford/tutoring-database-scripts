CREATE TABLE payments
( 
	payment_Id 	CHAR(13) 	NOT NULL	PRIMARY KEY,
	datePaid 	DATE				,
	amount	 	NUMBER(*, 2)			,
	contact_Id 	CHAR(10)	NOT NULL REFERENCES contacts(contact_Id)	
) TABLESPACE radiosilence
/
