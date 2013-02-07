# encoding: utf-8

Så /^ska min annons vara sparad$/ do
    @driver.find_element(:link, "Min sida").click
    @driver.find_element(:link, "Mina annonser").click
end

#här jobbas
Så /^ska annonsen "(.*?)" finnas på sidan$/ do |arg1|
  @driver.find_element(:link, "Min sida").click
  @driver.find_element(:link, "Mina annonser").click
@driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*#{arg1}[\s\S]*$/
end
