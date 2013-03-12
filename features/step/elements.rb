# encoding: utf-8


############-Login-############
#Username
def element_login_username
   @driver.find_element(:id, "Username")
end

#Password
def element_login_password
   @driver.find_element(:id, "Password")
end
#Loginbutton
def element_login_loginbutton
   @driver.find_element(:css, "button.loginbutton.save")
end
#Loginlink
def element_login_loginlink
   @driver.find_element(:link, "Logga in")
end


############-Admin-############

#Adminlink
def element_admin_adminlink
   @driver.find_element(:link, "Admin")
end
#Adminlink
def element_admin_startpagelink
   @driver.find_element(:link, "Gå till startsidan")
end

############-Annonsera-############
#Annonseralink
def element_annonsera_annonseralink
   @driver.find_element(:link, "Annonsera")
end
#Rubrik
def element_annonsera_title
   @driver.find_element(:id, "Title")
end
#Beskrivning
def element_annonsera_description
   @driver.find_element(:id, "Description")
end
#Pris
def element_annonsera_price
   @driver.find_element(:id, "Price")
end
#Postnr
def element_annonsera_postalcode
   @driver.find_element(:id, "LocationAddress_ZipPostalCode")
end
#Publiceringsstart
def element_annonsera_publishstartdate
   @driver.find_element(:id, "PublishedStartDate")
end

#Förvaltning
def element_annonsera_administration
   @driver.find_element(:id, "LocationAddress_AdministrationUnit")
end
#Avdelning/Enhet
def element_annonsera_department
   @driver.find_element(:id, "LocationAddress_Department")
end
#Adress1
def element_annonsera_adress1
   @driver.find_element(:id, "LocationAddress_Address1")
end
#Adress2
def element_annonsera_adress2
    @driver.find_element(:id, "LocationAddress_Address2")
end
#Stad
def element_annonsera_city
    @driver.find_element(:id, "LocationAddress_City")
end
#Övrig info
def element_annonsera_otherinfo
    @driver.find_element(:id, "LocationAddress_OtherInfo")
end

def element_annonsera_category_dropdown
cont12 = @driver.find_element(:class,"container_12")
cont12.find_element(:class,"selectBox-dropdown")
end

#Sök
def element_sok_category_dropdown
cont12 = @driver.find_element(:class,"container_12")
cont12.find_element(:class,"selectBox-dropdown")
end

#Mina annonser
def element_my_ads_link
  @driver.find_element(:link, "Mina publicerade annonser/utkast")
end

#Navigering

#topmeny

def element_start_topmenu
  @driver.find_element(:id,"menu-center-block")
end











