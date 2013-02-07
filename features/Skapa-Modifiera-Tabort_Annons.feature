# language: sv
Egenskap: Användaren ska kunna hantera annonser
	För att kunna lägga ut och sälja sina produkter
	Som en inloggad användare
	Vill jag ha möjligheten att skapa, modifiera och ta bort annonser

Bakgrund: En användare är inloggad
	Givet att jag är inloggad

Scenario: Användaren skapar en ny annons
<<<<<<< HEAD
	När att jag är på skapa annons sidan
	Och jag fyller i annonsuppgifter
	Och ger annonsen rubriken "testannons123qwerty"
	Och klickar på spara annonsen
	Så ska annonsen "testannons123qwerty" finnas på sidan
=======
	När klickar på skapa annons
	Och jag fyller i Annonsuppgifter
	Och ger annonsen rubriken "testannons123qwerty"
	Och klickar på Spara annonsen
	Så ska annonsen "testannons123qwerty" dyka upp under mina annonser
	Och ska annonsen "testannons123qwerty" dyka upp när man söker efter "testannons123qwerty"
>>>>>>> adf3b3b1516d84e25989fa402f48df3b51fc18d0

Scenario: Användaren modifierar en annons	
	När jag klickar på min sida
	Och jag klickar på mina annonser
	Och klickar på annonsen "testannons123qwerty"
	Och klickar på "Redigera"
	Och ger annonsen rubriken "testannons123modified"
<<<<<<< HEAD
    Och klickar på spara annonsen
	Så ska annonsen "testannons123qwerty" inte finnas kvar på sidan
	Och ska annonsen "testannons123modified" finnas på sidan
=======
        Och klickar på Spara annonsen
	Så ska annonsen "testannons123qwerty" inte dyka upp under mina annonser
	Och ska annonsen "testannons123qwerty" inte dyka upp när man söker efter "testannons123qwerty"
	Och ska annonsen "testannons123modified" dyka upp under mina annonser
	Och ska annonsen "testannons123modified" dyka upp när man söker efter "testannons123qwerty"
>>>>>>> adf3b3b1516d84e25989fa402f48df3b51fc18d0

@not_ready
Scenario: Användaren tar bort en annons
	När jag klickar på min sida
	Och jag klickar på mina annonser
	Och klickar på annonsen "testannons123modified"
	Och klickar på "Ta bort"
	Så ska annonsen "testannons123modified" inte finnas kvar på sidan
