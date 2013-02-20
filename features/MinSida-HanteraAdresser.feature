# language: sv
@minsida

Egenskap: Hantera adresser
	För att kunna ha fler eller färre adresser registrerade 
	Som en inloggad användare
	Vill jag ha möjligheten att gå in och lägga till eller ta bort adressuppgifter
	
Bakgrund: Användaren är inloggad och klickar på min sida
	Givet att jag är inloggad
	Och jag klickar på min sida
	Och jag klickar på mina adresser
	Och jag inte har några adresser inlagda

@not_ready
Scenario: Användaren ska kunna lägga till en adress
	När jag lägger till nya adressuppgifter där förvaltningen är "Utbildningsförvaltningen"
	Så ska "Utbildningsförvaltningen" dyka upp under mina adresser

Scenario: Användaren ska kunna ta bort en adress
	När jag lägger till nya adressuppgifter där förvaltningen är "Miljöförvaltningen"
	Och väljer att ta bort adressen där förvaltningen är "Miljöförvaltningen"
	Så ska "Miljöförvaltningen" inte dyka upp under mina adresser
