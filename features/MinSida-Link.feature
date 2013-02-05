@JustForTesting

Feature: The link to My page should work

Background: A user is inlogged
	Given i am inlogged

Scenario: A user wants to go to My page
	When i click on My page
	Then i should come to My page
