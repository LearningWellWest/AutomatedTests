# language: sv

Egenskap: Logga in

Bakgrund: Användaren vill kunna logga in

Scenario: Logga in
	Givet att jag är på förstasidan
	Och att jag klickar på “Logga in-länken”
	Och att jag fyller i användarnamn med “Testuser”
	Och att jag fyller i lösenord med “learningwell”
	När jag klickar på “Logga in”
	Så ska användaren loggas in och sidan visar “Hej, Testuser!”