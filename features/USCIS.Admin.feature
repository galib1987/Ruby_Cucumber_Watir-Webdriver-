Feature: this is to test the functionality of the Admin feature of USCIS application

  @functional
  Scenario: user creats new Resion Record
    Given User Visit USCIS home page
    And   User Enter Valid User ID
    And   User Enter Valid Password
    And   User Click Sign in
    And   User Visit Admin portal from Menu
    When  User clicks on "View groupings records" to Add a new record
    And   User clicks "Create new grouping"
    And   User insert "Tech Demo Sample 2"
    And   User clicks on "Create Grouping"
    Then  User Varify the "Tech Demo Sample 2" group added properly



