# encoding: utf-8

När /^jag klickar på admin$/ do
  element_admin_adminlink.click
end

När /^jag klickar på gå till startsidan$/ do
  element_admin_startpagelink.click
end

När /^jag går till admin$/ do
  @driver.get("http://malvin.off2off.se/Admin");
end
