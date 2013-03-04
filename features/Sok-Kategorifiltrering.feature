# language: sv
@sok

Egenskap: Sök - Kategorifiltrering
	För att underlätta vid annonssökandet
	Som vilken användare som helst
	Vill jag filtrera alla annonserna på söksidan
	
Bakgrund:
	Givet att jag är inloggad
	#Och att det inte finns några existerande annonser

Scenario: Kontrollera att en Möbel-annons visas när jag väljer kategorin Möbler
	När jag skapar en annons med rubriken "Kökssoffa" samt kategorin "Möbler"
	Och klickar på knappen Publicera
        Och jag klickar på sök
	Och söker efter "Kökssoffa"
        Och väljer kategorin "Möbler"
        Så ska annonsen "Kökssoffa" visas

Scenario: Kontrollera att en Bord-annons visas när jag väljer kategorin Bord
	När jag skapar en annons med rubriken "Matbord" samt kategorin "Bord"
	Och klickar på knappen Publicera
        Och jag klickar på sök
	Och söker efter "Matbord"
        Och väljer kategorin "Bord"
        Så ska annonsen "Matbord" visas
	
Scenario: Kontrollera att en Kontorstillbehör-annons visas när jag väljer kategorin Kontorstillbehör
	När jag skapar en annons med rubriken "Blyertspennor" samt kategorin "Kontorstillbehör"
	Och klickar på knappen Publicera
        Och jag klickar på sök
	Och söker efter "Blyertspennor"
        Och väljer kategorin "Kontorstillbehör"
        Så ska annonsen "Blyertspennor" visas
	

@4mars13
Scenario: Det ska stå "Kategorier" som standard i kategorilisten vid sök
	När jag klickar på sök
	Så ska det stå "Kategorier" i kategorilisten
