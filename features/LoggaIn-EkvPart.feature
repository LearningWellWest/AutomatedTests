# language: sv	
@loggain

Egenskap: Logga in ekvivalenspartionering
	För att sidan skall vara stabil och säker
	Som en utloggad användare
	Vill jag inte att sidan ska krascha vid en vanlig/ofrivillig datainmatning

Bakgrund: Användaren är utloggad och klickar på logga in
	Givet att jag är på förstasidan
	Och jag klickar på Logga in-länken

Scenario: Användaren ska inte kunna logga in med fel eller ogiltigt användarnamn
	När jag fyller i användarnamn med "Testuser1"
	Och jag fyller i lösenord med "learningwell"
	Och jag klickar på Logga in
	Så ska texten "Fel användarnamn eller lösenord" visas
	
Scenario: Användaren ska inte kunna logga in med fel eller ogiltigt lösenord
	När jag fyller i användarnamn med "Testuser"
	Och jag fyller i lösenord med "learningwel"
	Och jag klickar på Logga in
	Så ska texten "Fel användarnamn eller lösenord" visas

Scenario: Off2off skall hantera ÅÄÖ samt mellanslag
	När jag fyller i användarnamn med "          "
	Och jag fyller i lösenord med "ä Ö  öå ÄÅ"
	Och jag klickar på Logga in
	Så ska texten "Fel användarnamn eller lösenord" visas
	
Scenario: Off2off skall hantera negativa värden
	När jag fyller i användarnamn med "-1"
	Och jag fyller i lösenord med "-003478934"
	Och jag klickar på Logga in
	Så ska texten "Fel användarnamn eller lösenord" visas
	
Scenario: Off2off skall hantera specialtecken
	När jag fyller i användarnamn med "?+¨€]}="!^'>-"
	Och jag fyller i lösenord med ":,_;#)(\`´*^^"
	Och jag klickar på Logga in
	Så ska texten "Fel användarnamn eller lösenord" visas
	
Scenario: Off2off skall hantera tomt fält
	När jag klickar på Logga in
	Så ska texten "Fel användarnamn eller lösenord" visas
	
Scenario: Off2off skall hantera Unicode-tecken
	När jag fyller i användarnamn med "É‡ð¨…á‰”á¼·ã„£á·á—à´‡vâ”—Ü…ï¯‘ã‚«ð¦™×€ë¦‘ášêˆ³ê¨·ã€¸"
	Och jag fyller i lösenord med "Ï†ÛžÏ‡ÏˆÎ³á½­Ó¶ê€´â™šâ™›à¯µà¯¶Î´ÎµÎ¶"
	Och jag klickar på Logga in
	Så ska texten "Fel användarnamn eller lösenord" visas
