@echo off
color c
::Check If Its Safe To Create File.
:CheckForFile
if exist "ClassNames.txt" goto FileExists
if NOT exist "ClassNames.txt" goto FileDoesNotExist

::Not Safe, File Already Exists.
:FileExists
echo ClassNames.txt already exists in folder, stopped to avoid issues.
pause
exit

::Safe, File Dosnt Already Exist. but is it a types
:FileDoesNotExist
if exist "*types*.xml" goto TypesFile
if NOT exist "*types*.xml" goto NotTypesFile

:NotTypesFile
echo Not a types file or no types file in this folder.
pause
exit

:TypesFile
find /I "type name=" %* > TempResult.txt 

for /f tokens^=2delims^=^" %%a in (TempResult.txt) do @echo %%a >>ClassNames.txt

del "TempResult.txt"
