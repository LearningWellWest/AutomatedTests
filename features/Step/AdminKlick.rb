# encoding: utf-8
require "selenium-webdriver"
require "rspec"
include RSpec::Expectations

När /^jag klickar på Admin$/ do
  @driver.find_element(:link, "Admin").click
end