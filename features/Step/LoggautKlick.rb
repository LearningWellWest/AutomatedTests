# encoding: utf-8
require "selenium-webdriver"
require "rspec"
include RSpec::Expectations

När /^jag klickar på Logga ut$/ do
  @driver.find_element(:link, "[Logga ut]").click
end