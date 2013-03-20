# language: sv


Egenskap: Sök - Kategorifiltrering
	För att underlätta vid annonssökandet
	Som vilken användare som helst
	Vill jag filtrera alla annonserna på söksidan
	
Bakgrund:
	Givet att jag är inloggad

@sok
Scenario: Kontrollera att en Förskola/Skola-annons visas när jag väljer kategorin Förskola/Skola
        Givet att det inte finns några existerande annonser under "Förskola/Skola"
	När jag skapar en annons med rubriken "Badboll" samt kategorin "Lekmaterial"
	Och klickar på knappen Publicera
        Och jag klickar på start
	Och söker efter "Badboll"
        Och väljer kategorin "Förskola/Skola"
        Så ska annonsen "Badboll" visas
@sok
Scenario: Kontrollera att en Bord-annons visas när jag väljer kategorin Bord
	Givet att det inte finns några existerande annonser under "Bord"
	När jag skapar en annons med rubriken "Matbord" samt kategorin "Bord"
	Och klickar på knappen Publicera
        Och jag klickar på start
	Och söker efter "Matbord"
        Och väljer kategorin "Bord"
        Så ska annonsen "Matbord" visas
@sok
Scenario: Kontrollera att en Kontorstillbehör-annons visas när jag väljer kategorin Kontorstillbehör
	Givet att det inte finns några existerande annonser under "Kontorstillbehör"
	När jag skapar en annons med rubriken "Blyertspennor" samt kategorin "Kontorstillbehör"
	Och klickar på knappen Publicera
        Och jag klickar på start
	Och söker efter "Blyertspennor"
        Och väljer kategorin "Kontorstillbehör"
        Så ska annonsen "Blyertspennor" visas
