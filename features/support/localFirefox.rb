Before do

    @driver = Selenium::WebDriver.for :firefox
    @base_url = APP_CONFIG['standard_uri']
    @accept_next_alert = true
    @driver.manage.timeouts.implicit_wait = 30
    @verification_errors = []
end

