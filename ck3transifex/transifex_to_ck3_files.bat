:: BUILDER SETTINGS
set language="pl"
set charset="empty"
set project_folder="Spolszczenie_CK3"
set parser="tools\\LocaleParser\\bin\\LocaleParser-0.1.11-SNAPSHOT.jar"


echo "Starting conversion of translated files from Transifex into the EU4 format for workshop delivery and automated mod building."
echo "Removing temp directory - might say does not exist. That is normal, just a precaution."
rd /s /q temp
echo "Starting compiling latest source strings directory for CK3 format into the temp supply directory"
::game
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english" "pliki\\en\\game\\localization\\english" "temp\\supply\\game\\localization\\english" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\artifacts" "pliki\\en\\game\\localization\\english\\artifacts" "temp\\supply\\game\\localization\\english\\artifacts" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\bookmark" "pliki\\en\\game\\localization\\english\\bookmark" "temp\\supply\\game\\localization\\english\\bookmark" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\credits" "pliki\\en\\game\\localization\\english\\credits" "temp\\supply\\game\\localization\\english\\credits" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\culture" "pliki\\en\\game\\localization\\english\\culture" "temp\\supply\\game\\localization\\english\\culture" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\culture\\traditions" "pliki\\en\\game\\localization\\english\\culture\\traditions" "temp\\supply\\game\\localization\\english\\culture\\traditions" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\dlc\\ep1" "pliki\\en\\game\\localization\\english\\dlc\\ep1" "temp\\supply\\game\\localization\\english\\dlc\\ep1" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\dlc\\fp1" "pliki\\en\\game\\localization\\english\\dlc\\fp1" "temp\\supply\\game\\localization\\english\\dlc\\fp1" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\dlc\\fp2" "pliki\\en\\game\\localization\\english\\dlc\\fp2" "temp\\supply\\game\\localization\\english\\dlc\\fp2" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\custom_localization" "pliki\\en\\game\\localization\\english\\custom_localization" "temp\\supply\\game\\localization\\english\\custom_localization" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\dynasties" "pliki\\en\\game\\localization\\english\\dynasties" "temp\\supply\\game\\localization\\english\\dynasties" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\dynasty_legacies" "pliki\\en\\game\\localization\\english\\dynasty_legacies" "temp\\supply\\game\\localization\\english\\dynasty_legacies" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\enum" "pliki\\en\\game\\localization\\english\\enum" "temp\\supply\\game\\localization\\english\\enum" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\event_localization" "pliki\\en\\game\\localization\\english\\event_localization" "temp\\supply\\game\\localization\\english\\event_localization" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\event_localization\\activities" "pliki\\en\\game\\localization\\english\\event_localization\\activities" "temp\\supply\\game\\localization\\english\\event_localization\\activities" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\event_localization\\childhood" "pliki\\en\\game\\localization\\english\\event_localization\\childhood" "temp\\supply\\game\\localization\\english\\event_localization\\childhood" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\event_localization\\councillor_task_events" "pliki\\en\\game\\localization\\english\\event_localization\\councillor_task_events" "temp\\supply\\game\\localization\\english\\event_localization\\councillor_task_events" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\event_localization\\councillor_task_events\\councillor_spouse_events" "pliki\\en\\game\\localization\\english\\event_localization\\councillor_task_events\\councillor_spouse_events" "temp\\supply\\game\\localization\\english\\event_localization\\councillor_task_events\\councillor_spouse_events" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\event_localization\\court_events" "pliki\\en\\game\\localization\\english\\event_localization\\court_events" "temp\\supply\\game\\localization\\english\\event_localization\\court_events" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\event_localization\\culture_events" "pliki\\en\\game\\localization\\english\\event_localization\\culture_events" "temp\\supply\\game\\localization\\english\\event_localization\\culture_events" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\event_localization\\death_events" "pliki\\en\\game\\localization\\english\\event_localization\\death_events" "temp\\supply\\game\\localization\\english\\event_localization\\death_events" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\event_localization\\decisions" "pliki\\en\\game\\localization\\english\\event_localization\\decisions" "temp\\supply\\game\\localization\\english\\event_localization\\decisions" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\event_localization\\experimental" "pliki\\en\\game\\localization\\english\\event_localization\\experimental" "temp\\supply\\game\\localization\\english\\event_localization\\experimental" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\event_localization\\government_events" "pliki\\en\\game\\localization\\english\\event_localization\\government_events" "temp\\supply\\game\\localization\\english\\event_localization\\government_events" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\event_localization\\hold_court_events" "pliki\\en\\game\\localization\\english\\event_localization\\hold_court_events" "temp\\supply\\game\\localization\\english\\event_localization\\hold_court_events" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\event_localization\\lifestyle" "pliki\\en\\game\\localization\\english\\event_localization\\lifestyle" "temp\\supply\\game\\localization\\english\\event_localization\\lifestyle" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\event_localization\\lifestyle\\governance" "pliki\\en\\game\\localization\\english\\event_localization\\lifestyle\\governance" "temp\\supply\\game\\localization\\english\\event_localization\\lifestyle\\governance" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\event_localization\\lifestyle\\guile" "pliki\\en\\game\\localization\\english\\event_localization\\lifestyle\\guile" "temp\\supply\\game\\localization\\english\\event_localization\\lifestyle\\guile" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\event_localization\\lifestyle\\nickname" "pliki\\en\\game\\localization\\english\\event_localization\\lifestyle\\nickname" "temp\\supply\\game\\localization\\english\\event_localization\\lifestyle\\nickname" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\event_localization\\lifestyle\\scholarship" "pliki\\en\\game\\localization\\english\\event_localization\\lifestyle\\scholarship" "temp\\supply\\game\\localization\\english\\event_localization\\lifestyle\\scholarship" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\event_localization\\lifestyle\\statecraft" "pliki\\en\\game\\localization\\english\\event_localization\\lifestyle\\statecraft" "temp\\supply\\game\\localization\\english\\event_localization\\lifestyle\\statecraft" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\event_localization\\lifestyle\\warfare" "pliki\\en\\game\\localization\\english\\event_localization\\lifestyle\\warfare" "temp\\supply\\game\\localization\\english\\event_localization\\lifestyle\\warfare" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\event_localization\\prison_events" "pliki\\en\\game\\localization\\english\\event_localization\\prison_events" "temp\\supply\\game\\localization\\english\\event_localization\\prison_events" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\event_localization\\relation_events" "pliki\\en\\game\\localization\\english\\event_localization\\relation_events" "temp\\supply\\game\\localization\\english\\event_localization\\relation_events" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\event_localization\\religion_events" "pliki\\en\\game\\localization\\english\\event_localization\\religion_events" "temp\\supply\\game\\localization\\english\\event_localization\\religion_events" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\event_localization\\schemes" "pliki\\en\\game\\localization\\english\\event_localization\\schemes" "temp\\supply\\game\\localization\\english\\event_localization\\schemes" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\event_localization\\schemes\\abduct" "pliki\\en\\game\\localization\\english\\event_localization\\schemes\\abduct" "temp\\supply\\game\\localization\\english\\event_localization\\schemes\\abduct" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\event_localization\\schemes\\befriend" "pliki\\en\\game\\localization\\english\\event_localization\\schemes\\befriend" "temp\\supply\\game\\localization\\english\\event_localization\\schemes\\befriend" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\event_localization\\schemes\\claim_throne" "pliki\\en\\game\\localization\\english\\event_localization\\schemes\\claim_throne" "temp\\supply\\game\\localization\\english\\event_localization\\schemes\\claim_throne" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\event_localization\\schemes\\court" "pliki\\en\\game\\localization\\english\\event_localization\\schemes\\court" "temp\\supply\\game\\localization\\english\\event_localization\\schemes\\court" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\event_localization\\schemes\\fabricate_hook" "pliki\\en\\game\\localization\\english\\event_localization\\schemes\\fabricate_hook" "temp\\supply\\game\\localization\\english\\event_localization\\schemes\\fabricate_hook" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\event_localization\\schemes\\learn_language" "pliki\\en\\game\\localization\\english\\event_localization\\schemes\\learn_language" "temp\\supply\\game\\localization\\english\\event_localization\\schemes\\learn_language" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\event_localization\\schemes\\murder" "pliki\\en\\game\\localization\\english\\event_localization\\schemes\\murder" "temp\\supply\\game\\localization\\english\\event_localization\\schemes\\murder" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\event_localization\\schemes\\seduce" "pliki\\en\\game\\localization\\english\\event_localization\\schemes\\seduce" "temp\\supply\\game\\localization\\english\\event_localization\\schemes\\seduce" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\event_localization\\schemes\\steal_back_artifact" "pliki\\en\\game\\localization\\english\\event_localization\\schemes\\steal_back_artifact" "temp\\supply\\game\\localization\\english\\event_localization\\schemes\\steal_back_artifact" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\event_localization\\schemes\\sway" "pliki\\en\\game\\localization\\english\\event_localization\\schemes\\sway" "temp\\supply\\game\\localization\\english\\event_localization\\schemes\\sway" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\event_localization\\secret_events" "pliki\\en\\game\\localization\\english\\event_localization\\secret_events" "temp\\supply\\game\\localization\\english\\event_localization\\secret_events" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\event_localization\\story_cycles" "pliki\\en\\game\\localization\\english\\event_localization\\story_cycles" "temp\\supply\\game\\localization\\english\\event_localization\\story_cycles" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\event_localization\\stress_events" "pliki\\en\\game\\localization\\english\\event_localization\\stress_events" "temp\\supply\\game\\localization\\english\\event_localization\\stress_events" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\event_localization\\struggle_events" "pliki\\en\\game\\localization\\english\\event_localization\\struggle_events" "temp\\supply\\game\\localization\\english\\event_localization\\struggle_events" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\event_localization\\trait_specific_events" "pliki\\en\\game\\localization\\english\\event_localization\\trait_specific_events" "temp\\supply\\game\\localization\\english\\event_localization\\trait_specific_events" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\event_localization\\yearly_events" "pliki\\en\\game\\localization\\english\\event_localization\\yearly_events" "temp\\supply\\game\\localization\\english\\event_localization\\yearly_events" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\event_localization\\war_event" "pliki\\en\\game\\localization\\english\\event_localization\\war_event" "temp\\supply\\game\\localization\\english\\event_localization\\war_event" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\gui" "pliki\\en\\game\\localization\\english\\gui" "temp\\supply\\game\\localization\\english\\gui" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\hold_court_events" "pliki\\en\\game\\localization\\english\\hold_court_events" "temp\\supply\\game\\localization\\english\\hold_court_events" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\interactions" "pliki\\en\\game\\localization\\english\\interactions" "temp\\supply\\game\\localization\\english\\interactions" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\inventory" "pliki\\en\\game\\localization\\english\\inventory" "temp\\supply\\game\\localization\\english\\inventory" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\lifestyles" "pliki\\en\\game\\localization\\english\\lifestyles" "temp\\supply\\game\\localization\\english\\lifestyles" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\load_tips" "pliki\\en\\game\\localization\\english\\load_tips" "temp\\supply\\game\\localization\\english\\load_tips" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\map" "pliki\\en\\game\\localization\\english\\map" "temp\\supply\\game\\localization\\english\\map" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\modifiers" "pliki\\en\\game\\localization\\english\\modifiers" "temp\\supply\\game\\localization\\english\\modifiers" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\names" "pliki\\en\\game\\localization\\english\\names" "temp\\supply\\game\\localization\\english\\names" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\opinions" "pliki\\en\\game\\localization\\english\\opinions" "temp\\supply\\game\\localization\\english\\opinions" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\portraits" "pliki\\en\\game\\localization\\english\\portraits" "temp\\supply\\game\\localization\\english\\portraits" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\religion" "pliki\\en\\game\\localization\\english\\religion" "temp\\supply\\game\\localization\\english\\religion" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\triggers" "pliki\\en\\game\\localization\\english\\triggers" "temp\\supply\\game\\localization\\english\\triggers" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\struggles" "pliki\\en\\game\\localization\\english\\struggles" "temp\\supply\\game\\localization\\english\\struggles" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\game\\localization\\english\\tutorial" "pliki\\en\\game\\localization\\english\\tutorial" "temp\\supply\\game\\localization\\english\\tutorial" yaml
::jomini
java -jar "%parser%" "folder_supply" "pliki\\%language%\\jomini\\localization" "pliki\\en\\jomini\\localization" "temp\\supply\\jomini\\localization" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\jomini\\localization\\achievements" "pliki\\en\\jomini\\localization\\achievements" "temp\\supply\\jomini\\localization\\achievements" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\jomini\\localization\\credits" "pliki\\en\\jomini\\localization\\credits" "temp\\supply\\jomini\\localization\\credits" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\jomini\\localization\\frontend" "pliki\\en\\jomini\\localization\\frontend" "temp\\supply\\jomini\\localization\\frontend" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\jomini\\localization\\jomini" "pliki\\en\\jomini\\localization\\jomini" "temp\\supply\\jomini\\localization\\jomini" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\jomini\\localization\\jomini\\coat_of_arms" "pliki\\en\\jomini\\localization\\jomini\\coat_of_arms" "temp\\supply\\jomini\\localization\\jomini\\coat_of_arms" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\jomini\\localization\\jomini\\map_editor" "pliki\\en\\jomini\\localization\\jomini\\map_editor" "temp\\supply\\jomini\\localization\\jomini\\map_editor" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\jomini\\localization\\jomini\\multiplayer_gui" "pliki\\en\\jomini\\localization\\jomini\\multiplayer_gui" "temp\\supply\\jomini\\localization\\jomini\\multiplayer_gui" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\jomini\\localization\\jomini\\script_system" "pliki\\en\\jomini\\localization\\jomini\\script_system" "temp\\supply\\jomini\\localization\\jomini\\script_system" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\jomini\\localization\\pops" "pliki\\en\\jomini\\localization\\pops" "temp\\supply\\jomini\\localization\\pops" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\jomini\\localization\\settings" "pliki\\en\\jomini\\localization\\settings" "temp\\supply\\jomini\\localization\\settings" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\jomini\\localization\\social" "pliki\\en\\jomini\\localization\\social" "temp\\supply\\jomini\\localization\\social" yaml
::clausewitz
java -jar "%parser%" "folder_supply" "pliki\\%language%\\clausewitz\\localization" "pliki\\en\\clausewitz\\localization" "temp\\supply\\clausewitz\\localization" yaml
java -jar "%parser%" "folder_supply" "pliki\\%language%\\clausewitz\\localization\\text_utils" "pliki\\en\\clausewitz\\localization\\text_utils" "temp\\supply\\clausewitz\\localization\\text_utils" yaml

