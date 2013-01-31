# encoding: utf-8


Så /^ska sidan ge resultat i form av "(.*?)"$/ do |arg1|
	@driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*#{arg1}[\s\S]*$/ 
end