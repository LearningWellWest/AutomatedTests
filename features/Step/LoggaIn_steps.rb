# encoding: utf-8
require "selenium-webdriver"
require "rspec"
include RSpec::Expectations


Givet /^att jag är på förstasidan$/ do
  @driver.get(@base_url)
end

När /^jag klickar på Logga in\-länken$/ do
@driver.get(@base_url + "/Customer/Login")
end

När /^jag fyller i användarnamn med "(.*?)"$/ do |arg1|
  @driver.find_element(:id, "Username").clear
  @driver.find_element(:id, "Username").send_keys arg1
end

När /^jag fyller i lösenord med "(.*?)"$/ do |arg1|
  @driver.find_element(:id, "Password").clear
  @driver.find_element(:id, "Password").send_keys arg1
end

När /^jag klickar på Logga in$/ do
  @driver.find_element(:css, "button.loginbutton.save").click
end

Så /^ska användaren loggas in och sidan visar "(.*?)"$/ do |arg1|
  @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*Hej, Testuser![\s\S]*$/
end