# encoding: utf-8

När /^jag klickar på logga ut$/ do
  @driver.find_element(:link, "[Logga ut]").click
end

Så /^ska sidan inte visa "(.*?)"$/ do |arg1|
  @driver.find_element(:css, "BODY").text.should_not =~ /^[\s\S]*#{arg1}[\s\S]*$/
end
