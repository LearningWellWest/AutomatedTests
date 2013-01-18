# encoding: utf-8
require "selenium-webdriver"
require "rspec"
include RSpec::Expectations


Så /^ska användaren nekas inloggning$/ do
  @driver.find_element(:css, "BODY").text.should_not =~ /^[\s\S]*Hej, Testuser![\s\S]*$/
end