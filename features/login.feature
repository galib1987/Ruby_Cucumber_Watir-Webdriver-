Feature: This is to test the login functionality of the American Express.com

  Scenario: User try to login With Valid ID and invalid password
    Given User visit home page
    When  User put a valid ID
    And   User put a invalid password
    And   User click signin
    Then  User get error message saying "Unable to Log On"



