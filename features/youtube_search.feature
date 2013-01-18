@SETUP
Feature: Setup.
Given Something

Background:Det gar att soka

Scenario: Sok efter en term
Given att jag skriver i faltet "masthead-search-term" texten "banan"
When trycker pa "search-btn"
Then ska jag se "Sean Banan - Gott nytt jul"
