# language: sv
@sok

Egenskap: Ekvivalenspartionering undre gräns 2

Bakgrund: Användaren är inloggad
	Givet att jag är inloggad
	När jag klickar på Sök

Scenario: Off2off skall hantera ogiltliga värden
	Och jag skriver in "-2147483649"
	Så ska sidan hantera värdet rätt