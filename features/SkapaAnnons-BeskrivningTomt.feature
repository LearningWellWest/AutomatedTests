# language: sv
@not_ready

Egenskap: Det ska inte gå att skapa en annons utan beskrivning

Bakgrund: En användare är inloggad och befinner sig på Skapa annons sidan
	Givet att jag är inloggad
	Och är på Skapa annons sidan

Scenario: Inloggad Skapa annons med tomt fält
	När jag fyller i Annonsuppgifter men lämnar beskrivningsfältet tomt
	Och klickar på Spara annons
	Så ska felmedelandet "beskrivningen innehåller för få tecken, minst:" visas
