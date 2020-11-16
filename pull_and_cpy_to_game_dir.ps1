

# Główny folder gry - aby skrypt działał musi zostać uzupełniony

$MAIN_GAME_FOLDER = 'A:\Gry\SteamLibrary\steamapps\common\Crusader Kings III\'



$TRANSIFEX_COMPILED_FILES = "$PSScriptRoot\ck3transifex\Spolszczenie_CK3\*"
$CK3_PL_ADDONS = "$PSScriptRoot\ck3_main\*"


if(Test-Path $MAIN_GAME_FOLDER) {
Write-Host "Pobieranie danych z transifex...
Oczekiwanie na zakończenie procesu w oknie CMD.."
Start-Process "$PSScriptRoot\ck3transifex\pull_translations_from_transifex.bat" -WorkingDirectory "$PSScriptRoot\ck3transifex\"  -Wait
Write-Host "Proces zakończony...
Kopiowanie plików spolszczenia do folderu z grą..."
Copy-item -Force -Recurse -Verbose $TRANSIFEX_COMPILED_FILES -Destination $MAIN_GAME_FOLDER
Write-Host "Proces zakończony...
Kopiowanie dodatków do spolszczenia..."
Copy-item -Force -Recurse -Verbose $CK3_PL_ADDONS -Destination $MAIN_GAME_FOLDER
Write-Host "Proces zakończony...

Ukończono instalację plików"
} else {


Write-Host "Podany folder nie istnieje.

Podana ścieżka: $MAIN_GAME_FOLDER 

Proszę podać poprawny folder w skrypcie

"
}

Read-Host -Prompt "Kliknij enter, aby wyjsc"
