CREATE USER jobs IDENTIFIED BY theMacBeatLisa DEFAULT TABLESPACE radiosilence PASSWORD EXPIRE;
GRANT marketer TO jobs;
ALTER USER jobs DEFAULT ROLE marketer;