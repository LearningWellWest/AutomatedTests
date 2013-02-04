# language: sv
@soksok

Egenskap: Sök Ekvivalenspartionering 65534
	Som en användare
	Vill jag kunna använda mig utav kontiga datanummer
	så att sidan inte krashar
	
Scenario: Off2off skall hantera ogiltliga värden
	Givet att jag är inloggad
	När jag klickar på Sök
	Och jag skriver in "65534"
	Så ska sidan ge resultat i form av "poster"