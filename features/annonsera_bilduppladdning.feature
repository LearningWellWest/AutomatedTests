# language: sv

Egenskap: Annonsera - Bilduppladdning
	För att det inte ska inträffa fel när jag lägger till bilder på annonser
    	Som en inloggad användare
	Vill jag se till att sidan hanterar de fel som kan uppstå vid bilduppladdning

Bakgrund: En inloggad användare skapar en annons
	Givet att jag är inloggad
	Och är på skapa annons sidan
	Och jag fyller i korrekta värden för alla fält när annonsen skapas

Scenario: Det ska gå att ladda upp en bild som är i formatet JPG
	När jag lägger till bilden "kokosboll.jpg"
	Så ska bilduppladdningen lyckas

Scenario: Det ska gå att ladda upp en bild som är i formatet PNG
	När jag lägger till bilden "chair.png"
	Så ska bilduppladdningen lyckas

Scenario: Det ska gå att ladda upp en bild som är i formatet GIF
	När jag lägger till bilden "chair.gif"
	Så ska bilduppladdningen lyckas

Scenario: Det ska inte gå att ladda upp en bild som är i formatet TIF
	När jag lägger till bilden "tifimage.TIF"
	Så ska sidan visa texten "Fel filtyp"

Scenario: Det ska inte gå att ladda upp en bild som är i formatet CRW
	När jag lägger till bilden "raw-file.CRW"
	Så ska sidan visa texten "Fel filtyp"

Scenario: Det ska inte gå att ladda upp en bild som är i formatet XCF
	När jag lägger till bilden "gimpfile.xcf"
	Så ska sidan visa texten "Fel filtyp"
	
@not_ready
Scenario: Det ska inte gå att ladda upp en bild som är större än 4mb
	När jag lägger till bilden "sofa12mb.jpg"
	Så ska sidan visa texten "Filen är för stor, max 4mb"

@not_ready
Scenario: Det ska inte gå att ladda upp så många bilder att dem tilsammans överstiger 20mb
	När jag laddar upp många bilder så att dem tillsammans överstiger 20mb
	Så ska sidan visa texten "Filernas kombinerade storlek överstiger 20mb"
