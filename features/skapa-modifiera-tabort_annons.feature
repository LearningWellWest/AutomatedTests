# language: sv

Egenskap: Användaren ska kunna hantera annonser
	För att kunna lägga ut och sälja sina produkter
	Som en inloggad användare
	Vill jag ha möjligheten att skapa, modifiera och ta bort annonser

Bakgrund: En användare är inloggad
	Givet att jag är inloggad
        Och att det inte finns några existerande annonser under "Lekmaterial"

Scenario: Användaren skapar en ny annons	
	När jag skapar en annons med rubriken "Kokosboll" samt kategorin "Lekmaterial"
	Och klickar på knappen Publicera
	Och jag går till mina annonser
	Och väljer kategorin "Lekmaterial"
        Så ska annonsen "Kokosboll" visas

@not_ready
Scenario: Användaren modifierar en annons
	När jag skapar en annons med rubriken "Modifierabord" samt kategorin "Lekmaterial"
	Och klickar på knappen Publicera
	När jag går till mina annonser
        Och väljer kategorin "Lekmaterial"
	Och klickar på annonsen "Modifierabord"
	Och klickar på "Ändra"
	Och ger annonsen rubriken "Modifieratbord"
	Och klickar på knappen Publicera
	Så ska annonsen "Modifieratbord" synas under kategorin "Lekmaterial"
	Så ska annonsen "Modifierabord" inte synas under kategorin "Lekmaterial"

@not_ready
Scenario: Användaren tar bort en annons
	När jag skapar en annons med rubriken "Tabortbord" samt kategorin "Lekmaterial"
	Och klickar på knappen Publicera
	Och jag går till mina annonser
	Och jag tar bort annonsen "Tabortbord" under kategorin "Lekmaterial"
	Så ska annonsen "Tabortbord" inte synas under kategorin "Lekmaterial"
