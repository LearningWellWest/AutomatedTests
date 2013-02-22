# language: sv

Egenskap: Skapa annons - Inmatningskontroll
	För att jag inte ska kunna skapa en annons med orimliga värden
    	Som en inloggad användare
	Vill jag förhindra orimliga värden vid annonsskapandet

Bakgrund: En inloggad användare skapar en annons
	Givet att jag är inloggad
	Och är på skapa annons sidan
	Och jag fyller i korrekta värden för alla fält när annonsen skapas

Scenario: Skriv in fler än 50 tecken i rubriken
	När jag ger annonsen rubriken "anbsgsgehsgsgsiodfyhiuokgbvuhbijnsdifvbohjnkiduhpcvbnjodhifcxuifd"
	Så ska fältet rubrikfältet innehålla "anbsgsgehsgsgsiodfyhiuokgbvuhbijnsdifvbohjnkiduhpc"

Scenario: Skapa annons utan rubrik
	När jag ger annonsen rubriken ""
	Och klickar på knappen Publicera
	Så ska sidan visa texten "Rubriken får inte vara tom"

Scenario: Skapa annons med rubrik som består av endast mellanslag
	När jag ger annonsen rubriken "   "
	Och klickar på knappen Publicera
	Så ska sidan visa texten "Rubriken får inte vara tom"

Scenario: Skriv in fler än 1000 tecken i beskrivningen
	När jag skriver in 4000 tecken i beskrivningen
	Så ska fältet beskrivningsfältet innehålla högst 1000 tecken

@standardSida
Scenario: Skriv in bokstäver i prisfältet
	När jag fyller i prisfältet med "aswdefrgthjk"
	Och klickar på knappen Publicera
	Så ska sidan visa texten "Priset måste bestå av siffror"

@standardSida
Scenario: Skriv in negativt värde i prisfältet
	När jag fyller i prisfältet med "-100"
	Och klickar på knappen Publicera
	Så ska sidan visa texten "Priset måste ha ett giltigt värde"

Scenario: Skriv in bokstäver i Postnr
	När jag fyller i Postnr med "Sexfemtrefyranoll"
	Och klickar på knappen Publicera
	Så ska sidan visa texten "Postnr måste bestå av siffror"

@not_ready
Scenario: Skriv in gårdagens datum i Publiceringsstart
	När jag fyller i Publiceringsstart med "2012-12-12 12:12:12"
	Så ska sidan visa texten "Publiceringsstart måste utgå från dagens datum"
