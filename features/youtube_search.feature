
Feature: YouTube har en sokfunktion.

Background:Det gar att soka

Scenario Outline: Sok efter en term
  Given att jag skriver i faltet "masthead-search-term" texten <strang>
  When trycker på "search-btn"
  Then ska jag se <resultat>
  
Examples:
	| strang	| resultat 						|
	| "banan"		| "Sean Banan - Gott nytt jul" 	|
	| "gurka"		| " " 	|

