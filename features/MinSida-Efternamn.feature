# language: sv

Egenskap: Man ska kunna ändra efternamn

Bakgrund: En användare är inloggad
	Givet att jag är inloggad

Scenariomall: Min Sida
	När jag klickar på Min sida
	Och ändrar efternamnet till <efternamn>
	Och klickar på spara
	Så ska efternamnet <efternamn> uppdateras och sparas
	
Exempel:	
	| efternamn |
    | "users" 	|
    | "user1" 	|