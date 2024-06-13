Feature: Open FCUPEURO website and click DIY Blog

  Scenario: User clicks DIY Blog
    Given I navigate to "https://www.fcpeuro.com"
    When I exit the ad
    And I click "DIY Blog"
    When the page loads completely
    Then I take a screenshot and save it as "DIY.png"