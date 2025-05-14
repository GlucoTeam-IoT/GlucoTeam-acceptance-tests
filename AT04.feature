Feature: View Latest Patient Report

  Scenario: Show the latest available patient report
    Given the system has a recent report available for the patient "John Doe"
    When the user accesses the most recent report section for patient "John Doe"
    Then the system should display the most recent patient report with updated information

  Scenario: No recent report available
    Given the system has no recent report available for the patient "Jane Doe"
    When the user accesses the most recent report section for patient "Jane Doe"
    Then the system should display the message "No report available"
