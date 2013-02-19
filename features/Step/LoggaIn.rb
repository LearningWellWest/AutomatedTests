# encoding: utf-8

När /^jag klickar på logga in\-länken$/ do
@driver.find_element(:link, "[Logga in]").click
end

När /^jag klickar på logga in$/ do
  @driver.find_element(:css, "button.loginbutton.save").click
end

När /^klickar på knappen Publicera$/ do
  @driver.find_element(:xpath, "(//button[@name='save'])[2]").click
end



#Malvin

När /^jag rensar användarnamn\-fältet$/ do
    @driver.find_element(:id, "Username").clear
end

Så /^ska "(.*?)" fortfarande visas någonstans på sidan$/ do |arg1|

wholepageString =    @driver.find_element(:css, "BODY").text
wholepageString <<   @driver.find_element(:id, "Username").attribute("value")
wholepageString.should =~ /^[\s\S]*#{arg1}[\s\S]*$/
      
end



Givet /^att jag är inloggad$/ do
    @driver.get(@base_url + "/")
    @driver.find_element(:link, "[Logga in]").click
    @driver.find_element(:id, "Username").clear
    @driver.find_element(:id, "Username").send_keys "Testuser"
    @driver.find_element(:id, "Password").clear
    @driver.find_element(:id, "Password").send_keys "learningwell"
    @driver.find_element(:css, "button.loginbutton.save").click
end

När /^jag fyller i lösenord med "(.*?)"$/ do |arg1|
  @driver.find_element(:id, "Password").clear
  @driver.find_element(:id, "Password").send_keys arg1
end

När /^jag fyller i användarnamn med "(.*?)"$/ do |arg1|
  @driver.find_element(:id, "Username").clear
  @driver.find_element(:id, "Username").send_keys arg1
end


Så /^ska användaren loggas in och sidan visar "(.*?)"$/ do |arg1|
  @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*#{arg1}[\s\S]*$/
end


Så /^ska texten "(.*?)" visas$/ do |arg1|
  @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*#{arg1}[\s\S]*$/
end
