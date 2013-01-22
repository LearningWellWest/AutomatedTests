# encoding: utf-8

När /^ändrar Email\-adressen till "(.*?)"$/ do |arg1|
  @driver.find_element(:id, "Email").clear
    @driver.find_element(:id, "Email").send_keys arg1
end

Så /^ska Email\-adressen "(.*?)" uppdateras och sparas$/ do |arg1|
  @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*#{arg1}[\s\S]*$/
end