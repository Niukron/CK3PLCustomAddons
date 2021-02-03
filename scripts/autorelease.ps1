
# Skrypt przygotowany dla DEBIAN 10



#DEBUG OPTIONS
$TX_PULL = 1
$PARSE_FILES = 1
$RELEASE_DEBUG = 0

$github_latest_release_info = Invoke-RestMethod https://api.github.com/repos/Niukron/Crusader-Kings-3-Spolszczenie/releases/latest
Set-Location -Path /home/sammy/CK3SpolszczenieSkrypty/




#$USERPROFILE = $env:USERPROFILE

# Domyślny folder z modami
#$CK3_MOD_FOLDER = "$USERPROFILE\Documents\Paradox Interactive\Crusader Kings III\mod\"
# Automatycznie skopiować do folderu z grą?
$AUTO_CPY_TO_CK3_MOD_FOLDER = 0
$ASK_TO_CPY_TO_MOD_FOLDER = 0

# DEBUG MODE - nie pobiera danych z transifexa oraz nie kopiuje plików do folderu z grą.
$DEBUG_MODE = 0

# Automatycznie podnoś wersję moda - ustawić na 0 w trybie dev

$INCREMENT_BUILD_VERSION = 0

$MOD_NAME_FOLDER = "CK3Spolszczenie"

$MOD_NAME = "Crusader Kings III Spolszczenie"

$RELEASE_DESC = "**UWAGA: Jest to codzienna aktualizacja, która nie jest dogłębnie sprawdzana pod kątem zawartości błędów.\r\n*Aby doświadczyć stabilnej rozgrywki, proszę zaczekać na cotygodniową aktualizację, która wydawana jest w każdy piątek około godziny 18:00***"

$SUPPORTED_GAME_VERSIONS = "1.2.*"
$REMOTE_FILE_ID = "2302141098" # STEAM ID - sharedfiles/filedetails/?id=[TO]
$MOD_VERSION = ""

$TRANSIFEX_COMPILED_FILES = "/home/sammy/CK3SpolszczenieSkrypty/CK3PLCustomAddons/ck3transifex/Spolszczenie_CK3/*"
$CK3_PL_ADDONS = "/home/sammy/CK3SpolszczenieSkrypty/CK3PLCustomAddons/ck3_main/*"
$MOD_FOLDER = "/home/sammy/CK3SpolszczenieSkrypty/CK3PLCustomAddons/ck3_files_to_release/"

$str_article_to_find_2 = '_article:0 "the "'
$str_article_to_find = '_article:0 "the"'
$str_article_to_replace = '_article:0 ""'

$OLD_MOD_VERSION = $MOD_VERSION
$auto_version_increase_in_file = 0

$GIT_FILES_URL = "https://github.com/Niukron/CK3PLCustomAddons/archive/main.zip"
$version_on_github = Invoke-RestMethod https://raw.githubusercontent.com/Niukron/CK3PLCustomAddons/main/version
$ask_to_version_update = 0

function Github-Release {
	
		Write-Host "Kopiowanie plików moda do folderu repozytorium..."
		Copy-item -Force -Recurse "/home/sammy/CK3SpolszczenieSkrypty/CK3PLCustomAddons/ck3_files_to_release/*" -Destination "/home/sammy/CK3SpolszczenieSkrypty/Crusader-Kings-3-Spolszczenie/"
		Set-Location -Path /home/sammy/CK3SpolszczenieSkrypty/Crusader-Kings-3-Spolszczenie/
	if(!$RELEASE_DEBUG) {
		git add .
		$comment = "Update v$MOD_VERSION-daily"
		git commit -a -m $comment
		#UZUPEŁNIĆ TOKEN
		git push -f https://TOKEN@github.com/Niukron/Crusader-Kings-3-Spolszczenie.git --all
		Write-Host "Tworzenie paczki release..."
		
		
		$tag_version = "v"+$MOD_VERSION+"-daily"

		$postParams = '{"tag_name":"'+$tag_version+'","name":"Crusader Kings III Spolszczenie", "body":"**UWAGA: Jest to codzienna aktualizacja, która nie jest dogłębnie sprawdzana pod kątem zawartości błędów.\r\n*Aby doświadczyć stabilnej rozgrywki, proszę zaczekać na cotygodniową aktualizację, która wydawana jest w każdy piątek około godziny 18:00***"}'
		#UZUPEŁNIĆ TOKEN
		Invoke-WebRequest -Uri https://api.github.com/repos/Niukron/Crusader-Kings-3-Spolszczenie/releases?access_token=TOKEN -Method POST -ContentType 'application/json; charset=utf-8' -Body $postParams 
		
		Write-Host "Wersja $tag_version została wydana..."
	} else {
		Write-Host "Pominięto wydanie, tryb debugowania włączony"
	}
}

