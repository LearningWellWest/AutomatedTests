# language: sv

Egenskap: Ekvivalenspartionering 3, logga in med ogiltiga tecken

Bakgrund:
	Givet att jag �r p� f�rstasidan

Scenario: Off2off skall hantera Unicode-tecken
	N�r jag klickar p� Logga in-l�nken
	Och jag fyller i anv�ndarnamn med "ЖЗИ⓳ㆣႼ᝾ドᡮꂭװᕘzፈ暻ڬЙКऒओЛ"
	Och jag fyller i l�senord med "φ۞χψγὭӶꀴ♚♛௵௶δεζ"
	Och jag klickar p� Logga in
	S� ska anv�ndaren nekas inloggning�
