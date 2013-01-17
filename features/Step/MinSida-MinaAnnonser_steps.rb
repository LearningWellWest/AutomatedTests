# encoding: utf-8
require "selenium-webdriver"
require "rspec"
include RSpec::Expectations

När /^jag klickar på Mina annonser$/ do
	@driver.find_element(:link, "Mina annonser").click
end

Så /^ska jag komma till Mina annonser$/ do
    @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*Publicerad[\s\S]*$/
end