# encoding: utf-8

När /^sedan klickar på Mina köp\/min försäljning$/ do
	@driver.find_element(:link, "Mina köp/min försäljning").click
end

Så /^ska jag komma till Mina ordrar$/ do
  @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*Mina ordrar[\s\S]*$/
end
