clear screen
clear columns
clear break

set linesize 66
set pagesize 50000
set underline =


	spool "Where Each Contact Can Meet.txt"

TTITLE LEFT 'Where Each Contact Can Meet' RIGHT 'page' SQL.PNO SKIP 2-

COLUMN CONTACT_ID HEADING 'ID'
COL FIRSTNAME HEADING 'First|Name' FORMAT A12
COL LASTNAME HEADING 'Last|Name' FORMAT A12
COL MEETINGLOCATION HEADING 'Meeting|Location' FORMAT A40

BREAK ON LASTNAME SKIP PAGE ON FIRSTNAME SKIP 2

SELECT FIRSTNAME, LASTNAME, MEETINGLOCATION FROM locationList NATURAL JOIN (rs_contact_location NATURAL JOIN contacts) ORDER BY LASTNAME;

	spool off