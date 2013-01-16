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

När /^sedan klickar på "Mina köp\/min försäljning"$/ do
	@driver.find_element(:link, "Mina köp/min försäljning").click
end

Så /^ska jag komma till "(.*?)"$/ do |arg1|
  @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*Mina ordrar[\s\S]*$/
end
