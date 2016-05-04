CREATE USER euler IDENTIFIED BY eleganceIdentified DEFAULT TABLESPACE radiosilence PASSWORD EXPIRE;
GRANT researcher TO euler;
ALTER USER euler DEFAULT ROLE researcher;