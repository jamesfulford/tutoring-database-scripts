clear screen

set linesize 66
set pagesize 50000
set underline =


	spool C:\Users\James\Desktop\Oracle\tutoringSchema\radiosilence\reports/subjectByTutor.txt

TTITLE LEFT 'Locations By Contact' RIGHT 'page' SQL.PNO SKIP 2-

COLUMN CONTACT_ID HEADING 'ID'
COL FIRSTNAME HEADING 'First|Name' FORMAT A12
COL LASTNAME HEADING 'Last|Name' FORMAT A12
COL SUBJECT HEADING 'Meeting|Location' FORMAT A40

BREAK ON LASTNAME SKIP PAGE ON FIRSTNAME SKIP 2

SELECT FIRSTNAME, LASTNAME, SUBJECT FROM NATURAL JOIN subjectList (rs_contact_subject NATURAL JOIN (contacts NATURAL JOIN tutors)) ORDER BY LASTNAME;

	spool off