# encoding: utf-8

def fill_CreateAd(title,description,category,price,unit,department,adressOne,adressTwo,postalCode,city,otherInfo,imgname)

    element_annonsera_annonseralink.click
    #Rubrik
    element_annonsera_title.clear
    element_annonsera_title.send_keys title
    #Beskrivning
    element_annonsera_description.clear
    element_annonsera_description.send_keys description
    #Kategori
    pick_category_createpage(category)
    #Pris
    #element_annonsera_price.clear
    #element_annonsera_price.send_keys price
    #Förvaltning
    element_annonsera_administration.clear
    element_annonsera_administration.send_keys unit
    #Avdelning
    element_annonsera_department.clear
    element_annonsera_department.send_keys department
    #Adress1
    element_annonsera_adress1.clear
    element_annonsera_adress1.send_keys adressOne
    #Adress2
    element_annonsera_adress2.clear
    element_annonsera_adress2.send_keys adressTwo
    #Postnr
    element_annonsera_postalcode.clear
    element_annonsera_postalcode.send_keys postalCode
    #Stad
    element_annonsera_city.clear
    element_annonsera_city.send_keys city
    #Övrig info
    element_annonsera_otherinfo.clear
    element_annonsera_otherinfo.send_keys otherInfo
	
    #Bild
    annonsera_upload_picture(imgname);

end

def annonsera_upload_picture(imgname)
   #works only on our linux-server at the moment
   @driver.find_element(:xpath, "//input[@type='file']").send_keys Dir.pwd+"/features/images/" + imgname    

   
end
