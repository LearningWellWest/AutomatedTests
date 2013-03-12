# encoding: utf-8


Så /^ska topmenyn innehålla länken "(.*?)"$/ do |arg1|
  element_start_topmenu.find_elements(:link,arg1).size.should >0
end


När /^jag klickar på off(\d+)off$/ do |arg1|
  @driver.find_element(:css, "img[alt=\"off2off\"]").click
end

När /^jag trycker bakåt$/ do
  @driver.navigate.back
end

Så /^ska sidan inte krascha$/ do
    @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*Logga in[\s\S]*$/
end

När /^jag klickar framåt och bakåt många gånger$/ do
@driver.navigate.back
@driver.navigate.forward
end
