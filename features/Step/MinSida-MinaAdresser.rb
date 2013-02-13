# encoding: utf-8

#Klicka på mina adresser
När /^jag klickar på mina adresser$/ do
	@driver.find_element(:link, "Mina adresser").click
end

#Klicka på ta bort
När /^klickar på ta bort$/ do
	@driver.find_element(:class,"deleteaddressbutton").click
end

#Ta bort alla inlagda adresser
Givet /^jag inte har några adresser inlagda$/ do
  i =0;
  @driver.find_elements(:class,"deleteaddressbutton").each do |r|
    i=i+1
  end
  k=0;
  while k < i  do
    @driver.find_element(:class,"deleteaddressbutton").click
    k=k+1
  end

end

#Kontrollera om en viss adress är tillagd
Så /^ska "(.*?)" dyka upp under mina adresser$/ do |arg1|
  @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*#{arg1}[\s\S]*$/
end
#Kontrollera om en adress finns
Så /^ska "(.*?)" inte dyka upp under mina adresser$/ do |arg1|
  @driver.find_element(:css, "BODY").text.should_not =~ /^[\s\S]*#{arg1}[\s\S]*$/
end

#Ta bort enstaka adress
När /^väljer att ta bort adressen där förvaltningen är "(.*?)"$/ do |arg1|
  @driver.find_elements(:xpath => "//div[@class='address-item alpha double']").each do |r|
    if r.text.split(' ')[0] == arg1
    	r.find_element(:class,"deleteaddressbutton").click
    end
  end
end



#Lägg till nya adressuppgifter
När /^jag lägger till nya adressuppgifter där förvaltningen är "(.*?)"$/ do |arg1|
    @driver.find_element(:css, "input.addaddressbutton.save").click
    @driver.find_element(:id, "Address_AdministrationUnit").clear
    @driver.find_element(:id, "Address_AdministrationUnit").send_keys arg1
    @driver.find_element(:id, "Address_Department").clear
    @driver.find_element(:id, "Address_Department").send_keys "Administration"
    @driver.find_element(:id, "Address_Address1").clear
    @driver.find_element(:id, "Address_Address1").send_keys "Drottninggatan"
    @driver.find_element(:id, "Address_Address2").clear
    @driver.find_element(:id, "Address_Address2").send_keys "23E"
    @driver.find_element(:id, "Address_ZipPostalCode").clear
    @driver.find_element(:id, "Address_ZipPostalCode").send_keys "65222"
    @driver.find_element(:id, "Address_City").clear
    @driver.find_element(:id, "Address_City").send_keys "Karlstad"
    @driver.find_element(:id, "Address_OtherInfo").clear
    @driver.find_element(:id, "Address_OtherInfo").send_keys "Andra ingången till vänster"
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

