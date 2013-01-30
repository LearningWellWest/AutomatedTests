# language: sv

Egenskap: Ekvivalenspartionering 1, logga in med ogiltiga tecken

Bakgrund:
	Givet att jag är på förstasidan

Scenario: Off2off skall hantera negativa värden
	När jag klickar på Logga in-länken
	Och jag fyller i användarnamn med "-1"
	Och jag fyller i lösenord med "-003478934"
	Och jag klickar på Logga in
	Så ska användaren nekas inloggning
