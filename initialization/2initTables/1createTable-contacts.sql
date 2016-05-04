CREATE TABLE contacts
(
contact_Id 		CHAR(10) 	NOT NULL PRIMARY KEY,
firstName 		varchar2(80)			,
lastName		varchar2(80)			,
emailAddress		varchar2(80)			,
phoneNumber		varchar2(12)			,
rateOffered		NUMBER(*,2)
) TABLESPACE radiosilence
/