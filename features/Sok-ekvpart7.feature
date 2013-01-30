# language: sv

Egenskap: Ekvivalenspartionering undre gräns 1

Bakgrund: Användaren är inloggad
	Givet att jag är inloggad
	Och att jag klickar på Sök

Scenario: Off2off skall hantera ogiltliga värden
	När jag skriver in "-2147483648"
	Så ska sidan hantera värdet rätt