James P. Fulford
05/03/2016

This database is designed to help my tutoring business with recordskeeping. We are called "Radiosilence."

BEFORE INITIALIZING THIS DATABASE, please read my instructions.

	1. Open (do not run) the file "2 Initialize Tablespace.sql"
	2. On the line that says "CREATE TABLESPACE radiosilence DATAFILE ...,
		Change the filepath to match your situation.
		(If you look in app/User/oradata/orcl , you will find other .dbf files, each with the name of a tablespace.)
	3. Take care when closing this file.

TO INITIALIZE THIS DATABASE:

	1. Run "1 (Re)Compile From Initialize.bat". 
		It will create a new directory and move all the initialization files to it, so they can see each other.
	2. Run "000 0 Initialize Tablespace.sql" (look inside the new directory)

AVOID:
	- Changing column, table, role, or tablespace names. (Kinda makes things tough for scripts to reference things if they have different names!)
	- Removing or renaming scripts inside of initialization directory.
	- Fiddling with the formulas in the Excel Spreadsheet. (Insert statements get grumpy that way)
	- Committing Oracle-icide (generally not a good idea)
	

FEEL FREE TO:
	- Change the contents of the loadData files using the provided excel spreadsheet as a formatting guide.
	- Add more reports.
