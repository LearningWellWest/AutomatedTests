# encoding: utf-8

När /^jag klickar på mina annonser$/ do
	@driver.find_element(:link, "Mina annonser").click
end

Så /^ska jag komma till mina annonser$/ do
    @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*Publicerad[\s\S]*$/
end

När /^klickar på annonsen "(.*?)"$/ do |arg1|
  @driver.find_element(:link, arg1).click
end

När /^klickar på "(.*?)"$/ do |arg1|
  @driver.find_element(:link, arg1).click
end

Givet /^att det inte finns några existerande annonser$/ do
	@driver.find_element(:link, "Min sida").click
	@driver.find_element(:link, "Mina annonser").click

	#Gå igenom tabellen med alla annonser
	links = Array.new
	i = 0
	@driver.find_elements(:xpath => "//table[@class='table_16 shorter list']/tbody/tr").each do |k|
		if k.text.split(' ')[0] != nil
		links[i] =k.text.split(' ')[0]
		end

		i = i + 1
	end
	
	links.each do |r|
	@driver.find_element(:link, r).click
	@driver.find_element(:link, "Ändra").click
	
		@driver.find_elements(:xpath => "//table[@class='grid_11 edit-table alpha double']/tbody/tr").each do |r|
		
			#Lokalisera raden med Status-fältet	   
			if r.text =~ /^[\s\S]*Status[\s\S]*$/
				r.find_element(:class, "selectBox-dropdown").click
				r.find_element(:class, "selectBox-dropdown").send_keys "raderad"
				r.find_element(:class, "selectBox-dropdown").send_keys :return

			#Lokalisera raden med Kategori-fältet	   
			elsif r.text =~ /^[\s\S]*Kategori[\s\S]*$/
				r.find_element(:class, "selectBox-dropdown").click
				r.find_element(:class, "selectBox-dropdown").send_keys :arrow_down
				r.find_element(:class, "selectBox-dropdown").send_keys :return
			end
		end
		sleep(2)
		@driver.find_element(:css, "input.save").click
		@driver.find_element(:link, "Min sida").click
		@driver.find_element(:link, "Mina annonser").click
		

	end



end


