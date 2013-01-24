require 'cucumber/formatter/unicode'
require 'rbconfig'
require "selenium-webdriver"
require 'rspec'  
require 'capybara/rspec' 
include RSpec::Expectations


Given /^att jag skriver i faltet "(.*?)" texten "(.*?)"$/ do |field, value|
	@driver.get('http://www.youtube.com' + "/")
	@driver.find_element(:id, field).clear
    @driver.find_element(:id, field).send_keys value
end

When /^trycker pa "(.*?)"$/ do |button|
  @driver.find_element(:id, button).click
end

Then /^ska jag se "(.*?)"$/ do |textString|

 @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*#{textString}[\s\S]*$/ 
end

#def verify(&blk)
 #   yield
  #rescue ExpectationNotMetError => ex
   # raise ex
 # end
