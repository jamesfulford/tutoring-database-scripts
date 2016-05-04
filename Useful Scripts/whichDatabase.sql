clear screen

set linesize 40
set pagesize 30
set underline =

TTITLE LEFT 'Welcome to:'

COLUMN name HEADING ' ' 
COL created HEADING ' '

SELECT name, created FROM v$database;