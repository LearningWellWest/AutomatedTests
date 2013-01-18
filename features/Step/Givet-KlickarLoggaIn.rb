# encoding: utf-8
När /^jag klickar på Logga in\-länken$/ do
@driver.get(@base_url + "/Customer/Login")
end