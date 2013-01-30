# language: sv

Egenskap: Ekvivalenspartionering 2

Bakgrund: Användaren är inloggad
	Givet att jag är inloggad
	Och att jag klickar på Sök
	
Scenario: Off2off skall hantera ogiltliga värden
	När jag skriver in 65534
	Så ska sidan hantera värdet rätt