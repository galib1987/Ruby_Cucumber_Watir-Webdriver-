Feature: This feature will test the login functionality of USCIS Demo app


  @smoke
  Scenario: User successfully logs in to the app with valid credentials
    Given User Visit USCIS home page
    When  User Enter Valid User ID
    And   User Enter Valid Password
    And   User Click Sign in
    Then  User is able to successfully login to the applicaton


########################################################################################################

  @regression
  Scenario Outline: User Unable to logs in to the app with sets of invalid credentials
    Given User Visit USCIS home page
    When  User Enter a Valid User id as <User_ID>
    And   User Enter a Valid Password as<Password>
    And   User Click Sign in
    Then  User failed to login into the application

  Examples:

    | User_ID       | Password  |

    | 234823832dcdc | password  |
    | user1         | sjcsajc   |



########################################################################################################