# language: sv

Egenskap: Skapa annons ekvivalenspartionering
	För jag inte ska kunna skapa en annons med orimliga värden
    	Som en inloggad användare
	Vill förhindra orimliga värden vid annonsskapandet

Bakgrund: En inloggad användare skapar en annons
	Givet att jag är inloggad
	Och är på skapa annons sidan
	Och jag fyller i korrekta värden för alla fält när annonsen skapas

Scenario: Skriv in fler än 50 tecken i rubriken
	När jag ger annonsen rubriken "anbsgsgehsgsgsiodfyhiuokgbvuhbijnsdifvbohjnkiduhpcvbnjodhifcxuifd"
	Så ska fältet rubrikfältet innehålla "anbsgsgehsgsgsiodfyhiuokgbvuhbijnsdifvbohjnkiduhpc"

Scenario: Skapa annons utan rubrik
	När jag ger annonsen rubriken ""
	Och klickar på spara annonsen
	Så ska sidan visa texten "Rubriken får inte vara tom"

Scenario: Skapa annons med rubrik som består av endast mellanslag
	När jag ger annonsen rubriken "   "
	Och klickar på spara annonsen
	Så ska sidan visa texten "Rubriken får inte vara tom"

Scenario: Skriv in fler än 500 tecken i beskrivningen
	När jag skriver in 3000 tecken i beskrivningen
	Så ska fältet beskrivningsfältet innehålla högst 500 tecken

Scenario: Skriv in bokstäver i prisfältet
	När jag fyller i prisfältet med "aswdefrgthjk"
	Och klickar på spara annonsen
	Så ska sidan visa texten "Priset måste bestå av siffror"
