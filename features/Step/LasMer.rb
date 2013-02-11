# encoding: utf-8
När /^jag klickar på läs mer$/ do
	@driver.find_element(:link, "Läs mer").click
end