function Start-Config {
	
	Set-Location -Path /home/sammy/CK3SpolszczenieSkrypty/CK3PLCustomAddons/
	git reset --hard
	git pull
	Set-Location -Path /home/sammy/CK3SpolszczenieSkrypty/Crusader-Kings-3-Spolszczenie/
	git reset --hard
	git pull
	Set-Location -Path /home/sammy/CK3SpolszczenieSkrypty/CK3PLCustomAddons/
	$github_latest_release_info = Invoke-RestMethod https://api.github.com/repos/Niukron/Crusader-Kings-3-Spolszczenie/releases/latest
	$github_latest_release_info.tag_name -match "v(\d+\.)?(\d+\.)?(\*|\d+)"
	$version = $matches[1]+$matches[2]+$matches[3]
	
	$version = [Version]$version
	$MOD_VERSION = (New-Object -TypeName 'System.Version' -ArgumentList @($version.Major, $version.Minor, ($version.Build+1))).ToString()
	
	Create-Mod
}
 
function Create-Mod {


	Write-Host "Czyszczenie poprzedniej paczki"
	Remove-Item -Path $MOD_FOLDER –recurse -force
	Remove-Item -Path "/home/sammy/CK3SpolszczenieSkrypty/CK3PLCustomAddons/ck3transifex/Spolszczenie_CK3/*" –recurse -force
	Write-Host "Czyszczenie folderów tymczasowych"
	if(!$PARSE_FILES) {
		Remove-Item -Path "/home/sammy/CK3SpolszczenieSkrypty/CK3PLCustomAddons/ck3transifex/temp" –recurse -force
	}


	
	if(!$DEBUG_MODE) { 
		Set-Location /home/sammy/CK3SpolszczenieSkrypty/CK3PLCustomAddons/ck3transifex/
		if($TX_PULL) {
			Write-Host "Pobieranie danych z transifexa"
			/usr/local/bin/tx pull --all --force --parallel
		} 
		if($PARSE_FILES)
		{
			Write-Host "Parsowanie plików lokalizacyjnych..."
			Get-ChildItem -Path /home/sammy/CK3SpolszczenieSkrypty/CK3PLCustomAddons/ck3transifex/pliki/pl/ -Recurse -Directory -Force -ErrorAction SilentlyContinue | Select-Object FullName | ForEach-Object {
				$pl_name = $_.FullName
				$en_name = $_.FullName -replace "/pl/","/en/"
				$supply = $en_name -replace "/home/sammy/CK3SpolszczenieSkrypty/CK3PLCustomAddons/ck3transifex/pliki/en/", "temp/supply/"
				/home/sammy/.linuxbrew/Cellar/adoptopenjdk/1.8.0.242/bin/java -jar "tools/LocaleParser/bin/LocaleParser-0.1.11-SNAPSHOT.jar" "folder_supply" "$pl_name" "$en_name" "$supply" yaml
				/home/sammy/.linuxbrew/Cellar/adoptopenjdk/1.8.0.242/bin/java -jar "tools/LocaleParser/bin/LocaleParser-0.1.11-SNAPSHOT.jar" "folder_supply" "$pl_name" "$en_name" "$supply" yaml
			}
			Write-Host "Kompilowanie plików lokalizacyjnych..."
			Get-ChildItem -Path /home/sammy/CK3SpolszczenieSkrypty/CK3PLCustomAddons/ck3transifex/temp/supply/ -Recurse -Directory -Force -ErrorAction SilentlyContinue | Select-Object FullName | ForEach-Object {
				$o_name = $_.FullName
				$dest = $o_name -replace "/home/sammy/CK3SpolszczenieSkrypty/CK3PLCustomAddons/ck3transifex/temp/supply/", "temp/ck3/"
				/home/sammy/.linuxbrew/Cellar/adoptopenjdk/1.8.0.242/bin/java -jar "tools/LocaleParser/bin/LocaleParser-0.1.11-SNAPSHOT.jar" "folder_to_eu4" "$o_name" "$dest" "empty"
			}
			/home/sammy/.linuxbrew/Cellar/adoptopenjdk/1.8.0.242/bin/java -jar "tools/LocaleParser/bin/LocaleParser-0.1.11-SNAPSHOT.jar" "folder_to_eu4" "/home/sammy/CK3SpolszczenieSkrypty/CK3PLCustomAddons/ck3transifex/custom_text/pl/" "/home/sammy/CK3SpolszczenieSkrypty/CK3PLCustomAddons/ck3_main/game/localization/english/custom_localization/" "empty"
		}
		Write-Host "Kopiowanie gotowych plików z transifexa do folderu tymczasowego..."
		Copy-item -Force -Recurse "/home/sammy/CK3SpolszczenieSkrypty/CK3PLCustomAddons/ck3transifex/temp/ck3/*" -Destination "/home/sammy/CK3SpolszczenieSkrypty/CK3PLCustomAddons/ck3transifex/Spolszczenie_CK3/"
		
		
		
		Set-Location -Path /home/sammy/CK3SpolszczenieSkrypty/CK3PLCustomAddons/
		
	}
	
	Get-ChildItem $TRANSIFEX_COMPILED_FILES -Recurse -Filter "*.yml" | ForEach-Object { 
			(Get-Content $_.FullName) -replace $str_article_to_find_2, $str_article_to_replace  | Set-Content -Encoding utf8BOM $_.FullName
			(Get-Content $_.FullName) -replace $str_article_to_find, $str_article_to_replace  | Set-Content -Encoding utf8BOM $_.FullName
			Write-Host "Usuwanie przedimka 'the' z pliku: " $_.Name
	}
	
	# USUWANIE PUSTYCH STRINGÓW Z CUSTOM LOC _adj
	$custom_path = '/home/sammy/CK3SpolszczenieSkrypty/CK3PLCustomAddons/ck3_main/game/localization/english/custom_localization/polish_b_adj_custom_loc_l_english.yml'
	(Get-Content $custom_path) -replace  ' [a-z|_|0-9|-]*:0 ""', '' | Set-Content -Encoding utf8BOM $custom_path
	(gc $custom_path) | ? {$_.trim() -ne "" } | Set-Content -Encoding utf8BOM $custom_path
	
	
	Write-Host "Kopiowanie plików spolszczenia do moda"
	
	$MOD_FILE_STRUCTURE = 'version="'+$MOD_VERSION+'"
tags={
	"Translation"
}
name="'+$MOD_NAME+'"
supported_version="'+$SUPPORTED_GAME_VERSIONS+'"
remote_file_id="'+$REMOTE_FILE_ID+'"
path="mod/'+$MOD_NAME_FOLDER+'"'

$MOD_FILE_STRUCTURE_desc = 'version="'+$MOD_VERSION+'"
tags={
	"Translation"
}
name="'+$MOD_NAME+'"
supported_version="'+$SUPPORTED_GAME_VERSIONS+'"
remote_file_id="'+$REMOTE_FILE_ID+'"'

	$ModDir = $MOD_FOLDER + '/' + $MOD_NAME_FOLDER
	
	$t = New-Item -Path $MOD_FOLDER -Name $MOD_NAME_FOLDER -ItemType "directory"
	
	$t = New-Item -Path $MOD_FOLDER -Name ($MOD_NAME_FOLDER + '.mod') -ItemType "file" -Value $MOD_FILE_STRUCTURE 
	$t = New-Item -Path $ModDir -Name 'descriptor.mod' -ItemType "file" -Value $MOD_FILE_STRUCTURE_desc
	
	$t = New-Item -Path $ModDir -Name 'localization' -ItemType "directory"
	
	$t = New-Item -Path ($ModDir + '/localization/') -Name 'replace' -ItemType "directory"
	
	$ModDir_YML = ($ModDir + '/localization/replace/')			
	Copy-item -Force -Recurse $TRANSIFEX_COMPILED_FILES -Destination $ModDir_YML
	
	Copy-item "/home/sammy/CK3SpolszczenieSkrypty/CK3PLCustomAddons/ck3_main/clausewitz/*" -Recurse -Force -Destination ($ModDir_YML + "/clausewitz/")
	if(Test-Path "/home/sammy/CK3SpolszczenieSkrypty/CK3PLCustomAddons/ck3_main/jomini") { Copy-item "/home/sammy/CK3SpolszczenieSkrypty/CK3PLCustomAddons/ck3_main/jomini/*" -Recurse -Force -Destination ($ModDir_YML + "/jomini/") }
	Copy-item "/home/sammy/CK3SpolszczenieSkrypty/CK3PLCustomAddons/ck3_main/game/localization/*" -Recurse -Destination ($ModDir_YML + "/game/localization/") -Force
	Copy-item "/home/sammy/CK3SpolszczenieSkrypty/CK3PLCustomAddons/ck3_main/game/*" -Exclude "localization" -Recurse -Destination $ModDir -Force
	
	Copy-item -Force -Recurse ($ModDir + '/localization/replace/game/localization/english') -Destination $ModDir_YML
	Copy-item -Force ($ModDir + '/localization/replace/game/localization/languages.yml') -Destination ($ModDir + '/localization/')
	Remove-Item -Path ($ModDir + '/localization/replace/game') –recurse -force
	
	$daily = ""
	
	if((get-date).dayofweek -ne "Friday") {
		$daily = "-daily"
	}
	
	$version_search_string = '\[GetGameVersionInfo\]'
	$version_replace_string = '[GetGameVersionInfo]\nWersja spolszczenia: #bold v'+$MOD_VERSION+$daily+'#!'
	$common_l = $ModDir_YML+'/english/gui/common_l_english.yml'
	
	(Get-Content $common_l) -replace $version_search_string, $version_replace_string  | Set-Content -Encoding utf8BOM $common_l
	
	Github-Release
}


Start-Config
