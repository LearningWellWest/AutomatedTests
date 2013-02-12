# encoding: utf-8

När /^jag klickar på skapa annons$/ do
  @driver.find_element(:link, "Skapa annons").click
end


Givet /^är på skapa annons sidan$/ do
  @driver.find_element(:link, "Skapa annons").click
end


När /^klickar på spara annonsen$/ do
  @driver.find_element(:css, "input.save").click
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



Givet /^jag fyller i korrekta värden för alla fält när annonsen skapas$/ do
    @driver.find_element(:id, "Title").clear
    @driver.find_element(:id, "Title").send_keys "Popcornmaskin"
    @driver.find_element(:id, "Description").clear
    @driver.find_element(:id, "Description").send_keys "Lite gammal men bra för dig med lite pengar"
	
	#Gå igenom tabellen med alla kontroller
	@driver.find_elements(:xpath => "//table[@class='grid_11 edit-table alpha double']/tbody/tr").each do |r|
		#Lokalisera raden med Status-fältet	   
		if r.text =~ /^[\s\S]*Status[\s\S]*$/
			r.find_element(:class, "selectBox-dropdown").click
			r.find_element(:class, "selectBox-dropdown").send_keys "publicerad"
		        r.find_element(:class, "selectBox-dropdown").send_keys :return

		#Lokalisera raden med Kategori-fältet	   
		elsif r.text =~ /^[\s\S]*Kategori[\s\S]*$/
			r.find_element(:class, "selectBox-dropdown").click
			r.find_element(:class, "selectBox-dropdown").send_keys :arrow_down
		        r.find_element(:class, "selectBox-dropdown").send_keys :return
		end		
	end
    @driver.find_element(:id, "Price").clear
    @driver.find_element(:id, "Price").send_keys "10"
	
end

