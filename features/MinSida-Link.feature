@JustForTesting

Feature: The link to My page should work

Background: A user is logged in
	Given I am logged in

Scenario: A user wants to go to My page
	When I click on My page
	Then I should come to My page
