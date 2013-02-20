# language: sv
@not_ready @sok

Egenskap: Sök - Kategorifiltrering
	För att underlätta vid annonssökandet
	Som vilken användare som helst
	Vill jag filtrera alla annonserna på söksidan
	
Bakgrund:
	Givet att jag är inloggad

@cattest
Scenario: Kontrollera att en hjälpmedel-annons när jag väljer kategorin Hjälpmedel
	När jag skapar en annons med rubriken "Dammsugare" samt kategorin "Hjälpmedel"
        Och jag klickar på sök
        Och väljer kategorin "Hjälpmedel"
        Så ska annonsen "Dammsugare" visas
	
	

