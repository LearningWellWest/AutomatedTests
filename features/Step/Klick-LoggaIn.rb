# encoding: utf-8

När /^jag klickar på Logga in$/ do
  @driver.find_element(:css, "button.loginbutton.save").click
end