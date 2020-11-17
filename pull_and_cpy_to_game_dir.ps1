

# Główny folder gry - aby skrypt działał musi zostać uzupełniony

$MAIN_GAME_FOLDER = 'A:\Gry\SteamLibrary\steamapps\common\Crusader Kings III\'

$DEBUG_MODE = 0
$LOG_CPY_FILES = 0

$str_article_to_find = '_article:0 "the ‎"'
$str_article_to_replace = '_article:0 "‎"'

$TRANSIFEX_COMPILED_FILES = "$PSScriptRoot\ck3transifex\Spolszczenie_CK3\*"
$CK3_PL_ADDONS = "$PSScriptRoot\ck3_main\*"


if(Test-Path $MAIN_GAME_FOLDER) {

	Write-Host "Pobieranie danych z transifex...
Oczekiwanie na zakończenie procesu w oknie CMD.."
	if(!$DEBUG_MODE) { 
		Start-Process "$PSScriptRoot\ck3transifex\pull_translations_from_transifex.bat" -WorkingDirectory "$PSScriptRoot\ck3transifex\"  -Wait 
	}
	Write-Host "Proces zakończony..."

	$str_article_to_find = '_article:0 "the ‎"'
	$str_article_to_replace = '_article:0 "‎"'

	Get-ChildItem $TRANSIFEX_COMPILED_FILES -Recurse -Filter "*.yml" | ForEach-Object { 
		(Get-Content $_.FullName) -replace $str_article_to_find, $str_article_to_replace | Set-Content -Encoding UTF8 $_.FullName
		Write-Host "Usuwanie przedimka 'the' z pliku: " $_.Name
	}

	Write-Host "Proces zakończony...
Kopiowanie plików spolszczenia do folderu z grą..."

	if($LOG_FILES -And !$DEBUG_MODE)
	{
		Copy-item -Force -Recurse -Verbose $TRANSIFEX_COMPILED_FILES -Destination $MAIN_GAME_FOLDER
		Write-Host "Proces zakończony...
Kopiowanie dodatków do spolszczenia..."
		Copy-item -Force -Recurse -Verbose $CK3_PL_ADDONS -Destination $MAIN_GAME_FOLDER
		Write-Host "Proces zakończony...

Ukończono instalację plików"
	} elseif(!$DEBUG_MODE) {
		Copy-item -Force -Recurse $TRANSIFEX_COMPILED_FILES -Destination $MAIN_GAME_FOLDER
		Write-Host "Proces zakończony...
Kopiowanie dodatków do spolszczenia..."
		Copy-item -Force -Recurse $CK3_PL_ADDONS -Destination $MAIN_GAME_FOLDER
		Write-Host "Proces zakończony...

Ukończono instalację plików"
	
	}

} else {


Write-Host "Podany folder z grą nie istnieje.

Podana ścieżka: $MAIN_GAME_FOLDER 

Proszę podać poprawny folder w skrypcie

"
}

Read-Host -Prompt "Kliknij enter, aby wyjsc"
