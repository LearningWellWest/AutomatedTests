# encoding: utf-8

Så /^ska texten "(.*?)" visas$/ do |arg1|
  @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*#{arg1}[\s\S]*$/
end