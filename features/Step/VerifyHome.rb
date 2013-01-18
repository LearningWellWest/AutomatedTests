# encoding: utf-8
require "selenium-webdriver"
require "rspec"
include RSpec::Expectations

Så /^ska jag komma till Hemsidan$/ do
  @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*Möbler[\s\S]*$/
end