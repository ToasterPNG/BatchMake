title Copying Package
set /p pack=<package.txt
cd ..
cd ..
echo D|xcopy /S /I /Q /Y /F %CD%\packages\%pack% %CD%\enviroment\%pack%
title Extracting Packages Files
move %CD%\enviroment\%pack%\*.* %CD%\enviroment
cd enviroment
if exist packages goto movetopack
mkdir packages
cd pack
goto movetopack

:movetopack
move %CD%\%pack% %CD%\packages\%pack%

set /p dontcopy=<dontcopy.cfg
del dontcopy.cfg
del %dontcopy%
del %pack%
cd ..
pause