# language: sv
@sok

Egenskap: Sökfunktion vid 0 träffresultat

Bakgrund: Användaren är inloggad
	Givet att jag är inloggad
	När jag klickar på Sök

Scenario: Off2off skall hantera 0 träffresultat
	Och jag skriver in "kjsdfjkhdfkjhasdf"
	Så ska sidan ge resultat i form av "Inga annonser hittades"