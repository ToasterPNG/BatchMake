@echo off
cls
st /p null=<null.txt
goto main

:exit
cd ..
cd menu
start main-menu.bat
exit

:main
mode con:cols=50 lines=10
title BatchMake [pre-beta]
echo.
echo Projects:
echo.
cd ..
cd projects
dir /a:d /b > projects.txt
set /p projects=<projects.txt
echo %projects%
echo.
echo Exit [1]
echo.

set /p input=">>> "

if %input% == 1 goto exit
start %input%
goto main

:no_proj
echo There is no projects yet
pause