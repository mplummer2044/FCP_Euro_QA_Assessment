require 'capybara/cucumber'
require 'selenium-webdriver'

Given("I navigate to {string}") do |url|
  visit url
end

When("the page loads completely") do
  page.has_css?('body') # Ensuring the page loads
end

When("I exit the ad") do
    page.execute_script("document.querySelector('.klaviyo-close-form').click();")
  end  

And("I click {string}") do |button|
  within('#body')  
  click_button button
end

And("I click {string}") do ||
  within('#header') do
  click_link link_text
end
end

Then("I take a screenshot and save it as {string}") do |filename|
  page.save_screenshot(filename)
end

