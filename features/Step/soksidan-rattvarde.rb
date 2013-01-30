# encoding: utf-8

Så /^ska sidan hantera värdet rätt$/ do
  @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*poster[\s\S]*$/
end