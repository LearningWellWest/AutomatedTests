# language: sv
@not_ready

Egenskap: Det ska inte gå att skapa en annons med ogiltiga tecken i prisfältet

Bakgrund: En användare är inloggad och befinner sig på Skapa annons sidan
	Givet att jag är inloggad
	Och är på Skapa annons sidan

Scenario: Inloggad Skapa annons med ogiltiga tecken
	När jag fyller i prisfältet med flera specialtecken
	Och fyller i resten av uppgifterna
	Och klickar på Spara annons
	Så ska felmedelandet "fältet måste innehålla siffror" visas
