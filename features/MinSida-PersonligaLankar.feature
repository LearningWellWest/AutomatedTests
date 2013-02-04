# language: sv

@minsida

Egenskap: Man ska kunna se sina ordrar

Bakgrund: En användare är inloggad
	Givet att jag är inloggad

Scenario: inloggad Mina köp/min försäljning
	När jag klickar på Min sida
	Och sedan klickar på Mina köp/min försäljning
	Så ska jag komma till Mina ordrar

	Scenario: Användaren vill kunna se avtalen	
	När jag klickar på Min sida
	Och jag sedan klickar på Avtal
	Så ska jag komma till Avtal
	
	Scenario: inloggad Mina annonser
	När jag klickar på Min sida
	Och jag klickar på Mina annonser
	Så ska jag komma till Mina annonser
	
	Scenario: inloggad Mina adresser
	När jag klickar på Min sida
	Och jag sedan klickar på Mina adresser
	Så ska jag komma till Mina Adresser
	
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