Feature: Open FCUPEURO website and take a screenshot

  Scenario: User visits the homepage
    Given I navigate to "https://www.fcpeuro.com"
    When the page loads completely
    Then I take a screenshot and save it as "homepage.png"
