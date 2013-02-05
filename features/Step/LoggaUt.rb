# encoding: utf-8

När /^jag klickar på Logga ut$/ do
  @driver.find_element(:link, "[Logga ut]").click
end

Så /^ska användaren loggas ut och sidan visar inte "(.*?)"$/ do |arg1|
  @driver.find_element(:css, "BODY").text.should_not =~ /^[\s\S]*Hej, Testuser![\s\S]*$/
end