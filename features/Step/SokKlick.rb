# encoding: utf-8

När /^jag klickar på Sök$/ do
  @driver.find_element(:link, "Sök").click
end