# language: sv
@sok

Egenskap: Sök Strängpartionering unicode tecken

Bakgrund: Användaren är inloggad
	Givet att jag är inloggad
	När jag klickar på Sök

Scenario: Off2off skall hantera ogiltliga värden
	Och jag skriver in "ζ܁᝛￤ꙛ᱑𢒚ㄔ᧐ゼᶈ혍ꡖﷄ"
	Så ska sidan ge resultat i form av "Inga annonser hittades"