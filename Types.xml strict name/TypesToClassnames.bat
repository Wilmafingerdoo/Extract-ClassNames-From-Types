@echo off
color c
::Check If Its Safe To Create File.
:CheckForFile
if exist "types_ClassNames.txt" goto FileExists
if NOT exist "types_ClassNames.txt" goto FileDoesNotExist

::Not Safe, File Already Exists, Exit.
:FileExists
echo types_ClassNames.txt already exists in folder, stopped to avoid issues.
pause
exit

::Safe, File Dosnt Already Exist. but is it a types.
:FileDoesNotExist
if exist "types.xml" goto TypesFile
if NOT exist "types.xml" goto NotTypesFile

::File is not a types file, Exit.
:NotTypesFile
echo Not a types file or no types file in this folder.
pause
exit

::File is a types file, Continue.
:TypesFile
find /I "type name=" types.xml > TempResult.txt 
echo Found all lines containing "type name=" and put them in a temporary text file.
echo _

for /f tokens^=2delims^=^" %%a in (TempResult.txt) do @echo %%a >>types_ClassNames.txt
echo Removed all text other than what is between quotation marks, and put the classnames in types_ClassNames.txt in the source folder.
echo _

del "TempResult.txt"
echo Deleted temporary text file
color a
echo _
echo Done!!
pause