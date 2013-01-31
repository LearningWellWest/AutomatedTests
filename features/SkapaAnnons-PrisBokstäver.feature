# language: sv
@not_ready

Egenskap: Det ska inte gå att skapa en annons med bokstäver i prisfältet

Bakgrund: En användare är inloggad och befinner sig på Skapa annons sidan
	Givet att jag är inloggad
	Och är på Skapa annons sidan

Scenario: Inloggad Skapa annons med bokstäver
	När jag fyller i Annonsuppgifter samt skriver in bokstäver i prisfältet
	Och klickar på Spara annons
	Så ska felmedelandet "fältet måste innehålla siffror" visas
