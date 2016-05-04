mkdir ScriptRunner
for /r %%x in (*.sql) do @copy /Y "%%x" ScriptRunner