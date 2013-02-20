# language: sv
@minsida

Egenskap: Man ska kunna ändra sina personliga uppgifter
	För att ha hålla mina personupgifter uppdaterade
	Som en inloggad användare
	Vill jag kunna ändra mina personuppgifter
	
Bakgrund: Användaren är inloggad och klickar på Min sida
	Givet att jag är inloggad
	Och jag klickar på min sida


Scenario: Användaren ska kunna ändra sina uppgifter på min sida
  
        När jag ändrar förnamnet till 			"Anders"
	Och jag ändrar efternamnet till 		"Andersson"
        Och jag ändrar mobilnumret till 		"0738365699"
	Och jag ändrar telefonnummret till 		"055488756"
	Och jag ändrar epost-adressen till 		"anders@andersson.se"
	Och jag ändrar förvaltning till 		"Superförvaltningen"
	Och jag ändrar avdelning till 			"Superavdelningen"
	Och klickar på spara

	Och jag ändrar förnamnet till 			"Ture"
	Och jag ändrar efternamnet till 		"Sventon"
        Och jag ändrar mobilnumret till 		"0738365699"
	Och jag ändrar telefonnummret till 		"054574375"
	Och jag ändrar epost-adressen till 		"ture@epost.se"
	Och jag ändrar förvaltning till 		"Testförvaltningen"
	Och jag ändrar avdelning till 			"Testavdelningen"
	Och klickar på spara
	Och jag klickar på skapa annons
	Och jag klickar på min sida
	Så ska texten i förnamns-fältet vara 		"Ture"
	Och ska texten i efternamns-fältet vara 	"Sventon"
	Och ska texten i mobilnummer-fältet vara 	"0738365699"
	Och ska texten i telefon-fältet vara vara 	"054574375"
        Och ska texten i epost-fältet vara 		"ture@epost.se"
	Och ska texten i förvaltnings-fältet vara 	"Testförvaltningen"
	Och ska texten i avdelnings-fältet vara 	"Testavdelningen"

	
