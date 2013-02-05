@JustForTesting

Feature: My Page link should work

Bakgrund: A user is inlogged
	Given i am inlogged

Scenario: A user wants to go to my page link
	When i click on Min sida
	Then i should come to "Min sida"
