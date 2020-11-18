

# Główny folder gry - aby skrypt działał musi zostać uzupełniony

$MAIN_GAME_FOLDER = 'A:\Gry\SteamLibrary\steamapps\common\Crusader Kings III\'

# DEBUG MODE - nie pobiera danych z transifexa oraz nie kopiuje plików do folderu z grą.
$DEBUG_MODE = 0
# Jeśli chcesz widzieć jakie pliki są kopiowane - włącz tą opcję
$LOG_CPY_FILES = 0
# Jeśli chcesz użyć nowszego cli transifexa i pominąć stare skrypty zmień na 1
#$TEST_MODE = 0

$str_article_to_find_2 = '_article:0 "the "'
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

	Get-ChildItem $TRANSIFEX_COMPILED_FILES -Recurse -Filter "*.yml" | ForEach-Object { 
		(Get-Content $_.FullName) -replace $str_article_to_find_2, $str_article_to_replace  | Set-Content -Encoding UTF8 $_.FullName
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

Read-Host -Prompt "Kliknij enter, aby wyjść"
