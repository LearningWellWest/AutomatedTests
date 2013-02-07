# encoding: utf-8

Så /^ska min annons vara sparad$/ do
 pending # express the regexp above with the code you wish you had
end

Så /^ska annonsen "(.*?)" dyka upp under mina annonser$/ do |arg1|
  @driver.find_element(:link, "Min sida").click
  @driver.find_element(:link, "Mina annonser").click
  @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*#{arg1}[\s\S]*$/
end

Så /^ska annonsen "(.*?)" dyka upp när man söker efter "(.*?)"$/ do |arg1, arg2|
  @driver.find_element(:link, "Sök").click
  @driver.find_element(:id, "FilterItemText").clear
  @driver.find_element(:id, "FilterItemText").send_keys arg2
  @driver.find_element(:id, "search-button").click
  @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*#{arg1}[\s\S]*$/
end
