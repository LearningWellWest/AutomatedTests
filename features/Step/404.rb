# encoding: utf-8


När /^jag skriver in felaktig adress i adressfältet$/ do
  @driver.get("http://malvin.off2off.se/Catfiske");
end

Så /^ska jag få ett informativt felmeddelande$/ do
  @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*Sidan kunde inte hittas[\s\S]*$/
end

Så /^ge mig möjlighet att gå till förstasidan$/ do
pending
  #@driver.find_elements(:css,"h1").each do |r|
   # puts "link:" + r.text
  end

