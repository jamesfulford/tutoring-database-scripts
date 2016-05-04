CREATE TABLE logs
( 
	log_Id 			CHAR(12)	NOT NULL	PRIMARY KEY,
	whenStarted		TIMESTAMP			,
	appointmentMadeOn 	DATE				,
	lengthHours 	 	NUMBER(*, 1)			,
	contact_Id 		CHAR(10)	NOT NULL REFERENCES contacts(contact_Id),
	subject_Id 		CHAR(5)		NOT NULL REFERENCES subjectList(subject_Id),
	tutor_Id 		CHAR(5)		NOT NULL REFERENCES tutors(tutor_Id),
	location_Id 		CHAR(5)		NOT NULL REFERENCES locationList(location_Id),
	rate			NUMBER(*, 2)			,
	discount		NUMBER(*, 2)			
) TABLESPACE radiosilence
/
