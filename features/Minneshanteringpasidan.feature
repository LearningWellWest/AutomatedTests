# language: sv
@velig

Egenskap: Hemsidan skall behålla minnet vid navigering
	För att undvika återupprepning
	Som en användare
	Vill jag navigera på sidan utan att förlora ifylld information
	
Scenario: Velig användare
	Givet att jag är inloggad
	När jag klickar på sök
	Och jag klickar på skapa annons
	Och jag klickar på min sida
	Och jag klickar på mina adresser
	Och jag klickar min sida
	Och jag klickar på off2off
	Och jag trycker bakåt
	Och jag trycker bakåt
	Och jag trycker bakåt
	Och jag trycker framåt
	Och jag trycker bakåt
	Och jag trycker bakåt
	Och jag trycker framåt
	Och jag trycker bakåt
	Och jag trycker bakåt
	Och jag trycker framåt
	Och jag trycker framåt
	Och jag trycker bakåt
	Och jag trycker bakåt
	Och jag trycker framåt
	Och jag trycker framåt
	Och jag trycker framåt
	Och jag trycker bakåt
	Och jag trycker bakåt
	Så ska sidan inte krascha 