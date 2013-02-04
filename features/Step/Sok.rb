# encoding: utf-8

När /^jag klickar på Sök$/ do
  @driver.find_element(:link, "Sök").click
end

Så /^ska sidan visa texten "(.*?)"$/ do |arg1|
	@driver.find_element(:css, "BODY").text.should_not =~ /^[\s\S]*#{arg1}[\s\S]*$/ 
end


Så /^ska sidan ge resultat i form av "(.*?)"$/ do |arg1|
	@driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*#{arg1}[\s\S]*$/ 
end


När /^jag skriver in "(.*?)"$/ do |arg1|
     @driver.find_element(:id, "FilterItemText").clear
    @driver.find_element(:id, "FilterItemText").send_keys arg1
    @driver.find_element(:id, "search-button").click
end

När /^jag skriver in extremt många tecken$/ do

o =  [('a'..'z'),('A'..'Z')].map{|i| i.to_a}.flatten
string  =  (0...9999).map{ o[rand(o.length)] }.join

    @driver.find_element(:id, "FilterItemText").clear
    @driver.find_element(:id, "FilterItemText").send_keys string
    sleep 1
    @driver.find_element(:id, "search-button").click
end

