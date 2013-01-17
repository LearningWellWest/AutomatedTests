# language: sv

Egenskap: Avvisad inloggning

Bakgrund: Användaren ska inte kunna logga in med fel användarnamn eller lösenord

Scenario: Logga in
	Givet att jag är på förstasidan
	Och att jag klickar på “Logga in-länken”
	Och att jag fyller i användarnamn med “Testuser”
	Och att jag fyller i lösenord med “learningwel”
	När jag klickar på “Logga in”
	Så ska användaren nekas inloggning