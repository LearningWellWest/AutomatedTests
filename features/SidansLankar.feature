# language: sv
@minsida

Egenskap: Sidans länkar ska fungera som förväntat
	För att kunna hantera mina ordrar, adresser, annonser och avtal bl.a
	Som en inloggad användare
	Vill jag att sidans olika länkar ska visa förväntat innehåll
	
Bakgrund: Användaren är inloggad och klickar på Min sida
	Givet att jag är inloggad
	Och jag klickar på min sida

@not_ready
Scenario: Användaren vill kunna se sina ordrar
	När jag klickar på mina köp/min försäljning
	Så ska jag komma till mina ordrar

Scenario: Användaren vill kunna se sina adresser
	När jag klickar på mina adresser
	Så ska jag komma till mina adresser

@not_ready	
Scenario: Användaren vill kunna se sina annonser
	När jag klickar på mina annonser
	Så ska jag komma till mina annonser
	
Scenario: Användaren vill kunna se sina avtal
	När jag klickar på avtal
	Så ska jag komma till avtal

Scenario: När jag går till en felaktig länk så ska det visas ett korrekt 404 meddelande 
	När jag skriver in felaktig adress i adressfältet
	Så ska texten "Sidan kunde inte hittas" visas
	

	

	
