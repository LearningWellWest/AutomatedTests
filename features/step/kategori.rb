# encoding: utf-8


Så /^ska kategorin "(.*?)" finnas i kategorilisten$/ do |arg1|
  pick_category_searchpage(arg1)
  element_sok_category_dropdown.text.should =~ /^[\s\S]*#{arg1}[\s\S]*$/
  
end

Så /^under ovan kategori ska kategorin "(.*?)" visas$/ do |arg1|
  element_sok_category_dropdown.click
  element_sok_category_dropdown.send_keys :arrow_down
  element_sok_category_dropdown.text.should =~ /^[\s\S]*#{arg1}[\s\S]*$/

end



Så /^ska det stå "(.*?)" i kategorilisten$/ do |arg1|
  element_sok_category_dropdown.text.should =~ /^[\s\S]*#{arg1}[\s\S]*$/
end



def pick_category_searchpage(catString)
  
    cat_before ="sdfgsdefg"
	while 	cat_before != element_sok_category_dropdown.text do
          cat_before = element_sok_category_dropdown.text
	  element_sok_category_dropdown.click
          element_sok_category_dropdown.send_keys :arrow_down
          if element_sok_category_dropdown.text =~ /^[\s\S]*#{catString}[\s\S]*$/
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

  
  category_dropdown =element_annonsera_category_dropdown
  
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

