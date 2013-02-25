def deleteAllAdsInCategory(catString)

	@driver.find_element(:link, "Min sida").click
	@driver.find_element(:link, "Mina utkast/publicerade annonser").click
	
	pick_category_searchpage(catString)
	
	while @driver.find_element(:css, "BODY").text =~ /^[\s\S]*poster[\s\S]*$/ do
		#Gå igenom tabellen med alla annonser
		links = Array.new
		i = 0
		@driver.find_elements(:xpath => "//table[@class='table_16 shorter list']/tbody/tr").each do |k|
			if k.text.split(/\n/)[0] != nil
			links[i] =k.text.split(/\n/)[0]
			end

			i = i + 1
		end
	
		links.each do |r|
		@driver.find_element(:link, r).click
		@driver.find_element(:link, "Ta bort").click
		@driver.find_element(:link, "Min sida").click
		@driver.find_element(:link, "Mina utkast/publicerade annonser").click
		pick_category_searchpage(catString)
		end
	end
end

