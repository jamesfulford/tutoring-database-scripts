clear screen

set linesize 57
set pagesize 50000
set underline =

TTITLE LEFT 'All Tables by Tablespace' RIGHT 'page' SQL.PNO SKIP 2

COLUMN TABLESPACE_NAME HEADING "Tablespace" FORMAT A15
COL TABLE_NAME HEADING "Name" FORMAT A20
COL owner HEADING "Owner" FORMAT A20


BREAK ON TABLESPACE_NAME SKIP PAGE

SELECT owner, table_name, tablespace_name FROM all_tables WHERE tablespace_name!='SYSTEM' and tablespace_name!='SYSAUX' and tablespace_name!='EXAMPLE' and tablespace_name!='USERS' ORDER BY TABLESPACE_NAME;