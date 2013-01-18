# encoding: utf-8
require "selenium-webdriver"
require "rspec"
include RSpec::Expectations

Så /^ska min annons vara sparad$/ do
    @driver.find_element(:link, "Min sida").click
    @driver.find_element(:link, "Mina annonser").click
end