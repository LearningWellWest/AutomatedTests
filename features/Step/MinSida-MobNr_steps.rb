# encoding: utf-8

När /^ändrar mobilnumret till "(.*?)"$/ do |arg1|
  @driver.find_element(:id, "Cellphone").clear
  @driver.find_element(:id, "Cellphone").send_keys "+46701234567"
end

Så /^ska mobilnumret "(.*?)" uppdateras och sparas$/ do |arg1|
  @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*#{arg1}[\s\S]*$/
end

