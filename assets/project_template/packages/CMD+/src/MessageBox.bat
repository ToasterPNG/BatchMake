@echo off

if [%1] == [] goto help

set "title=%1"
set "text=%3"
set "key=%2"
echo x=msgbox("%text%" ,%key%, "%title%") >msgBox.vbs
goto normal

:normal
start msgBox
goto NA


:help
echo.
echo MessageBox_Command:
echo.
echo Usage: Makes a message box:
echo.
echo MessageBox [title] [key] [text]
echo.
echo Key:
echo.
echo 0 =OK button only
echo.
echo 1 =OK and Cancel buttons
echo.
echo 2 =Abort, Retry, and Ignore buttons
echo.
echo 3 =Yes, No, and Cancel buttons
echo.
echo 4 =Yes and No buttons
echo.
echo 5 =Retry and Cancel buttons
echo.
echo 16 =Critical Message icon3
echo.
echo 2 =Warning Query icon
echo.
echo 48 = Warning Message icon
echo.
echo 64 =Information Message icon
echo.

:NA