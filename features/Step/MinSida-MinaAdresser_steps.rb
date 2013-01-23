# encoding: utf-8

Så /^ska jag komma till Mina Adresser$/ do
  @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*Adresser[\s\S]*$/
end
