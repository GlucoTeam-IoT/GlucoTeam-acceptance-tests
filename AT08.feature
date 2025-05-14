Feature: Contact Section

  Scenario: Send message successfully
    Given the user fills in the contact form with valid information
    When the user submits the form
    Then the system should send the message and show a confirmation

  Scenario: Send message with empty fields
    Given the user leaves required fields empty
    When the user submits the form
    Then the system should show an error indicating required fields

  Scenario: Handle server error on submit
    Given the user fills in the contact form
    When the system fails to process the message
    Then the system should display an error message "Message could not be sent"
