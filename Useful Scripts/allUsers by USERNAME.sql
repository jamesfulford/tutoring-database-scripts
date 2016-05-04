clear screen

set linesize 57
set pagesize 30
set underline =

TTITLE LEFT 'All Users by Name' RIGHT 'page' SQL.PNO SKIP 2

COLUMN USERNAME HEADING 'Name' FORMAT A15
COL CREATED HEADING 'Date|Created'

SELECT * FROM all_users WHERE USER_ID > 90 AND USERNAME!='XS$NULL' ORDER BY USERNAME;