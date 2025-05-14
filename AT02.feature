Feature: User Account Registration

  Scenario: Successful registration with valid data
    Given the user does not have an account registered
    When the user enters email "newuser@example.com" and password "password123" on the registration form
    Then the system should register the user and redirect them to the welcome page

  Scenario: Registration failed with already registered email
    Given the user already has an account with email "user@example.com"
    When the user attempts to register with email "user@example.com" and password "password123"
    Then the system should display an error message "Email is already registered"

  Scenario: Registration failed with weak password
    Given the user does not have an account registered
    When the user enters email "newuser@example.com" and password "123" on the registration form
    Then the system should display an error message "Password is too weak"
