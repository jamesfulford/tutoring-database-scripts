CREATE USER jamesFulford IDENTIFIED BY theFulfordDataman DEFAULT TABLESPACE radiosilence PASSWORD EXPIRE;
GRANT tutor TO jamesFulford;
ALTER USER jamesFulford DEFAULT ROLE tutor;