# encoding: utf-8

När /^jag klickar på Logga ut$/ do
  @driver.find_element(:link, "[Logga ut]").click
end