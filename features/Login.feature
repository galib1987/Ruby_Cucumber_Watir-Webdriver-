Feature: This is a sample feature


  Scenario: Positive login
    Given user visit automationpractice.com
    And   user click signin
    When  User put valid email and Password
    And   User Click Signin
    Then  I see My Account


