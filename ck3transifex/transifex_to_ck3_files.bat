:: BUILDER SETTINGS
set lang=pl
set charset=empty
set project_folder="Spolszczenie_CK3"
set parser="tools\\LocaleParser\\bin\\LocaleParser-0.1.11-SNAPSHOT.jar"
set sup=folder_supply
set fte=folder_to_eu4
set gle=\\game\\localization\\english
set jom=\\jomini\\localization
set evtloc=\\event_localization

echo "Starting conversion of translated files from Transifex into the EU4 format for workshop delivery and automated mod building."
echo "Removing temp directory - might say does not exist. That is normal, just a precaution."
rd /s /q temp
echo "Starting compiling latest source strings directory for CK3 format into the temp supply directory"
::game
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%" "pliki\\en%gle%" "temp\\supply%gle%" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%\\accolades" "pliki\\en%gle%\\accolades" "temp\\supply%gle%\\accolades" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%\\activities" "pliki\\en%gle%\\activities" "temp\\supply%gle%\\activities" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%\\artifacts" "pliki\\en%gle%\\artifacts" "temp\\supply%gle%\\artifacts" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%\\bookmark" "pliki\\en%gle%\\bookmark" "temp\\supply%gle%\\bookmark" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%\\credits" "pliki\\en%gle%\\credits" "temp\\supply%gle%\\credits" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%\\culture" "pliki\\en%gle%\\culture" "temp\\supply%gle%\\culture" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%\\culture\\traditions" "pliki\\en%gle%\\culture\\traditions" "temp\\supply%gle%\\culture\\traditions" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%\\dlc\\bp1" "pliki\\en%gle%\\dlc\\bp1" "temp\\supply%gle%\\dlc\\bp1" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%\\dlc\\bp2" "pliki\\en%gle%\\dlc\\bp2" "temp\\supply%gle%\\dlc\\bp2" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%\\dlc\\ep1" "pliki\\en%gle%\\dlc\\ep1" "temp\\supply%gle%\\dlc\\ep1" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%\\dlc\\ep2" "pliki\\en%gle%\\dlc\\ep2" "temp\\supply%gle%\\dlc\\ep2" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%\\dlc\\ep2\\dynasty_legacies" "pliki\\en%gle%\\dlc\\ep2\\dynasty_legacies" "temp\\supply%gle%\\dlc\\ep2\\dynasty_legacies" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%\\dlc\\ep2\\pulse actions" "pliki\\en%gle%\\dlc\\ep2\\pulse actions" "temp\\supply%gle%\\dlc\\ep2\\pulse actions" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%\\dlc\\ep2\\tour" "pliki\\en%gle%\\dlc\\ep2\\tour" "temp\\supply%gle%\\dlc\\ep2\\tour" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%\\dlc\\ep2\\tournament" "pliki\\en%gle%\\dlc\\ep2\\tournament" "temp\\supply%gle%\\dlc\\ep2\\tournament" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%\\dlc\\ep2\\travel" "pliki\\en%gle%\\dlc\\ep2\\travel" "temp\\supply%gle%\\dlc\\ep2\\travel" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%\\dlc\\ep2\\wedding" "pliki\\en%gle%\\dlc\\ep2\\wedding" "temp\\supply%gle%\\dlc\\ep2\\wedding" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%\\dlc\\fp1" "pliki\\en%gle%\\dlc\\fp1" "temp\\supply%gle%\\dlc\\fp1" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%\\dlc\\fp2" "pliki\\en%gle%\\dlc\\fp2" "temp\\supply%gle%\\dlc\\fp2" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%\\custom_localization" "pliki\\en%gle%\\custom_localization" "temp\\supply%gle%\\custom_localization" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%\\diarchies" "pliki\\en%gle%\\diarchies" "temp\\supply%gle%\\diarchies" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%\\dynasties" "pliki\\en%gle%\\dynasties" "temp\\supply%gle%\\dynasties" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%\\dynasty_legacies" "pliki\\en%gle%\\dynasty_legacies" "temp\\supply%gle%\\dynasty_legacies" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%\\effects" "pliki\\en%gle%\\effects" "temp\\supply%gle%\\effects" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%\\enum" "pliki\\en%gle%\\enum" "temp\\supply%gle%\\enum" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%%evtloc%" "pliki\\en%gle%%evtloc%" "temp\\supply%gle%%evtloc%" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%%evtloc%\\activities" "pliki\\en%gle%%evtloc%\\activities" "temp\\supply%gle%%evtloc%\\activities" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%%evtloc%\\childhood" "pliki\\en%gle%%evtloc%\\childhood" "temp\\supply%gle%%evtloc%\\childhood" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%%evtloc%\\councillor_task_events" "pliki\\en%gle%%evtloc%\\councillor_task_events" "temp\\supply%gle%%evtloc%\\councillor_task_events" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%%evtloc%\\councillor_task_events\\councillor_spouse_events" "pliki\\en%gle%%evtloc%\\councillor_task_events\\councillor_spouse_events" "temp\\supply%gle%%evtloc%\\councillor_task_events\\councillor_spouse_events" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%%evtloc%\\court_events" "pliki\\en%gle%%evtloc%\\court_events" "temp\\supply%gle%%evtloc%\\court_events" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%%evtloc%\\culture_events" "pliki\\en%gle%%evtloc%\\culture_events" "temp\\supply%gle%%evtloc%\\culture_events" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%%evtloc%\\death_events" "pliki\\en%gle%%evtloc%\\death_events" "temp\\supply%gle%%evtloc%\\death_events" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%%evtloc%\\decisions" "pliki\\en%gle%%evtloc%\\decisions" "temp\\supply%gle%%evtloc%\\decisions" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%%evtloc%\\experimental" "pliki\\en%gle%%evtloc%\\experimental" "temp\\supply%gle%%evtloc%\\experimental" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%%evtloc%\\government_events" "pliki\\en%gle%%evtloc%\\government_events" "temp\\supply%gle%%evtloc%\\government_events" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%%evtloc%\\hold_court_events" "pliki\\en%gle%%evtloc%\\hold_court_events" "temp\\supply%gle%%evtloc%\\hold_court_events" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%%evtloc%\\lifestyle" "pliki\\en%gle%%evtloc%\\lifestyle" "temp\\supply%gle%%evtloc%\\lifestyle" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%%evtloc%\\lifestyle\\governance" "pliki\\en%gle%%evtloc%\\lifestyle\\governance" "temp\\supply%gle%%evtloc%\\lifestyle\\governance" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%%evtloc%\\lifestyle\\guile" "pliki\\en%gle%%evtloc%\\lifestyle\\guile" "temp\\supply%gle%%evtloc%\\lifestyle\\guile" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%%evtloc%\\lifestyle\\nickname" "pliki\\en%gle%%evtloc%\\lifestyle\\nickname" "temp\\supply%gle%%evtloc%\\lifestyle\\nickname" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%%evtloc%\\lifestyle\\scholarship" "pliki\\en%gle%%evtloc%\\lifestyle\\scholarship" "temp\\supply%gle%%evtloc%\\lifestyle\\scholarship" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%%evtloc%\\lifestyle\\statecraft" "pliki\\en%gle%%evtloc%\\lifestyle\\statecraft" "temp\\supply%gle%%evtloc%\\lifestyle\\statecraft" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%%evtloc%\\lifestyle\\warfare" "pliki\\en%gle%%evtloc%\\lifestyle\\warfare" "temp\\supply%gle%%evtloc%\\lifestyle\\warfare" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%%evtloc%\\prison_events" "pliki\\en%gle%%evtloc%\\prison_events" "temp\\supply%gle%%evtloc%\\prison_events" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%%evtloc%\\relation_events" "pliki\\en%gle%%evtloc%\\relation_events" "temp\\supply%gle%%evtloc%\\relation_events" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%%evtloc%\\religion_events" "pliki\\en%gle%%evtloc%\\religion_events" "temp\\supply%gle%%evtloc%\\religion_events" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%%evtloc%\\schemes" "pliki\\en%gle%%evtloc%\\schemes" "temp\\supply%gle%%evtloc%\\schemes" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%%evtloc%\\schemes\\abduct" "pliki\\en%gle%%evtloc%\\schemes\\abduct" "temp\\supply%gle%%evtloc%\\schemes\\abduct" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%%evtloc%\\schemes\\befriend" "pliki\\en%gle%%evtloc%\\schemes\\befriend" "temp\\supply%gle%%evtloc%\\schemes\\befriend" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%%evtloc%\\schemes\\claim_throne" "pliki\\en%gle%%evtloc%\\schemes\\claim_throne" "temp\\supply%gle%%evtloc%\\schemes\\claim_throne" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%%evtloc%\\schemes\\court" "pliki\\en%gle%%evtloc%\\schemes\\court" "temp\\supply%gle%%evtloc%\\schemes\\court" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%%evtloc%\\schemes\\fabricate_hook" "pliki\\en%gle%%evtloc%\\schemes\\fabricate_hook" "temp\\supply%gle%%evtloc%\\schemes\\fabricate_hook" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%%evtloc%\\schemes\\learn_language" "pliki\\en%gle%%evtloc%\\schemes\\learn_language" "temp\\supply%gle%%evtloc%\\schemes\\learn_language" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%%evtloc%\\schemes\\murder" "pliki\\en%gle%%evtloc%\\schemes\\murder" "temp\\supply%gle%%evtloc%\\schemes\\murder" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%%evtloc%\\schemes\\seduce" "pliki\\en%gle%%evtloc%\\schemes\\seduce" "temp\\supply%gle%%evtloc%\\schemes\\seduce" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%%evtloc%\\schemes\\steal_back_artifact" "pliki\\en%gle%%evtloc%\\schemes\\steal_back_artifact" "temp\\supply%gle%%evtloc%\\schemes\\steal_back_artifact" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%%evtloc%\\schemes\\sway" "pliki\\en%gle%%evtloc%\\schemes\\sway" "temp\\supply%gle%%evtloc%\\schemes\\sway" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%%evtloc%\\secret_events" "pliki\\en%gle%%evtloc%\\secret_events" "temp\\supply%gle%%evtloc%\\secret_events" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%%evtloc%\\story_cycles" "pliki\\en%gle%%evtloc%\\story_cycles" "temp\\supply%gle%%evtloc%\\story_cycles" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%%evtloc%\\stress_events" "pliki\\en%gle%%evtloc%\\stress_events" "temp\\supply%gle%%evtloc%\\stress_events" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%%evtloc%\\trait_specific_events" "pliki\\en%gle%%evtloc%\\trait_specific_events" "temp\\supply%gle%%evtloc%\\trait_specific_events" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%%evtloc%\\travel_events" "pliki\\en%gle%%evtloc%\\travel_events" "temp\\supply%gle%%evtloc%\\travel_events" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%%evtloc%\\yearly_events" "pliki\\en%gle%%evtloc%\\yearly_events" "temp\\supply%gle%%evtloc%\\yearly_events" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%%evtloc%\\war_event" "pliki\\en%gle%%evtloc%\\war_event" "temp\\supply%gle%%evtloc%\\war_event" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%\\gui" "pliki\\en%gle%\\gui" "temp\\supply%gle%\\gui" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%\\hold_court_events" "pliki\\en%gle%\\hold_court_events" "temp\\supply%gle%\\hold_court_events" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%\\hostages" "pliki\\en%gle%\\hostages" "temp\\supply%gle%\\hostages" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%\\interactions" "pliki\\en%gle%\\interactions" "temp\\supply%gle%\\interactions" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%\\inventory" "pliki\\en%gle%\\inventory" "temp\\supply%gle%\\inventory" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%\\lifestyles" "pliki\\en%gle%\\lifestyles" "temp\\supply%gle%\\lifestyles" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%\\load_tips" "pliki\\en%gle%\\load_tips" "temp\\supply%gle%\\load_tips" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%\\map" "pliki\\en%gle%\\map" "temp\\supply%gle%\\map" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%\\modifiers" "pliki\\en%gle%\\modifiers" "temp\\supply%gle%\\modifiers" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%\\names" "pliki\\en%gle%\\names" "temp\\supply%gle%\\names" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%\\opinions" "pliki\\en%gle%\\opinions" "temp\\supply%gle%\\opinions" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%\\portraits" "pliki\\en%gle%\\portraits" "temp\\supply%gle%\\portraits" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%\\religion" "pliki\\en%gle%\\religion" "temp\\supply%gle%\\religion" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%\\travel" "pliki\\en%gle%\\travel" "temp\\supply%gle%\\travel" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%\\triggers" "pliki\\en%gle%\\triggers" "temp\\supply%gle%\\triggers" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%\\struggles" "pliki\\en%gle%\\struggles" "temp\\supply%gle%\\struggles" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%gle%\\tutorial" "pliki\\en%gle%\\tutorial" "temp\\supply%gle%\\tutorial" yaml
::jomini
java -jar "%parser%" "%sup%" "pliki\\%lang%%jom%" "pliki\\en%jom%" "temp\\supply%jom%" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%jom%\\achievements" "pliki\\en%jom%\\achievements" "temp\\supply%jom%\\achievements" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%jom%\\credits" "pliki\\en%jom%\\credits" "temp\\supply%jom%\\credits" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%jom%\\frontend" "pliki\\en%jom%\\frontend" "temp\\supply%jom%\\frontend" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%jom%\\jomini" "pliki\\en%jom%\\jomini" "temp\\supply%jom%\\jomini" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%jom%\\jomini\\coat_of_arms" "pliki\\en%jom%\\jomini\\coat_of_arms" "temp\\supply%jom%\\jomini\\coat_of_arms" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%jom%\\jomini\\multiplayer_gui" "pliki\\en%jom%\\jomini\\multiplayer_gui" "temp\\supply%jom%\\jomini\\multiplayer_gui" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%jom%\\jomini\\script_system" "pliki\\en%jom%\\jomini\\script_system" "temp\\supply%jom%\\jomini\\script_system" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%jom%\\pops" "pliki\\en%jom%\\pops" "temp\\supply%jom%\\pops" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%jom%\\settings" "pliki\\en%jom%\\settings" "temp\\supply%jom%\\settings" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%%jom%\\social" "pliki\\en%jom%\\social" "temp\\supply%jom%\\social" yaml
::clausewitz
java -jar "%parser%" "%sup%" "pliki\\%lang%\\clausewitz\\localization" "pliki\\en\\clausewitz\\localization" "temp\\supply\\clausewitz\\localization" yaml
java -jar "%parser%" "%sup%" "pliki\\%lang%\\clausewitz\\localization\\text_utils" "pliki\\en\\clausewitz\\localization\\text_utils" "temp\\supply\\clausewitz\\localization\\text_utils" yaml

