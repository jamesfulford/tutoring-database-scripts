clear screen
clear columns
clear break

set linesize 90
set pagesize 30
set underline =


	spool "Contact Information by ID.txt"

TTITLE LEFT 'Contact Information' RIGHT 'page' SQL.PNO SKIP 2-

COLUMN CONTACT_ID HEADING 'ID'
COL FIRSTNAME HEADING 'First|Name' FORMAT A12
COL LASTNAME HEADING 'Last|Name' FORMAT A12
COL PHONENUMBER HEADING 'Phone|Number'
COL EMAILADDRESS HEADING 'Email|Address' FORMAT A40

SELECT FIRSTNAME, LASTNAME, PHONENUMBER, EMAILADDRESS FROM contacts ORDER BY CONTACT_ID;

	spool off