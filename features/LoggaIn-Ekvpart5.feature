# language: sv

Egenskap: Ekvivalenspartionering 3, logga in med ogiltiga tecken

Bakgrund:
	Givet att jag är på förstasidan

Scenario: Off2off skall hantera Unicode-tecken
	När jag klickar på Logga in-länken
	Och jag fyller i användarnamn med "ЖЗИ⓳ㆣႼ᝾ドᡮꂭװᕘzፈ暻ڬЙКऒओЛ"
	Och jag fyller i lösenord med "φ۞χψγὭӶꀴ♚♛௵௶δεζ"
	Och jag klickar på Logga in
	Så ska användaren nekas inloggning
