# encoding: utf-8

När /^jag klickar på tjänster$/ do
	@driver.find_element(:link, "Tjänster").click
end

Så /^ska jag komma till tjänster$/ do
  @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*Start > Tjänster[\s\S]*$/ 
end

