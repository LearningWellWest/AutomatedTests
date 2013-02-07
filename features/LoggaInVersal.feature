# language: sv	
@loggain

Egenskap: Hemsidan ska hantera gemener och versaler
	För att undvika att få liknande användarnamn
	Som en utloggad användare
	Vill jag kunna logga in med antingen gemener eller versaler i användarnamnet 
	
Bakgrund: Användaren är utloggad och klickar på logga in
	Givet att jag är på förstasidan
	Och jag klickar på Logga in-länken
	
Scenario: Användaren ska kunna logga in korrekt
	När jag fyller i användarnamn med "Testuser"
	Och jag fyller i lösenord med "learningwell"
	Och jag klickar på Logga in
	Så ska användaren loggas in och sidan visar "Hej, Testuser!"
	
Scenario: Användaren ska kunna logga in korrekt
	När jag fyller i användarnamn med "Testuser"
	Och jag fyller i lösenord med "learningwell"
	Och jag klickar på Logga in
	Så ska användaren loggas in och sidan visar "Hej, Testuser!"