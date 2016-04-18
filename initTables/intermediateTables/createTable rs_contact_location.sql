CREATE TABLE rs_contact_location
(
contact_Id		CHAR(10) 	NOT NULL REFERENCES contacts(contact_Id),
location_Id		CHAR(5) 	NOT NULL REFERENCES locationList(location_Id),
CONSTRAINT rscl_Id PRIMARY KEY (contact_Id, location_Id)			
) TABLESPACE radiosilence
/