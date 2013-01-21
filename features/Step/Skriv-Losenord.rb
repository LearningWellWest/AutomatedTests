# encoding: utf-8

När /^jag fyller i lösenord med "(.*?)"$/ do |arg1|
  @driver.find_element(:id, "Password").clear
  @driver.find_element(:id, "Password").send_keys arg1
end