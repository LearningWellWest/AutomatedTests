# encoding: utf-8
Så /^ska användaren nekas inloggning$/ do
  @driver.find_element(:css, "BODY").text.should_not =~ /^[\s\S]*Hej, Testuser![\s\S]*$/
end