require 'selenium-webdriver'
require 'capybara/cucumber'
require 'rspec/expectations'
require 'rails'
Capybara.default_driver = :selenium
APP_CONFIG = YAML.load_file("#{Rails.root}config.yml")[Rails.env]

After do
    @driver.quit
    @verification_errors.should == []
	
end
