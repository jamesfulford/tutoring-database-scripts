CREATE TABLE logs
( 
	log_Id 			char(12)	NOT NULL	,
	date			int				,
	appointmentMadeOn 	int				,
	timeStart	 	FLOAT				,
	lengthHours 	 	FLOAT				,
	contact_Id 		char(10)	NOT NULL	,
	subject_Id 		char(5)		NOT NULL	,
	tutor_Id 		char(5)		NOT NULL	,
	location_Id 		char(5)		NOT NULL	,
	rateCents		int				,
	discountCents		int
) TABLESPACE radiosilence
/
