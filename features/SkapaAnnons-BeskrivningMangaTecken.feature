# language: sv
@not_ready

Egenskap: Det ska inte gå att skapa en annons med orimligt många tecken i beskrivningen

Bakgrund: En användare är inloggad och befinner sig på Skapa annons sidan
	Givet att jag är inloggad
	Och är på Skapa annons sidan

Scenario: Inloggad Skapa annons med många tecken
	När jag fyller i beskrivningen med över 1000 tecken
	Och fyller i resten av uppgifterna
	Och klickar på Spara annons
	Så ska felmedelandet "Rubriken innehåller för många tecken, max:" visas
