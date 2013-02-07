# encoding: utf-8

När /^jag klickar på admin$/ do
  @driver.find_element(:link, "Admin").click
end

När /^jag klickar på gå till startsidan$/ do
  @driver.find_element(:link, "Gå till startsidan").click
end
