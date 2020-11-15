echo "Pulling localisation files from Transifex"
:: Force pull all translations
tx.exe pull --parallel --all
pause