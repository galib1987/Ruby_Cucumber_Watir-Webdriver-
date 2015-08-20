Feature: open website and login


  @ScenarioID_001
  Scenario: Login with hardcoded values
    Given I open automationpractice website
    When  I click Sign in
    And   I sign in with "abc@xyz.com" and "Test@123"
    And   I click Sign In
    Then  I see text "MY ACC"

  Scenario: Login using page objects
    Given I open automationpractice website
    When I click sign in page-object
    Then I sign in with "abc@xyz.com" and "Test@123" page-object

  Scenario: Fill contact us page
    Given I open automationpractice website
    When I click contact us page object
    Then I fill the contact us form

  Scenario: Fill contact us page using page helper
    Given I open automationpractice website
    When I click contact us page object using page helper
    Then I fill the contact us form using page helper

