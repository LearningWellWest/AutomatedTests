# encoding: utf-8
require "selenium-webdriver"
require "rspec"
include RSpec::Expectations

Givet /^att jag är inloggad$/ do
	@driver.get(@base_url + "/")
	@driver.find_element(:link, "[Logga in]").click
    @driver.find_element(:id, "Username").clear
    @driver.find_element(:id, "Username").send_keys "Testuser"
    @driver.find_element(:id, "Password").clear
    @driver.find_element(:id, "Password").send_keys "learningwell"
    @driver.find_element(:css, "button.loginbutton.save").click
end

När /^jag klickar på "min sida"$/ do
	@driver.find_element(:link, "Min sida").click
	@driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*Min sida[\s\S]*$/
end

När /^jag sedan klickar på Mina annonser$/ do
	@driver.find_element(:link, "Mina annonser").click
end

Så /^ska jag komma till Mina annonser$/ do
    @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*Publicerad[\s\S]*$/
end
