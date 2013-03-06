# encoding: utf-8

När /^jag klickar på sök$/ do
  @driver.find_element(:link, "Sök").click
end

När /^söker efter "(.*?)"$/ do |arg1|
    @driver.find_element(:id, "FilterItemText").clear
    @driver.find_element(:id, "FilterItemText").send_keys arg1
    @driver.find_element(:id, "search-button").click
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

Så /^ska annonsen "(.*?)" dyka upp under kategorin "(.*?)"$/ do |arg1, arg2|
   catDropdown = @driver.find_element(:xpath => "html/body/div[1]/div[4]/form/div[1]/a")
   catDropdown.click
   catDropdown.send_keys arg2
   
   #@driver.find_element(:xpath => "html/body/ul/li[2]/a").click 
end

Så /^ska jag komma till sök$/ do
  @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*Start > Sök [\s\S]*$/ 
end

