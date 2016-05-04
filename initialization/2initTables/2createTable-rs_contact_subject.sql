CREATE TABLE rs_contact_subject
(
contact_Id		CHAR(10) 	NOT NULL REFERENCES contacts(contact_Id),
subject_Id		CHAR(5) 	NOT NULL REFERENCES subjectList(subject_Id),			
CONSTRAINT rscs_Id PRIMARY KEY (contact_Id, subject_Id)
) TABLESPACE radiosilence
/