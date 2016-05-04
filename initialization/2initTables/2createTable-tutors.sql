CREATE TABLE tutors
(
tutor_Id		CHAR(5) 	NOT NULL 	PRIMARY KEY,
contact_Id		CHAR(10) 	NOT NULL 	REFERENCES contacts(contact_Id),
hired			DATE
) TABLESPACE radiosilence
/