def deleteAllAdsInCategory(catString)

	@driver.get("http://malvin.off2off.se/Customer/Info");
	@driver.find_element(:link, "Mina publicerade annonser/utkast").click
	
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
		
		#Verifiera borttagning i dialogruta
		alert = @driver.switch_to().alert()
		alert.accept()

		@driver.find_element(:link, "Min sida").click
		@driver.find_element(:link, "Mina publicerade annonser/utkast").click
		pick_category_searchpage(catString)
		end
	end
end

När /^jag tar bort annonsen "(.*?)" under kategorin "(.*?)"$/ do |ad_name, cat_string|
  	@driver.find_element(:link, "Min sida").click
	@driver.find_element(:link, "Mina publicerade annonser/utkast").click
	
	pick_category_searchpage(cat_string)
	@driver.find_element(:link, ad_name).click
	@driver.find_element(:link, "Ta bort").click
		
	#Verifiera borttagning i dialogruta
	alert = @driver.switch_to().alert()
	alert.accept()
end

