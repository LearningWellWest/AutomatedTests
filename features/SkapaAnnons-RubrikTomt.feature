# language: sv
@not_ready

Egenskap: Det ska inte gå att skapa en annons med tomt rubrikfält

Bakgrund: En användare är inloggad och befinner sig på Skapa annons sidan
	Givet att jag är inloggad
	Och är på Skapa annons sidan

Scenario: Inloggad Skapa annons med tomt rubrikfält
	När jag fyller i Annonsuppgifter men lämnar rubrikfältet tomt
	Och klickar på Spara annons
	Så ska felmedelandet "Rubriken innehåller för få tecken, minst:" visas
