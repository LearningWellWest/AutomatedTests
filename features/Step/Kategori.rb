# encoding: utf-8

Så /^ska det stå "(.*?)" i kategorilisten$/ do |arg1|
  @driver.find_element(:class,"selectBox-dropdown").text.should =~ /^[\s\S]*#{arg1}[\s\S]*$/
end



def pick_category_searchpage(catString)
  
    cat_before ="sdfgsdefg"
  
	while 	cat_before != @driver.find_element(:class,"selectBox-dropdown").text do
    cat_before = @driver.find_element(:class,"selectBox-dropdown").text
	 
	  @driver.find_element(:class,"selectBox-dropdown").click
    @driver.find_element(:class,"selectBox-dropdown").send_keys :arrow_down
   
    if @driver.find_element(:class,"selectBox-dropdown").text =~ /^[\s\S]*#{catString}[\s\S]*$/
      break
    end
	end
end


def pick_category_createpage(catString)
        
        
	#Gå igenom tabellen med alla kontroller
  
  
#	@driver.find_elements(:xpath => "//table[@class='grid_11 edit-table alpha double']/tbody/tr").each do |r|
		#Lokalisera raden med Kategori-fältet	   
#		if r.text =~ /^[\s\S]*Kategori[\s\S]*$/
#			category_dropdown = r.find_element(:class, "selectBox-dropdown")
#		end
#	end

  
  category_dropdown =@driver.find_element(:class,"selectBox-dropdown")
  
  cat_before ="sdfgsdefg"
  
	while 	cat_before != category_dropdown.text do
    cat_before = category_dropdown.text
	 
	  category_dropdown.click
    category_dropdown.send_keys :arrow_down
    category_dropdown.send_keys :return
   
    if category_dropdown.text =~ /^[\s\S]*#{catString}[\s\S]*$/
      break
    end
	end
end


När /^väljer kategorin "(.*?)"$/ do |arg1|
  pick_category_searchpage(arg1)
end

