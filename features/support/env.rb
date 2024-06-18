require 'capybara/cucumber'
require 'selenium-webdriver'
require 'capybara'

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = 'https://www.fcupeuro.com'
end
