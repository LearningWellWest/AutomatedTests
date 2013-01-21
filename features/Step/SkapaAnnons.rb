# encoding: utf-8

Givet /^är på Skapa annons sidan$/ do
  @driver.find_element(:link, "Skapa annons").click
end