# encoding: utf-8
require "selenium-webdriver"
require "rspec"
include RSpec::Expectations

Så /^ska användaren loggas in och sidan visar "(.*?)"$/ do |arg1|
  @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*Hej, Testuser![\s\S]*$/
end