require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.default_driver = :selenium_chrome_headless

Given("I navigate to {string}") do |url|
  visit url
end

When("the page loads completely") do
  page.has_css?('body') # Ensuring the page loads
end

Then("I take a screenshot and save it as {string}") do |filename|
  page.save_screenshot(filename)
end
