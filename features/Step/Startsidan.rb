# encoding: utf-8
require "selenium-webdriver"
require "rspec"
include RSpec::Expectations

Givet /^att jag är på Startsidan$/ do
  @driver.get(@base_url + "/")
end