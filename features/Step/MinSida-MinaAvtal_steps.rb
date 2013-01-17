# encoding: utf-8
require "selenium-webdriver"
require "rspec"
include RSpec::Expectations

När /^jag klickar på "min sida"$/ do
	@driver.find_element(:link, "Min sida").click
	@driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*Min sida[\s\S]*$/
end

När /^jag sedan klickar på Avtal$/ do
	@driver.find_element(:link, "Avtal").click
end

Så /^ska jag komma till Avtal$/ do
    @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*Avtal[\s\S]*$/
end
