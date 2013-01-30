# encoding: utf-8

Så /^ska sidan ge felmeddelande$/ do
  @driver.find_element(:css, "BODY").text.should_not =~ /^[\s\S]*poster[\s\S]*$/
end