# language: sv	
@loggain

Egenskap: Sidan ska ha en fungerande login-funktion

Bakgrund:
	Givet att jag är på förstasidan

Scenario: Användaren ska kunna logga in korrekt
	När jag klickar på Logga in-länken
	Och jag fyller i användarnamn med "Testuser"
	Och jag fyller i lösenord med "learningwell"
	Och jag klickar på Logga in
	Så ska användaren loggas in och sidan visar "Hej, Testuser!"
	
Scenario: Användaren ska inte kunna logga in med fel eller ogiltigt användarnamn
	När jag klickar på Logga in-länken
	Och jag fyller i användarnamn med "Testuser1"
	Och jag fyller i lösenord med "learningwell"
	Och jag klickar på Logga in
	Så ska texten "Fel användarnamn eller lösenord" visas
	
Scenario: Användaren ska inte kunna logga in med fel eller ogiltigt lösenord
	När jag klickar på Logga in-länken
	Och jag fyller i användarnamn med "Testuser"
	Och jag fyller i lösenord med "learningwel"
	Och jag klickar på Logga in
	Så ska texten "Fel användarnamn eller lösenord" visas

Scenario: Off2off skall hantera ÅÄÖ samt mellanslag
	När jag klickar på Logga in-länken
	Och jag fyller i användarnamn med "          "
	Och jag fyller i lösenord med "ä Ö  öå ÄÅ"
	Och jag klickar på Logga in
	Så ska texten "Fel användarnamn eller lösenord" visas
	
Scenario: Off2off skall hantera negativa värden
	När jag klickar på Logga in-länken
	Och jag fyller i användarnamn med "-1"
	Och jag fyller i lösenord med "-003478934"
	Och jag klickar på Logga in
	Så ska texten "Fel användarnamn eller lösenord" visas
	
Scenario: Off2off skall hantera specialtecken
	När jag klickar på Logga in-länken
	Och jag fyller i användarnamn med "?+¨€]}="!^'>-"
	Och jag fyller i lösenord med ":,_;#)(\`´*^^"
	Och jag klickar på Logga in
	Så ska texten "Fel användarnamn eller lösenord" visas
	
Scenario: Off2off skall hantera tomt fält
	När jag klickar på Logga in-länken
	Och jag klickar på Logga in
	Så ska texten "Fel användarnamn eller lösenord" visas
	
Scenario: Off2off skall hantera Unicode-tecken
	NÃ¤r jag klickar pÃ¥ Logga in-lÃ¤nken
	Och jag fyller i anvÃ¤ndarnamn med "É‡ð¨…á‰”á¼·ã„£á·á—à´‡vâ”—Ü…ï¯‘ã‚«ð¦™×€ë¦‘ášêˆ³ê¨·ã€¸"
	Och jag fyller i lÃ¶senord med "Ï†ÛžÏ‡ÏˆÎ³á½­Ó¶ê€´â™šâ™›à¯µà¯¶Î´ÎµÎ¶"
	Och jag klickar pÃ¥ Logga in
	SÃ¥ ska texten "Fel anvÃ¤ndarnamn eller lÃ¶senord" visas