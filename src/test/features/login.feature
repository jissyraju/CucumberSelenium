Feature: Login Test[]
  As a user
  I should login the application
  Scenario: Login with valid user id and password
    Given I am on Homepage "https://www.next.co.uk/"
    When I click "My Account"
    And I choose "Existing Customer"
    When I enter username "Jisy"
    And I enter password "j123"
    Then I can login successfully

  Scenario: Login with Invalid user id or password
    Given I am on Homepage "https://www.next.co.uk/"
    When I click "My Account"
    And I choose "Existing Customer"
    When I enter invalid username "Jisy"
    And I enter invalid password "j123rr"
    Then I should get message check your username and password

  Scenario: Login for new user
    Given I am on Homepage "https://www.next.co.uk/"
    When I click "My Account"
    And I choose "New Customer"
    When I enter valid username "Jisy"
    And I enter valid password "j123rr"
    When I enter valid phone number "9722881234"
    And  I enter valid email "Jisy@gmail.com"
    Then I should get message successfully registered
