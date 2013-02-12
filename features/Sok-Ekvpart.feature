# language: sv
@sok

Egenskap: Sök Ekvivalenspartionering
	För att sidan skall vara stabil
	Som en inloggad användare
	Vill jag inte krasha sidan vid en vanlig/ofrivillig sifferinmatning
	
Bakgrund:
	Givet att jag är inloggad
	Och jag klickar på sök

	
Scenario: Off2off skall hantera 2^16
	När jag skriver in "65534"
	Så ska sidan ge resultat i form av "Inga annonser hittades"
	
Scenario: Off2off skall hantera 2^16
	När jag skriver in "65535"
	Så ska sidan ge resultat i form av "Inga annonser hittades"
	
Scenario: Off2off skall hantera 2^16
	När jag skriver in "65536"
	Så ska sidan ge resultat i form av "Inga annonser hittades"
	
Scenario: Sökfunktionen skall hantera avslutande mellanslag
	Och jag skriver in "stol "
	Så ska sidan ge resultat i form av "Inga annonser hittades"
	
Scenario: Off2off skall hantera enkel unicode
	Och jag skriver in "äåö"
	Så ska sidan ge resultat i form av "Inga annonser hittades"
	
Scenario: Off2off skall hantera Extremt många tecken
	Och jag skriver in "extremt många tecken"
	Så ska sidan ge resultat i form av "Inga annonser hittades"
	
Scenario: Off2off skall hantera giltliga värden
	Och jag skriver in "stol"
	Så ska sidan ge resultat i form av "Inga annonser hittades"	
	
Scenario: Off2off skall hantera inledande mellanslag
	Och jag skriver in " stol"
	Så ska sidan ge resultat i form av "Inga annonser hittades"
	
Scenario: Off2off skall hantera ovanligt många tecken
	Och jag skriver in "Jdjdhdhdj dnchdweowowu shsnalksd iuigdfsdmn fslkdfjdhfuuye ruywjsj sksjdfhf dhjsios dhgdfjshdfd dhfgsjhfgsdguywhdb dgfisdbfkjsdf sdjfhsjkdf sjkfhskdfhsdjkfh sfh dhflkwioerhsdj f huidf idhf jkdfhsdgf jkhfiojhwiefgb sdkjho f"
	Så ska sidan ge resultat i form av "Inga annonser hittades"
	
Scenario: Off2off skall hantera negativt värde
	Och jag skriver in "-1"
	Så ska sidan ge resultat i form av "Inga annonser hittades"
	
Scenario: Off2off skall hantera max integer
	Och jag skriver in "2147483647"
	Så ska sidan ge resultat i form av "Inga annonser hittades"	
	
Scenario: Off2off skall hantera max integer plus 1
	Och jag skriver in "2147483648"
	Så ska sidan ge resultat i form av "Inga annonser hittades"	
	
Scenario: Off2off skall hantera minst integer
	Och jag skriver in "-2147483648"
	Så ska sidan ge resultat i form av "Inga annonser hittades"
	
Scenario: Off2off skall hantera minst integer + 1
	Och jag skriver in "-2147483649"
	Så ska sidan ge resultat i form av "poster"	
	
Scenario: Off2off skall hantera unicode tecken
	Och jag skriver in "ζ܁᝛￤ꙛ᱑𢒚ㄔ᧐ゼᶈ혍ꡖﷄ"
	Så ska sidan ge resultat i form av "Inga annonser hittades"
	
Scenario: Off2off skall hantera whitespaces
	Och jag skriver in " "
	Så ska sidan ge resultat i form av "poster"	

Scenario: Off2off skall hantera 0 träffresultat
	Och jag skriver in "kjsdfjkhdfkjhasdf"
	Så ska sidan ge resultat i form av "Inga annonser hittades"
	
