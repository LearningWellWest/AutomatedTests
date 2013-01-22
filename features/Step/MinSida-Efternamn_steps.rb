# encoding: utf-8

När /^ändrar efternamnet till "(.*?)"$/ do |arg1|
  @driver.find_element(:id, "LastName").clear
  @driver.find_element(:id, "LastName").send_keys arg1
end

Så /^ska efternamnet "(.*?)" uppdateras och sparas$/ do |arg1|
  @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*#{arg1}[\s\S]*$/
end