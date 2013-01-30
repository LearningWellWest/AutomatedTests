# language: sv

Egenskap: Det går att logga in på hemsidan

Bakgrund:
	Givet att jag är på förstasidan

Scenario: Logga in
	När jag klickar på Logga in-länken
	Och jag fyller i användarnamn med "Testuser"
	Och jag fyller i lösenord med "learningwell"
	Och jag klickar på Logga in
	Så ska användaren loggas in och sidan visar "Hej, Testuser!"
