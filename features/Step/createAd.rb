
def fill_CreateAd(title,description,category,price,unit,department,adressOne,adressTwo,postalCode,city,otherInfo)

    @driver.find_element(:link, "Annonsera").click
    #Rubrik
    @driver.find_element(:id, "Title").clear
    @driver.find_element(:id, "Title").send_keys title
    #Beskrivning
    @driver.find_element(:id, "Description").clear
    @driver.find_element(:id, "Description").send_keys description
    #Kategori
    pick_category_createpage(category)
    #Pris
    #@driver.find_element(:id, "Price").clear
    #@driver.find_element(:id, "Price").send_keys price
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
