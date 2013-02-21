# language: sv
@sok

Egenskap: Sök - Kategorifiltrering
	För att underlätta vid annonssökandet
	Som vilken användare som helst
	Vill jag filtrera alla annonserna på söksidan
	
Bakgrund:
	Givet att jag är inloggad

Scenario: Kontrollera att en Möbel-annons när jag väljer kategorin Möbler
	När jag skapar en annons med rubriken "Kökssoffa" samt kategorin "Möbler"
	Och klickar på knappen Publicera
        Och jag klickar på sök
	Och söker efter "Kökssoffa"
        Och väljer kategorin "Möbler"
        Så ska annonsen "Kökssoffa" visas
	
	

