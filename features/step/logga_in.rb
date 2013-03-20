# encoding: utf-8

När /^jag klickar på logga in\-länken$/ do
  element_login_loginlink.click
end

När /^jag klickar på logga in$/ do
  element_login_loginbutton.click
end

När /^jag är inloggad$/ do
    element_login_loginlink.click
    element_login_username.clear
    element_login_username.send_keys "ghia"
    element_login_password.clear
    element_login_password.send_keys "ghia"
    element_login_loginbutton.click
end



Så /^ska jag komma till logga\-in sidan$/ do
  @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*Logga in[\s\S]*$/
end

Givet /^jag är utloggad$/ do
  @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*Logga in[\s\S]*$/
end

#Malvin

När /^jag rensar användarnamn\-fältet$/ do
    @driver.find_element(:id, "Username").clear
end

Så /^ska "(.*?)" fortfarande visas någonstans på sidan$/ do |arg1|

wholepageString =    @driver.find_element(:css, "BODY").text
wholepageString <<   element_login_username.attribute("value")
wholepageString.should =~ /^[\s\S]*#{arg1}[\s\S]*$/
      
end


Givet /^att jag är inloggad$/ do
    @driver.get(@base_url + "/")
    element_login_loginlink.click
    element_login_username.clear
    element_login_username.send_keys "ghia"
    element_login_password.clear
    element_login_password.send_keys "ghia"
    element_login_loginbutton.click
end

Givet /^att jag är inloggad som testuser$/ do
    @driver.get(@base_url + "/")
    element_login_loginlink.click
    element_login_username.clear
    element_login_username.send_keys "testuser"
    element_login_password.clear
    element_login_password.send_keys "l34rn1n6w3ll"
    element_login_loginbutton.click
end


När /^jag fyller i lösenord med "(.*?)"$/ do |arg1|
  element_login_password.clear
  element_login_password.send_keys arg1
end

När /^jag fyller i användarnamn med "(.*?)"$/ do |arg1|
  element_login_username.clear
  element_login_username.send_keys arg1
end

När /^jag försöker logga in (\d+) gånger med fel lösenord$/ do |arg1|
  
 i=0
max_attempts = arg1.to_i

while i<max_attempts do
  element_login_username.clear
  element_login_username.send_keys "ghia"

  element_login_password.clear
  element_login_password.send_keys "rdftgyuhjiko"

  element_login_loginbutton.click
  i=i+1

end

end

Så /^ska jag vara inloggad$/ do
  @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*Logga ut[\s\S]*$/
end


Så /^ska texten "(.*?)" visas$/ do |arg1|
  @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*#{arg1}[\s\S]*$/
end
