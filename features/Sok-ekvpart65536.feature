# language: sv

Egenskap: Ekvivalenspartionering 65536

Bakgrund: Användaren är inloggad
	Givet att jag är inloggad
	Och att jag klickar på Sök

Scenario: Off2off skall hantera ogiltliga värden
	När jag skriver in "65536"
	Så ska sidan hantera värdet rätt