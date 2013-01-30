# language: sv
@sok

Egenskap: Ekvivalenspartionering 65535

Bakgrund: Användaren är inloggad
	Givet att jag är inloggad
	När jag klickar på Sök

Scenario: Off2off skall hantera ogiltliga värden
	Och jag skriver in "65535"
	Så ska sidan hantera värdet rätt