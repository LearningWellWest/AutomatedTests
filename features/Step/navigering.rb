# encoding: utf-8




När /^jag klickar på off(\d+)off$/ do |arg1|
  @driver.find_element(:css, "img[alt=\"off2off\"]").click
end

När /^jag trycker bakåt$/ do
  @driver.navigate.back
end

När /^jag trycker framåt$/ do
	def forward
	@bridge.goForward
	end
end

Så /^ska sidan inte krascha$/ do
    @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*Logga in[\s\S]*$/
end