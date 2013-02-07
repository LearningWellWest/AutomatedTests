# language: sv
@minsida

Egenskap: Man ska kunna ändra sina personliga uppgifter
	För att ha hålla mina personupgifter uppdaterade
	Som en inloggad användare
	Vill jag kunna ändra mina personuppgifter
	
Bakgrund: Användaren är inloggad och klickar på Min sida
	Givet att jag är inloggad
	Och jag klickar på min sida
	
Scenariomall: Användaren ska kunna ändra efternamnet
	När jag ändrar förnamnet till <förnamn>
	Och klickar på spara
	Så ska förnamnet <förnamn> uppdateras och sparas
	
Exempel:	
	| förnamn 	|
    | "test1" 	|
    | "testar1" |
	
Scenario: Användaren ska kunna ändra efternamn
	När jag ändrar efternamnet till "Testarsson"
	Och klickar på spara
	Så ska efternamnet "Testarsson" uppdateras och sparas
	
Scenario: Användaren ska kunna ändra mobilnummer
	När jag ändrar mobilnumret till "+46701234567"
	Och klickar på spara
	Så ska mobilnumret uppdateras och sparas
	
Scenario: Användaren ska kunna ändra telefonnummer
	När jag ändrar telefonnumret till "0987654321"
	Och klickar på spara
	Så ska telefonnumret uppdateras och sparas
	
Scenariomall: Användaren ska kunna ändra email-adress
	När jag ändrar email-adressen till <email>
	Och klickar på spara
	Så ska email-adressen <email> uppdateras och sparas
	
Exempel:	
	| email 							|
    | "patrikjohansson87@hotmail.com" 	|
    | "bloondie87@gmail.com" 			|
	


	
