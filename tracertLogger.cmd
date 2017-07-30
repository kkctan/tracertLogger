    @ECHO OFF
@REM Script prints the date and time to file and then the results of a tracert to google's public DNS server.
@REM The echo. is just to add in a buffer line (?) for readability.
@REM If you want to e-mail this file/results, look into Blat (http://www.blat.net/)

@REM The "@" symbol is used to suppress the printing of the 
@REM Set the name of the file to write to (could also set the full path if creating in another directory).
@REM Also set the IP address of the server you wish to trace to.

@REM If the 1st parameter (%0 is the tracertLogger.cmd call, program/script call) is an empty string, default.
@REM Else set the logFileName to the 1st parameter, the tilde (~) removes the double quotes on the string
@REM type which is automatically added (?) on the parameters when accessed using the %1.
    SET defaultFileName=test1.txt
    SET defaultTargetIP=8.8.8.8
    
    IF "%1"=="" (
        SET logFileName=%defaultFileName%
    ) ELSE (
        SET logFileName=%~1
    )
    
@REM Same set up as the above if statement but checks for a second optional parameter of target IP address.
    IF "%2"=="" (
        SET targetIP=%defaultTargetIP%
    ) ELSE (
        SET targetIP=%~2
    )
    
	IF NOT EXIST %logFileName% (
		ECHO. 2>%logFileName%
	)

@REM A single ">" will overwrite data in the file, where as ">>" will append.
    ECHO ON
	ECHO ---------- %date% %time% ---------- >> %logFileName%
	TRACERT %targetIP% >> %logFileName%
	@ECHO: >> %logFileName%