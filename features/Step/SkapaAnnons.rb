# encoding: utf-8

När /^jag klickar på annonsera$/ do
  @driver.find_element(:link, "Annonsera").click
end

Givet /^är på skapa annons sidan$/ do
  @driver.find_element(:link, "Skapa annons").click
end


När /^klickar på spara annonsen$/ do
  @driver.find_element(:css, "input.save").click
sleep(10)
end

#Rubrik
När /^ger annonsen rubriken "(.*?)"$/ do |arg1|
    @driver.find_element(:id, "Title").clear
    @driver.find_element(:id, "Title").send_keys arg1
end

När /^jag ger annonsen rubriken "(.*?)"$/ do |arg1|
    @driver.find_element(:id, "Title").clear
    @driver.find_element(:id, "Title").send_keys arg1
end

Så /^ska fältet rubrikfältet innehålla "(.*?)"$/ do |arg1|
  @driver.find_element(:id, "Title").attribute("value").should == arg1
end

#Beskrivning
När /^jag skriver in (\d+) tecken i beskrivningen$/ do |arg1|
 o =  [('a'..'z'),('A'..'Z')].map{|i| i.to_a}.flatten
 string  =  (0...arg1.to_i).map{ o[rand(o.length)] }.join

 @driver.find_element(:id, "Description").clear
 @driver.find_element(:id, "Description").send_keys string
 sleep (1)
end

Så /^ska fältet beskrivningsfältet innehålla högst (\d+) tecken$/ do |arg1|
 @driver.find_element(:id, "Description").attribute("value").length.should < arg1.to_i
end

#Pris
När /^jag fyller i prisfältet med "(.*?)"$/ do |arg1|
 @driver.find_element(:id, "Price").clear
 @driver.find_element(:id, "Price").send_keys arg1
end

#Postnr
När /^jag fyller i Postnr med "(.*?)"$/ do |arg1|
  @driver.find_element(:id, "LocationAddress_ZipPostalCode").clear
  @driver.find_element(:id, "LocationAddress_ZipPostalCode").send_keys arg1
end

#Publiceringsstart
När /^jag fyller i Publiceringsstart med "(.*?)"$/ do |arg1|
  @driver.find_element(:id, "PublishedStartDate").clear
  @driver.find_element(:id, "PublishedStartDate").send_keys arg1
end

När /^jag skapar en annons med rubriken "(.*?)" samt kategorin "(.*?)"$/ do |arg1, arg2|
  fill_CreateAd(arg1,"Har tröttnat på den",arg2,"10","Testavdelningen","Testförvaltningen","Storgatan 1","Södra rondellen 2","65538","Karlstad","Trappa 2 till höger")
sleep 10
end


Givet /^jag fyller i korrekta värden för alla fält när annonsen skapas$/ do

fill_CreateAd("Popcornmaskin","Har tröttnat på den","Hjälpmedel","10","Testavdelningen","Testförvaltningen","Storgatan 1","Södra rondellen 2","65538","Karlstad","Trappa 2 till höger")

end

def fill_CreateAd(title,description,category,price,unit,department,adressOne,adressTwo,postalCode,city,otherInfo)
       
    #Rubrik
    @driver.find_element(:id, "Title").clear
    @driver.find_element(:id, "Title").send_keys title
    #Beskrivning
    @driver.find_element(:id, "Description").clear
    @driver.find_element(:id, "Description").send_keys description
	
	#Gå igenom tabellen med alla kontroller
	@driver.find_elements(:xpath => "//table[@class='grid_11 edit-table alpha double']/tbody/tr").each do |r|
		#Lokalisera raden med Kategori-fältet	   
		if r.text =~ /^[\s\S]*Kategori[\s\S]*$/
			r.find_element(:class, "selectBox-dropdown").click
			r.find_element(:class, "selectBox-dropdown").send_keys category
		        r.find_element(:class, "selectBox-dropdown").send_keys :return
		end		
	end
    #Pris
    @driver.find_element(:id, "Price").clear
    @driver.find_element(:id, "Price").send_keys price
    #Förvaltning
    @driver.find_element(:id, "LocationAddress_AdministrationUnit").clear
    @driver.find_element(:id, "LocationAddress_AdministrationUnit").send_keys unit
    #Avdelning
    @driver.find_element(:id, "LocationAddress_Department").clear
    @driver.find_element(:id, "LocationAddress_Department").send_keys department
    #Adress1
    @driver.find_element(:id, "LocationAddress_Address1").clear
    @driver.find_element(:id, "LocationAddress_Address1").send_keys adressOne
    #Adress2
    @driver.find_element(:id, "LocationAddress_Address2").clear
    @driver.find_element(:id, "LocationAddress_Address2").send_keys adressTwo
    #Postnr
    @driver.find_element(:id, "LocationAddress_ZipPostalCode").clear
    @driver.find_element(:id, "LocationAddress_ZipPostalCode").send_keys postalCode
    #Stad
    @driver.find_element(:id, "LocationAddress_City").clear
    @driver.find_element(:id, "LocationAddress_City").send_keys city
    #Övrig info
    @driver.find_element(:id, "LocationAddress_OtherInfo").clear
    @driver.find_element(:id, "LocationAddress_OtherInfo").send_keys otherInfo	
end

