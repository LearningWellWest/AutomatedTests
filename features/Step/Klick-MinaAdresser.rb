# encoding: utf-8

När /^jag sedan klickar på Mina adresser$/ do
	@driver.find_element(:link, "Mina adresser").click
end