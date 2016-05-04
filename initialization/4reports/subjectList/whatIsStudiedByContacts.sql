clear screen
clear columns
clear break

set linesize 66
set pagesize 50000
set underline =


	spool "What Is Studied By Contacts.txt"
TTITLE LEFT 'What Is Studied By Contacts' RIGHT 'page' SQL.PNO SKIP 2-

COLUMN CONTACT_ID HEADING 'ID'
COL FIRSTNAME HEADING 'First|Name' FORMAT A12
COL LASTNAME HEADING 'Last|Name' FORMAT A12
COL SUBJECT HEADING 'Subject' FORMAT A40

BREAK ON SUBJECT SKIP PAGE ON FIRSTNAME SKIP 2
COMPUTE COUNT OF SUBJECT ON SUBJECT

SELECT SUBJECT, FIRSTNAME, LASTNAME FROM contacts NATURAL JOIN (rs_contact_subject NATURAL JOIN subjectList) ORDER BY subject;

	spool off