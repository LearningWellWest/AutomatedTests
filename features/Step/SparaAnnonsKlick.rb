# encoding: utf-8

När /^klickar på Spara annons$/ do
  @driver.find_element(:css, "input.save").click
end
