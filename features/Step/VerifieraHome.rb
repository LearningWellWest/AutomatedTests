# encoding: utf-8

Så /^ska jag komma till Hemsidan$/ do
  @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*Möbler[\s\S]*$/
end