# encoding: utf-8

När /^lägger till nya adressuppgifter$/ do
    @driver.find_element(:css, "input.addaddressbutton.save").click
    @driver.find_element(:id, "Address_FirstName").clear
    @driver.find_element(:id, "Address_FirstName").send_keys "admin"
    @driver.find_element(:id, "Address_LastName").clear
    @driver.find_element(:id, "Address_LastName").send_keys "Adminsson"
    @driver.find_element(:id, "Address_Email").clear
    @driver.find_element(:id, "Address_Email").send_keys "admin@test.com"
    @driver.find_element(:id, "Address_Company").clear
    @driver.find_element(:id, "Address_Company").send_keys "Off2Off"
    @driver.find_element(:id, "Address_City").clear
    @driver.find_element(:id, "Address_City").send_keys "Karlstad"
    @driver.find_element(:id, "Address_Address1").clear
    @driver.find_element(:id, "Address_Address1").send_keys "testgatan 359"
    @driver.find_element(:id, "Address_ZipPostalCode").clear
    @driver.find_element(:id, "Address_ZipPostalCode").send_keys "65222"
    @driver.find_element(:id, "Address_PhoneNumber").clear
    @driver.find_element(:id, "Address_PhoneNumber").send_keys "054111111"
    @driver.find_element(:css, "input.saveaddressbutton.save").click
end

Så /^ska adressen sparas och visas$/ do
	@driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*admin Adminsson[\s\S]*$/
end
