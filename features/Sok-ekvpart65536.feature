# language: sv
@soksok

Egenskap: Sök Ekvivalenspartionering 65536
	För att sidan skall vara stabil
	Som en inloggad användare
	Vill jag inte krasha sidan vid en vanlig sifferinmatning

Scenario: Off2off skall hantera ogiltliga värden
	Givet att jag är inloggad
	När jag klickar på Sök
	Och jag skriver in "65536"
	Så ska sidan ge resultat i form av "poster"