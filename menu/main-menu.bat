@echo off
cd ..
goto main

:main
cls
mode con:cols=50 lines=10
title BatchMake [pre-beta]
echo BatchMake
echo.
echo Open [1]
echo New [2]
echo.
set /p input=">>> "

if %input% == 1 goto Open
if %input% == 2 goto New
goto main

:Open
cd menu
start projects.bat
exit

:New
cls
echo Project Name:
set /p name=">>> "
goto makeproj

:makeproj
cls
title Making New Project
echo Copying Project Template:
echo.
echo [                             ]
echo.
xcopy /e /i %CD%\assets\project_template %CD%\%name%
cls
echo Moving Files:
echo.
echo [^|^|^|^|                           ]
echo.
move %name% %CD%\projects\%name%
cls
echo Opening Directory:
echo.
echo [^|^|^|^|^|^|^|^|^|^|^|^|^|^|^|^|^|^|^|^|^|^|^|^|^|^|^|^|^|^|^|^|]
echo.
cd projects
start %name%
exit