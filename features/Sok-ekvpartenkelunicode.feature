# language: sv

Egenskap: Strängpartionering enkel unicode

Bakgrund: Användaren är inloggad
	Givet att jag är inloggad
	Och att jag klickar på Sök

Scenario: Off2off skall hantera giltliga värden
	När jag skriver in "äåö"
	Så ska sidan hantera värdet rätt