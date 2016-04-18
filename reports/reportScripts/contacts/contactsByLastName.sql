clear screen

set linesize 90
set pagesize 30
set underline =


	spool C:\Users\James\Desktop\Oracle\tutoringSchema\radiosilence\reports/contactsByLastName.txt

TTITLE LEFT 'Contact Information' RIGHT 'page' SQL.PNO SKIP 2-

COLUMN CONTACT_ID HEADING 'ID'
COL FIRSTNAME HEADING 'First|Name' FORMAT A12
COL LASTNAME HEADING 'Last|Name' FORMAT A12
COL PHONENUMBER HEADING 'Phone|Number'
COL EMAILADDRESS HEADING 'Email|Address' FORMAT A40

SELECT FIRSTNAME, LASTNAME, PHONE NUMBER, EMAILADDRESS FROM contacts ORDER BY LASTNAME;

	spool off