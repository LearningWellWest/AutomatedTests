# encoding: utf-8

När /^jag klickar på Skapa annons$/ do
  @driver.find_element(:link, "Skapa annons").click
end

Givet /^är på Skapa annons sidan$/ do
  @driver.find_element(:link, "Skapa annons").click
end

# encoding: utf-8

När /^jag fyller i Annonsuppgifter$/ do
    @driver.find_element(:id, "Title").clear
    @driver.find_element(:id, "Title").send_keys "En sak"
    @driver.find_element(:id, "Description").clear
    @driver.find_element(:id, "Description").send_keys "En trevlig sak för en billig penning"
    @driver.find_element(:id, "PublishedEndDate").click
    @driver.find_element(:link, "31").click
    @driver.find_element(:id, "Price").clear
    @driver.find_element(:id, "Price").send_keys "10"
    @driver.find_element(:id, "PriceToday").clear
    @driver.find_element(:id, "PriceToday").send_keys "10"
    @driver.find_element(:id, "PriceWhenNew").clear
    @driver.find_element(:id, "PriceWhenNew").send_keys "10"
end

När /^klickar på Spara annonsen$/ do
  @driver.find_element(:css, "input.save").click
end
