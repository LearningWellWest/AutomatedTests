# encoding: utf-8

Givet /^att jag är på Startsidan$/ do
  @driver.get(@base_url + "/")
end