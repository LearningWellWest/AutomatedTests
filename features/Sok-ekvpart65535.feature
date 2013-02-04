# language: sv
@sok

Egenskap: Sök Ekvivalenspartionering 65535

Bakgrund: Användaren är inloggad
	För att sidan skall vara stabil
	Som en inloggad användare
	Vill jag inte krasha sidan vid en vanlig sifferinmatning
	Givet att jag är inloggad
	När jag klickar på Sök

Scenario: Off2off skall hantera ogiltliga värden
	Givet att jag är inloggad
	När jag klickar på Sök
	Och jag skriver in "65535"
	Så ska sidan ge resultat i form av "poster"