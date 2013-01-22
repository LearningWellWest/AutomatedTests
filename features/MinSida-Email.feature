# language: sv

Egenskap: Man ska kunna ändra sin Email-adress

Bakgrund: En användare är inloggad
	Givet att jag är inloggad

Scenariomall: Min sida
	När jag klickar på Min sida
	Och ändrar Email-adressen till <email>
	Och klickar på spara
	Så ska Email-adressen <email> uppdateras och sparas
	
Exempel:	
	| email 							|
    | "patrikjohansson87@hotmail.com" 	|
    | "bloondie87@gmail.com" 			|