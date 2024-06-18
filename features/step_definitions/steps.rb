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

And("I click button {string}") do |button|  
  find(button).click

end

And("I click {string}") do ||
  within('#header') do
  click_link link_text
end
end

And("I validate MSRP") do
  @value1 = find('span', text: /\$\d+\.\d{2}/).text
end

Then("I take a screenshot and save it as {string}") do |filename|
  page.save_screenshot(filename)
end

And("validate that MSRP matches from previous page") do
  @value2 = find('span', text: /\$\d+\.\d{2}/).text
  expect(@value1).to eq(@value2)
end

And("I fill in my email") do
  find('#spree_guest_email_login', wait: 10).set('mattjohnplummer@gmail.com')
end

And ("I fill out the form") do
  find('#order_bill_address_attributes_firstname', wait: 10).set('John')
  find('#order_bill_address_attributes_lastname', wait: 10).set('Doe')
  find('#order_bill_address_attributes_address1', wait: 10).set('2300 East Ocean Boulevard')
  find('#order_bill_address_attributes_city', wait: 10).set('Long Beach')
  select 'California', from: 'order[bill_address_attributes][state_id]'
  find('#order_bill_address_attributes_zipcode', wait: 10).set('90803')
  find('#order_bill_address_attributes_phone', wait: 10).set('1234567890')
  click_button 'Continue To Shipping' 
end