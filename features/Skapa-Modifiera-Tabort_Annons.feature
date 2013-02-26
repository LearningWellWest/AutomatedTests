# language: sv

Egenskap: Användaren ska kunna hantera annonser
	För att kunna lägga ut och sälja sina produkter
	Som en inloggad användare
	Vill jag ha möjligheten att skapa, modifiera och ta bort annonser

Bakgrund: En användare är inloggad
	Givet att jag är inloggad

Scenario: Användaren skapar en ny annons
	Givet att det inte finns några existerande annonser under "Belysning"
	När jag skapar en annons med rubriken "Kokosboll" samt kategorin "Belysning"
	Och klickar på knappen Publicera
	Och jag går till mina annonser
	Och väljer kategorin "Belysning"
        Så ska annonsen "Kokosboll" visas

Scenario: Användaren modifierar en annons
	När jag skapar en annons med rubriken "Modifierabord" samt kategorin "Belysning"
	Och klickar på knappen Publicera
	När jag går till mina annonser
        Och väljer kategorin "Belysning"
	Och klickar på annonsen "Modifierabord"
	Och klickar på "Ändra"
	Och ger annonsen rubriken "Modifieratbord"
	Och klickar på knappen Publicera
	Så ska annonsen "Modifieratbord" synas under kategorin "Belysning"
	Så ska annonsen "Modifierabord" inte synas under kategorin "Belysning"

Scenario: Användaren tar bort en annons
	När jag skapar en annons med rubriken "Tabortbord" samt kategorin "Belysning"
	Och klickar på knappen Publicera
	Och jag går till mina annonser
	Och väljer kategorin "Belysning"
	Och klickar på annonsen "Tabortbord"
	Och klickar på "Ta bort"
	Så ska annonsen "Tabortbord" inte synas under kategorin "Belysning"
