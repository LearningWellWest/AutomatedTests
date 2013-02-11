# language: sv

Egenskap: Användaren ska kunna hantera annonser
	För att kunna lägga ut och sälja sina produkter
	Som en inloggad användare
	Vill jag ha möjligheten att skapa, modifiera och ta bort annonser

Bakgrund: En användare är inloggad
	Givet att jag är inloggad
	Och att det inte finns några existerande annonser

Scenario: Användaren skapar en ny annons
	När jag klickar på skapa annons
	Och jag fyller i annonsuppgifter
	Och ger annonsen rubriken "Kokosboll"
	Och klickar på spara annonsen
	Så ska annonsen "Kokosboll" synas under mina annonser

@not_ready
Scenario: Användaren modifierar en annons	
	När jag klickar på min sida
	Och jag klickar på mina annonser
	Och klickar på annonsen "Kokosboll"
	Och klickar på "Ändra"
	Och ger annonsen rubriken "Chokladboll"
	Så ska annonsen "Chokladboll" synas under mina annonser
	Så ska annonsen "Kokosboll" inte synas under mina annonser
@not_ready
Scenario: Användaren tar bort en annons
	När jag klickar på min sida
	Och jag klickar på mina annonser
	Och klickar på annonsen "Chokladboll"
	Och klickar på "Ta bort"
	Så ska annonsen "Chokladboll" inte synas under mina annonser
