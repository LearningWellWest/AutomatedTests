# language: sv	
@annonskategorier

Egenskap: Annonskategorier
	För att dela in annonser i kategorier
	Som en gäst eller inloggad användare
	Vill jag ha bestämda annonskategorier på sidan
	
Bakgrund:
	Givet att jag går till sök

@12mars13
Scenario: Det ska finnas en huvudkategori med namnet "BYGG & TRÄDGÅRD" att filtrera efter när man söker efter en annons
	Så ska kategorin "BYGG & TRÄDGÅRD" finnas i kategorilisten

@12mars13
Scenario: Det ska finnas en huvudkategori med namnet "ELEKTRONIK" att filtrera efter när man söker efter en annons
	Så ska kategorin "ELEKTRONIK" finnas i kategorilisten
	Och under ovan kategori ska kategorin "--Datorer & Tillbehör" finnas
	Och under ovan kategori ska kategorin "--Ljud & Bild" finnas
	Och under ovan kategori ska kategorin "--Övrigt" finnas

@12mars13
Scenario: Det ska finnas en huvudkategori med namnet "FÖRSKOLA/SKOLA" att filtrera efter när man söker efter en annons
	Så ska kategorin "FÖRSKOLA/SKOLA" finnas i kategorilisten
	Och under ovan kategori ska kategorin "--Lekmaterial" finnas
	Och under ovan kategori ska kategorin "--Läromedel" finnas
	Och under ovan kategori ska kategorin "--Slöjdutrustning" finnas
	Och under ovan kategori ska kategorin "--Övrigt" finnas

@12mars13
Scenario: Det ska finnas en huvudkategori med namnet "HJÄLPMEDEL" att filtrera efter när man söker efter en annons
	Så ska kategorin "HJÄLPMEDEL" finnas i kategorilisten
	Och under ovan kategori ska kategorin "--Bostad" finnas
	Och under ovan kategori ska kategorin "--Hushåll" finnas
	Och under ovan kategori ska kategorin "--Övrigt" finnas

@12mars13
Scenario: Det ska finnas en huvudkategori med namnet "KÖK & VITVAROR" att filtrera efter när man söker efter en annons
	Så ska kategorin "KÖK & VITVAROR" finnas i kategorilisten


@12mars13
Scenario: Det ska finnas en huvudkategori med namnet "MÖBLER" att filtrera efter när man söker efter en annons
	Så ska kategorin "MÖBLER" finnas i kategorilisten
	Och under ovan kategori ska kategorin "--Sitta" finnas
	Och under ovan kategori ska kategorin "--Förvara" finnas
	Och under ovan kategori ska kategorin "--Bord" finnas
	Och under ovan kategori ska kategorin "--Belysning" finnas
	Och under ovan kategori ska kategorin "--Kontorstillbehör" finnas
	Och under ovan kategori ska kategorin "--Textil" finnas
	Och under ovan kategori ska kategorin "--Övrigt" finnas

@12mars13
Scenario: Det ska finnas en huvudkategori med namnet "ÖVRIGT" att filtrera efter när man söker efter en annons
	Så ska kategorin "ÖVRIGT" finnas i kategorilisten
