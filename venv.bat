
@echo off
SETLOCAL
call :getPath "." filename folder



pip install virtualenv > nul 2> nul
color 07

virtualenv venv > nul
Title %filename% (environment activated)
cmd /k venv\Scripts\activate

@echo on
echo v


pause


@REM "%1" %*


:getPath
set "%2=%~nx1"
set "%3=%~dp1"
exit /b


