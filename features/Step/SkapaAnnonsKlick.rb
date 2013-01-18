# encoding: utf-8
require "selenium-webdriver"
require "rspec"
include RSpec::Expectations

När /^jag klickar på Skapa annons$/ do
  @driver.find_element(:link, "Skapa annons").click
end