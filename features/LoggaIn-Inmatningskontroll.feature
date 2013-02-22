# language: sv	
@loggain

Egenskap: Logga in - Inmatningskontroll
	För att jag inte vill att sidan ska bete sig underligt
	Som en användare
	Vill jag att sidan hanterar orimlig inmatning
	
Bakgrund: Användaren är utloggad och klickar på logga in
	Givet att jag är på förstasidan
	Och jag klickar på logga in-länken

Scenario: Login-funktionen skall hantera ÅÄÖ samt mellanslag
	När jag fyller i användarnamn med "          "
	Och jag fyller i lösenord med "ä Ö  öå ÄÅ"
	Och jag klickar på logga in
	Så ska texten "Felaktiga inloggningsuppgifter" visas
	
Scenario: Login-funktionen skall hantera negativa värden
	När jag fyller i användarnamn med "-1"
	Och jag fyller i lösenord med "-003478934"
	Och jag klickar på logga in
	Så ska texten "Felaktiga inloggningsuppgifter" visas
	
Scenario: Login-funktionen skall hantera specialtecken
	När jag fyller i användarnamn med "?+¨€]}="!^'>-"
	Och jag fyller i lösenord med ":,_;#)(\`´*^^"
	Och jag klickar på logga in
	Så ska texten "Felaktiga inloggningsuppgifter" visas
	
Scenario: Login-funktionen skall hantera tomt fält
	När jag klickar på logga in
	Så ska texten "Felaktiga inloggningsuppgifter" visas
	
Scenario: Login-funktionen skall hantera Unicode-tecken
	När jag fyller i användarnamn med "É‡ð¨…á‰”á¼·ã„£á·á—à´‡vâ”—Ü…ï¯‘ã‚«ð¦™×€ë¦‘ášêˆ³ê¨·ã€¸"
	Och jag fyller i lösenord med "Ï†ÛžÏ‡ÏˆÎ³á½­Ó¶ê€´â™šâ™›à¯µà¯¶Î´ÎµÎ¶"
	Och jag klickar på logga in
	Så ska texten "Felaktiga inloggningsuppgifter" visas

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
	Så ska texten "Felaktiga inloggningsuppgifter" visas
	
Scenario: Användaren ska inte kunna logga in med fel gemener och versaler ifyllda i lösenordet
	När jag fyller i användarnamn med "Testuser"
	Och jag fyller i lösenord med "LEARNINGWELL"
	Och jag klickar på logga in
	Så ska texten "Felaktiga inloggningsuppgifter" visas
