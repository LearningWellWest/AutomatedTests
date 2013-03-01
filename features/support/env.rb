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


  #taking screenshots for each failed scenario and embed in html report
After do |scenario|
  Dir::mkdir('html/screenshots') if not File.directory?('html/screenshots')
  screenshot = "./html/screenshots/FAILED_#{scenario.name.gsub(' ','_').gsub(/[^0-9A-Za-z_]/, '')}.png"
  if scenario.failed?
    @driver.save_screenshot(screenshot)
    embed "./screenshots/FAILED_#{scenario.name.gsub(' ','_').gsub(/[^0-9A-Za-z_]/, '')}.png", 'image/png'
  end
    @driver.quit
    @verification_errors.should == []
end

#running a meta tag fix for the html report, fix utf-8 encoding enabling åäö to show properly
at_exit do
  #require '../../support/html_report_meta_tag_fix'
  html_report_meta_tag_fix 'html/results.html'
	
end

