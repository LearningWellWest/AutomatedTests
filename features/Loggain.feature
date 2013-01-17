# language: sv

Egenskap:
  Off2Off har en login funktion

Bakgrund:
  Givet att jag är på Off2Offs hemsida

Scenario: 
  Logga in med användarnamn och lösenord
  När jag skriver in "Testuser" i fältet "Användarnamn"
  Och jag fyller i "learningwell" i fältet "Lösenord"
  Och jag klickar på "Logga in"
  Så kommer jag se "Hej, Tesuser!"