Given /^I am logged in$/ do
	@driver.get('http://www.off2off.se' + "/")
	@driver.find_element(:link, "[Logga in]").click
    @driver.find_element(:id, "Username").clear
    @driver.find_element(:id, "Username").send_keys "Testuser"
    @driver.find_element(:id, "Password").clear
    @driver.find_element(:id, "Password").send_keys "learningwell"
    @driver.find_element(:css, "button.loginbutton.save").click
end

When /^I click on my page$/ do 
	@driver.find_element(:link, "Min sida").click
end

Then /^I should come to my page$/ do
	@driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*Min sida[\s\S]*$/
end
