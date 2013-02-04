# language: sv

@minsida

Egenskap: Användaren ska kunna lägga till och ta bort adress

Bakgrund: En användare är inloggad
	Givet att jag är inloggad

Scenario: inloggad Mina adresser
	När jag klickar på Min sida
	Och jag sedan klickar på Mina adresser
	Och lägger till nya adressuppgifter
	Så ska adressen sparas och visas

	
	Scenario: inloggad Mina adresser
	När jag klickar på Min sida
	Och jag sedan klickar på Mina adresser
	Och klickar på Ta bort
	Så ska adressen raderas