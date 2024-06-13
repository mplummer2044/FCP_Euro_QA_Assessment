Feature: Fill in Login Information

  Scenario: User Fills in Login Information
    Given I navigate to "https://www.fcpeuro.com"
    When I exit the ad
    And I select "Sign In" from "My Account Dropdown"
    When the page loads completely
    And I fill in login information with 'user' factory
    Then I take a screenshot and save it as "Login.png"