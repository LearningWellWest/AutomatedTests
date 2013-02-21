# encoding: utf-8

När /^jag klickar på tjänster$/ do
	@driver.find_element(:link, "Tjänster").click
end
