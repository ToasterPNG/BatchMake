@echo off
goto checks

:checks
mode con:cols=50 lines=10
cd packages
cd Control_Panel
goto main

:main
cls
title BatchMake-ControlPanel [1.0]
echo Control Panel
echo.
set /p input=" > "
if %input% == import goto SpecialCommand
goto DeafultCommand

:SpecialCommand
set /p package="package > "
echo %package%>package.txt
start import.bat
goto main

:DeafultCommand
start %input%
echo %input%>command.txt
goto main