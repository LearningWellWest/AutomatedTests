# encoding: utf-8

Så /^ska min annons vara sparad$/ do
    @driver.find_element(:link, "Min sida").click
    @driver.find_element(:link, "Mina annonser").click
end