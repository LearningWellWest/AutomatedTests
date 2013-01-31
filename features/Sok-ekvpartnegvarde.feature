# language: sv
@sok

Egenskap: Sök Ekvivalenspartionering negativt värde

Bakgrund: Användaren är inloggad
	Givet att jag är inloggad
	När jag klickar på Sök

Scenario: Off2off skall hantera ogiltliga värden
	Och jag skriver in "-1"
	Så ska sidan ge resultat i form av "poster"