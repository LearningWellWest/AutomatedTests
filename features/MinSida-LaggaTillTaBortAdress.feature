# language: sv
@minsida

Egenskap: Användaren ska kunna lägga till och ta bort sin adress

Bakgrund: Användaren är inloggad och klickar på Min sida
	Givet att jag är inloggad
	Och jag klickar på Min sida
	
Scenario: Användaren ska kunna lägga till en adress
	När jag sedan klickar på Mina adresser
	Och lägger till nya adressuppgifter
	Så ska adressen sparas och visas

Scenario: Användaren ska kunna ta bort en adress
	När jag sedan klickar på Mina adresser
	Och klickar på Ta bort
	Så ska adressen raderas