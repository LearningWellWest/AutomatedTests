# language: sv

Egenskap: Användaren ska kunna hantera annonser
	För att kunna lägga ut och sälja sina produkter
	Som en inloggad användare
	Vill jag ha möjligheten att skapa, modifiera och ta bort annonser

Bakgrund: En användare är inloggad
	Givet att jag är inloggad

Scenario: Användaren skapar en ny annons
	Givet att det inte finns några existerande annonser
	När jag klickar på annonsera
	Och jag fyller i korrekta värden för alla fält när annonsen skapas
	Och ger annonsen rubriken "Kokosboll"
	Och klickar på knappen Publicera
	Och jag går till mina annonser
	Och väljer kategorin "Möbler"
        Så ska annonsen "Kokosboll" visas

Scenario: Användaren modifierar en annons	
	När jag går till mina annonser
        Och väljer kategorin "Möbler"
	Och klickar på annonsen "Kokosboll"
	Och klickar på "Ändra"
	Och ger annonsen rubriken "Chokladboll"
	Och klickar på knappen Publicera
	Så ska annonsen "Chokladboll" synas under mina annonser
	Så ska annonsen "Kokosboll" inte synas under mina annonser

Scenario: Användaren tar bort en annons
	När jag går till mina annonser
	Och väljer kategorin "Möbler"
	Och klickar på annonsen "Chokladboll"
	Och klickar på "Ta bort"
	Så ska annonsen "Chokladboll" inte synas under mina annonser
