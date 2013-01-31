# language: sv
@sok

Egenskap: Sök Ekvivalenspartionering övre gräns 2

Bakgrund: Användaren är inloggad
	Givet att jag är inloggad
	När jag klickar på Sök

Scenario: Off2off skall hantera ogiltliga värden
	Och jag skriver in "2147483648"
	Så ska sidan ge resultat i form av "poster"