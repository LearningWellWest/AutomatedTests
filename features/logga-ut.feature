# language: sv	
@loggain

Egenskap: Logga ut
	För att kunna skydda sina användaruppgifter
	Som en inloggad användare
	Vill jag kunna logga ut från hemsidan
	
Scenario: Användaren ska kunna logga ut korrekt
    Givet att jag är inloggad
	När jag klickar på logga ut
	Så ska sidan inte visa "Logga ut"
	
Scenario: Användaren ska inte komma åt min sida och annonsera när man är utloggad
	Givet att jag är på förstasidan
	Och jag är utloggad
	När jag går till min sida
	Så ska jag komma till logga-in sidan
	När jag går till annonsera
	Så ska jag komma till logga-in sidan