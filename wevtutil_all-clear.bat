@echo off
echo Event Log Clearing...
FOR /F "tokens=1,2*" %%V IN ('bcdedit') DO SET adminTest=%%V
IF (%adminTest%)==(Access) goto theEnd
for /F "tokens=*" %%G in ('wevtutil.exe el') DO (call :do_clear "%%G")
goto theEnd
:do_clear
wevtutil.exe cl %1 >nul
goto :eof
:theEnd
echo Rebooting...
shutdown -r -t 5
