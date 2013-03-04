# encoding: utf-8

När /^jag klickar på start$/ do
  @driver.find_element(:link, "Start").click
end


Givet /^att jag är på startsidan$/ do
  @driver.get(@base_url + "/")
end

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

När /^jag klickar på malvin\-loggan$/ do
  @driver.find_element(:id, "logo").click
end

När /^jag klickar på start i topmenyn$/ do
  topmenu = @driver.find_element(:id,"menu-center-block")
  topmenu.find_element(:link, "Start").click
end


