# language: sv
@Utseende

Egenskap: Varje sida ska ha en anpassad sidtitel
	För att förstå vart jag befinner mig på sidan
	Som en användare
	Vill se på sidtiteln vart jag befinner mig på sidan
	
Bakgrund: Användaren är inloggad
	Givet att jag är inloggad

Scenario: Jag läser sidtiteln på förstasidan
	När jag klickar på Off2Off-loggan
	Så ska sidtiteln vara "Välkommen till Off2off!"

Scenario: Jag läser sidtiteln på min sida
	När jag klickar på min sida
	Så ska sidtiteln vara "Off2Off | Min sida"

Scenario: Jag läser sidtiteln på söksidan
	När jag klickar på sök
	Så ska sidtiteln vara "Off2Off | Sök"

Scenario: Jag läser sidtiteln på Läs mer
	När jag klickar på läs mer
	Så ska sidtiteln vara "Off2Off | Läs mer"
	
Scenario: Jag läser sidtiteln på Skapa annons
	När jag klickar på skapa annons
	Så ska sidtiteln vara "Off2Off | Skapa annons"

Scenario: Jag läser sidtiteln på Admin
	När jag klickar på admin
	Så ska sidtiteln vara "Off2Off | Admin"
