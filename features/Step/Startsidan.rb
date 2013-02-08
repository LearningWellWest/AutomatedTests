# encoding: utf-8

Givet /^att jag är på startsidan$/ do
  @driver.get(@base_url + "/")
end

# encoding: utf-8

Givet /^att jag är på förstasidan$/ do
  @driver.get(@base_url)
end


När /^jag klickar på hem$/ do
  @driver.find_element(:link, "Hem").click
end

Så /^ska jag komma till startsidan$/ do
  @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*Möbler[\s\S]*$/
end

När /^jag klickar på Off(\d+)Off\-loggan$/ do |arg1|
  @driver.find_element(:id, "logo").click
end

