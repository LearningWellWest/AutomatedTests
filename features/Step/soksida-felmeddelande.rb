# encoding: utf-8


Så /^ska sidan visa texten "(.*?)"$/ do |arg1|
	@driver.find_element(:css, "BODY").text.should_not =~ /^[\s\S]*#{arg1}[\s\S]*$/ 
end