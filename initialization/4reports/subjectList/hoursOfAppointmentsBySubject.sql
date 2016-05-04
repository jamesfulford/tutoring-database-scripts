REMARK WORK IN PROGRESS

clear screen
clear columns
clear break

set linesize 66
set pagesize 50000
set underline =


REMARK	spool "Hours Devoted by Subject.txt"
TTITLE LEFT 'Hours Devoted by Subject' RIGHT 'page' SQL.PNO SKIP 2-

COLUMN CONTACT_ID HEADING 'ID'
COL SUBJECT HEADING 'Subject' FORMAT A40

BREAK ON SUBJECT SKIP 2
COMPUTE TOTAL OF lengthHours ON SUBJECT

REMARK SELECT SUBJECT AS TOTAL FROM logs NATURAL JOIN subjectList ORDER BY subject;

REMARK	spool off