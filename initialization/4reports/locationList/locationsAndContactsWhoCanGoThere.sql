clear screen
clear columns
clear break

set linesize 66
set pagesize 50000
set underline =


	spool "Locations and Contacts that can go there.txt"

TTITLE LEFT 'Locations and Contacts that can go there' RIGHT 'page' SQL.PNO SKIP 2-

COLUMN CONTACT_ID HEADING 'ID'
COL FIRSTNAME HEADING 'First|Name' FORMAT A12
COL LASTNAME HEADING 'Last|Name' FORMAT A12
COL MEETINGLOCATION HEADING 'Meeting|Location' FORMAT A40

BREAK ON MEETINGLOCATION SKIP PAGE ON FIRSTNAME SKIP 2

SELECT MEETINGLOCATION, FIRSTNAME, LASTNAME FROM contacts NATURAL JOIN (rs_contact_location NATURAL JOIN locationList) ORDER BY MEETINGLOCATION;

	spool off