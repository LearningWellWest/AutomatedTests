# encoding: utf-8

När /^jag klickar på Admin$/ do
  @driver.find_element(:link, "Admin").click
end

När /^jag klickar på Gå till startsidan$/ do
  @driver.find_element(:link, "Gå till startsidan").click
end
