# encoding: utf-8

När /^jag klickar på mina köp\/min försäljning$/ do
	@driver.find_element(:link, "Mina köp/min försäljning").click
end

Så /^ska jag komma till mina ordrar$/ do
  @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*Mina ordrar[\s\S]*$/
end
