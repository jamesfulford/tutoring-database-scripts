CREATE TABLE locationList
(
location_Id 	CHAR(5)		NOT NULL	PRIMARY KEY,
meetingLocation varchar2(80)	UNIQUE	,
address 	varchar2(80)		,
city 		varchar2(40)		,
state 		varchar2(2)
) TABLESPACE radiosilence
/