# encoding: utf-8
require 'cucumber/formatter/unicode'
require 'rbconfig'
require "selenium-webdriver"
require "rspec"
include RSpec::Expectations

Givet /^att jag är på YouTube$/ do
    @driver.get(@base_url + "/")
end

När /^jag skriver i fältet "(.*?)" texten "(.*?)"$/ do |field, value|
	@driver.find_element(:id, field).clear
    @driver.find_element(:id, field).send_keys value
end

När /^trycker på "(.*?)"$/ do |button|
  @driver.find_element(:id, button).click
end

Så /^ska jag se "(.*?)"$/ do |textString|
  @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*#{textString}[\s\S]*$/
end