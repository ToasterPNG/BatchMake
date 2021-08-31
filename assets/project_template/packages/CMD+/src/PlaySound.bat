@echo off

if [%1] == [] goto help

set "file=%1"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
if [%2] == [loop] goto loop
goto normal

:normal
start "" /wait /min sound.vbs
del sound.vbs
goto help

:loop
start "" /wait /min sound.vbs
goto loop

:help
echo.
echo PlaySound_Command:
echo.
echo Usage: Plays a mp3 file invisibly for example:
echo.
echo Memphib_PlaySound [Your_Mp3_File_Name]
echo.
echo Other ways of playing sounds:
echo.
echo Loop The Sound:
echo.
echo Memphib_PlaySound [Your_Mp3_File_Name] loop
echo.
