:: BUILDER SETTINGS
set charset="empty"
set parser_version="0.1.11"
java -jar "..\\tools\\LocaleParser\\bin\\LocaleParser-%parser_version%-SNAPSHOT.jar" "folder_to_eu4" "pl" "wynik" "%charset%"
pause