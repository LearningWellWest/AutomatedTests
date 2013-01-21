# encoding: utf-8

När /^jag klickar på Gå till startsidan$/ do
  @driver.find_element(:link, "Gå till startsidan").click
end