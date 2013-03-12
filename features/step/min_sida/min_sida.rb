# encoding: utf-8


När /^jag klickar på min sida$/ do
	
	
	#@driver.find_element(:link, "Min sida").click
	#@driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*Min sida[\s\S]*$/

	#Fix until Evry has fixed small page bug
	@driver.get("http://malvin.off2off.se/Customer/Info");
end

Så /^ska jag komma till min sida$/ do
	@driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*Min sida[\s\S]*$/
end

#Malvin url Min Sida
När /^jag går till min sida$/ do
  @driver.get("http://malvin.off2off.se/Customer/Info");
end

När /^klickar på spara$/ do
  @driver.find_element(:css, "input.save").click
end


#Förnamn
När /^jag ändrar förnamnet till \t\t\t"(.*?)"$/ do |arg1|
  @driver.find_element(:id, "FirstName").clear
  @driver.find_element(:id, "FirstName").send_keys arg1
end

Så /^ska texten i förnamns\-fältet vara \t\t"(.*?)"$/ do |arg1|
  @driver.find_element(:id, "FirstName").attribute("value").should == arg1 
end

#Efternamn
När /^jag ändrar efternamnet till \t\t"(.*?)"$/ do |arg1|
  @driver.find_element(:id, "LastName").clear
  @driver.find_element(:id, "LastName").send_keys arg1
end

Så /^ska texten i efternamns\-fältet vara \t"(.*?)"$/ do |arg1|
  @driver.find_element(:id, "LastName").attribute("value").should == arg1 
end


#E-post
När /^jag ändrar epost\-adressen till \t\t"(.*?)"$/ do |arg1|
  @driver.find_element(:id, "Email").clear
  @driver.find_element(:id, "Email").send_keys arg1
end

Så /^ska texten i epost\-fältet vara \t\t"(.*?)"$/ do |arg1|
  @driver.find_element(:id, "Email").attribute("value").should == arg1 
end


#Telefon
När /^jag ändrar telefonnummret till \t\t"(.*?)"$/ do |arg1|
  @driver.find_element(:id, "Phone").clear
  @driver.find_element(:id, "Phone").send_keys arg1
end

Så /^ska texten i telefon\-fältet vara vara \t"(.*?)"$/ do |arg1|
  @driver.find_element(:id, "Phone").attribute("value").should == arg1 
end


#Mobiltelefon
När /^jag ändrar mobilnumret till \t\t"(.*?)"$/ do |arg1|
  @driver.find_element(:id, "Cellphone").clear
  @driver.find_element(:id, "Cellphone").send_keys arg1
end

Så /^ska texten i mobilnummer\-fältet vara \t"(.*?)"$/ do |arg1|
  @driver.find_element(:id, "Cellphone").attribute("value").should == arg1 
end


#Förvaltning
När /^jag ändrar förvaltning till \t\t"(.*?)"$/ do |arg1|
  @driver.find_element(:id, "AdministrationUnit").clear
  @driver.find_element(:id, "AdministrationUnit").send_keys arg1
end

Så /^ska texten i förvaltnings\-fältet vara \t"(.*?)"$/ do |arg1|
  @driver.find_element(:id, "AdministrationUnit").attribute("value").should == arg1 
end


#Avdelning
När /^jag ändrar avdelning till \t\t\t"(.*?)"$/ do |arg1|
  @driver.find_element(:id, "Department").clear
  @driver.find_element(:id, "Department").send_keys arg1
end

Så /^ska texten i avdelnings\-fältet vara \t"(.*?)"$/ do |arg1|
  @driver.find_element(:id, "Department").attribute("value").should == arg1 
end




