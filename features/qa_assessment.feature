Feature: Purchase an item

  Scenario: User Purchases a BMW A/C Compressor
    Given I navigate to "https://www.fcpeuro.com/products/bmw-a-c-compressor-mahle-behr-351342071"
    When I exit the ad
    And I click "ctaButton buy-now-button"
    And validate that MSRP matches from previous page
    And I click "Checkout"
    And I fill in my email
    And I click "Continue"
    And I fill out the form 
    And I click "Continue to Shipping"
    And I click "Continue to Payment"

    Then I take a screenshot and save it as ".png"