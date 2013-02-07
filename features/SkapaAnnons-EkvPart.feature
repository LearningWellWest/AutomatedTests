# language: sv
@not_ready

Egenskap: Skapa annons ekvivalenspartionering
	För att man inte ska kunna skapa annonser utan data eller med för mycket data
    	Som en inloggad användare
	Vill jag att det ska visas varningsmeddelanden vid orimlig inmatning

Bakgrund: En användare är inloggad och befinner sig på Skapa annons sidan
	Givet att jag är inloggad
	Och är på Skapa annons sidan

Scenario: Inloggad Skapa annons med många tecken
	När jag fyller i beskrivningen med över 1000 tecken
	Och fyller i resten av uppgifterna
	Och klickar på Spara annonsen
	Så ska felmedelandet "Fältet innehåller för många tecken, max:" visas

Scenario: Inloggad Skapa annons med ogiltiga tecken
	När jag fyller i beskrivningen med flera mellanslag
	Och fyller i resten av uppgifterna
	Och klickar på Spara annonsen
	Så ska felmedelandet "Fältet måste innehålla siffror eller bokstäver" visas

Scenario: Inloggad Skapa annons med tomt fält
	När jag fyller i Annonsuppgifter men lämnar beskrivningsfältet tomt
	Och klickar på Spara annonsen
	Så ska felmedelandet "Fältet innehåller för få tecken, minst:" visas
	
Scenario: Inloggad Skapa annons med bokstäver
	När jag fyller i prisfältet med "aswdefrgthjk"
	Och fyller i resten av uppgifterna
	Och klickar på Spara annonsen
	Så ska felmedelandet "fältet måste innehålla siffror" visas
	
Scenario: Inloggad Skapa annons med många siffror
	När jag fyller i beskrivningen med över x antal siffror
	Och fyller i resten av uppgifterna
	Och klickar på Spara annonsen
	Så ska felmedelandet "Fältet innehåller för många tecken, max:" visas
	
Scenario: Inloggad Skapa annons med ogiltiga tecken
	När jag fyller i prisfältet med "          "
	Och fyller i resten av uppgifterna
	Och klickar på Spara annonsen
	Så ska felmedelandet "fältet måste innehålla siffror" visas
	
Scenario: Inloggad Skapa annons med specialtecken
	När jag fyller i prisfältet med flera specialtecken
	Och fyller i resten av uppgifterna
	Och klickar på Spara annonsen
	Så ska felmedelandet "fältet måste innehålla siffror" visas

Scenario: Inloggad Skapa annons med många tecken
	När jag fyller i rubriken med över 100 tecken
	Och fyller i resten av uppgifterna
	Och klickar på Spara annonsen
	Så ska felmedelandet "Fältet innehåller för många tecken, max:" visas
	
Scenario: Inloggad Skapa annons med ogiltiga tecken
	När jag fyller i rubriken med flera mellanslag
	Och fyller i resten av uppgifterna
	Och klickar på Spara annonsen
	Så ska felmedelandet "Fältet måste innehålla siffror eller bokstäver" visas

Scenario: Inloggad Skapa annons med tomt fält
	När jag fyller i Annonsuppgifter
	Och ger annonsen rubriken ""
	Och klickar på Spara annonsen
	Så ska felmedelandet "Fältet innehåller för få tecken, minst:" visas
