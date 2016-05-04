CREATE USER rainman IDENTIFIED BY autismSpectre DEFAULT TABLESPACE radiosilence PASSWORD EXPIRE;
GRANT accountant TO rainman;
ALTER USER rainman DEFAULT ROLE accountant;