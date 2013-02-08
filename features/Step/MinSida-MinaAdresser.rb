# encoding: utf-8

När /^jag klickar på mina adresser$/ do
	@driver.find_element(:link, "Mina adresser").click
end

Så /^ska jag komma till mina adresser$/ do
  @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*Adresser[\s\S]*$/
end


När /^klickar på ta bort$/ do
	@driver.find_element(:xpath, "(//input[@value='Ta bort'])[2]").click
end

Så /^ska adressen raderas$/ do
	@driver.find_element(:css, "BODY").text.should_not =~ /^[\s\S]*admin Adminsson[\s\S]*$/
end


När /^lägger till nya adressuppgifter$/ do
    @driver.find_element(:css, "input.addaddressbutton.save").click
    @driver.find_element(:id, "Address_AdministrationUnit").clear
    @driver.find_element(:id, "Address_AdministrationUnit").send_keys "Karlstad kommun"
    @driver.find_element(:id, "Address_Department").clear
    @driver.find_element(:id, "Address_Department").send_keys "LearningWell"
    @driver.find_element(:id, "Address_Address1").clear
    @driver.find_element(:id, "Address_Address1").send_keys "Testargatan 2013 B"
    @driver.find_element(:id, "Address_Address2").clear
    @driver.find_element(:id, "Address_Address2").send_keys "Slump"
    @driver.find_element(:id, "Address_ZipPostalCode").clear
    @driver.find_element(:id, "Address_ZipPostalCode").send_keys "65222"
    @driver.find_element(:id, "Address_City").clear
    @driver.find_element(:id, "Address_City").send_keys "Karlstad"
    @driver.find_element(:id, "Address_OtherInfo").clear
    @driver.find_element(:id, "Address_OtherInfo").send_keys "Behövs inte..."
    @driver.find_element(:css, "input.saveaddressbutton.save").click
end

Så /^ska adressen sparas och visas$/ do
	@driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*Karlstad kommun[\s\S]*$/
end

När /^jag ändrar telefonnumret till "(.*?)"$/ do |arg1|
  @driver.find_element(:id, "Phone").clear
  @driver.find_element(:id, "Phone").send_keys "0987654321"
end

Så /^ska telefonnumret "(.*?)" uppdateras och sparas$/ do |arg1|
  @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*#{arg1}[\s\S]*$/
end

