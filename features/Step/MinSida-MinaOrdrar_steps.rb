# encoding: utf-8
require "selenium-webdriver"
require "rspec"
include RSpec::Expectations

När /^jag klickar på Min sida$/ do
	@driver.find_element(:link, "Min sida").click
	@driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*Min sida[\s\S]*$/
end

När /^sedan klickar på Mina köp\/min försäljning$/ do
	@driver.find_element(:link, "Mina köp/min försäljning").click
end

Så /^ska jag komma till Mina ordrar$/ do
  @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*Mina ordrar[\s\S]*$/
end
