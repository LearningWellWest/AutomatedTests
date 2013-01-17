# encoding: utf-8
require "selenium-webdriver"
require "rspec"
include RSpec::Expectations

Before do
    @driver = Selenium::WebDriver.for :firefox
    @base_url = "http://www.off2off.se/"
    @accept_next_alert = true
    @driver.manage.timeouts.implicit_wait = 30
    @verification_errors = []
end
  
After do
    @driver.quit
    @verification_errors.should == []
end

Givet /^att jag är på Off(\d+)Offs hemsida$/ do |arg1|
  @driver.get(@base_url + "/Customer/Login")
end

När /^jag skriver in "(.*?)"$/ do |arg1|
  @driver.find_element(:id, "Username").clear
  @driver.find_element(:id, "Username").send_keys "Testuser"
end

När /^jag fyller i "(.*?)"$/ do |arg1|
  @driver.find_element(:id, "Password").clear
  @driver.find_element(:id, "Password").send_keys "learningwell"
end

När /^jag klickar på "(.*?)"$/ do |arg1|
  @driver.find_element(:css, "button.loginbutton.save").click
end

Så /^kommer jag se "(.*?)"$/ do |arg1|
  @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*Hej, Testuser![\s\S]*$/
end