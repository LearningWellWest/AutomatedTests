# encoding: utf-8
require "selenium-webdriver"
require "rspec"
include RSpec::Expectations

När /^jag klickar på Gå till startsidan$/ do
  @driver.find_element(:link, "Gå till startsidan").click
end