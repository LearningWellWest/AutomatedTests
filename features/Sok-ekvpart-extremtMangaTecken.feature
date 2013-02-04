# language: sv
@sok

Egenskap: Sök Strängpartionering extremt många tecken

Bakgrund: Användaren är inloggad
	Givet att jag är inloggad
	När jag klickar på Sök

Scenario: Off2off skall hantera ogiltliga värden
	Och jag skriver in extremt många tecken
	Så ska sidan ge resultat i form av "Inga annonser hittades"
