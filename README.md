Dodano skrypt automatyzujący instalację spolszczenia w folderze z grą. 

Aby go uruchomić, należy zezwolić na uruchamianie skryptów powershell pobranych z internetu: 
Uruchamiamy powershell jako administrator i wpisujemy: Set-ExecutionPolicy Unrestricted

Otwieramy pull_and_cpy_to_game_dir i edytujemy ścieżkę do głównego folderu gry, zapisujemy.

Następnie klikamy prawym na plik pull_and_cpy_to_game_dir i wybieramy "Run with PowerShell"
Po zakończonym pobieraniu i kopiowaniu należy kliknąć enter w celu potwierdzenia.

Skrypt również sam pobiera dane z transifex i parseruje pliki do formatu pdx yaml

Skrypty proszę edytować programem notepad++ lub innym, który nie zmienia kodowania.