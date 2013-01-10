Feature: Google has a search function.

Background:
  Given I am on Google

Scenario: Search for a term
  When I fill in "q" with "Patrik"
  And I press "Logga in"
  Then I should see "Funktioner i Hotmail"