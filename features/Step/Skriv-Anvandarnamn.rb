# encoding: utf-8

När /^jag fyller i användarnamn med "(.*?)"$/ do |arg1|
  @driver.find_element(:id, "Username").clear
  @driver.find_element(:id, "Username").send_keys arg1
end