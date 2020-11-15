echo "Pulling localisation files from Transifex"
:: Force pull all translations
tx.exe pull --all --force --parallel & transifex_to_ck3_files.bat
pause