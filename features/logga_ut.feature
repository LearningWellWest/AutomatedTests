# language: sv	
@loggain

Egenskap: Logga utt
	För att kunna skydda sina användaruppgifter
	Som en inloggad användare
	Vill jag kunna logga ut från hemsidan
	
Bakgrund: Användaren är på förstasidan
	Givet att jag är på förstasidan

Scenario: Användaren ska kunna logga ut korrekt
    Givet att jag är inloggad
	När jag klickar på logga ut
	Så ska sidan inte visa "Logga ut"
	
Scenario: Användaren ska inte komma åt min sida och annonsera när man är utloggad
	När jag är utloggad
	Och jag går till min sida
	Så ska jag komma till logga-in sidan
	När jag går till annonsera
	Så ska jag komma till logga-in sidan

Scenario: Användaren ska inte kunna nå en begränsad sida genom att gå bakåt i webbläsaren när den nyss loggat ut
	När jag är inloggad
	Och jag går till min sida
	Och jag klickar på logga ut
	Och jag trycker bakåt
	Så ska jag inte komma till min sida
