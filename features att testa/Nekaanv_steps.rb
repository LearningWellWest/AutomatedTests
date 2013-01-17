# encoding: utf-8
require "selenium-webdriver"
require "rspec"
include RSpec::Expectations
  
Givet /^att jag är på förstasidan$/ do
  @driver.get(@base_url + "/")
end

När /^jag klickar på Logga in-länken$/ do
  @driver.find_element(:link, "[Logga in]").click
end

När /^att jag fyller i användarnamn med "(.*?)"$/ do |arg1|
  @driver.find_element(:id, "Username").clear
  @driver.find_element(:id, "Username").send_keys "Testuser1"
end

När /^att jag fyller i lösenord med "(.*?)"$/ do |arg1|
  @driver.find_element(:id, "Password").clear
  @driver.find_element(:id, "Password").send_keys "learningwell"
end

När /^jag klickar på "(.*?)"$/ do |arg1|
  @driver.find_element(:css, "button.loginbutton.save").click
end

Så /^ska användaren nekas inloggning$/ do
  @driver.find_element(:css, "BODY").text.should_not =~ /^[\s\S]*Hej, Testuser![\s\S]*$/
end