@REM Script prints the date and time to file and then the results of a tracert to google's public DNS server.
@REM The echo. is just to add in a buffer line (?) for readability.
@REM If you want to e-mail this file/results, look into Blat (http://www.blat.net/)


@REM Set the name of the file to write to (could also set the full path if creating in another directory).
	SET logFileName=tracertLog.txt

	IF NOT EXIST %logFileName% (
		ECHO. 2>%logFileName%
	)

@REM A single ">" will overwrite data in the file, where as ">>" will append.
	ECHO ---------- %date% %time% ---------- >> %logFileName%
	TRACERT 8.8.8.8 >> %logFileName%
	ECHO: >> %logFileName%