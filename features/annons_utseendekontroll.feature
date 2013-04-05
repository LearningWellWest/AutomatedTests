# language: sv
	

@12mars2013 @tester
Egenskap: Annons - Utseendekontroll
	För att all information i en annons ska synas när den är publicerad
    	Som en inloggad användare
	Vill jag se till att annonsens information visas
	
Bakgrund: En användare är inloggad och det finns inga annonser under "Textil"
	Givet att jag är inloggad
	Och att det inte finns några existerande annonser under "Textil"

Scenario: Annonsen ska visa vilken förvaltning den tillhör
	När jag skapar en annons med rubriken "Apple AirPort" samt kategorin "Textil"
	Och fyller i förvaltning "Serviceförvaltningen" 
	Och klickar på knappen Publicera
	Och jag går till mina annonser
	Och väljer kategorin "Textil"
	Och klickar på annonsen "Apple AirPort"
	Så ska texten "Serviceförvaltningen" visas

Scenario: Annonsen ska visa vilken avdelning/enhet den tillhör
	När jag skapar en annons med rubriken "Apple Ipad" samt kategorin "Textil"
	Och fyller i avdelning "IT-Service"
	Och klickar på knappen Publicera
	Och jag går till mina annonser
	Och väljer kategorin "Textil"
	Och klickar på annonsen "Apple Ipad"
	Så ska texten "IT-Service" visas

Scenario: Annonsen ska innehålla en rubrik med texten "Objektet finns på"
	När jag skapar en annons med rubriken "Apple Ipad" samt kategorin "Textil"
	Och klickar på knappen Publicera
	Och jag går till mina annonser
	Och väljer kategorin "Textil"
	Och klickar på annonsen "Apple Ipad"
	Så ska texten "Objektet finns på" visas
