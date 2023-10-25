@echo off
color c

::Check If Its Safe To Create File.
:CheckForFile
if exist "%*_ClassNames.txt" goto FileExists
if NOT exist "%*_ClassNames.txt" goto TypesFile

::Not Safe, File Already Exists. Display Message And Stop.
:FileExists
echo Trying to create a file that already exists in folder, stopped to avoid issues.
pause
exit

:: Safe, File Dosnt Already Exist.
:TypesFile
:: Put All Lines With "type name=" Into Temp File. 
find /I "type name=" %* > TempResult.txt 

:: Extract Only String Between Quotes From Those Lines And Save To New File.
for /f tokens^=2delims^=^" %%a in (TempResult.txt) do @echo %%a >>%*_ClassNames.txt

:: Delete Temp File.
del "TempResult.txt"