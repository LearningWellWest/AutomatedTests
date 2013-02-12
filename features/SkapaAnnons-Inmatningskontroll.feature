# language: sv

Egenskap: Skapa annons ekvivalenspartionering
	För att man inte ska kunna skapa annonser utan data eller med för mycket data
    	Som en inloggad användare
	Vill jag att det ska visas varningsmeddelanden vid orimlig inmatning

Bakgrund: En användare är inloggad och befinner sig på Skapa annons sidan
	Givet att jag är inloggad
	Och är på skapa annons sidan
	Och jag fyller i korrekta värden för alla fält när annonsen skapas

Scenario: Rubrikfältet får innehålla max 50 tecken
	När jag ger annonsen rubriken "anbsgsgehsgsgsiodfyhiuokgbvuhbijnsdifvbohjnkiduhpcvbnjodhifcxuifd"
	Så ska fältet rubrikfältet innehålla "anbsgsgehsgsgsiodfyhiuokgbvuhbijnsdifvbohjnkiduhpc"

Scenario: Skapa annons utan rubrik
	När jag ger annonsen rubriken ""
	Och klickar på spara annonsen
	Så ska sidan visa texten "Rubriken får inte vara tom"

@not_ready
Scenario: Skapa annons med rubrik som består av endast mellanslag
	När jag ger annonsen rubriken "   "
	Och klickar på spara annonsen
	Så ska sidan visa texten "Rubriken får inte vara tom"


@not_ready	
Scenario: Inloggad Skapa annons med bokstäver
	När jag fyller i prisfältet med "aswdefrgthjk"
	Och fyller i resten av uppgifterna
	Och klickar på spara annonsen
	Så ska felmedelandet "fältet måste innehålla siffror" visas

@not_ready	
Scenario: Skapa annons med många siffror
	När jag fyller i beskrivningen med över x antal siffror
	Och fyller i resten av uppgifterna
	Och klickar på spara annonsen
	Så ska felmedelandet "Fältet innehåller för många tecken, max:" visas

@not_ready
Scenario: Skapa annons med ogiltiga tecken
	När jag fyller i prisfältet med "          "
	Och fyller i resten av uppgifterna
	Och klickar på spara annonsen
	Så ska felmedelandet "fältet måste innehålla siffror" visas

@not_ready	
Scenario: Skapa annons med specialtecken
	När jag fyller i prisfältet med flera specialtecken
	Och fyller i resten av uppgifterna
	Och klickar på spara annonsen
	Så ska felmedelandet "fältet måste innehålla siffror" visas

@not_ready
Scenario: Inloggad Skapa annons med många tecken
	När jag fyller i rubriken med över 100 tecken
	Och fyller i resten av uppgifterna
	Och klickar på spara annonsen
	Så ska felmedelandet "Fältet innehåller för många tecken, max:" visas

@not_ready	
Scenario: Skapa annons med ogiltiga tecken
	När jag fyller i rubriken med flera mellanslag
	Och fyller i resten av uppgifterna
	Och klickar på spara annonsen
	Så ska felmedelandet "Fältet måste innehålla siffror eller bokstäver" visas

@not_ready
Scenario: Skapa annons med tomt fält
	När jag fyller i Annonsuppgifter
	Och ger annonsen rubriken ""
	Och klickar på spara annonsen
	Så ska felmedelandet "Fältet innehåller för få tecken, minst:" visas
