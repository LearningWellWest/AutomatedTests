# language: sv	
@loggain

Egenskap: Logga in
	För att kunna skapa annonser samt använda mina sidor
	Som en användare
	Vill jag kunna logga in på hemsidan
	
Bakgrund: Användaren är utloggad och klickar på logga in
	Givet att jag är på förstasidan
	Och jag klickar på logga in-länken

@malvin
Scenario: Vid inloggning via Malvin ska @malmo.se var förifyllt och ej redigerbart.
	När jag rensar användarnamn-fältet
	Så ska "@malmo.se" fortfarande visas någonstans på sidan
	
Scenario: Användaren ska kunna logga in med korrekta uppgifter
	När jag fyller i användarnamn med "Testuser"
	Och jag fyller i lösenord med "learningwell"
	Och jag klickar på logga in
	Så ska användaren loggas in och sidan visar "[Logga ut]"

Scenario: Användaren ska inte kunna logga in med fel eller ogiltigt användarnamn
	När jag fyller i användarnamn med "Testuser1"
	Och jag fyller i lösenord med "learningwell"
	Och jag klickar på logga in
	Så ska texten "Felaktiga inloggningsuppgifter" visas
	
Scenario: Användaren ska inte kunna logga in med fel eller ogiltigt lösenord
	När jag fyller i användarnamn med "Testuser"
	Och jag fyller i lösenord med "learningwel"
	Och jag klickar på logga in
	Så ska texten "Felaktiga inloggningsuppgifter" visas

