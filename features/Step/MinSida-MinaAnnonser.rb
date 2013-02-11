# encoding: utf-8

När /^jag klickar på mina annonser$/ do
	@driver.find_element(:link, "Mina annonser").click
end

Så /^ska jag komma till mina annonser$/ do
    @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*Publicerad[\s\S]*$/
end

När /^klickar på annonsen "(.*?)"$/ do |arg1|
  @driver.find_element(:link, arg1).click
end

När /^klickar på "(.*?)"$/ do |arg1|
  @driver.find_element(:link, arg1).click
end

