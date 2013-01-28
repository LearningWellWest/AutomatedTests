# encoding: utf-8

När /^ändrar telefonnumret till "(.*?)"$/ do |arg1|
  @driver.find_element(:id, "Phone").clear
  @driver.find_element(:id, "Phone").send_keys "0987654321"
end

Så /^ska telefonnumret "(.*?)" uppdateras och sparas$/ do |arg1|
  @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*#{arg1}[\s\S]*$/
end

