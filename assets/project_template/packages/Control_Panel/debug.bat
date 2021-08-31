:start
@echo off
cls
cd ..
cd ..
cd enviroment
:loop1 
cls
title Debugger [beta]
echo Debugger:
echo -----------------------------------------------
echo press 1 to Run
echo press 2 to open the Controll Panel
echo -----------------------------------------------
echo.
choice /t 1 /c 123456789q /d q >nul
if %errorlevel% EQU 10 goto loop1
if %errorlevel% EQU 1 goto 1
if %errorlevel% EQU 2 goto 2
if %errorlevel% EQU 3 goto 3
if %errorlevel% GEQ 4 goto end
goto loop1
:1
start main.bat
goto loop1
:2
cd ..
start Control_Panel.bat
cd enviroment
goto loop1
:end
echo %date%
pause
Exit