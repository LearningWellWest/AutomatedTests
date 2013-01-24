# encoding: utf-8

require 'cucumber/formatter/unicode'
require 'rbconfig'
require "selenium-webdriver"
require 'rspec'  
require 'capybara/rspec' 
include RSpec::Expectations


När /^ändrar efternamnet till "(.*?)"$/ do |arg1|
  @driver.find_element(:id, "LastName").clear
  @driver.find_element(:id, "LastName").send_keys arg1
end

Så /^ska efternamnet "(.*?)" uppdateras och sparas$/ do |arg1|
  @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*#{arg1}[\s\S]*$/
end

