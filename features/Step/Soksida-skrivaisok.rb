# encoding: utf-8

När /^jag skriver in "(.*?)"$/ do |arg1|
     @driver.find_element(:id, "FilterItemText").clear
    @driver.find_element(:id, "FilterItemText").send_keys arg1
    @driver.find_element(:id, "search-button").click
end