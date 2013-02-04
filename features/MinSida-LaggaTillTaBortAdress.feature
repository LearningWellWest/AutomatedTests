# language: sv
@minsida

Egenskap: Användaren ska kunna lägga till och ta bort sin adress

Bakgrund: En användare är inloggad
	Givet att jag är inloggad

Scenario: Användaren ska kunna lägga till en adress
	När jag klickar på Min sida
	Och jag sedan klickar på Mina adresser
	Och lägger till nya adressuppgifter
	Så ska adressen sparas och visas

	
	Scenario: Användaren ska kunna ta bort en adress
	När jag klickar på Min sida
	Och jag sedan klickar på Mina adresser
	Och klickar på Ta bort
	Så ska adressen raderas