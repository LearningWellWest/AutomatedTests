# language: sv	
@startsida

Egenskap: Startsidan ska innehålla bestämda länkar
	För att det ska vara lätt att navigera på sidan
	Som en användare
	Vill jag att sidan ska ha länkar till vissa sidor

Bakgrund: Användaren befinner sig på startsidan
	Givet att jag är på förstasidan

@malvin @4mars13
Scenario: Startsidan ska innehålla en länk till Tjänster
	När jag klickar på tjänster
	Så ska jag komma till tjänster

@4mars13
Scenario: Startsidan ska innehålla en länk till Start i topmenyn
	När jag klickar på start i topmenyn
	Så ska jag komma till sök

@malvin @4mars13
Scenario: En utloggad användare ska komma till sök när den klickar på malvinloggan
	När jag klickar på malvin-loggan
	Så ska jag komma till sök

@12mars13
Scenario: Topmenyn ska innehålla en länk till Start
	Så ska topmenyn innehålla länken "Start"

@12mars13
Scenario: Topmenyn ska innehålla en länk till Om
	Så ska topmenyn innehålla länken "Om"

@12mars13
Scenario: Topmenyn ska innehålla en länk till Hjälp
	Så ska topmenyn innehålla länken "Hjälp"


