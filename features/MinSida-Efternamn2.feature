# language: sv

@minsida

Egenskap: Man ska kunna ändra efternamn

Bakgrund: En användare är inloggad
	Givet att jag är inloggad

Scenario: Min Sida
	När jag klickar på Min sida
	Och ändrar efternamnet till "User"
	Och klickar på spara
	Så ska efternamnet "Testarsson" uppdateras och sparas
