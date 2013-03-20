# language: sv
@sidtitlar

Egenskap: Varje sida ska ha en anpassad sidtitel
	För att förstå vart jag befinner mig på sidan
	Som en användare
	Vill se på sidtiteln vart jag befinner mig på sidan
	
Bakgrund: Användaren är inloggad
	Givet att jag är inloggad

Scenario: Sidtiteln på min sida ska innehålla "Min sida"
	När jag klickar på min sida
	Så ska sidtiteln innehålla "Min sida"
	
@not_ready
Scenario: Sidtiteln på startsidan ska innehålla ordet "start"
	När jag klickar på start
	Så ska sidtiteln innehålla "Start"

Scenario: Sidtiteln på tjänster-sidan ska innehålla ordet "Tjänster"
	När jag klickar på tjänster
	Så ska sidtiteln innehålla "Tjänster"
	
Scenario: Sidtiteln på annonsera-sidan ska innehålla ordet "annonsera"
	När jag klickar på annonsera
	Så ska sidtiteln innehålla "Annonsera"

Scenario: Sidtiteln på admin-sidan ska innehålla ordet "admin"
	När jag går till admin
	Så ska sidtiteln innehålla "Admin"

Scenario: Sidtiteln på logga-in-sidan ska innhålla orden "Logga in"
	När jag klickar på logga ut
	Och jag klickar på logga in
	Så ska sidtiteln innehålla "Logga in"
