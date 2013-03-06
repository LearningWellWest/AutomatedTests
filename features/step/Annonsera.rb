# encoding: utf-8

När /^klickar på knappen Publicera$/ do
  @driver.find_element(:xpath, "//button[contains(text(),'Publicera')]").click
end

När /^jag klickar på annonsera$/ do
  element_annonsera_annonseralink.click
end

När /^jag går till annonsera$/ do
  @driver.get("http://malvin.off2off.se/Catalog/Create");
end

#vet inte om denna används. undersök!
Givet /^är på skapa annons sidan$/ do
  element_annonsera_annonseralink.click
end


När /^klickar på spara annonsen$/ do
  @driver.find_element(:css, "input.save").click
end

#Rubrik
När /^ger annonsen rubriken "(.*?)"$/ do |arg1|
    element_annonsera_title.clear
    element_annonsera_title.send_keys arg1
end

När /^jag ger annonsen rubriken "(.*?)"$/ do |arg1|
    element_annonsera_title.clear
    element_annonsera_title.send_keys arg1
end

Så /^ska fältet rubrikfältet innehålla "(.*?)"$/ do |arg1|
  element_annonsera_title.attribute("value").should == arg1
end

#Beskrivningffa" samt kategorin "Möbler"
När /^jag skriver in (\d+) tecken i beskrivningen$/ do |arg1|
 o =  [('a'..'z'),('A'..'Z')].map{|i| i.to_a}.flatten
 string  =  (0...arg1.to_i).map{ o[rand(o.length)] }.join

 element_annonsera_description.clear
 element_annonsera_description.send_keys string
end

Så /^ska fältet beskrivningsfältet innehålla högst (\d+) tecken$/ do |arg1|
 element_annonsera_description.attribute("value").length.should < arg1.to_i
end

#Pris
När /^jag fyller i prisfältet med "(.*?)"$/ do |arg1|
 element_annonsera_price.clear
 element_annonsera_price.send_keys arg1
end

#Postnr
När /^jag fyller i Postnr med "(.*?)"$/ do |arg1|
  element_annonsera_postalcode.clear
  element_annonsera_postalcode.send_keys arg1
end

#Publiceringsstart
När /^jag fyller i Publiceringsstart med "(.*?)"$/ do |arg1|
  element_annonsera_postalcode.clear
  element_annonsera_postalcode.send_keys arg1
end

När /^jag skapar en annons med rubriken "(.*?)" samt kategorin "(.*?)"$/ do |arg1, arg2|
  fill_CreateAd(arg1,"Har tröttnat på den",arg2,"10","Testavdelningen","Testförvaltningen","Storgatan 1","Södra rondellen 2","65538","Karlstad","Trappa 2 till höger")
end


Givet /^jag fyller i korrekta värden för alla fält när annonsen skapas$/ do
fill_CreateAd("Popcornmaskin","Har tröttnat på den","Lekmaterial","10","Testavdelningen","Testförvaltningen","Storgatan 1","Södra rondellen 2","65538","Karlstad","Trappa 2 till höger")
end

