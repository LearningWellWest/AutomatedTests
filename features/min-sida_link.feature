@setup
Feature: The link to My page should work

Background: A user is logged in
	Given I am logged in

Scenario: The link to my page should work
	When I click on my page
	Then I should come to my page
