# encoding: utf-8

Givet /^att jag är på startsidan$/ do
  @driver.get(@base_url + "/")
end

# encoding: utf-8

Givet /^att jag är på förstasidan$/ do
  @driver.get(@base_url)
end


När /^jag klickar på Hem$/ do
  @driver.find_element(:link, "Hem").click
end
