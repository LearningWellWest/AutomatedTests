require 'selenium-webdriver'
require 'capybara/cucumber'
require 'rspec/expectations'
require '/usr/local/bin/rails'
Capybara.default_driver = :selenium
APP_CONFIG = YAML.load_file("#{Rails.root}config.yml")[Rails.env]



Before do
    @driver = Selenium::WebDriver.for :firefox
    @base_url = APP_CONFIG['standard_uri']
    @accept_next_alert = true
    @driver.manage.timeouts.implicit_wait = 30
    @verification_errors = []
  end

After do
    @driver.quit
    @verification_errors.should == []
end
