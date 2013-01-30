# language: sv

Egenskap: Det ska inte finnas några länkar på sidan som är brutna

Scenario: Gå igenom hela sidan och testa dynamiskt alla länkar som finns
	
När jag är på Startsidan
Och kör programmet checklinks
Så ska programmet inte rapportera någon länk som bruten
