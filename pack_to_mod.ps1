$USERPROFILE = $env:USERPROFILE

# Domyślny folder z modami
$CK3_MOD_FOLDER = "$USERPROFILE\Documents\Paradox Interactive\Crusader Kings III\mod\"
# Automatycznie skopiować do folderu z grą?
$AUTO_CPY_TO_CK3_MOD_FOLDER = 0
$ASK_TO_CPY_TO_MOD_FOLDER = 1

# DEBUG MODE - nie pobiera danych z transifexa oraz nie kopiuje plików do folderu z grą.
$DEBUG_MODE = 0

# Automatycznie podnoś wersję moda - ustawić na 0 w trybie dev

$INCREMENT_BUILD_VERSION = 1

$MOD_NAME_FOLDER = "CK3Spolszczenie"

$MOD_NAME = "Crusader Kings III Spolszczenie"
$SCRIPT_VERSION = Get-Content -Path "$PSScriptRoot\version"
$MOD_VERSION = "0.0.0"

$github_latest_release_info = Invoke-RestMethod https://api.github.com/repos/Niukron/Crusader-Kings-3-Spolszczenie/releases/latest
$out = $github_latest_release_info.tag_name -match "v(\d+\.)?(\d+\.)?(\*|\d+)"
$MOD_VERSION = $matches[1]+$matches[2]+$matches[3]

$SUPPORTED_GAME_VERSIONS = "1.2.*"
$REMOTE_FILE_ID = "2302141098" # STEAM ID - sharedfiles/filedetails/?id=[TO]
$PIC = "" # thumbnail.png z folderu 

$TRANSIFEX_COMPILED_FILES = "$PSScriptRoot\ck3transifex\Spolszczenie_CK3\*"
$CK3_PL_ADDONS = "$PSScriptRoot\ck3_main\*"
$MOD_FOLDER = "$PSScriptRoot\ck3_files_to_release\"

$str_article_to_find_2 = '_article:0 "the "'
$str_article_to_find = '_article:0 "the"'
$str_article_to_replace = '_article:0 ""'

$OLD_MOD_VERSION = $MOD_VERSION
$auto_version_increase_in_file = 0

$GIT_FILES_URL = "https://github.com/Niukron/CK3PLCustomAddons/archive/main.zip"
$version_on_github = Invoke-RestMethod https://raw.githubusercontent.com/Niukron/CK3PLCustomAddons/main/version
$ask_to_version_update = 0


function Start-Config {

	$MOD_NAME_tmp = $MOD_NAME
	$MOD_VERSION_tmp = $MOD_VERSION
	$SUPPORTED_GAME_VERSIONS_tmp = $SUPPORTED_GAME_VERSIONS
	$REMOTE_FILE_ID_tmp = $REMOTE_FILE_ID

	$MName = Read-Host -Prompt "Nazwa moda [$MOD_NAME]"
	if (!([string]::IsNullOrWhiteSpace($MName))) {
		$MOD_NAME_tmp = $MName
	}
	if($INCREMENT_BUILD_VERSION) {
		$version = [Version]$MOD_VERSION_tmp
		$NEW_MOD_VERSION = (New-Object -TypeName 'System.Version' -ArgumentList @($version.Major, $version.Minor, ($version.Build+1))).ToString()
	} else {
		$NEW_MOD_VERSION = $MOD_VERSION_tmp
	}
	$MVersion = Read-Host -Prompt "Aktualna wersja ($MOD_VERSION). Nowa wersja [$NEW_MOD_VERSION]"
	if (!([string]::IsNullOrWhiteSpace($MVersion))) {
		$MOD_VERSION_tmp = $MVersion
	} else {
		$MOD_VERSION_tmp = $NEW_MOD_VERSION	
	}
	$MSupportVersion = Read-Host -Prompt "Wspierane wersje gry [$SUPPORTED_GAME_VERSIONS]"
	if (!([string]::IsNullOrWhiteSpace($MSupportVersion))) {
		$SUPPORTED_GAME_VERSIONS_tmp = $MSupportVersion
	}
	$MRemoteFileID = Read-Host -Prompt "REMOTE FILE ID (steam id pliku sharedfiles/filedetails/?id=[TO]) [$REMOTE_FILE_ID]"
	if (!([string]::IsNullOrWhiteSpace($MRemoteFileID))) {
		$REMOTE_FILE_ID_tmp = $MRemoteFileID
	}

	Write-Host "`n
Nazwa moda: $MOD_NAME_tmp
Wersja moda: $MOD_VERSION_tmp
Wspierane wersje gry: $SUPPORTED_GAME_VERSIONS_tmp
Remote Steam ID: $REMOTE_FILE_ID_tmp `n`n"

	$mContinue = new-object -comobject wscript.shell 
	$intAnswer = $mContinue.popup("Sprawdź poprawność. Kontynuować?", 0,"Ustawienia", 4) 
	If ($intAnswer -eq 6) { 
		Write-host "Zaakceptowano ustawienia..."
		$OLD_MOD_VERSION = $MOD_VERSION
		$MOD_NAME = $MOD_NAME_tmp
		$MOD_VERSION = $MOD_VERSION_tmp
		$SUPPORTED_GAME_VERSIONS = $SUPPORTED_GAME_VERSIONS_tmp
		$REMOTE_FILE_ID = $REMOTE_FILE_ID_tmp
			
		Create-Mod
	} else { 
		Write-Host "Korekta ustawień..."
		Start-Config
	} 
}

