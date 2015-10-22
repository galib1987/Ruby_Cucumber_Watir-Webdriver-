Feature: This Feature is to test Idea Submission funtionslity of USCIS Demo app

  Scenario: User validate a business idea added properly after submission
    Given User Visit USCIS home page
    And   User login using valid credential
    When  User visit Idea Submission section
    Then  User validate user is at Idea Submission Page
    When  User clicks on " Share Your Idea" button
    And   User Selects a Dropdown from Appropiate Project
    And   User Selects a Dropdown from Category
    And   User inserts ideas
    And   User clicks on Submit Idea
    Then  User validates that idea was updated



    ###############


