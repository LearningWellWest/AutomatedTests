# language: sv

Egenskap: Man ska kunna ändra förnamn

Bakgrund: En användare är inloggad
	Givet att jag är inloggad

Scenariomall: Min Sida
	När jag klickar på Min sida
	Och ändrar förnamnet till <förnamn>
	Och klickar på spara
	Så ska namnet <förnamn> uppdateras och sparas
	
Exempel:	
	| förnamn 	|
    | "test1" 	|
    | "testar1" |