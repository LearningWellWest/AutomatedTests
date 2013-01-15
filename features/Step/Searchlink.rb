# encoding: utf-8
require "selenium-webdriver"
require "rspec"
include RSpec::Expectations


Givet /^att jag är inloggad$/ do
    @driver.get("http://off2off.se/")
    @driver.find_element(:link, "[Logga in]").click
    @driver.find_element(:id, "Username").clear
    @driver.find_element(:id, "Username").send_keys "Testuser"
    @driver.find_element(:id, "Password").clear
    @driver.find_element(:id, "Password").send_keys "learningwell"
    @driver.find_element(:css, "button.loginbutton.save").click
end

När /^jag sedan klickar på sök$/ do
  @driver.find_element(:link, "Sök").click
end

Så /^ska jag komma till söksidan$/ do
  @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*poster[\s\S]*$/
end

Så /^sedan logga ut$/ do
  @driver.find_element(:link, "[Logga ut]").click
end

