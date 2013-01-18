# encoding: utf-8
require "selenium-webdriver"
require "rspec"
include RSpec::Expectations

När /^jag fyller i användarnamn med "Testuser1"$/ do |arg1|
  @driver.find_element(:id, "Username").clear
  @driver.find_element(:id, "Username").send_keys arg1
end

Så /^ska användaren nekas inloggning$/ do
  @driver.find_element(:css, "BODY").text.should_not =~ /^[\s\S]*Hej, Testuser![\s\S]*$/
end