# language: sv

Egenskap: Avvisad inloggning

Bakgrund: Användaren ska inte kunna logga in med fel eller ogiltigt lösenord

Scenario: Logga in
	Givet att jag är på förstasidan
	När jag klickar på Logga in-länken
	Och att jag fyller i användarnamn med "Testuser"
	Och att jag fyller i lösenord med "learningwel"
	Och jag klickar på "Logga in"
	Så ska användaren nekas inloggning