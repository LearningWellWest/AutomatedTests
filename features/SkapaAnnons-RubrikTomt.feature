# language: sv
@not_ready

Egenskap: Det ska inte gå att skapa en annons utan rubrik

Bakgrund: En användare är inloggad och befinner sig på Skapa annons sidan
	Givet att jag är inloggad
	Och är på Skapa annons sidan

Scenario: Inloggad Skapa annons med tomt fält
	När jag fyller i Annonsuppgifter men lämnar rubrikfältet tomt
	Och klickar på Spara annons
	Så ska felmedelandet "Fältet innehåller för få tecken, minst:" visas
