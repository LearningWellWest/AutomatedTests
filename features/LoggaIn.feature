# language: sv

Egenskap: Logga in

Bakgrund: Användaren vill kunna logga in

Scenario: Logga in
	Givet att jag är på förstasidan
	När jag klickar på Logga in-länken
	Och jag fyller i användarnamn med "Testuser"
	Och jag fyller i lösenord med "learningwell"
	Och jag klickar på Logga in
	Så ska användaren loggas in och sidan visar "Hej, Testuser!"