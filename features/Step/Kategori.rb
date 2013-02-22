# encoding: utf-8

def pickCategoryOnSearchPage(catString)
	@driver.find_element(:class, "selectBox-dropdown").click
	@driver.find_element(:class, "selectBox-dropdown").send_keys catString
	@driver.find_element(:class, "selectBox-dropdown").send_keys :return
end



När /^väljer kategorin "(.*?)"$/ do |arg1|
  pickCategoryOnSearchPage(arg1)
end