<# function Update-VersionOnGithub {
	Write-host "Aktualizacja wersji na githubie..."
	$isGitInstalled = $null -ne ( (Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*) + (Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*) | Where-Object { $null -ne $_.DisplayName -and $_.Displayname.Contains('Git') })
	
	if($isGitInstalled) {
		
	} else {
		Write-Host "Nie posiadasz zainstalowanego GITa. Pobierz git, aby automatyczne zaaktualizwoać pliki na githubie lub nie aktualizuj wersji w pliku version!!" -ForegroundColor red -BackgroundColor white
	
	}
} #>

function Create-Mod {


	Write-Host "Czyszczenie poprzedniej paczki"
	Remove-Item -Path $MOD_FOLDER –recurse -force

	Write-Host "Pobieranie danych z transifexa"
	if(!$DEBUG_MODE) { 
		Start-Process "$PSScriptRoot\ck3transifex\pull_translations_from_transifex.bat" -WorkingDirectory "$PSScriptRoot\ck3transifex\"  -Wait 
	}
	
	Get-ChildItem $TRANSIFEX_COMPILED_FILES -Recurse -Filter "*.yml" | ForEach-Object { 
			(Get-Content $_.FullName) -replace $str_article_to_find_2, $str_article_to_replace  | Set-Content -Encoding UTF8 $_.FullName
			(Get-Content $_.FullName) -replace $str_article_to_find, $str_article_to_replace  | Set-Content -Encoding UTF8 $_.FullName
			Write-Host "Usuwanie przedimka 'the' z pliku: " $_.Name
	}
	Write-Host "Dodawanie wersji do pliku common_l_english.yml"
	
	
	
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

	$ModDir = $MOD_FOLDER + '\' + $MOD_NAME_FOLDER
	
	$t = New-Item -Path $MOD_FOLDER -Name $MOD_NAME_FOLDER -ItemType "directory"
	
	$t = New-Item -Path $MOD_FOLDER -Name ($MOD_NAME_FOLDER + '.mod') -ItemType "file" -Value $MOD_FILE_STRUCTURE 
	$t = New-Item -Path $ModDir -Name 'descriptor.mod' -ItemType "file" -Value $MOD_FILE_STRUCTURE_desc
	
	$t = New-Item -Path $ModDir -Name 'localization' -ItemType "directory"
	
	$t = New-Item -Path ($ModDir + '\localization\') -Name 'replace' -ItemType "directory"
	
	$ModDir_YML = ($ModDir + '\localization\replace\')			
	Copy-item -Force -Recurse $TRANSIFEX_COMPILED_FILES -Destination $ModDir_YML
	
	Copy-item "$PSScriptRoot\ck3_main\clausewitz\*" -Recurse -Force -Destination ($ModDir_YML + "\clausewitz\")
	if(Test-Path "$PSScriptRoot\ck3_main\jomini") { Copy-item "$PSScriptRoot\ck3_main\jomini\*" -Recurse -Force -Destination ($ModDir_YML + "\jomini\") }
	Copy-item "$PSScriptRoot\ck3_main\game\localization\*" -Recurse -Destination ($ModDir_YML + "\game\localization\") -Force
	Copy-item "$PSScriptRoot\ck3_main\game\*" -Exclude "localization" -Recurse -Destination $ModDir -Force
	
	Copy-item -Force -Recurse ($ModDir + '\localization\replace\game\localization\english') -Destination $ModDir_YML
	Copy-item -Force ($ModDir + '\localization\replace\game\localization\languages.yml') -Destination ($ModDir + '\localization\')
	Remove-Item -Path ($ModDir + '\localization\replace\game') –recurse -force
	
	$daily = ""
	
	if((get-date).dayofweek -ne "Friday") {
		$daily = "-daily"
	}
	
	$version_search_string = '\[GetGameVersionInfo\]'
	$version_replace_string = '[GetGameVersionInfo]\nWersja spolszczenia: #bold v'+$MOD_VERSION+$daily+'#!'
	$common_l = $ModDir_YML+'\english\gui\common_l_english.yml'
	
	(Get-Content $common_l) -replace $version_search_string, $version_replace_string  | Set-Content -Encoding UTF8 $common_l
	
	<# if(($OLD_MOD_VERSION -ne $MOD_VERSION) -And $ask_to_version_update)
	{
		if(!($auto_version_increase_in_file)) {
			
			$mContinue = new-object -comobject wscript.shell 
			$intAnswer = $mContinue.popup("Nadpisać wersję w pliku?", 0,"Nowa wersja", 4) 
			If ($intAnswer -eq 6) { 
				Write-host "Aktualizacja wersji w pliku version..."
				Set-Content -NoNewline -Path "$PSScriptRoot\version" -Value $MOD_VERSION
				
				#Update-VersionOnGithub
			}
		} else {
			Write-host "Aktualizacja wersji w pliku version..."
			Set-Content -NoNewline -Path "$PSScriptRoot\version" -Value $MOD_VERSION
			
			#Update-VersionOnGithub
		}
	} #>
	
	if($AUTO_CPY_TO_CK3_MOD_FOLDER) {
		Write-Host "Kopiowanie moda do $CK3_MOD_FOLDER"
		Copy-item -Force -Recurse ($MOD_FOLDER + "\*") -Destination $CK3_MOD_FOLDER
	} elseif($ASK_TO_CPY_TO_MOD_FOLDER) {
			$mAskObj = new-object -comobject wscript.shell 
			$intAnswerCpy = $mAskObj.popup("Skopiować moda do folderu z modami?", 0,"Skopiować?", 4) 
			if($intAnswerCpy -eq 6) { 
				Write-Host "Kopiowanie moda do $CK3_MOD_FOLDER"
				Copy-item -Force -Recurse ($MOD_FOLDER + "\*") -Destination $CK3_MOD_FOLDER
			}
	} else {
		Write-Host "Pominięto aktualizację moda w folderze gry"
	}
	
}

function Check-Version {
	if($version_on_github -ne $SCRIPT_VERSION) {
		Write-Host "Na githubie znajdują się nowsze pliki. Pobierz ponownie pliki, aby posiadać aktualne zmiany w custom_loc i skryptach." -ForegroundColor red -BackgroundColor white
		$mAskObj = new-object -comobject wscript.shell 
		$intAnswerCpy = $mAskObj.popup("Zaktualizować pliki automatycznie?", 0,"Update", 4) 
		if($intAnswerCpy -eq 6) { 
			Write-Host "Aktualizacja plików..."
			Write-Host "Pobieranie plików z github..."
			
			$parentScriptDir = (get-item $PSScriptRoot).Parent.FullName
			Invoke-WebRequest -Uri $GIT_FILES_URL -OutFile "$parentScriptDir\update.zip"
			Write-Host "Wypakowywanie do $parentScriptDir"
			$ExtractShell = New-Object -ComObject Shell.Application 	
			$Files = $ExtractShell.Namespace("$parentScriptDir\update.zip").Items() 
			$ExtractShell.NameSpace($parentScriptDir).CopyHere($Files) 
			Write-Host "Kopiowanie plików..."
			#Start-Process $parentScriptDir
			Copy-Item "$parentScriptDir\CK3PLCustomAddons-main\*" -Recurse -Force -Destination ($PSScriptRoot + "\")
			Remove-Item -Path "$parentScriptDir\update.zip" -force
			Remove-Item -Path "$parentScriptDir\CK3PLCustomAddons-main" -recurse -force
			
			Write-Host "Skrypt zostanie uruchomiony ponownie!"
			Read-Host -Prompt "Kliknij enter, aby uruchomić ponownie skrypt"
			& ($PSScriptRoot+"\pack_to_mod.ps1")
			exit
		} else {
			Write-Host "Działasz na starszych plikach!"
		}
	}
}

Write-Host "Podaj dane potrzebne do wygenerowania plików.
Domyślne wartości są podane w nawiasach kwadratowych. 
Wersja moda generowana jest automatycznie. Jeśli chcesz to wyłączyć zmień zmienną w skrypcie.

Wersja moda jest pobierana z najnowszego wydania na githubie, a nowa wersja jest automatycznie podnoszona..
"


Check-Version

Start-Config

Read-Host -Prompt "Kliknij enter, aby wyjść"

