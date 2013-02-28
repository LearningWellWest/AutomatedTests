require 'selenium-webdriver'
require 'capybara/cucumber'
require 'rspec/expectations'
require 'rails'
Capybara.default_driver = :selenium
APP_CONFIG = YAML.load_file("#{Rails.root}config.yml")[Rails.env]

Before do |scenario|

	case ENV['driver']
		
		#Run tests on our jenkins server with firefox
		when 'local'
		    @driver = Selenium::WebDriver.for :firefox
		
		#Run tests at SauceLabs with firefox and linux
		when 'linux_firefox'
			caps = Selenium::WebDriver::Remote::Capabilities.firefox
			caps.platform = 'Linux'
			caps[:name] = scenario.feature.name
			@driver = Selenium::WebDriver.for(
		  	:remote,
		  	:url => "http://antda:7af6cc4d-5c19-4f09-a325-4c3d8221b80a@ondemand.saucelabs.com:80/wd/hub",
			:desired_capabilities => caps)
		
		#Run tests at SauceLabs with chrome and windows xp
		when 'xp_chrome'
			caps = Selenium::WebDriver::Remote::Capabilities.chrome
			caps.platform = 'Windows 2003'
			caps[:name] = scenario.feature.name
			@driver = Selenium::WebDriver.for(
		  	:remote,
		  	:url => "http://antda:7af6cc4d-5c19-4f09-a325-4c3d8221b80a@ondemand.saucelabs.com:80/wd/hub",
			:desired_capabilities => caps)
		
	end

	@base_url = APP_CONFIG['standard_uri']
	@accept_next_alert = true
	@driver.manage.timeouts.implicit_wait = 10
	@verification_errors = []

end

After do
    @driver.quit
    @verification_errors.should == []
	
end



