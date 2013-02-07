# language: sv
Egenskap: Användaren ska kunna hantera annonser
	För att kunna lägga ut och sälja sina produkter
	Som en inloggad användare
	Vill jag ha möjligheten att skapa, modifiera och ta bort annonser

Bakgrund: En användare är inloggad
	Givet att jag är inloggad

@not_ready
Scenario: Användaren skapar en ny annons
	När att jag är på skapa annons sidan
	Och jag fyller i annonsuppgifter
	Och ger annonsen rubriken "testannons123qwerty"
	Och klickar på spara annonsen
	Så ska annonsen "testannons123qwerty" finnas på sidan

Scenario: Användaren modifierar en annons	
	När jag klickar på min sida
	Och jag klickar på mina annonser
	Och klickar på annonsen "testannons123qwerty"
	Och klickar på "Redigera"
	Och ger annonsen rubriken "testannons123modified"
    Och klickar på spara annonsen
	Så ska annonsen "testannons123qwerty" inte finnas kvar på sidan
	Och ska annonsen "testannons123modified" finnas på sidan

Scenario: Användaren tar bort en annons
	När jag klickar på min sida
	Och jag klickar på mina annonser
	Och klickar på annonsen "testannons123modified"
	Och klickar på "Ta bort"
	Så ska annonsen "testannons123modified" inte finnas kvar på sidan
