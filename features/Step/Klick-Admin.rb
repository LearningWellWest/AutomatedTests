# encoding: utf-8

När /^jag klickar på Admin$/ do
  @driver.find_element(:link, "Admin").click
end