clear screen
clear columns
clear break

set linesize 66
set pagesize 50000
set underline =


	spool "Tutors by Subject.txt"
TTITLE LEFT 'Tutors by Subject' RIGHT 'page' SQL.PNO SKIP 2-

COLUMN CONTACT_ID HEADING 'ID'
COL FIRSTNAME HEADING 'First|Name' FORMAT A12
COL LASTNAME HEADING 'Last|Name' FORMAT A12
COL SUBJECT HEADING 'Subject' FORMAT A40

BREAK ON SUBJECT SKIP PAGE

SELECT SUBJECT, FIRSTNAME, LASTNAME FROM (contacts NATURAL JOIN tutors) NATURAL JOIN (rs_contact_subject NATURAL JOIN subjectList) ORDER BY subject;

	spool off