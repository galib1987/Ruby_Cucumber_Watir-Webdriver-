Feature: This feature is to test USCIS home page title and logo is present

  @uscis_smoke
  Scenario: Validate USCIS tile
    Given User Visit USCIS home page
    Then  User Varify the Page Title

##################################################################

  @uscis_smoke
  Scenario: Validate USCIS logo
    Given User Visit USCIS home page
    Then  User Varify the USCIS logo

##################################################################
  @uscis_smoke
  Scenario: User varity total number of links at hoem page
    Given  User Visit USCIS home page
    Then   User Varify the total number of link at home page

####################################################################

  @uscis_smoke
  @regression
  Scenario: User varity Terms & Accessibility link at hoem page
    Given User Visit USCIS home page
    When  User clicks on Terms & Accessibility link at home page
    Then  User successfully navigated to the destination page

#####################################################################


