# encoding: utf-8

När /^jag sedan klickar på Mina adresser$/ do
	@driver.find_element(:link, "Mina adresser").click
end

Så /^ska jag komma till Mina Adresser$/ do
  @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*Adresser[\s\S]*$/
end
