clear screen

set linesize 57
set pagesize 50000
set underline =

TTITLE LEFT 'All Users by Date Created' RIGHT 'page' SQL.PNO SKIP 2

COLUMN CREATED HEADING 'Date|Created'
COL USERNAME HEADING 'Name' FORMAT A15

BREAK ON CREATED SKIP PAGE


SELECT CREATED, USERNAME FROM all_users WHERE USER_ID > 90 AND USERNAME!='XS$NULL' ORDER BY CREATED;