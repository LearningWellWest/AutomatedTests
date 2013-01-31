# language: sv
@not_ready

Egenskap: Det ska inte gå att skapa en annons med orimligt många siffror i prisfältet

Bakgrund: En användare är inloggad och befinner sig på Skapa annons sidan
	Givet att jag är inloggad
	Och är på Skapa annons sidan

Scenario: Inloggad Skapa annons med många siffror
	När jag fyller i beskrivningen med över x antal siffror
	Och fyller i resten av uppgifterna
	Och klickar på Spara annons
	Så ska felmedelandet "Priset innehåller för många siffror, max:" visas
