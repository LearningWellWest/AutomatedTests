# language: sv	

@12mars2013
Egenskap: Annons - Kontroll
	För att all information i en annons ska synas när den är publicerad
    	Som en inloggad användare
	Vill jag kolla att all information jag skrivit in är synlig när den är publicerad
	
Bakgrund: En användare är inloggad och det finns inga annonser under "Lekmaterial"
	Givet att jag är inloggad
	Och att det inte finns några existerande annonser under "Lekmaterial"

Scenario: Användare skapar en annons för att se så all information är med när man publicerar annonsen
	När jag skapar en annons med rubriken "Apple AirPort" samt kategorin "Lekmaterial"
	Och fyller i förvaltning "Serviceförvaltningen" 
	Och fyller i avdelning "IT-Service"
	Och klickar på knappen Publicera
	Och jag går till mina annonser
	Och väljer kategorin "Lekmaterial"
	Och jag klickar på "Apple AirPort"
	Så ska texten "Serviceförvaltningen" visas
	Och ska texten "IT-Service" visas