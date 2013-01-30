# language: sv

Egenskap: Ekvivalenspartionering, nekas logga in med specialtecken

Bakgrund:
	Givet att jag är på förstasidan

Scenario: Off2off skall hantera specialtecken
	När jag klickar på Logga in-länken
	Och jag fyller i användarnamn med "?+¨€]}="!^'>-"
	Och jag fyller i lösenord med ":,_;#)(\`´*^^"
	Och jag klickar på Logga in
	Så ska texten "Fel användarnamn eller lösenord" visas
