# encoding: utf-8

När /^jag klickar på skapa annons$/ do
  @driver.find_element(:link, "Skapa annons").click
end


Givet /^är på skapa annons sidan$/ do
  @driver.find_element(:link, "Skapa annons").click
end

När /^ger annonsen rubriken "(.*?)"$/ do |arg1|
    @driver.find_element(:id, "Title").clear
    @driver.find_element(:id, "Title").send_keys arg1
end


När /^jag fyller i annonsuppgifter$/ do
    @driver.find_element(:id, "Title").clear
    @driver.find_element(:id, "Title").send_keys "Popcornmaskin"
    @driver.find_element(:id, "Description").clear
    @driver.find_element(:id, "Description").send_keys "En trevlig maskin sak för en billig penning"

	#element = @driver.find_elements(:xpath => "//tr[text()='Kategori']")
	#element.find_element(:class, "selectBox").click
	#element.find_element(:class, "selectBox").send_keys "H"
	#element.find_element(:class, "selectBox").send_keys :return

	#http://anahorny.blogspot.se/2011/08/selenium-webdriver-ruby-part-8.html
	#@driver.find_element(:class, "selectBox-label").send_keys "H"
	#@driver.find_element(:class, "selectBox-label").send_keys :return

    @driver.find_element(:id, "Price").clear
    @driver.find_element(:id, "Price").send_keys "10"
	sleep(10)
end

När /^klickar på spara annonsen$/ do
  @driver.find_element(:css, "input.save").click
end
