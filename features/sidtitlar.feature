# language: sv
@sidtitlar

Egenskap: Varje sida ska ha en anpassad sidtitel
	För att förstå vart jag befinner mig på sidan
	Som en användare
	Vill se på sidtiteln vart jag befinner mig på sidan
	

Scenario: Sidtiteln på min sida ska innehålla ordet "Min sida"
    Givet att jag är inloggad
	När jag klickar på min sida
	Så ska sidtiteln innehålla "Min sida"
	
@not_ready
Scenario: Sidtiteln på startsidan ska innehålla ordet "Malvin"
	Givet att jag är inloggad
	När jag klickar på start
	Så ska sidtiteln innehålla "Malvin"

Scenario: Sidtiteln på tjänster-sidan ska innehålla ordet "Tjänster"
	Givet att jag är inloggad
	När jag klickar på tjänster
	Så ska sidtiteln innehålla "Tjänster"
	
Scenario: Sidtiteln på annonsera-sidan ska innehålla ordet "Annonsera"
	Givet att jag är inloggad
	När jag klickar på annonsera
	Så ska sidtiteln innehålla "Annonsera"

Scenario: Sidtiteln på admin-sidan ska innehålla ordet "Admin"
	Givet att jag är inloggad
	När jag går till admin
	Så ska sidtiteln innehålla "Admin"

Scenario: Sidtiteln på logga-in-sidan ska innhålla orden "Logga in"
	Givet att jag är på förstasidan
	När jag klickar på logga in
	Så ska sidtiteln innehålla "Logga in"
