# encoding: utf-8
require "selenium-webdriver"
require "rspec"
include RSpec::Expectations

Givet /^är på Skapa annons sidan$/ do
  @driver.find_element(:link, "Skapa annons").click
end