echo "Starting compiling latest translations to desired language - in this case - polish."
::game
java -jar "%parser%" "%fte%" "temp\\supply%gle%" "temp\\ck3%gle%" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%\\accolades" "temp\\ck3%gle%\\accolades" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%\\activities" "temp\\ck3%gle%\\activities" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%\\artifacts" "temp\\ck3%gle%\\artifacts" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%\\bookmark" "temp\\ck3%gle%\\bookmark" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%\\credits" "temp\\ck3%gle%\\credits" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%\\culture" "temp\\ck3%gle%\\culture" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%\\culture\\traditions" "temp\\ck3%gle%\\culture\\traditions" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%\\custom_localization" "temp\\ck3%gle%\\custom_localization" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%\\diarchies" "temp\\ck3%gle%\\diarchies" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%\\dlc\\bp1" "temp\\ck3%gle%\\dlc\\bp1" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%\\dlc\\bp2" "temp\\ck3%gle%\\dlc\\bp2" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%\\dlc\\ep1" "temp\\ck3%gle%\\dlc\\ep1" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%\\dlc\\ep2" "temp\\ck3%gle%\\dlc\\ep2" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%\\dlc\\ep2\\dynasty_legacies" "temp\\ck3%gle%\\dlc\\ep2\\dynasty_legacies" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%\\dlc\\ep2\\pulse actions" "temp\\ck3%gle%\\dlc\\ep2\\pulse actions" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%\\dlc\\ep2\\tour" "temp\\ck3%gle%\\dlc\\ep2\\tour" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%\\dlc\\ep2\\tournament" "temp\\ck3%gle%\\dlc\\ep2\\tournament" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%\\dlc\\ep2\\travel" "temp\\ck3%gle%\\dlc\\ep2\\travel" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%\\dlc\\ep2\\wedding" "temp\\ck3%gle%\\dlc\\ep2\\wedding" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%\\dlc\\fp1" "temp\\ck3%gle%\\dlc\\fp1" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%\\dlc\\fp2" "temp\\ck3%gle%\\dlc\\fp2" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%\\dynasties" "temp\\ck3%gle%\\dynasties" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%\\dynasty_legacies" "temp\\ck3%gle%\\dynasty_legacies" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%\\effects" "temp\\ck3%gle%\\effects" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%\\enum" "temp\\ck3%gle%\\enum" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%%evtloc%" "temp\\ck3%gle%%evtloc%" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%%evtloc%\\activities" "temp\\ck3%gle%%evtloc%\\activities" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%%evtloc%\\childhood" "temp\\ck3%gle%%evtloc%\\childhood" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%%evtloc%\\councillor_task_events" "temp\\ck3%gle%%evtloc%\\councillor_task_events" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%%evtloc%\\councillor_task_events\\councillor_spouse_events" "temp\\ck3%gle%%evtloc%\\councillor_task_events\\councillor_spouse_events" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%%evtloc%\\court_events" "temp\\ck3%gle%%evtloc%\\court_events" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%%evtloc%\\culture_events" "temp\\ck3%gle%%evtloc%\\culture_events" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%%evtloc%\\death_events" "temp\\ck3%gle%%evtloc%\\death_events" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%%evtloc%\\decisions" "temp\\ck3%gle%%evtloc%\\decisions" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%%evtloc%\\experimental" "temp\\ck3%gle%%evtloc%\\experimental" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%%evtloc%\\government_events" "temp\\ck3%gle%%evtloc%\\government_events" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%%evtloc%\\hold_court_events" "temp\\ck3%gle%%evtloc%\\hold_court_events" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%%evtloc%\\lifestyle" "temp\\ck3%gle%%evtloc%\\lifestyle" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%%evtloc%\\lifestyle\\governance" "temp\\ck3%gle%%evtloc%\\lifestyle\\governance" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%%evtloc%\\lifestyle\\guile" "temp\\ck3%gle%%evtloc%\\lifestyle\\guile" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%%evtloc%\\lifestyle\\nickname" "temp\\ck3%gle%%evtloc%\\lifestyle\\nickname" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%%evtloc%\\lifestyle\\scholarship" "temp\\ck3%gle%%evtloc%\\lifestyle\\scholarship" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%%evtloc%\\lifestyle\\statecraft" "temp\\ck3%gle%%evtloc%\\lifestyle\\statecraft" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%%evtloc%\\lifestyle\\warfare" "temp\\ck3%gle%%evtloc%\\lifestyle\\warfare" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%%evtloc%\\prison_events" "temp\\ck3%gle%%evtloc%\\prison_events" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%%evtloc%\\relation_events" "temp\\ck3%gle%%evtloc%\\relation_events" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%%evtloc%\\religion_events" "temp\\ck3%gle%%evtloc%\\religion_events" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%%evtloc%\\schemes" "temp\\ck3%gle%%evtloc%\\schemes" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%%evtloc%\\schemes\\abduct" "temp\\ck3%gle%%evtloc%\\schemes\\abduct" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%%evtloc%\\schemes\\befriend" "temp\\ck3%gle%%evtloc%\\schemes\\befriend" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%%evtloc%\\schemes\\claim_throne" "temp\\ck3%gle%%evtloc%\\schemes\\claim_throne" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%%evtloc%\\schemes\\court" "temp\\ck3%gle%%evtloc%\\schemes\\court" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%%evtloc%\\schemes\\fabricate_hook" "temp\\ck3%gle%%evtloc%\\schemes\\fabricate_hook" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%%evtloc%\\schemes\\learn_language" "temp\\ck3%gle%%evtloc%\\schemes\\learn_language" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%%evtloc%\\schemes\\murder" "temp\\ck3%gle%%evtloc%\\schemes\\murder" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%%evtloc%\\schemes\\seduce" "temp\\ck3%gle%%evtloc%\\schemes\\seduce" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%%evtloc%\\schemes\\steal_back_artifact" "temp\\ck3%gle%%evtloc%\\schemes\\steal_back_artifact" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%%evtloc%\\schemes\\sway" "temp\\ck3%gle%%evtloc%\\schemes\\sway" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%%evtloc%\\secret_events" "temp\\ck3%gle%%evtloc%\\secret_events" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%%evtloc%\\story_cycles" "temp\\ck3%gle%%evtloc%\\story_cycles" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%%evtloc%\\stress_events" "temp\\ck3%gle%%evtloc%\\stress_events" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%%evtloc%\\trait_specific_events" "temp\\ck3%gle%%evtloc%\\trait_specific_events" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%%evtloc%\\travel_events" "temp\\ck3%gle%%evtloc%\\travel_events" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%%evtloc%\\yearly_events" "temp\\ck3%gle%%evtloc%\\yearly_events" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%%evtloc%\\war_event" "temp\\ck3%gle%%evtloc%\\war_event" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%\\gui" "temp\\ck3%gle%\\gui" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%\\hold_court_events" "temp\\ck3%gle%\\hold_court_events" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%\\hostages" "temp\\ck3%gle%\\hostages" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%\\interactions" "temp\\ck3%gle%\\interactions" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%\\inventory" "temp\\ck3%gle%\\inventory" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%\\lifestyles" "temp\\ck3%gle%\\lifestyles" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%\\load_tips" "temp\\ck3%gle%\\load_tips" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%\\map" "temp\\ck3%gle%\\map" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%\\modifiers" "temp\\ck3%gle%\\modifiers" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%\\names" "temp\\ck3%gle%\\names" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%\\opinions" "temp\\ck3%gle%\\opinions" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%\\portraits" "temp\\ck3%gle%\\portraits" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%\\religion" "temp\\ck3%gle%\\religion" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%\\travel" "temp\\ck3%gle%\\travel" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%\\triggers" "temp\\ck3%gle%\\triggers" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%\\struggles" "temp\\ck3%gle%\\struggles" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%gle%\\tutorial" "temp\\ck3%gle%\\tutorial" "%charset%"
::jomini
java -jar "%parser%" "%fte%" "temp\\supply%jom%" "temp\\ck3%jom%" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%jom%\\achievements" "temp\\ck3%jom%\\achievements" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%jom%\\credits" "temp\\ck3%jom%\\credits" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%jom%\\frontend" "temp\\ck3%jom%\\frontend" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%jom%\\jomini" "temp\\ck3%jom%\\jomini" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%jom%\\jomini\\coat_of_arms" "temp\\ck3%jom%\\jomini\\coat_of_arms" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%jom%\\jomini\\multiplayer_gui" "temp\\ck3%jom%\\jomini\\multiplayer_gui" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%jom%\\jomini\\script_system" "temp\\ck3%jom%\\jomini\\script_system" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%jom%\\pops" "temp\\ck3%jom%\\pops" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%jom%\\settings" "temp\\ck3%jom%\\settings" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply%jom%\\social" "temp\\ck3%jom%\\social" "%charset%"
::clausewitz
java -jar "%parser%" "%fte%" "temp\\supply\\clausewitz\\localization" "temp\\ck3\\clausewitz\\localization" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply\\clausewitz\\localization\\text_utils" "temp\\ck3\\clausewitz\\localization\\text_utils" "%charset%"


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