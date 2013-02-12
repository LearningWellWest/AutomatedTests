@not_ready
Feature: The link to My page should work

Background: A user is logged in
	Given I am logged in

Scenario: A user wants to go to my page
	When I click on my page
	Then I should come to my page
