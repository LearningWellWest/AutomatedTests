# language: sv

@loggain

Egenskap: Användaren ska nekas logga in med ÅÄÖ och mellanslag

Bakgrund:
	Givet att jag är på förstasidan

Scenario: Off2off skall hantera ÅÄÖ samt mellanslag
	När jag klickar på Logga in-länken
	Och jag fyller i användarnamn med "          "
	Och jag fyller i lösenord med "ä Ö  öå ÄÅ"
	Och jag klickar på Logga in
	Så ska texten "Fel användarnamn eller lösenord" visas
