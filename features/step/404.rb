# encoding: utf-8


När /^jag skriver in felaktig adress i adressfältet$/ do
  @driver.get("http://malvin.off2off.se/Catfiske")
end

Så /^ge mig möjlighet att gå till förstasidan$/ do
pending
  #@driver.find_elements(:css,"h1").each do |r|
   # puts "link:" + r.text
end

