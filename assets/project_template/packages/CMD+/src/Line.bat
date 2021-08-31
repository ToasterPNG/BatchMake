@echo off

if [%1] == [] goto usage
if [%2] == [] goto usage

call :print_line %1 %2
goto :eof

REM
REM print_line
REM Prints the first non-blank %1 lines in the file %2.
REM
:print_line
setlocal EnableDelayedExpansion
set /a counter=0

for /f ^"usebackq^ eol^=^

^ delims^=^" %%a in (%2) do (
        if "!counter!"=="%1" goto :eof
        echo %%a
        set /a counter+=1
)

goto :eof

:usage
echo.
echo Line_Command:
echo.
echo Usage: Line command is used to get only one line from a file
echo for example:
echo.
echo line 1 [Your_Text_Files_Name]
echo.