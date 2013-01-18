# encoding: utf-8
require "selenium-webdriver"
require "rspec"
include RSpec::Expectations

När /^jag klickar på Sök$/ do
  @driver.find_element(:link, "Sök").click
end