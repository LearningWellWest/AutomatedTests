# language: sv

Egenskap: Det ska inte gå att skapa en annons med orimligt många tecken i rubriken

Bakgrund: En användare är inloggad och befinner sig på Skapa annons sidan
	Givet att jag är inloggad
	Och är på Skapa annons sidan

Scenario: Inloggad Skapa annons
	När jag fyller i Annonsuppgifter
	Och klickar på Spara annons
	Så ska min annons vara sparad
