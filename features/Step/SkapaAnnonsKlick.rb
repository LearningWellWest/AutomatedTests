# encoding: utf-8

När /^jag klickar på Skapa annons$/ do
  @driver.find_element(:link, "Skapa annons").click
end