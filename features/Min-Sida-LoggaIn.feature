# language: sv	
@loggain

Egenskap: Man ska kunna logga in korrekt på hemsidan
	För att kunna skapa annonser samt använda Mina sidor
	Som en utloggad användare
	Vill jag kunna logga in på hemsidan
	
Bakgrund: Användaren är utloggad och klickar på logga in
	Givet att jag är på förstasidan
	Och jag klickar på Logga in-länken
	
Scenario: Användaren ska kunna logga in korrekt
	När jag fyller i användarnamn med "Testuser"
	Och jag fyller i lösenord med "learningwell"
	Och jag klickar på Logga in
	Så ska användaren loggas in och sidan visar "Hej, Testuser!"