require 'selenium-webdriver'
require 'capybara/cucumber'
require 'rspec/expectations'
require 'rails'
Capybara.default_driver = :selenium
APP_CONFIG = YAML.load_file("#{Rails.root}config.yml")[Rails.env]



Before do

    @driver = Selenium::WebDriver.for :firefox

	#caps = Selenium::WebDriver::Remote::Capabilities.firefox
	#caps.platform = 'Linux'
	#caps[:name] = "Alla test"
	#@driver = Selenium::WebDriver.for(
  	#:remote,
  	#:url => "http://antda:7af6cc4d-5c19-4f09-a325-4c3d8221b80a@ondemand.saucelabs.com:80/wd/hub",
  	#:desired_capabilities => caps)




    @base_url = APP_CONFIG['standard_uri']
    @accept_next_alert = true
    @driver.manage.timeouts.implicit_wait = 30
    @verification_errors = []
end

After do
    @driver.quit
    @verification_errors.should == []
	
end
