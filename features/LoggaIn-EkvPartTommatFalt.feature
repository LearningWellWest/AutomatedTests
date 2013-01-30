# language: sv

Egenskap: Ekvivalenspartionering, nekas logga in med tomma fält

Bakgrund:
	Givet att jag är på förstasidan

Scenario: Off2off skall hantera tomt fält
	När jag klickar på Logga in-länken
	Och jag klickar på Logga in
	Så ska texten "Fel användarnamn eller lösenord" visas
