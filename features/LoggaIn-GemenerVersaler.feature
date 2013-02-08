# language: sv	
@loggain

Egenskap: Inloggningen på hemsidan ska hantera gemener och versaler
	För att få ett unikt användarnamn och ett säkert lösenord
	Som en utloggad användare
	Vill jag att hemsidan ska hantera och kunna skilja på gemener och versaler när man loggar in
	
Bakgrund: Användaren är utloggad och klickar på logga in
	Givet att jag är på förstasidan
	Och jag klickar på logga in-länken
	
Scenario: Användaren ska kunna logga in med bara gemener i användarnamnet
	När jag fyller i användarnamn med "testuser"
	Och jag fyller i lösenord med "learningwell"
	Och jag klickar på logga in
	Så ska användaren loggas in och sidan visar "[Logga ut]"
	
Scenario: Användaren ska kunna logga in med bara versaler i användarnamnet
	När jag fyller i användarnamn med "TESTUSER"
	Och jag fyller i lösenord med "learningwell"
	Och jag klickar på logga in
	Så ska användaren loggas in och sidan visar "[Logga ut]"
	
Scenario: Användaren ska kunna logga in med blandade gemener och versaler i användarnamnet
	När jag fyller i användarnamn med "TeSTusEr"
	Och jag fyller i lösenord med "learningwell"
	Och jag klickar på logga in
	Så ska användaren loggas in och sidan visar "[Logga ut]"
	
Scenario: Användaren ska inte kunna logga in med fel gemener och versaler ifyllda i lösenordet
	När jag fyller i användarnamn med "Testuser"
	Och jag fyller i lösenord med "Learningwell"
	Och jag klickar på logga in
	Så ska texten "Fel användarnamn eller lösenord" visas
	
Scenario: Användaren ska inte kunna logga in med fel gemener och versaler ifyllda i lösenordet
	När jag fyller i användarnamn med "Testuser"
	Och jag fyller i lösenord med "LEARNINGWELL"
	Och jag klickar på logga in
	Så ska texten "Fel användarnamn eller lösenord" visas