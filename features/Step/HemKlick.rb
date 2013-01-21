# encoding: utf-8

När /^jag klickar på Hem$/ do
  @driver.find_element(:link, "Hem").click
end