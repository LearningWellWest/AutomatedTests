# language: sv

Egenskap: Strängpartionering unicode tecken

Bakgrund: Användaren är inloggad
	Givet att jag är inloggad
	Och att jag klickar på Sök

Scenario: Off2off skall hantera ogiltliga värden
	När jag skriver in "ζ܁᝛￤ꙛ᱑𢒚ㄔ᧐ゼᶈ혍ꡖﷄ"
	Så ska sidan hantera värdet rätt