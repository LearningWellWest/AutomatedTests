# language: sv
@sok

Egenskap: Sök Ekvivalenspartionering 2^16
	För att sidan skall vara stabil
	Som en inloggad användare
	Vill jag inte krasha sidan vid en vanlig sifferinmatning
	
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