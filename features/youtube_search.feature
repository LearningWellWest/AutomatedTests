
Feature: YouTube har en sokfunktion.

Background:Det gar att soka

Scenario: Sok efter en term
  Given att jag skriver i faltet "masthead-search-term" texten "paron"
  When trycker pa "search-btn"
  Then ska jag se "Sean Banan - Gott nytt jul"
