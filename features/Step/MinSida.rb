# encoding: utf-8


När /^jag klickar på min sida$/ do
	@driver.find_element(:link, "Min sida").click
	@driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*Min sida[\s\S]*$/
end

Så /^ska jag komma till min sida$/ do
	@driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*Min sida[\s\S]*$/
end


När /^jag ändrar efternamnet till "(.*?)"$/ do |arg1|
  @driver.find_element(:id, "LastName").clear
  @driver.find_element(:id, "LastName").send_keys arg1
end

Så /^ska efternamnet "(.*?)" uppdateras och sparas$/ do |arg1|
  @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*#{arg1}[\s\S]*$/
end


När /^jag ändrar email\-adressen till "(.*?)"$/ do |arg1|
  @driver.find_element(:id, "Email").clear
    @driver.find_element(:id, "Email").send_keys arg1
end

Så /^ska email\-adressen "(.*?)" uppdateras och sparas$/ do |arg1|
  @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*#{arg1}[\s\S]*$/
end

När /^jag ändrar förnamnet till "(.*?)"$/ do |arg1|
  @driver.find_element(:id, "FirstName").clear
  @driver.find_element(:id, "FirstName").send_keys arg1
end

Så /^ska förnamnet "(.*?)" uppdateras och sparas$/ do |arg1|
  @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*#{arg1}[\s\S]*$/
end


När /^klickar på spara$/ do
  @driver.find_element(:css, "input.save").click
end


När /^jag ändrar mobilnumret till "(.*?)"$/ do |arg1|
  @driver.find_element(:id, "Cellphone").clear
  @driver.find_element(:id, "Cellphone").send_keys "+46701234567"
end

Så /^ska mobilnumret "(.*?)" uppdateras och sparas$/ do |arg1|
  @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*#{arg1}[\s\S]*$/
end

