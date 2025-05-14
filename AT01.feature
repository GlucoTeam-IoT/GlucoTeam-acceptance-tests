Feature: User Login Access

  Scenario: Successful login with valid credentials
    Given the user has an account registered with email "user@example.com" and password "password123"
    When the user enters "user@example.com" and "password123" on the login page
    Then the system should redirect the user to their homepage

  Scenario: Failed login with incorrect credentials
    Given the user has an account registered with email "user@example.com" and password "password123"
    When the user enters "user@example.com" and "wrongPassword123" on the login page
    Then the system should display an error message "Incorrect credentials"

  Scenario: Login with empty email field
    Given the user has an account registered with email "user@example.com" and password "password123"
    When the user leaves the email field empty and enters "password123"
    Then the system should display an error message "Email is required"

  Scenario: Login with empty password field
    Given the user has an account registered with email "user@example.com" and password "password123"
    When the user enters "user@example.com" and leaves the password field empty
    Then the system should display an error message "Password is required"