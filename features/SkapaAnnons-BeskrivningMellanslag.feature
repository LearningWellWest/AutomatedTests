# language: sv
@not_ready

Egenskap: Det ska inte gå att skapa en annons med bara mellanslag i beskrivningen

Bakgrund: En användare är inloggad och befinner sig på Skapa annons sidan
	Givet att jag är inloggad
	Och är på Skapa annons sidan

Scenario: Inloggad Skapa annons med ogiltiga tecken
	När jag fyller i beskrivningen med flera mellanslag
	Och fyller i resten av uppgifterna
	Och klickar på Spara annons
	Så ska felmedelandet "Fältet måste innehålla siffror eller bokstäver" visas
