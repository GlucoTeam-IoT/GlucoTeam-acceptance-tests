Feature: Patient Report Statistics Visualization

  Scenario: View historical data for patient
    Given the system has historical reports available for the patient "John Doe"
    When the user accesses the patient statistics section
    Then the system should display a table with the patient's historical reports

  Scenario: No historical data available for the patient
    Given the system has no historical reports for the patient "Jane Doe"
    When the user accesses the patient statistics section
    Then the system should display the message "No historical data available"

  Scenario: View statistics with no reports available
    Given the system has no reports for the patient "John Doe"
    When the user accesses the statistics section
    Then the system should display the message "No reports available"
