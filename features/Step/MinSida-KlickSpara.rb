# encoding: utf-8

När /^klickar på spara$/ do
  @driver.find_element(:css, "input.save").click
end