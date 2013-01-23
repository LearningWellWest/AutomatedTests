# encoding: utf-8

När /^klickar på Ta bort$/ do
	@driver.find_element(:xpath, "(//input[@value='Ta bort'])[3]").click
end

Så /^ska adressen raderas$/ do
	@driver.find_element(:css, "BODY").text.should_not =~ /^[\s\S]*admin Adminsson[\s\S]*$/
end
