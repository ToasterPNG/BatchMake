@echo off
title Building-Project
cd ..
cd ..
echo D|xcopy /S /I /Q /Y /F enviroment build
cd build
set /p code=<main.bat
echo (
echo title BatchMake Project
%code%
)>main.bat
cd ..
move %CD%\build-tools\bat2exe.exe %CD%\build\bat2exe.exe
cd build
bat2exe /bat main.bat /exe main.exe /64
del main.bat
cd ..
move %CD%\build\bat2exe.exe %CD%\build-tools\bat2exe.exe
echo Done Compiling
pause >nul