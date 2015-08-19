Feature: this is to demo the cucumber framework


  @ScenarioID_001
  @sprint1
  Scenario: Login with hardcoded values
    Given I open automationpractice website
    When  I click Sign in
    And   I sign in with "abc@xyz.com" and "Test@123"
    And   I click Sign In
    Then  I see text "MY ACCOUNT"

    ##########################################################################

  @ScenarioID_002
  @Sprint1
  Scenario: Login using page objects
    Given I open automationpractice website
    When I click sign in page-object
    Then I sign in with "abc@xyz.com" and "Test@123" page-object

   ###########################################################################

  @ScenarioID_003
  @Sprint2
  Scenario Outline: Customer Checks out with Different Type of Credit Card
    Given I visit practiceselenium website
    When  I click on menu
    And   I check out a Green Tea
    And   I fill email with <email>
    And   I fill name with <name>
    And   I fill address with <address>
    And   I select a Card type as <CardType>
    And   I fill card number with <CardNumber>
    And   I fill card name with <CardName>
    And   I fill Verification code with <VerificationCode>
    And   I click place order
    Then  I see "Menu"

    Examples:
      |email          |name    |address      |CardType     |CardNumber |CardName |VerificationCode     |
      |abc@gamil.com  |sheikh  |123 abc ave  |Visa         |1243456787  |sheikh    |1234               |
      |bcd@yahoo.com  |galib   |123 bcd ave  |Mastercard   |1234565678  |galib     |1235               |
      |bfg@yahoo.com  |rahman  |123 bcd ave  |Mastercard   |1234565678  |galib     |1237               |


  ##################################################################################


