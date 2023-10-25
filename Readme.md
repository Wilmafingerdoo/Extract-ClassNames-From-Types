## Pick what you prefer they all give the same basic result.

## Any filename that contains types
Drag and drop a types file onto the "TypesToClassnames.bat" file (in this version it can be any xml with types in the name)
it will then create a file in the original files folder with the name types_ClassNames.txt containing all the classnames from the types. 
If you drop more than one types on it at the same time the classnames will be put into one file

if types_ClassNames.txt already exists in the folder with the types file it will give an error telling you the file already exists.

## XML File Right Click Menu

![](https://github.com/Wilmafingerdoo/Extract-ClassNames-From-Types/blob/main/XML File Right Click Menu/RightClick.png?raw=true)
1)	Put the "TypesToClassnames.bat" file in a folder of your choice,
2)	Open "AddExtractTypesRightClick.reg" file in a text editor,
3)	Change the path in there to the path of the file above,
Optional: you can change the text that is displayed when you right click the xml files.
4)	Once changed save and open the "AddExtractTypesRightClick.reg" file it will add it to the registry.

You will then be able to right click on a types file (it will be there for any xml file) and select "Extract ClassName From Types" (on windows 11 you may need to press "show more options" first)
it will then create a file with the original name followed by _Classnames.txt containing all the classnames from the types.

if you where to try again on the same types it will give an error telling you the file already exists (unless you have deleted it of course)

## Types.xml strict name
Drag and drop a types file onto the "TypesToClassnames.bat" file (in this version it must be named "types.xml")
This version if the "types.xml" file is in the same folder as the "TypesToClassnames.bat" you can just double click it instead of drag and drop.
it will then create a file in the "types.xml" folder with the name types_ClassNames.txt containing all the classnames from the types. 

if types_ClassNames.txt already exists in the folder with the types file it will give an error telling you the file already exists.