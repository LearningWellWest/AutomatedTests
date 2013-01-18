# encoding: utf-8
require "selenium-webdriver"
require "rspec"
include RSpec::Expectations

När /^klickar på Spara annons$/ do
  @driver.find_element(:css, "input.save").click
end