echo "Starting compiling latest translations to desired language - in this case - polish."
::game
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english" "temp\\ck3\\game\\localization\\english" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\artifacts" "temp\\ck3\\game\\localization\\english\\artifacts" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\bookmark" "temp\\ck3\\game\\localization\\english\\bookmark" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\credits" "temp\\ck3\\game\\localization\\english\\credits" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\culture" "temp\\ck3\\game\\localization\\english\\culture" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\culture\\traditions" "temp\\ck3\\game\\localization\\english\\culture\\traditions" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\custom_localization" "temp\\ck3\\game\\localization\\english\\custom_localization" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\dlc\\ep1" "temp\\ck3\\game\\localization\\english\\dlc\\ep1" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\dlc\\fp1" "temp\\ck3\\game\\localization\\english\\dlc\\fp1" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\dlc\\fp2" "temp\\ck3\\game\\localization\\english\\dlc\\fp2" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\dynasties" "temp\\ck3\\game\\localization\\english\\dynasties" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\dynasty_legacies" "temp\\ck3\\game\\localization\\english\\dynasty_legacies" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\enum" "temp\\ck3\\game\\localization\\english\\enum" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\event_localization" "temp\\ck3\\game\\localization\\english\\event_localization" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\event_localization\\activities" "temp\\ck3\\game\\localization\\english\\event_localization\\activities" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\event_localization\\childhood" "temp\\ck3\\game\\localization\\english\\event_localization\\childhood" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\event_localization\\councillor_task_events" "temp\\ck3\\game\\localization\\english\\event_localization\\councillor_task_events" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\event_localization\\councillor_task_events\\councillor_spouse_events" "temp\\ck3\\game\\localization\\english\\event_localization\\councillor_task_events\\councillor_spouse_events" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\event_localization\\court_events" "temp\\ck3\\game\\localization\\english\\event_localization\\court_events" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\event_localization\\culture_events" "temp\\ck3\\game\\localization\\english\\event_localization\\culture_events" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\event_localization\\death_events" "temp\\ck3\\game\\localization\\english\\event_localization\\death_events" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\event_localization\\decisions" "temp\\ck3\\game\\localization\\english\\event_localization\\decisions" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\event_localization\\experimental" "temp\\ck3\\game\\localization\\english\\event_localization\\experimental" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\event_localization\\government_events" "temp\\ck3\\game\\localization\\english\\event_localization\\government_events" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\event_localization\\hold_court_events" "temp\\ck3\\game\\localization\\english\\event_localization\\hold_court_events" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\event_localization\\lifestyle" "temp\\ck3\\game\\localization\\english\\event_localization\\lifestyle" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\event_localization\\lifestyle\\governance" "temp\\ck3\\game\\localization\\english\\event_localization\\lifestyle\\governance" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\event_localization\\lifestyle\\guile" "temp\\ck3\\game\\localization\\english\\event_localization\\lifestyle\\guile" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\event_localization\\lifestyle\\nickname" "temp\\ck3\\game\\localization\\english\\event_localization\\lifestyle\\nickname" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\event_localization\\lifestyle\\scholarship" "temp\\ck3\\game\\localization\\english\\event_localization\\lifestyle\\scholarship" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\event_localization\\lifestyle\\statecraft" "temp\\ck3\\game\\localization\\english\\event_localization\\lifestyle\\statecraft" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\event_localization\\lifestyle\\warfare" "temp\\ck3\\game\\localization\\english\\event_localization\\lifestyle\\warfare" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\event_localization\\prison_events" "temp\\ck3\\game\\localization\\english\\event_localization\\prison_events" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\event_localization\\relation_events" "temp\\ck3\\game\\localization\\english\\event_localization\\relation_events" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\event_localization\\religion_events" "temp\\ck3\\game\\localization\\english\\event_localization\\religion_events" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\event_localization\\schemes" "temp\\ck3\\game\\localization\\english\\event_localization\\schemes" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\event_localization\\schemes\\abduct" "temp\\ck3\\game\\localization\\english\\event_localization\\schemes\\abduct" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\event_localization\\schemes\\befriend" "temp\\ck3\\game\\localization\\english\\event_localization\\schemes\\befriend" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\event_localization\\schemes\\claim_throne" "temp\\ck3\\game\\localization\\english\\event_localization\\schemes\\claim_throne" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\event_localization\\schemes\\court" "temp\\ck3\\game\\localization\\english\\event_localization\\schemes\\court" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\event_localization\\schemes\\fabricate_hook" "temp\\ck3\\game\\localization\\english\\event_localization\\schemes\\fabricate_hook" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\event_localization\\schemes\\learn_language" "temp\\ck3\\game\\localization\\english\\event_localization\\schemes\\learn_language" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\event_localization\\schemes\\murder" "temp\\ck3\\game\\localization\\english\\event_localization\\schemes\\murder" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\event_localization\\schemes\\seduce" "temp\\ck3\\game\\localization\\english\\event_localization\\schemes\\seduce" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\event_localization\\schemes\\steal_back_artifact" "temp\\ck3\\game\\localization\\english\\event_localization\\schemes\\steal_back_artifact" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\event_localization\\schemes\\sway" "temp\\ck3\\game\\localization\\english\\event_localization\\schemes\\sway" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\event_localization\\secret_events" "temp\\ck3\\game\\localization\\english\\event_localization\\secret_events" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\event_localization\\story_cycles" "temp\\ck3\\game\\localization\\english\\event_localization\\story_cycles" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\event_localization\\stress_events" "temp\\ck3\\game\\localization\\english\\event_localization\\stress_events" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\event_localization\\struggle_events" "temp\\ck3\\game\\localization\\english\\event_localization\\struggle_events" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\event_localization\\trait_specific_events" "temp\\ck3\\game\\localization\\english\\event_localization\\trait_specific_events" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\event_localization\\yearly_events" "temp\\ck3\\game\\localization\\english\\event_localization\\yearly_events" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\event_localization\\war_event" "temp\\ck3\\game\\localization\\english\\event_localization\\war_event" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\gui" "temp\\ck3\\game\\localization\\english\\gui" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\hold_court_events" "temp\\ck3\\game\\localization\\english\\hold_court_events" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\interactions" "temp\\ck3\\game\\localization\\english\\interactions" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\inventory" "temp\\ck3\\game\\localization\\english\\inventory" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\lifestyles" "temp\\ck3\\game\\localization\\english\\lifestyles" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\load_tips" "temp\\ck3\\game\\localization\\english\\load_tips" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\map" "temp\\ck3\\game\\localization\\english\\map" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\modifiers" "temp\\ck3\\game\\localization\\english\\modifiers" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\names" "temp\\ck3\\game\\localization\\english\\names" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\opinions" "temp\\ck3\\game\\localization\\english\\opinions" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\portraits" "temp\\ck3\\game\\localization\\english\\portraits" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\religion" "temp\\ck3\\game\\localization\\english\\religion" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\triggers" "temp\\ck3\\game\\localization\\english\\triggers" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\struggles" "temp\\ck3\\game\\localization\\english\\struggles" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\game\\localization\\english\\tutorial" "temp\\ck3\\game\\localization\\english\\tutorial" "%charset%"
::jomini
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\jomini\\localization" "temp\\ck3\\jomini\\localization" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\jomini\\localization\\achievements" "temp\\ck3\\jomini\\localization\\achievements" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\jomini\\localization\\credits" "temp\\ck3\\jomini\\localization\\credits" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\jomini\\localization\\frontend" "temp\\ck3\\jomini\\localization\\frontend" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\jomini\\localization\\jomini" "temp\\ck3\\jomini\\localization\\jomini" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\jomini\\localization\\jomini\\coat_of_arms" "temp\\ck3\\jomini\\localization\\jomini\\coat_of_arms" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\jomini\\localization\\jomini\\map_editor" "temp\\ck3\\jomini\\localization\\jomini\\map_editor" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\jomini\\localization\\jomini\\multiplayer_gui" "temp\\ck3\\jomini\\localization\\jomini\\multiplayer_gui" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\jomini\\localization\\jomini\\script_system" "temp\\ck3\\jomini\\localization\\jomini\\script_system" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\jomini\\localization\\pops" "temp\\ck3\\jomini\\localization\\pops" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\jomini\\localization\\settings" "temp\\ck3\\jomini\\localization\\settings" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\jomini\\localization\\social" "temp\\ck3\\jomini\\localization\\social" "%charset%"
::clausewitz
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\clausewitz\\localization" "temp\\ck3\\clausewitz\\localization" "%charset%"
java -jar "%parser%" "folder_to_eu4" "temp\\supply\\clausewitz\\localization\\text_utils" "temp\\ck3\\clausewitz\\localization\\text_utils" "%charset%"


cd "%project_folder%"
echo "Removing old localisations"
del /s /f /q game
mkdir game
del /s /f /q jomini
mkdir jomini
del /s /f /q clausewitz
mkdir clausewitz
del abcd.txt
cd ../
echo "Copying new localisation"
xcopy /s temp\\ck3 "%project_folder%"
echo "Cleaning up temp directory."
rd /s /q temp
echo "Temp directory cleaned up, goodbye, have a nice day! :smile:
pause