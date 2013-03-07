# language: sv

Egenskap: Annonsera - Inmatningskontroll
	För att jag inte ska kunna skapa en annons med orimliga värden
    	Som en inloggad användare
	Vill jag förhindra orimliga värden vid annonsskapandet

Bakgrund: En inloggad användare skapar en annons
	Givet att jag är inloggad
	Och är på skapa annons sidan
	Och jag fyller i korrekta värden för alla fält när annonsen skapas

Scenario: Det ska inte gå att skriva in mer än 50 tecken i rubrikfältet
	När jag ger annonsen rubriken "anbsgsgehsgsgsiodfyhiuokgbvuhbijnsdifvbohjnkiduhpcvbnjodhifcxuifd"
	Så ska fältet rubrikfältet innehålla "anbsgsgehsgsgsiodfyhiuokgbvuhbijnsdifvbohjnkiduhpc"

Scenario: Det ska inte gå att skapa en annons utan Rubrik
	När jag ger annonsen rubriken ""
	Och klickar på knappen Publicera
	Så ska sidan visa texten "Ange en rubrik"

Scenario: Det ska inte gå att skapa en annons med endast mellanslag
	När jag ger annonsen rubriken "   "
	Och klickar på knappen Publicera
	Så ska sidan visa texten "Ange en rubrik"

Scenario: Det ska inte gå att skriva in fler än 7000 tecken i beskrivningen
	När jag skriver in 8000 tecken i beskrivningen
	Så ska fältet beskrivningsfältet innehålla högst 7000 tecken

@standardSida
Scenario: Det ska inte gå att skriva in bokstäver i prisfältet
	När jag fyller i prisfältet med "aswdefrgthjk"
	Och klickar på knappen Publicera
	Så ska sidan visa texten "Priset måste bestå av siffror"

@standardSida
Scenario: Det ska inte gå att skriva in negativa värden i prisfältet
	När jag fyller i prisfältet med "-100"
	Och klickar på knappen Publicera
	Så ska sidan visa texten "Priset måste ha ett giltigt värde"

Scenario: Det ska inte gå att skriva in bokstäver i Postnr
	När jag fyller i Postnr med "Sexfemtrefyranoll"
	Och klickar på knappen Publicera
	Så ska sidan visa texten "Postnr måste bestå av siffror"


@not_ready
Scenario: Det ska inte gå att skriva in gårdagens datum i Publiceringsstart
	När jag fyller i Publiceringsstart med "2012-12-12 12:12:12"
	Så ska sidan visa texten "Publiceringsstart måste utgå från dagens datum"
