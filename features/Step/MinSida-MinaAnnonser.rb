# encoding: utf-8

När /^jag klickar på mina annonser$/ do
	@driver.find_element(:link, "Mina utkast/publicerade annonser").click
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
	@driver.find_element(:link, "Mina utkast/publicerade annonser").click
	
	#Kommer åt Hjälpmedel kategorin
	@driver.find_element(:xpath => "html/body/div[1]/div[4]/form/div[1]/a").click
	@driver.find_element(:xpath => "html/body/ul/li[2]/a").click 
	
	while @driver.find_element(:css, "BODY").text =~ /^[\s\S]*poster[\s\S]*$/ do
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
		@driver.find_element(:link, "Ta bort").click
		@driver.find_element(:link, "Min sida").click
		@driver.find_element(:link, "Mina utkast/publicerade annonser").click
		@driver.find_element(:xpath => "html/body/div[1]/div[4]/form/div[1]/a").click
		@driver.find_element(:xpath => "html/body/ul/li[2]/a").click 
		

		end
	end


end


