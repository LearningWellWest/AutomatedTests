# encoding: utf-8
Så /^ska sidan visa texten "(.*?)"$/ do |arg1|
	@driver.find_element(:css, "BODY").text.should_not =~ /^[\s\S]*#{arg1}[\s\S]*$/ 
end


Så /^ska sidan ge resultat i form av "(.*?)"$/ do |arg1|
	@driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*#{arg1}[\s\S]*$/ 
end



Så /^ska jag komma till hemsidan$/ do
  @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*Möbler[\s\S]*$/
end
