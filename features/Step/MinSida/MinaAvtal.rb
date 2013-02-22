# encoding: utf-8

När /^jag klickar på avtal$/ do
	@driver.find_element(:link, "Avtal").click
end

Så /^ska jag komma till avtal$/ do
    @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*Avtal[\s\S]*$/
end
