# encoding: utf-8

När /^ändrar förnamnet till "(.*?)"$/ do |arg1|
  @driver.find_element(:id, "FirstName").clear
  @driver.find_element(:id, "FirstName").send_keys arg1
end

Så /^ska namnet "(.*?)" uppdateras och sparas$/ do |arg1|
  @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*#{arg1}[\s\S]*$/
end