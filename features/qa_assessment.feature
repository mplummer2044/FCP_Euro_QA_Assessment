Feature: Purchase an item

  Scenario: User Purchases a BMW A/C Compressor
    Given I navigate to "https://www.fcpeuro.com/products/bmw-a-c-compressor-mahle-behr-351342071"
    When I exit the ad
    And I validate MSRP
    #I click "Buy Now"
    And I click button ".ctaButton.buy-now-button" 
    And validate that MSRP matches from previous page
    #I click "Begin Checkout"
    And I click button "a.orderSummary__cta.mainCta"
    And I fill in my email
    #I click "Continue"
    And I click button "button.secondaryCta.secondaryCta--medium"
    And I fill out the form 
    #I click "Continue to Payment"
    And I click button 'input[type="submit"][value="Continue To Payment"]'

    Then I take a screenshot and save it as "purchase.png"