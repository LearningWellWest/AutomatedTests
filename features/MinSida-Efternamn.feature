# language: sv

Egenskap: Man ska kunna ändra efternamn

Bakgrund: En användare är inloggad
	Givet att jag är inloggad

Scenario: Min Sida
	När jag klickar på Min sida
	Och ändrar efternamnet till "svensson"
	Och klickar på spara
	Så ska efternamnet "svensson" uppdateras och sparas
