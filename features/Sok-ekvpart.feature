# language: sv
@sok

Egenskap: Sök Ekvivalenspartionering
	För att sidan skall vara stabil
	Som en inloggad användare
	Vill jag inte krasha sidan vid en vanlig/ofrivillig sifferinmatning
	
Bakgrund:
	Givet att jag är inloggad
	Och jag klickar på Sök

	
Scenario: Off2off skall hantera 65534
	När jag skriver in "65534"
	Så ska sidan ge resultat i form av "poster"
	
Scenario: Off2off skall hantera 65535
	När jag skriver in "65535"
	Så ska sidan ge resultat i form av "poster"
	
Scenario: Off2off skall hantera 65536
	När jag skriver in "65536"
	Så ska sidan ge resultat i form av "poster"
	
Scenario: Sökfunktionen skall hantera avslutande mellanslag
	Och jag skriver in "stol "
	Så ska sidan ge resultat i form av "poster"
	
Scenario: Off2off skall hantera enkel unicode
	Och jag skriver in "äåö"
	Så ska sidan ge resultat i form av "poster"
	
Scenario: Off2off skall hantera Extremt många tecken
	Och jag skriver in "extremt många tecken"
	Så ska sidan ge resultat i form av "Inga annonser hittades"
	
Scenario: Off2off skall hantera giltliga värden
	Och jag skriver in "stol"
	Så ska sidan ge resultat i form av "poster"	
	
